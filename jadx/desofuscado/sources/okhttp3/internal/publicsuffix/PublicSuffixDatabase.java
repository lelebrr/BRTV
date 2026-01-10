package okhttp3.internal.publicsuffix;

import a2.a;
import com.lzy.okgo.cookie.SerializableCookie;
import ea.q;
import j9.f;
import j9.i;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.IDN;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;
import o9.e;
import okhttp3.internal.Util;
import okhttp3.internal.platform.Platform;
import okio.BufferedSource;
import okio.GzipSource;
import okio.Okio;
import q9.b;
import q9.c;
import q9.g;
import x8.j;
import x8.r;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class PublicSuffixDatabase {
    private static final char EXCEPTION_MARKER = '!';
    public static final String PUBLIC_SUFFIX_RESOURCE = "publicsuffixes.gz";
    private byte[] publicSuffixExceptionListBytes;
    private byte[] publicSuffixListBytes;
    public static final Companion Companion = new Companion(null);
    private static final byte[] WILDCARD_LABEL = {42};
    private static final List<String> PREVAILING_RULE = a.F("*");
    private static final PublicSuffixDatabase instance = new PublicSuffixDatabase();
    private final AtomicBoolean listRead = new AtomicBoolean(false);
    private final CountDownLatch readCompleteLatch = new CountDownLatch(1);

    /* compiled from: MyApplication */
    public static final class Companion {
        public /* synthetic */ Companion(f fVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final String binarySearch(byte[] bArr, byte[][] bArr2, int i6) {
            int i10;
            int iAnd;
            boolean z7;
            int iAnd2;
            int length = bArr.length;
            int i11 = 0;
            while (i11 < length) {
                int i12 = (i11 + length) / 2;
                while (i12 > -1 && bArr[i12] != 10) {
                    i12--;
                }
                int i13 = i12 + 1;
                int i14 = 1;
                while (true) {
                    i10 = i13 + i14;
                    if (bArr[i10] == 10) {
                        break;
                    }
                    i14++;
                }
                int i15 = i10 - i13;
                int i16 = i6;
                boolean z10 = false;
                int i17 = 0;
                int i18 = 0;
                while (true) {
                    if (z10) {
                        iAnd = 46;
                        z7 = false;
                    } else {
                        boolean z11 = z10;
                        iAnd = Util.and(bArr2[i16][i17], 255);
                        z7 = z11;
                    }
                    iAnd2 = iAnd - Util.and(bArr[i13 + i18], 255);
                    if (iAnd2 != 0) {
                        break;
                    }
                    i18++;
                    i17++;
                    if (i18 == i15) {
                        break;
                    }
                    if (bArr2[i16].length != i17) {
                        z10 = z7;
                    } else {
                        if (i16 == bArr2.length - 1) {
                            break;
                        }
                        i16++;
                        z10 = true;
                        i17 = -1;
                    }
                }
                if (iAnd2 >= 0) {
                    if (iAnd2 <= 0) {
                        int i19 = i15 - i18;
                        int length2 = bArr2[i16].length - i17;
                        int length3 = bArr2.length;
                        for (int i20 = i16 + 1; i20 < length3; i20++) {
                            length2 += bArr2[i20].length;
                        }
                        if (length2 >= i19) {
                            if (length2 <= i19) {
                                Charset charset = StandardCharsets.UTF_8;
                                i.e(charset, "UTF_8");
                                return new String(bArr, i13, i15, charset);
                            }
                        }
                    }
                    i11 = i10 + 1;
                }
                length = i12;
            }
            return null;
        }

        public final PublicSuffixDatabase get() {
            return PublicSuffixDatabase.instance;
        }

        private Companion() {
        }
    }

    private final List<String> findMatchingRule(List<String> list) throws InterruptedException {
        String str;
        String strBinarySearch;
        String strBinarySearch2;
        if (this.listRead.get() || !this.listRead.compareAndSet(false, true)) {
            try {
                this.readCompleteLatch.await();
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
        } else {
            readTheListUninterruptibly();
        }
        if (this.publicSuffixListBytes == null) {
            throw new IllegalStateException("Unable to load publicsuffixes.gz resource from the classpath.");
        }
        int size = list.size();
        byte[][] bArr = new byte[size][];
        for (int i6 = 0; i6 < size; i6++) {
            String str2 = list.get(i6);
            Charset charset = StandardCharsets.UTF_8;
            i.e(charset, "UTF_8");
            byte[] bytes = str2.getBytes(charset);
            i.e(bytes, "this as java.lang.String).getBytes(charset)");
            bArr[i6] = bytes;
        }
        int i10 = 0;
        while (true) {
            str = null;
            if (i10 >= size) {
                strBinarySearch = null;
                break;
            }
            Companion companion = Companion;
            byte[] bArr2 = this.publicSuffixListBytes;
            if (bArr2 == null) {
                i.l("publicSuffixListBytes");
                throw null;
            }
            strBinarySearch = companion.binarySearch(bArr2, bArr, i10);
            if (strBinarySearch != null) {
                break;
            }
            i10++;
        }
        if (size > 1) {
            byte[][] bArr3 = (byte[][]) bArr.clone();
            int length = bArr3.length - 1;
            for (int i11 = 0; i11 < length; i11++) {
                bArr3[i11] = WILDCARD_LABEL;
                Companion companion2 = Companion;
                byte[] bArr4 = this.publicSuffixListBytes;
                if (bArr4 == null) {
                    i.l("publicSuffixListBytes");
                    throw null;
                }
                strBinarySearch2 = companion2.binarySearch(bArr4, bArr3, i11);
                if (strBinarySearch2 != null) {
                    break;
                }
            }
            strBinarySearch2 = null;
        } else {
            strBinarySearch2 = null;
        }
        if (strBinarySearch2 != null) {
            int i12 = size - 1;
            int i13 = 0;
            while (true) {
                if (i13 >= i12) {
                    break;
                }
                Companion companion3 = Companion;
                byte[] bArr5 = this.publicSuffixExceptionListBytes;
                if (bArr5 == null) {
                    i.l("publicSuffixExceptionListBytes");
                    throw null;
                }
                String strBinarySearch3 = companion3.binarySearch(bArr5, bArr, i13);
                if (strBinarySearch3 != null) {
                    str = strBinarySearch3;
                    break;
                }
                i13++;
            }
        }
        if (str != null) {
            return r9.f.h0("!".concat(str), new char[]{'.'});
        }
        if (strBinarySearch == null && strBinarySearch2 == null) {
            return PREVAILING_RULE;
        }
        List<String> listH0 = r.f11098a;
        List<String> listH02 = strBinarySearch != null ? r9.f.h0(strBinarySearch, new char[]{'.'}) : listH0;
        if (strBinarySearch2 != null) {
            listH0 = r9.f.h0(strBinarySearch2, new char[]{'.'});
        }
        return listH02.size() > listH0.size() ? listH02 : listH0;
    }

    private final void readTheList() throws IOException {
        try {
            InputStream resourceAsStream = PublicSuffixDatabase.class.getResourceAsStream(PUBLIC_SUFFIX_RESOURCE);
            if (resourceAsStream == null) {
                return;
            }
            BufferedSource bufferedSourceBuffer = Okio.buffer(new GzipSource(Okio.source(resourceAsStream)));
            try {
                byte[] byteArray = bufferedSourceBuffer.readByteArray(bufferedSourceBuffer.readInt());
                byte[] byteArray2 = bufferedSourceBuffer.readByteArray(bufferedSourceBuffer.readInt());
                a.r(bufferedSourceBuffer, null);
                synchronized (this) {
                    i.c(byteArray);
                    this.publicSuffixListBytes = byteArray;
                    i.c(byteArray2);
                    this.publicSuffixExceptionListBytes = byteArray2;
                }
            } finally {
            }
        } finally {
            this.readCompleteLatch.countDown();
        }
    }

    private final void readTheListUninterruptibly() {
        boolean z7 = false;
        while (true) {
            try {
                try {
                    readTheList();
                    break;
                } catch (InterruptedIOException unused) {
                    Thread.interrupted();
                    z7 = true;
                } catch (IOException e5) {
                    Platform.Companion.get().log("Failed to read public suffix list", 5, e5);
                    if (z7) {
                        Thread.currentThread().interrupt();
                        return;
                    }
                    return;
                }
            } catch (Throwable th) {
                if (z7) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z7) {
            Thread.currentThread().interrupt();
        }
    }

    private final List<String> splitDomain(String str) {
        List<String> listH0 = r9.f.h0(str, new char[]{'.'});
        if (!i.a(j.Y(listH0), "")) {
            return listH0;
        }
        int size = listH0.size() - 1;
        if (size < 0) {
            size = 0;
        }
        if (size < 0) {
            throw new IllegalArgumentException(q.f(size, "Requested element count ", " is less than zero.").toString());
        }
        r rVar = r.f11098a;
        if (size == 0) {
            return rVar;
        }
        if (size >= listH0.size()) {
            return j.c0(listH0);
        }
        if (size == 1) {
            return a.F(j.T(listH0));
        }
        ArrayList arrayList = new ArrayList(size);
        Iterator<T> it = listH0.iterator();
        int i6 = 0;
        while (it.hasNext()) {
            arrayList.add(it.next());
            i6++;
            if (i6 == size) {
                break;
            }
        }
        int size2 = arrayList.size();
        return size2 != 0 ? size2 != 1 ? arrayList : a.F(arrayList.get(0)) : rVar;
    }

    public final String getEffectiveTldPlusOne(String str) throws InterruptedException {
        int size;
        int size2;
        i.f(str, SerializableCookie.DOMAIN);
        String unicode = IDN.toUnicode(str);
        i.e(unicode, "unicodeDomain");
        List<String> listSplitDomain = splitDomain(unicode);
        List<String> listFindMatchingRule = findMatchingRule(listSplitDomain);
        int i6 = 0;
        if (listSplitDomain.size() == listFindMatchingRule.size() && listFindMatchingRule.get(0).charAt(0) != '!') {
            return null;
        }
        if (listFindMatchingRule.get(0).charAt(0) == '!') {
            size = listSplitDomain.size();
            size2 = listFindMatchingRule.size();
        } else {
            size = listSplitDomain.size();
            size2 = listFindMatchingRule.size() + 1;
        }
        int i10 = size - size2;
        List<String> listSplitDomain2 = splitDomain(str);
        i.f(listSplitDomain2, "<this>");
        c gVar = new g(2, listSplitDomain2);
        if (i10 < 0) {
            throw new IllegalArgumentException(q.f(i10, "Requested element count ", " is less than zero.").toString());
        }
        if (i10 != 0) {
            gVar = new b(gVar, i10);
        }
        StringBuilder sb = new StringBuilder();
        sb.append((CharSequence) "");
        for (Object obj : gVar) {
            i6++;
            if (i6 > 1) {
                sb.append((CharSequence) ".");
            }
            e.g(sb, obj, null);
        }
        sb.append((CharSequence) "");
        return sb.toString();
    }

    public final void setListBytes(byte[] bArr, byte[] bArr2) {
        i.f(bArr, "publicSuffixListBytes");
        i.f(bArr2, "publicSuffixExceptionListBytes");
        this.publicSuffixListBytes = bArr;
        this.publicSuffixExceptionListBytes = bArr2;
        this.listRead.set(true);
        this.readCompleteLatch.countDown();
    }
}
