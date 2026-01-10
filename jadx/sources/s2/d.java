package s2;

import android.os.Build;
import android.os.StrictMode;
import androidx.media3.extractor.metadata.icy.IcyHeaders;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d implements Closeable {

    /* renamed from: a, reason: collision with root package name */
    public final File f9746a;

    /* renamed from: b, reason: collision with root package name */
    public final File f9747b;

    /* renamed from: c, reason: collision with root package name */
    public final File f9748c;
    public final File d;
    public final long f;

    /* renamed from: i, reason: collision with root package name */
    public BufferedWriter f9752i;

    /* renamed from: k, reason: collision with root package name */
    public int f9754k;

    /* renamed from: h, reason: collision with root package name */
    public long f9751h = 0;

    /* renamed from: j, reason: collision with root package name */
    public final LinkedHashMap f9753j = new LinkedHashMap(0, 0.75f, true);

    /* renamed from: l, reason: collision with root package name */
    public long f9755l = 0;

    /* renamed from: m, reason: collision with root package name */
    public final ThreadPoolExecutor f9756m = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue(), new a());

    /* renamed from: n, reason: collision with root package name */
    public final l1.b f9757n = new l1.b(2, this);

    /* renamed from: e, reason: collision with root package name */
    public final int f9749e = 1;

    /* renamed from: g, reason: collision with root package name */
    public final int f9750g = 1;

    public d(File file, long j10) {
        this.f9746a = file;
        this.f9747b = new File(file, "journal");
        this.f9748c = new File(file, "journal.tmp");
        this.d = new File(file, "journal.bkp");
        this.f = j10;
    }

    public static void a(d dVar, e2.c cVar, boolean z7) {
        synchronized (dVar) {
            b bVar = (b) cVar.f6449b;
            if (bVar.f != cVar) {
                throw new IllegalStateException();
            }
            if (z7 && !bVar.f9738e) {
                for (int i6 = 0; i6 < dVar.f9750g; i6++) {
                    if (!((boolean[]) cVar.f6450c)[i6]) {
                        cVar.c();
                        throw new IllegalStateException("Newly created entry didn't create value for index " + i6);
                    }
                    if (!bVar.d[i6].exists()) {
                        cVar.c();
                        return;
                    }
                }
            }
            for (int i10 = 0; i10 < dVar.f9750g; i10++) {
                File file = bVar.d[i10];
                if (!z7) {
                    c(file);
                } else if (file.exists()) {
                    File file2 = bVar.f9737c[i10];
                    file.renameTo(file2);
                    long j10 = bVar.f9736b[i10];
                    long length = file2.length();
                    bVar.f9736b[i10] = length;
                    dVar.f9751h = (dVar.f9751h - j10) + length;
                }
            }
            dVar.f9754k++;
            bVar.f = null;
            if (bVar.f9738e || z7) {
                bVar.f9738e = true;
                dVar.f9752i.append((CharSequence) "CLEAN");
                dVar.f9752i.append(' ');
                dVar.f9752i.append((CharSequence) bVar.f9735a);
                dVar.f9752i.append((CharSequence) bVar.a());
                dVar.f9752i.append('\n');
                if (z7) {
                    dVar.f9755l++;
                }
            } else {
                dVar.f9753j.remove(bVar.f9735a);
                dVar.f9752i.append((CharSequence) "REMOVE");
                dVar.f9752i.append(' ');
                dVar.f9752i.append((CharSequence) bVar.f9735a);
                dVar.f9752i.append('\n');
            }
            e(dVar.f9752i);
            if (dVar.f9751h > dVar.f || dVar.g()) {
                dVar.f9756m.submit(dVar.f9757n);
            }
        }
    }

    public static void b(BufferedWriter bufferedWriter) throws IOException {
        if (Build.VERSION.SDK_INT < 26) {
            bufferedWriter.close();
            return;
        }
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitUnbufferedIo().build());
        try {
            bufferedWriter.close();
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }

    public static void c(File file) throws IOException {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    public static void e(BufferedWriter bufferedWriter) throws IOException {
        if (Build.VERSION.SDK_INT < 26) {
            bufferedWriter.flush();
            return;
        }
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitUnbufferedIo().build());
        try {
            bufferedWriter.flush();
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }

    public static d h(File file, long j10) throws IOException {
        if (j10 <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        File file2 = new File(file, "journal.bkp");
        if (file2.exists()) {
            File file3 = new File(file, "journal");
            if (file3.exists()) {
                file2.delete();
            } else {
                m(file2, file3, false);
            }
        }
        d dVar = new d(file, j10);
        if (dVar.f9747b.exists()) {
            try {
                dVar.j();
                dVar.i();
                return dVar;
            } catch (IOException e5) {
                System.out.println("DiskLruCache " + file + " is corrupt: " + e5.getMessage() + ", removing");
                dVar.close();
                g.a(dVar.f9746a);
            }
        }
        file.mkdirs();
        d dVar2 = new d(file, j10);
        dVar2.l();
        return dVar2;
    }

    public static void m(File file, File file2, boolean z7) throws IOException {
        if (z7) {
            c(file2);
        }
        if (!file.renameTo(file2)) {
            throw new IOException();
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() {
        try {
            if (this.f9752i == null) {
                return;
            }
            Iterator it = new ArrayList(this.f9753j.values()).iterator();
            while (it.hasNext()) {
                e2.c cVar = ((b) it.next()).f;
                if (cVar != null) {
                    cVar.c();
                }
            }
            n();
            b(this.f9752i);
            this.f9752i = null;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final e2.c d(String str) {
        synchronized (this) {
            try {
                if (this.f9752i == null) {
                    throw new IllegalStateException("cache is closed");
                }
                b bVar = (b) this.f9753j.get(str);
                if (bVar == null) {
                    bVar = new b(this, str);
                    this.f9753j.put(str, bVar);
                } else if (bVar.f != null) {
                    return null;
                }
                e2.c cVar = new e2.c(this, bVar);
                bVar.f = cVar;
                this.f9752i.append((CharSequence) "DIRTY");
                this.f9752i.append(' ');
                this.f9752i.append((CharSequence) str);
                this.f9752i.append('\n');
                e(this.f9752i);
                return cVar;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final synchronized c f(String str) {
        if (this.f9752i == null) {
            throw new IllegalStateException("cache is closed");
        }
        b bVar = (b) this.f9753j.get(str);
        if (bVar == null) {
            return null;
        }
        if (!bVar.f9738e) {
            return null;
        }
        for (File file : bVar.f9737c) {
            if (!file.exists()) {
                return null;
            }
        }
        this.f9754k++;
        this.f9752i.append((CharSequence) "READ");
        this.f9752i.append(' ');
        this.f9752i.append((CharSequence) str);
        this.f9752i.append('\n');
        if (g()) {
            this.f9756m.submit(this.f9757n);
        }
        return new c(0, bVar.f9737c);
    }

    public final boolean g() {
        int i6 = this.f9754k;
        return i6 >= 2000 && i6 >= this.f9753j.size();
    }

    public final void i() throws IOException {
        c(this.f9748c);
        Iterator it = this.f9753j.values().iterator();
        while (it.hasNext()) {
            b bVar = (b) it.next();
            e2.c cVar = bVar.f;
            int i6 = this.f9750g;
            int i10 = 0;
            if (cVar == null) {
                while (i10 < i6) {
                    this.f9751h += bVar.f9736b[i10];
                    i10++;
                }
            } else {
                bVar.f = null;
                while (i10 < i6) {
                    c(bVar.f9737c[i10]);
                    c(bVar.d[i10]);
                    i10++;
                }
                it.remove();
            }
        }
    }

    public final void j() {
        File file = this.f9747b;
        f fVar = new f(new FileInputStream(file), g.f9763a);
        try {
            String strA = fVar.a();
            String strA2 = fVar.a();
            String strA3 = fVar.a();
            String strA4 = fVar.a();
            String strA5 = fVar.a();
            if (!"libcore.io.DiskLruCache".equals(strA) || !IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE.equals(strA2) || !Integer.toString(this.f9749e).equals(strA3) || !Integer.toString(this.f9750g).equals(strA4) || !"".equals(strA5)) {
                throw new IOException("unexpected journal header: [" + strA + ", " + strA2 + ", " + strA4 + ", " + strA5 + "]");
            }
            int i6 = 0;
            while (true) {
                try {
                    k(fVar.a());
                    i6++;
                } catch (EOFException unused) {
                    this.f9754k = i6 - this.f9753j.size();
                    if (fVar.f9762e == -1) {
                        l();
                    } else {
                        this.f9752i = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file, true), g.f9763a));
                    }
                    try {
                        fVar.close();
                        return;
                    } catch (RuntimeException e5) {
                        throw e5;
                    } catch (Exception unused2) {
                        return;
                    }
                }
            }
        } catch (Throwable th) {
            try {
                fVar.close();
            } catch (RuntimeException e10) {
                throw e10;
            } catch (Exception unused3) {
            }
            throw th;
        }
    }

    public final void k(String str) throws IOException {
        String strSubstring;
        int iIndexOf = str.indexOf(32);
        if (iIndexOf == -1) {
            throw new IOException("unexpected journal line: ".concat(str));
        }
        int i6 = iIndexOf + 1;
        int iIndexOf2 = str.indexOf(32, i6);
        LinkedHashMap linkedHashMap = this.f9753j;
        if (iIndexOf2 == -1) {
            strSubstring = str.substring(i6);
            if (iIndexOf == 6 && str.startsWith("REMOVE")) {
                linkedHashMap.remove(strSubstring);
                return;
            }
        } else {
            strSubstring = str.substring(i6, iIndexOf2);
        }
        b bVar = (b) linkedHashMap.get(strSubstring);
        if (bVar == null) {
            bVar = new b(this, strSubstring);
            linkedHashMap.put(strSubstring, bVar);
        }
        if (iIndexOf2 == -1 || iIndexOf != 5 || !str.startsWith("CLEAN")) {
            if (iIndexOf2 == -1 && iIndexOf == 5 && str.startsWith("DIRTY")) {
                bVar.f = new e2.c(this, bVar);
                return;
            } else {
                if (iIndexOf2 != -1 || iIndexOf != 4 || !str.startsWith("READ")) {
                    throw new IOException("unexpected journal line: ".concat(str));
                }
                return;
            }
        }
        String[] strArrSplit = str.substring(iIndexOf2 + 1).split(" ");
        bVar.f9738e = true;
        bVar.f = null;
        if (strArrSplit.length != bVar.f9739g.f9750g) {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArrSplit));
        }
        for (int i10 = 0; i10 < strArrSplit.length; i10++) {
            try {
                bVar.f9736b[i10] = Long.parseLong(strArrSplit[i10]);
            } catch (NumberFormatException unused) {
                throw new IOException("unexpected journal line: " + Arrays.toString(strArrSplit));
            }
        }
    }

    public final synchronized void l() {
        try {
            BufferedWriter bufferedWriter = this.f9752i;
            if (bufferedWriter != null) {
                b(bufferedWriter);
            }
            BufferedWriter bufferedWriter2 = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f9748c), g.f9763a));
            try {
                bufferedWriter2.write("libcore.io.DiskLruCache");
                bufferedWriter2.write("\n");
                bufferedWriter2.write(IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE);
                bufferedWriter2.write("\n");
                bufferedWriter2.write(Integer.toString(this.f9749e));
                bufferedWriter2.write("\n");
                bufferedWriter2.write(Integer.toString(this.f9750g));
                bufferedWriter2.write("\n");
                bufferedWriter2.write("\n");
                for (b bVar : this.f9753j.values()) {
                    if (bVar.f != null) {
                        bufferedWriter2.write("DIRTY " + bVar.f9735a + '\n');
                    } else {
                        bufferedWriter2.write("CLEAN " + bVar.f9735a + bVar.a() + '\n');
                    }
                }
                b(bufferedWriter2);
                if (this.f9747b.exists()) {
                    m(this.f9747b, this.d, true);
                }
                m(this.f9748c, this.f9747b, false);
                this.d.delete();
                this.f9752i = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f9747b, true), g.f9763a));
            } catch (Throwable th) {
                b(bufferedWriter2);
                throw th;
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final void n() {
        while (this.f9751h > this.f) {
            String str = (String) ((Map.Entry) this.f9753j.entrySet().iterator().next()).getKey();
            synchronized (this) {
                try {
                    if (this.f9752i == null) {
                        throw new IllegalStateException("cache is closed");
                    }
                    b bVar = (b) this.f9753j.get(str);
                    if (bVar != null && bVar.f == null) {
                        for (int i6 = 0; i6 < this.f9750g; i6++) {
                            File file = bVar.f9737c[i6];
                            if (file.exists() && !file.delete()) {
                                throw new IOException("failed to delete " + file);
                            }
                            long j10 = this.f9751h;
                            long[] jArr = bVar.f9736b;
                            this.f9751h = j10 - jArr[i6];
                            jArr[i6] = 0;
                        }
                        this.f9754k++;
                        this.f9752i.append((CharSequence) "REMOVE");
                        this.f9752i.append(' ');
                        this.f9752i.append((CharSequence) str);
                        this.f9752i.append('\n');
                        this.f9753j.remove(str);
                        if (g()) {
                            this.f9756m.submit(this.f9757n);
                        }
                    }
                } finally {
                }
            }
        }
    }
}
