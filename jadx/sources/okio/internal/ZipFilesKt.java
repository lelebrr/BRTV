package okio.internal;

import a.e;
import a2.a;
import android.support.v4.media.session.PlaybackStateCompat;
import i9.l;
import i9.p;
import j9.i;
import j9.j;
import j9.m;
import j9.n;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.GregorianCalendar;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import o9.d;
import okhttp3.internal.ws.WebSocketProtocol;
import okio.BufferedSource;
import okio.FileHandle;
import okio.FileMetadata;
import okio.FileSystem;
import okio.Okio;
import okio.Path;
import okio.ZipFileSystem;
import w8.f;
import x8.u;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class ZipFilesKt {
    private static final int BIT_FLAG_ENCRYPTED = 1;
    private static final int BIT_FLAG_UNSUPPORTED_MASK = 1;
    private static final int CENTRAL_FILE_HEADER_SIGNATURE = 33639248;
    public static final int COMPRESSION_METHOD_DEFLATED = 8;
    public static final int COMPRESSION_METHOD_STORED = 0;
    private static final int END_OF_CENTRAL_DIRECTORY_SIGNATURE = 101010256;
    private static final int HEADER_ID_EXTENDED_TIMESTAMP = 21589;
    private static final int HEADER_ID_ZIP64_EXTENDED_INFO = 1;
    private static final int LOCAL_FILE_HEADER_SIGNATURE = 67324752;
    private static final long MAX_ZIP_ENTRY_AND_ARCHIVE_SIZE = 4294967295L;
    private static final int ZIP64_EOCD_RECORD_SIGNATURE = 101075792;
    private static final int ZIP64_LOCATOR_SIGNATURE = 117853008;

    /* compiled from: MyApplication */
    /* renamed from: okio.internal.ZipFilesKt$openZip$1, reason: invalid class name */
    public static final class AnonymousClass1 extends j implements l {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        public AnonymousClass1() {
            super(1);
        }

        @Override // i9.l
        public final Boolean invoke(ZipEntry zipEntry) {
            i.f(zipEntry, "it");
            return Boolean.TRUE;
        }
    }

    /* compiled from: MyApplication */
    /* renamed from: okio.internal.ZipFilesKt$readEntry$1, reason: invalid class name and case insensitive filesystem */
    public static final class C00071 extends j implements p {
        final /* synthetic */ m $compressedSize;
        final /* synthetic */ j9.l $hasZip64Extra;
        final /* synthetic */ m $offset;
        final /* synthetic */ long $requiredZip64ExtraSize;
        final /* synthetic */ m $size;
        final /* synthetic */ BufferedSource $this_readEntry;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C00071(j9.l lVar, long j10, m mVar, BufferedSource bufferedSource, m mVar2, m mVar3) {
            super(2);
            this.$hasZip64Extra = lVar;
            this.$requiredZip64ExtraSize = j10;
            this.$size = mVar;
            this.$this_readEntry = bufferedSource;
            this.$compressedSize = mVar2;
            this.$offset = mVar3;
        }

        @Override // i9.p
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) throws IOException {
            invoke(((Number) obj).intValue(), ((Number) obj2).longValue());
            return w8.l.f10832a;
        }

        public final void invoke(int i6, long j10) throws IOException {
            if (i6 == 1) {
                j9.l lVar = this.$hasZip64Extra;
                if (lVar.f7474a) {
                    throw new IOException("bad zip: zip64 extra repeated");
                }
                lVar.f7474a = true;
                if (j10 < this.$requiredZip64ExtraSize) {
                    throw new IOException("bad zip: zip64 extra too short");
                }
                m mVar = this.$size;
                long longLe = mVar.f7475a;
                if (longLe == ZipFilesKt.MAX_ZIP_ENTRY_AND_ARCHIVE_SIZE) {
                    longLe = this.$this_readEntry.readLongLe();
                }
                mVar.f7475a = longLe;
                m mVar2 = this.$compressedSize;
                mVar2.f7475a = mVar2.f7475a == ZipFilesKt.MAX_ZIP_ENTRY_AND_ARCHIVE_SIZE ? this.$this_readEntry.readLongLe() : 0L;
                m mVar3 = this.$offset;
                mVar3.f7475a = mVar3.f7475a == ZipFilesKt.MAX_ZIP_ENTRY_AND_ARCHIVE_SIZE ? this.$this_readEntry.readLongLe() : 0L;
            }
        }
    }

    /* compiled from: MyApplication */
    /* renamed from: okio.internal.ZipFilesKt$readOrSkipLocalHeader$1, reason: invalid class name and case insensitive filesystem */
    public static final class C00081 extends j implements p {
        final /* synthetic */ n $createdAtMillis;
        final /* synthetic */ n $lastAccessedAtMillis;
        final /* synthetic */ n $lastModifiedAtMillis;
        final /* synthetic */ BufferedSource $this_readOrSkipLocalHeader;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C00081(BufferedSource bufferedSource, n nVar, n nVar2, n nVar3) {
            super(2);
            this.$this_readOrSkipLocalHeader = bufferedSource;
            this.$lastModifiedAtMillis = nVar;
            this.$lastAccessedAtMillis = nVar2;
            this.$createdAtMillis = nVar3;
        }

        @Override // i9.p
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) throws IOException {
            invoke(((Number) obj).intValue(), ((Number) obj2).longValue());
            return w8.l.f10832a;
        }

        public final void invoke(int i6, long j10) throws IOException {
            if (i6 == ZipFilesKt.HEADER_ID_EXTENDED_TIMESTAMP) {
                if (j10 < 1) {
                    throw new IOException("bad zip: extended timestamp extra too short");
                }
                byte b8 = this.$this_readOrSkipLocalHeader.readByte();
                boolean z7 = (b8 & 1) == 1;
                boolean z10 = (b8 & 2) == 2;
                boolean z11 = (b8 & 4) == 4;
                BufferedSource bufferedSource = this.$this_readOrSkipLocalHeader;
                long j11 = z7 ? 5L : 1L;
                if (z10) {
                    j11 += 4;
                }
                if (z11) {
                    j11 += 4;
                }
                if (j10 < j11) {
                    throw new IOException("bad zip: extended timestamp extra too short");
                }
                if (z7) {
                    this.$lastModifiedAtMillis.f7476a = Long.valueOf(bufferedSource.readIntLe() * 1000);
                }
                if (z10) {
                    this.$lastAccessedAtMillis.f7476a = Long.valueOf(this.$this_readOrSkipLocalHeader.readIntLe() * 1000);
                }
                if (z11) {
                    this.$createdAtMillis.f7476a = Long.valueOf(this.$this_readOrSkipLocalHeader.readIntLe() * 1000);
                }
            }
        }
    }

    private static final Map<Path, ZipEntry> buildIndex(List<ZipEntry> list) {
        List<ZipEntry> listAsList;
        Path path = Path.Companion.get$default(Path.Companion, "/", false, 1, (Object) null);
        f[] fVarArr = {new f(path, new ZipEntry(path, true, null, 0L, 0L, 0L, 0, null, 0L, 508, null))};
        LinkedHashMap linkedHashMap = new LinkedHashMap(u.p(1));
        f fVar = fVarArr[0];
        linkedHashMap.put(fVar.f10825a, fVar.f10826b);
        Comparator comparator = new Comparator() { // from class: okio.internal.ZipFilesKt$buildIndex$$inlined$sortedBy$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t5, T t8) {
                Path canonicalPath = ((ZipEntry) t5).getCanonicalPath();
                Path canonicalPath2 = ((ZipEntry) t8).getCanonicalPath();
                if (canonicalPath == canonicalPath2) {
                    return 0;
                }
                if (canonicalPath == null) {
                    return -1;
                }
                if (canonicalPath2 == null) {
                    return 1;
                }
                return canonicalPath.compareTo(canonicalPath2);
            }
        };
        i.f(list, "<this>");
        if (list.size() <= 1) {
            listAsList = x8.j.c0(list);
        } else {
            Object[] array = list.toArray(new Object[0]);
            i.f(array, "<this>");
            if (array.length > 1) {
                Arrays.sort(array, comparator);
            }
            listAsList = Arrays.asList(array);
            i.e(listAsList, "asList(...)");
        }
        for (ZipEntry zipEntry : listAsList) {
            if (((ZipEntry) linkedHashMap.put(zipEntry.getCanonicalPath(), zipEntry)) == null) {
                while (true) {
                    Path pathParent = zipEntry.getCanonicalPath().parent();
                    if (pathParent != null) {
                        ZipEntry zipEntry2 = (ZipEntry) linkedHashMap.get(pathParent);
                        if (zipEntry2 != null) {
                            zipEntry2.getChildren().add(zipEntry.getCanonicalPath());
                            break;
                        }
                        ZipEntry zipEntry3 = new ZipEntry(pathParent, true, null, 0L, 0L, 0L, 0, null, 0L, 508, null);
                        linkedHashMap.put(pathParent, zipEntry3);
                        zipEntry3.getChildren().add(zipEntry.getCanonicalPath());
                        zipEntry = zipEntry3;
                    }
                }
            }
        }
        return linkedHashMap;
    }

    private static final Long dosDateTimeToEpochMillis(int i6, int i10) {
        if (i10 == -1) {
            return null;
        }
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.set(14, 0);
        gregorianCalendar.set(((i6 >> 9) & 127) + 1980, ((i6 >> 5) & 15) - 1, i6 & 31, (i10 >> 11) & 31, (i10 >> 5) & 63, (i10 & 31) << 1);
        return Long.valueOf(gregorianCalendar.getTime().getTime());
    }

    private static final String getHex(int i6) {
        d.d(16);
        String string = Integer.toString(i6, 16);
        i.e(string, "toString(...)");
        return "0x".concat(string);
    }

    /* JADX WARN: Finally extract failed */
    public static final ZipFileSystem openZip(Path path, FileSystem fileSystem, l lVar) throws IOException {
        i.f(path, "zipPath");
        i.f(fileSystem, "fileSystem");
        i.f(lVar, "predicate");
        FileHandle fileHandleOpenReadOnly = fileSystem.openReadOnly(path);
        try {
            long size = fileHandleOpenReadOnly.size() - 22;
            if (size < 0) {
                throw new IOException("not a zip: size=" + fileHandleOpenReadOnly.size());
            }
            long jMax = Math.max(size - PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH, 0L);
            do {
                BufferedSource bufferedSourceBuffer = Okio.buffer(fileHandleOpenReadOnly.source(size));
                try {
                    if (bufferedSourceBuffer.readIntLe() == END_OF_CENTRAL_DIRECTORY_SIGNATURE) {
                        EocdRecord eocdRecord = readEocdRecord(bufferedSourceBuffer);
                        String utf8 = bufferedSourceBuffer.readUtf8(eocdRecord.getCommentByteCount());
                        bufferedSourceBuffer.close();
                        long j10 = size - 20;
                        if (j10 > 0) {
                            BufferedSource bufferedSourceBuffer2 = Okio.buffer(fileHandleOpenReadOnly.source(j10));
                            try {
                                if (bufferedSourceBuffer2.readIntLe() == ZIP64_LOCATOR_SIGNATURE) {
                                    int intLe = bufferedSourceBuffer2.readIntLe();
                                    long longLe = bufferedSourceBuffer2.readLongLe();
                                    if (bufferedSourceBuffer2.readIntLe() != 1 || intLe != 0) {
                                        throw new IOException("unsupported zip: spanned");
                                    }
                                    bufferedSourceBuffer2 = Okio.buffer(fileHandleOpenReadOnly.source(longLe));
                                    try {
                                        int intLe2 = bufferedSourceBuffer2.readIntLe();
                                        if (intLe2 != ZIP64_EOCD_RECORD_SIGNATURE) {
                                            throw new IOException("bad zip: expected " + getHex(ZIP64_EOCD_RECORD_SIGNATURE) + " but was " + getHex(intLe2));
                                        }
                                        eocdRecord = readZip64EocdRecord(bufferedSourceBuffer2, eocdRecord);
                                        a.r(bufferedSourceBuffer2, null);
                                    } finally {
                                    }
                                }
                                a.r(bufferedSourceBuffer2, null);
                            } finally {
                            }
                        }
                        ArrayList arrayList = new ArrayList();
                        BufferedSource bufferedSourceBuffer3 = Okio.buffer(fileHandleOpenReadOnly.source(eocdRecord.getCentralDirectoryOffset()));
                        try {
                            long entryCount = eocdRecord.getEntryCount();
                            for (long j11 = 0; j11 < entryCount; j11++) {
                                ZipEntry entry = readEntry(bufferedSourceBuffer3);
                                if (entry.getOffset() >= eocdRecord.getCentralDirectoryOffset()) {
                                    throw new IOException("bad zip: local file header offset >= central directory offset");
                                }
                                if (((Boolean) lVar.invoke(entry)).booleanValue()) {
                                    arrayList.add(entry);
                                }
                            }
                            a.r(bufferedSourceBuffer3, null);
                            ZipFileSystem zipFileSystem = new ZipFileSystem(path, fileSystem, buildIndex(arrayList), utf8);
                            a.r(fileHandleOpenReadOnly, null);
                            return zipFileSystem;
                        } catch (Throwable th) {
                            try {
                                throw th;
                            } finally {
                                a.r(bufferedSourceBuffer3, th);
                            }
                        }
                    }
                    bufferedSourceBuffer.close();
                    size--;
                } finally {
                    bufferedSourceBuffer.close();
                }
            } while (size >= jMax);
            throw new IOException("not a zip: end of central directory signature not found");
        } finally {
        }
    }

    public static /* synthetic */ ZipFileSystem openZip$default(Path path, FileSystem fileSystem, l lVar, int i6, Object obj) throws IOException {
        if ((i6 & 4) != 0) {
            lVar = AnonymousClass1.INSTANCE;
        }
        return openZip(path, fileSystem, lVar);
    }

    public static final ZipEntry readEntry(BufferedSource bufferedSource) throws IOException {
        m mVar;
        int i6;
        i.f(bufferedSource, "<this>");
        int intLe = bufferedSource.readIntLe();
        if (intLe != CENTRAL_FILE_HEADER_SIGNATURE) {
            throw new IOException("bad zip: expected " + getHex(CENTRAL_FILE_HEADER_SIGNATURE) + " but was " + getHex(intLe));
        }
        bufferedSource.skip(4L);
        short shortLe = bufferedSource.readShortLe();
        int i10 = shortLe & 65535;
        if ((shortLe & 1) != 0) {
            throw new IOException("unsupported zip: general purpose bit flag=" + getHex(i10));
        }
        int shortLe2 = bufferedSource.readShortLe() & 65535;
        Long lDosDateTimeToEpochMillis = dosDateTimeToEpochMillis(bufferedSource.readShortLe() & 65535, bufferedSource.readShortLe() & 65535);
        long intLe2 = bufferedSource.readIntLe() & MAX_ZIP_ENTRY_AND_ARCHIVE_SIZE;
        m mVar2 = new m();
        mVar2.f7475a = bufferedSource.readIntLe() & MAX_ZIP_ENTRY_AND_ARCHIVE_SIZE;
        m mVar3 = new m();
        mVar3.f7475a = bufferedSource.readIntLe() & MAX_ZIP_ENTRY_AND_ARCHIVE_SIZE;
        int shortLe3 = bufferedSource.readShortLe() & 65535;
        int shortLe4 = bufferedSource.readShortLe() & 65535;
        int shortLe5 = bufferedSource.readShortLe() & 65535;
        bufferedSource.skip(8L);
        m mVar4 = new m();
        mVar4.f7475a = bufferedSource.readIntLe() & MAX_ZIP_ENTRY_AND_ARCHIVE_SIZE;
        String utf8 = bufferedSource.readUtf8(shortLe3);
        if (r9.f.W(utf8, (char) 0)) {
            throw new IOException("bad zip: filename contains 0x00");
        }
        long j10 = mVar3.f7475a == MAX_ZIP_ENTRY_AND_ARCHIVE_SIZE ? 8 : 0L;
        if (mVar2.f7475a == MAX_ZIP_ENTRY_AND_ARCHIVE_SIZE) {
            mVar = mVar2;
            i6 = 8;
            j10 += 8;
        } else {
            mVar = mVar2;
            i6 = 8;
        }
        if (mVar4.f7475a == MAX_ZIP_ENTRY_AND_ARCHIVE_SIZE) {
            j10 += i6;
        }
        long j11 = j10;
        j9.l lVar = new j9.l();
        readExtra(bufferedSource, shortLe4, new C00071(lVar, j11, mVar3, bufferedSource, mVar, mVar4));
        if (j11 <= 0 || lVar.f7474a) {
            return new ZipEntry(Path.Companion.get$default(Path.Companion, "/", false, 1, (Object) null).resolve(utf8), r9.n.O(utf8, "/", false), bufferedSource.readUtf8(shortLe5), intLe2, mVar.f7475a, mVar3.f7475a, shortLe2, lDosDateTimeToEpochMillis, mVar4.f7475a);
        }
        throw new IOException("bad zip: zip64 extra required but absent");
    }

    private static final EocdRecord readEocdRecord(BufferedSource bufferedSource) throws IOException {
        int shortLe = bufferedSource.readShortLe() & 65535;
        int shortLe2 = bufferedSource.readShortLe() & 65535;
        long shortLe3 = bufferedSource.readShortLe() & 65535;
        if (shortLe3 != (bufferedSource.readShortLe() & 65535) || shortLe != 0 || shortLe2 != 0) {
            throw new IOException("unsupported zip: spanned");
        }
        bufferedSource.skip(4L);
        return new EocdRecord(shortLe3, MAX_ZIP_ENTRY_AND_ARCHIVE_SIZE & bufferedSource.readIntLe(), bufferedSource.readShortLe() & 65535);
    }

    private static final void readExtra(BufferedSource bufferedSource, int i6, p pVar) throws IOException {
        long j10 = i6;
        while (j10 != 0) {
            if (j10 < 4) {
                throw new IOException("bad zip: truncated header in extra field");
            }
            int shortLe = bufferedSource.readShortLe() & 65535;
            long shortLe2 = bufferedSource.readShortLe() & WebSocketProtocol.PAYLOAD_SHORT_MAX;
            long j11 = j10 - 4;
            if (j11 < shortLe2) {
                throw new IOException("bad zip: truncated value in extra field");
            }
            bufferedSource.require(shortLe2);
            long size = bufferedSource.getBuffer().size();
            pVar.invoke(Integer.valueOf(shortLe), Long.valueOf(shortLe2));
            long size2 = (bufferedSource.getBuffer().size() + shortLe2) - size;
            if (size2 < 0) {
                throw new IOException(e.n(shortLe, "unsupported zip: too many bytes processed for "));
            }
            if (size2 > 0) {
                bufferedSource.getBuffer().skip(size2);
            }
            j10 = j11 - shortLe2;
        }
    }

    public static final FileMetadata readLocalHeader(BufferedSource bufferedSource, FileMetadata fileMetadata) throws IOException {
        i.f(bufferedSource, "<this>");
        i.f(fileMetadata, "basicMetadata");
        FileMetadata orSkipLocalHeader = readOrSkipLocalHeader(bufferedSource, fileMetadata);
        i.c(orSkipLocalHeader);
        return orSkipLocalHeader;
    }

    private static final FileMetadata readOrSkipLocalHeader(BufferedSource bufferedSource, FileMetadata fileMetadata) throws IOException {
        n nVar = new n();
        nVar.f7476a = fileMetadata != null ? fileMetadata.getLastModifiedAtMillis() : null;
        n nVar2 = new n();
        n nVar3 = new n();
        int intLe = bufferedSource.readIntLe();
        if (intLe != LOCAL_FILE_HEADER_SIGNATURE) {
            throw new IOException("bad zip: expected " + getHex(LOCAL_FILE_HEADER_SIGNATURE) + " but was " + getHex(intLe));
        }
        bufferedSource.skip(2L);
        short shortLe = bufferedSource.readShortLe();
        int i6 = shortLe & 65535;
        if ((shortLe & 1) != 0) {
            throw new IOException("unsupported zip: general purpose bit flag=" + getHex(i6));
        }
        bufferedSource.skip(18L);
        long shortLe2 = bufferedSource.readShortLe() & WebSocketProtocol.PAYLOAD_SHORT_MAX;
        int shortLe3 = bufferedSource.readShortLe() & 65535;
        bufferedSource.skip(shortLe2);
        if (fileMetadata == null) {
            bufferedSource.skip(shortLe3);
            return null;
        }
        readExtra(bufferedSource, shortLe3, new C00081(bufferedSource, nVar, nVar2, nVar3));
        return new FileMetadata(fileMetadata.isRegularFile(), fileMetadata.isDirectory(), null, fileMetadata.getSize(), (Long) nVar3.f7476a, (Long) nVar.f7476a, (Long) nVar2.f7476a, null, 128, null);
    }

    private static final EocdRecord readZip64EocdRecord(BufferedSource bufferedSource, EocdRecord eocdRecord) throws IOException {
        bufferedSource.skip(12L);
        int intLe = bufferedSource.readIntLe();
        int intLe2 = bufferedSource.readIntLe();
        long longLe = bufferedSource.readLongLe();
        if (longLe != bufferedSource.readLongLe() || intLe != 0 || intLe2 != 0) {
            throw new IOException("unsupported zip: spanned");
        }
        bufferedSource.skip(8L);
        return new EocdRecord(longLe, bufferedSource.readLongLe(), eocdRecord.getCommentByteCount());
    }

    public static final void skipLocalHeader(BufferedSource bufferedSource) throws IOException {
        i.f(bufferedSource, "<this>");
        readOrSkipLocalHeader(bufferedSource, null);
    }
}
