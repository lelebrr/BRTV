package okhttp3.internal.http2;

import androidx.media3.exoplayer.hls.playlist.HlsMediaPlaylist;
import androidx.media3.exoplayer.rtsp.SessionDescription;
import com.lzy.okgo.cookie.SerializableCookie;
import com.lzy.okgo.model.HttpHeaders;
import com.lzy.okgo.model.Progress;
import j9.f;
import j9.i;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import okhttp3.internal.Util;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;
import okio.Okio;
import okio.Source;
import x8.j;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class Hpack {
    public static final Hpack INSTANCE;
    private static final Map<ByteString, Integer> NAME_TO_FIRST_INDEX;
    private static final int PREFIX_4_BITS = 15;
    private static final int PREFIX_5_BITS = 31;
    private static final int PREFIX_6_BITS = 63;
    private static final int PREFIX_7_BITS = 127;
    private static final int SETTINGS_HEADER_TABLE_SIZE = 4096;
    private static final int SETTINGS_HEADER_TABLE_SIZE_LIMIT = 16384;
    private static final Header[] STATIC_HEADER_TABLE;

    /* compiled from: MyApplication */
    public static final class Reader {
        public Header[] dynamicTable;
        public int dynamicTableByteCount;
        public int headerCount;
        private final List<Header> headerList;
        private final int headerTableSizeSetting;
        private int maxDynamicTableByteCount;
        private int nextHeaderIndex;
        private final BufferedSource source;

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Reader(Source source, int i6) {
            this(source, i6, 0, 4, null);
            i.f(source, "source");
        }

        private final void adjustDynamicTableByteCount() {
            int i6 = this.maxDynamicTableByteCount;
            int i10 = this.dynamicTableByteCount;
            if (i6 < i10) {
                if (i6 == 0) {
                    clearDynamicTable();
                } else {
                    evictToRecoverBytes(i10 - i6);
                }
            }
        }

        private final void clearDynamicTable() {
            Header[] headerArr = this.dynamicTable;
            x8.i.I(headerArr, 0, headerArr.length);
            this.nextHeaderIndex = this.dynamicTable.length - 1;
            this.headerCount = 0;
            this.dynamicTableByteCount = 0;
        }

        private final int dynamicTableIndex(int i6) {
            return this.nextHeaderIndex + 1 + i6;
        }

        private final int evictToRecoverBytes(int i6) {
            int i10;
            int i11 = 0;
            if (i6 > 0) {
                int length = this.dynamicTable.length;
                while (true) {
                    length--;
                    i10 = this.nextHeaderIndex;
                    if (length < i10 || i6 <= 0) {
                        break;
                    }
                    Header header = this.dynamicTable[length];
                    i.c(header);
                    int i12 = header.hpackSize;
                    i6 -= i12;
                    this.dynamicTableByteCount -= i12;
                    this.headerCount--;
                    i11++;
                }
                Header[] headerArr = this.dynamicTable;
                System.arraycopy(headerArr, i10 + 1, headerArr, i10 + 1 + i11, this.headerCount);
                this.nextHeaderIndex += i11;
            }
            return i11;
        }

        private final ByteString getName(int i6) throws IOException {
            if (isStaticHeader(i6)) {
                return Hpack.INSTANCE.getSTATIC_HEADER_TABLE()[i6].name;
            }
            int iDynamicTableIndex = dynamicTableIndex(i6 - Hpack.INSTANCE.getSTATIC_HEADER_TABLE().length);
            if (iDynamicTableIndex >= 0) {
                Header[] headerArr = this.dynamicTable;
                if (iDynamicTableIndex < headerArr.length) {
                    Header header = headerArr[iDynamicTableIndex];
                    i.c(header);
                    return header.name;
                }
            }
            throw new IOException("Header index too large " + (i6 + 1));
        }

        private final void insertIntoDynamicTable(int i6, Header header) {
            this.headerList.add(header);
            int i10 = header.hpackSize;
            if (i6 != -1) {
                Header header2 = this.dynamicTable[dynamicTableIndex(i6)];
                i.c(header2);
                i10 -= header2.hpackSize;
            }
            int i11 = this.maxDynamicTableByteCount;
            if (i10 > i11) {
                clearDynamicTable();
                return;
            }
            int iEvictToRecoverBytes = evictToRecoverBytes((this.dynamicTableByteCount + i10) - i11);
            if (i6 == -1) {
                int i12 = this.headerCount + 1;
                Header[] headerArr = this.dynamicTable;
                if (i12 > headerArr.length) {
                    Header[] headerArr2 = new Header[headerArr.length * 2];
                    System.arraycopy(headerArr, 0, headerArr2, headerArr.length, headerArr.length);
                    this.nextHeaderIndex = this.dynamicTable.length - 1;
                    this.dynamicTable = headerArr2;
                }
                int i13 = this.nextHeaderIndex;
                this.nextHeaderIndex = i13 - 1;
                this.dynamicTable[i13] = header;
                this.headerCount++;
            } else {
                this.dynamicTable[dynamicTableIndex(i6) + iEvictToRecoverBytes + i6] = header;
            }
            this.dynamicTableByteCount += i10;
        }

        private final boolean isStaticHeader(int i6) {
            return i6 >= 0 && i6 <= Hpack.INSTANCE.getSTATIC_HEADER_TABLE().length - 1;
        }

        private final int readByte() throws IOException {
            return Util.and(this.source.readByte(), 255);
        }

        private final void readIndexedHeader(int i6) throws IOException {
            if (isStaticHeader(i6)) {
                this.headerList.add(Hpack.INSTANCE.getSTATIC_HEADER_TABLE()[i6]);
                return;
            }
            int iDynamicTableIndex = dynamicTableIndex(i6 - Hpack.INSTANCE.getSTATIC_HEADER_TABLE().length);
            if (iDynamicTableIndex >= 0) {
                Header[] headerArr = this.dynamicTable;
                if (iDynamicTableIndex < headerArr.length) {
                    List<Header> list = this.headerList;
                    Header header = headerArr[iDynamicTableIndex];
                    i.c(header);
                    list.add(header);
                    return;
                }
            }
            throw new IOException("Header index too large " + (i6 + 1));
        }

        private final void readLiteralHeaderWithIncrementalIndexingIndexedName(int i6) throws IOException {
            insertIntoDynamicTable(-1, new Header(getName(i6), readByteString()));
        }

        private final void readLiteralHeaderWithIncrementalIndexingNewName() throws IOException {
            insertIntoDynamicTable(-1, new Header(Hpack.INSTANCE.checkLowercase(readByteString()), readByteString()));
        }

        private final void readLiteralHeaderWithoutIndexingIndexedName(int i6) throws IOException {
            this.headerList.add(new Header(getName(i6), readByteString()));
        }

        private final void readLiteralHeaderWithoutIndexingNewName() throws IOException {
            this.headerList.add(new Header(Hpack.INSTANCE.checkLowercase(readByteString()), readByteString()));
        }

        public final List<Header> getAndResetHeaderList() {
            List<Header> listC0 = j.c0(this.headerList);
            this.headerList.clear();
            return listC0;
        }

        public final int maxDynamicTableByteCount() {
            return this.maxDynamicTableByteCount;
        }

        public final ByteString readByteString() throws IOException {
            int i6 = readByte();
            boolean z7 = (i6 & 128) == 128;
            long j10 = readInt(i6, 127);
            if (!z7) {
                return this.source.readByteString(j10);
            }
            Buffer buffer = new Buffer();
            Huffman.INSTANCE.decode(this.source, j10, buffer);
            return buffer.readByteString();
        }

        public final void readHeaders() throws IOException {
            while (!this.source.exhausted()) {
                int iAnd = Util.and(this.source.readByte(), 255);
                if (iAnd == 128) {
                    throw new IOException("index == 0");
                }
                if ((iAnd & 128) == 128) {
                    readIndexedHeader(readInt(iAnd, 127) - 1);
                } else if (iAnd == 64) {
                    readLiteralHeaderWithIncrementalIndexingNewName();
                } else if ((iAnd & 64) == 64) {
                    readLiteralHeaderWithIncrementalIndexingIndexedName(readInt(iAnd, Hpack.PREFIX_6_BITS) - 1);
                } else if ((iAnd & 32) == 32) {
                    int i6 = readInt(iAnd, 31);
                    this.maxDynamicTableByteCount = i6;
                    if (i6 < 0 || i6 > this.headerTableSizeSetting) {
                        throw new IOException("Invalid dynamic table size update " + this.maxDynamicTableByteCount);
                    }
                    adjustDynamicTableByteCount();
                } else if (iAnd == 16 || iAnd == 0) {
                    readLiteralHeaderWithoutIndexingNewName();
                } else {
                    readLiteralHeaderWithoutIndexingIndexedName(readInt(iAnd, 15) - 1);
                }
            }
        }

        public final int readInt(int i6, int i10) throws IOException {
            int i11 = i6 & i10;
            if (i11 < i10) {
                return i11;
            }
            int i12 = 0;
            while (true) {
                int i13 = readByte();
                if ((i13 & 128) == 0) {
                    return i10 + (i13 << i12);
                }
                i10 += (i13 & 127) << i12;
                i12 += 7;
            }
        }

        public Reader(Source source, int i6, int i10) {
            i.f(source, "source");
            this.headerTableSizeSetting = i6;
            this.maxDynamicTableByteCount = i10;
            this.headerList = new ArrayList();
            this.source = Okio.buffer(source);
            this.dynamicTable = new Header[8];
            this.nextHeaderIndex = r2.length - 1;
        }

        public /* synthetic */ Reader(Source source, int i6, int i10, int i11, f fVar) {
            this(source, i6, (i11 & 4) != 0 ? i6 : i10);
        }
    }

    /* compiled from: MyApplication */
    public static final class Writer {
        public Header[] dynamicTable;
        public int dynamicTableByteCount;
        private boolean emitDynamicTableSizeUpdate;
        public int headerCount;
        public int headerTableSizeSetting;
        public int maxDynamicTableByteCount;
        private int nextHeaderIndex;
        private final Buffer out;
        private int smallestHeaderTableSizeSetting;
        private final boolean useCompression;

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Writer(int i6, Buffer buffer) {
            this(i6, false, buffer, 2, null);
            i.f(buffer, "out");
        }

        private final void adjustDynamicTableByteCount() {
            int i6 = this.maxDynamicTableByteCount;
            int i10 = this.dynamicTableByteCount;
            if (i6 < i10) {
                if (i6 == 0) {
                    clearDynamicTable();
                } else {
                    evictToRecoverBytes(i10 - i6);
                }
            }
        }

        private final void clearDynamicTable() {
            Header[] headerArr = this.dynamicTable;
            x8.i.I(headerArr, 0, headerArr.length);
            this.nextHeaderIndex = this.dynamicTable.length - 1;
            this.headerCount = 0;
            this.dynamicTableByteCount = 0;
        }

        private final int evictToRecoverBytes(int i6) {
            int i10;
            int i11 = 0;
            if (i6 > 0) {
                int length = this.dynamicTable.length;
                while (true) {
                    length--;
                    i10 = this.nextHeaderIndex;
                    if (length < i10 || i6 <= 0) {
                        break;
                    }
                    Header header = this.dynamicTable[length];
                    i.c(header);
                    i6 -= header.hpackSize;
                    int i12 = this.dynamicTableByteCount;
                    Header header2 = this.dynamicTable[length];
                    i.c(header2);
                    this.dynamicTableByteCount = i12 - header2.hpackSize;
                    this.headerCount--;
                    i11++;
                }
                Header[] headerArr = this.dynamicTable;
                System.arraycopy(headerArr, i10 + 1, headerArr, i10 + 1 + i11, this.headerCount);
                Header[] headerArr2 = this.dynamicTable;
                int i13 = this.nextHeaderIndex;
                Arrays.fill(headerArr2, i13 + 1, i13 + 1 + i11, (Object) null);
                this.nextHeaderIndex += i11;
            }
            return i11;
        }

        private final void insertIntoDynamicTable(Header header) {
            int i6 = header.hpackSize;
            int i10 = this.maxDynamicTableByteCount;
            if (i6 > i10) {
                clearDynamicTable();
                return;
            }
            evictToRecoverBytes((this.dynamicTableByteCount + i6) - i10);
            int i11 = this.headerCount + 1;
            Header[] headerArr = this.dynamicTable;
            if (i11 > headerArr.length) {
                Header[] headerArr2 = new Header[headerArr.length * 2];
                System.arraycopy(headerArr, 0, headerArr2, headerArr.length, headerArr.length);
                this.nextHeaderIndex = this.dynamicTable.length - 1;
                this.dynamicTable = headerArr2;
            }
            int i12 = this.nextHeaderIndex;
            this.nextHeaderIndex = i12 - 1;
            this.dynamicTable[i12] = header;
            this.headerCount++;
            this.dynamicTableByteCount += i6;
        }

        public final void resizeHeaderTable(int i6) {
            this.headerTableSizeSetting = i6;
            int iMin = Math.min(i6, 16384);
            int i10 = this.maxDynamicTableByteCount;
            if (i10 == iMin) {
                return;
            }
            if (iMin < i10) {
                this.smallestHeaderTableSizeSetting = Math.min(this.smallestHeaderTableSizeSetting, iMin);
            }
            this.emitDynamicTableSizeUpdate = true;
            this.maxDynamicTableByteCount = iMin;
            adjustDynamicTableByteCount();
        }

        public final void writeByteString(ByteString byteString) throws IOException {
            i.f(byteString, "data");
            if (this.useCompression) {
                Huffman huffman = Huffman.INSTANCE;
                if (huffman.encodedLength(byteString) < byteString.size()) {
                    Buffer buffer = new Buffer();
                    huffman.encode(byteString, buffer);
                    ByteString byteString2 = buffer.readByteString();
                    writeInt(byteString2.size(), 127, 128);
                    this.out.write(byteString2);
                    return;
                }
            }
            writeInt(byteString.size(), 127, 0);
            this.out.write(byteString);
        }

        /* JADX WARN: Removed duplicated region for block: B:26:0x007e  */
        /* JADX WARN: Removed duplicated region for block: B:37:0x00c4  */
        /* JADX WARN: Removed duplicated region for block: B:38:0x00cc  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void writeHeaders(java.util.List<okhttp3.internal.http2.Header> r13) throws java.io.IOException {
            /*
                Method dump skipped, instructions count: 264
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http2.Hpack.Writer.writeHeaders(java.util.List):void");
        }

        public final void writeInt(int i6, int i10, int i11) {
            if (i6 < i10) {
                this.out.writeByte(i6 | i11);
                return;
            }
            this.out.writeByte(i11 | i10);
            int i12 = i6 - i10;
            while (i12 >= 128) {
                this.out.writeByte(128 | (i12 & 127));
                i12 >>>= 7;
            }
            this.out.writeByte(i12);
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Writer(Buffer buffer) {
            this(0, false, buffer, 3, null);
            i.f(buffer, "out");
        }

        public Writer(int i6, boolean z7, Buffer buffer) {
            i.f(buffer, "out");
            this.headerTableSizeSetting = i6;
            this.useCompression = z7;
            this.out = buffer;
            this.smallestHeaderTableSizeSetting = Integer.MAX_VALUE;
            this.maxDynamicTableByteCount = i6;
            this.dynamicTable = new Header[8];
            this.nextHeaderIndex = r2.length - 1;
        }

        public /* synthetic */ Writer(int i6, boolean z7, Buffer buffer, int i10, f fVar) {
            this((i10 & 1) != 0 ? 4096 : i6, (i10 & 2) != 0 ? true : z7, buffer);
        }
    }

    static {
        Hpack hpack = new Hpack();
        INSTANCE = hpack;
        Header header = new Header(Header.TARGET_AUTHORITY, "");
        ByteString byteString = Header.TARGET_METHOD;
        Header header2 = new Header(byteString, "GET");
        Header header3 = new Header(byteString, HlsMediaPlaylist.Interstitial.CUE_TRIGGER_POST);
        ByteString byteString2 = Header.TARGET_PATH;
        Header header4 = new Header(byteString2, "/");
        Header header5 = new Header(byteString2, "/index.html");
        ByteString byteString3 = Header.TARGET_SCHEME;
        Header header6 = new Header(byteString3, "http");
        Header header7 = new Header(byteString3, "https");
        ByteString byteString4 = Header.RESPONSE_STATUS;
        STATIC_HEADER_TABLE = new Header[]{header, header2, header3, header4, header5, header6, header7, new Header(byteString4, "200"), new Header(byteString4, "204"), new Header(byteString4, "206"), new Header(byteString4, "304"), new Header(byteString4, "400"), new Header(byteString4, "404"), new Header(byteString4, "500"), new Header("accept-charset", ""), new Header("accept-encoding", HttpHeaders.HEAD_VALUE_ACCEPT_ENCODING), new Header("accept-language", ""), new Header("accept-ranges", ""), new Header("accept", ""), new Header("access-control-allow-origin", ""), new Header("age", ""), new Header("allow", ""), new Header("authorization", ""), new Header("cache-control", ""), new Header("content-disposition", ""), new Header("content-encoding", ""), new Header("content-language", ""), new Header("content-length", ""), new Header("content-location", ""), new Header("content-range", ""), new Header("content-type", ""), new Header(SerializableCookie.COOKIE, ""), new Header(Progress.DATE, ""), new Header("etag", ""), new Header("expect", ""), new Header("expires", ""), new Header("from", ""), new Header(SerializableCookie.HOST, ""), new Header("if-match", ""), new Header("if-modified-since", ""), new Header("if-none-match", ""), new Header("if-range", ""), new Header("if-unmodified-since", ""), new Header("last-modified", ""), new Header("link", ""), new Header("location", ""), new Header("max-forwards", ""), new Header("proxy-authenticate", ""), new Header("proxy-authorization", ""), new Header(SessionDescription.ATTR_RANGE, ""), new Header("referer", ""), new Header("refresh", ""), new Header("retry-after", ""), new Header("server", ""), new Header("set-cookie", ""), new Header("strict-transport-security", ""), new Header("transfer-encoding", ""), new Header("user-agent", ""), new Header("vary", ""), new Header("via", ""), new Header("www-authenticate", "")};
        NAME_TO_FIRST_INDEX = hpack.nameToFirstIndex();
    }

    private Hpack() {
    }

    private final Map<ByteString, Integer> nameToFirstIndex() {
        Header[] headerArr = STATIC_HEADER_TABLE;
        LinkedHashMap linkedHashMap = new LinkedHashMap(headerArr.length);
        int length = headerArr.length;
        for (int i6 = 0; i6 < length; i6++) {
            Header[] headerArr2 = STATIC_HEADER_TABLE;
            if (!linkedHashMap.containsKey(headerArr2[i6].name)) {
                linkedHashMap.put(headerArr2[i6].name, Integer.valueOf(i6));
            }
        }
        Map<ByteString, Integer> mapUnmodifiableMap = Collections.unmodifiableMap(linkedHashMap);
        i.e(mapUnmodifiableMap, "unmodifiableMap(result)");
        return mapUnmodifiableMap;
    }

    public final ByteString checkLowercase(ByteString byteString) throws IOException {
        i.f(byteString, SerializableCookie.NAME);
        int size = byteString.size();
        for (int i6 = 0; i6 < size; i6++) {
            byte b8 = byteString.getByte(i6);
            if (65 <= b8 && b8 < 91) {
                throw new IOException("PROTOCOL_ERROR response malformed: mixed case name: " + byteString.utf8());
            }
        }
        return byteString;
    }

    public final Map<ByteString, Integer> getNAME_TO_FIRST_INDEX() {
        return NAME_TO_FIRST_INDEX;
    }

    public final Header[] getSTATIC_HEADER_TABLE() {
        return STATIC_HEADER_TABLE;
    }
}
