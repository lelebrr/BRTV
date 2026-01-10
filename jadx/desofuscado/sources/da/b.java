package da;

import a.f;
import java.io.File;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b {
    public final File f;

    /* renamed from: e, reason: collision with root package name */
    public final Map f6343e = Collections.synchronizedMap(new HashMap());

    /* renamed from: c, reason: collision with root package name */
    public final long f6342c = 20000000;
    public final int d = 1000;

    /* renamed from: a, reason: collision with root package name */
    public final AtomicLong f6340a = new AtomicLong();

    /* renamed from: b, reason: collision with root package name */
    public final AtomicInteger f6341b = new AtomicInteger();

    public b(File file) {
        this.f = file;
        new Thread(new f(13, this)).start();
    }

    public static void a(b bVar, File file) {
        AtomicLong atomicLong;
        long jD;
        AtomicInteger atomicInteger = bVar.f6341b;
        int iAddAndGet = atomicInteger.get();
        do {
            int i6 = iAddAndGet + 1;
            atomicLong = bVar.f6340a;
            if (i6 <= bVar.d) {
                break;
            }
            jD = bVar.d();
            atomicLong.addAndGet(-jD);
            iAddAndGet = atomicInteger.addAndGet(-1);
        } while (jD != 0);
        atomicInteger.addAndGet(1);
        long length = file.length();
        long j10 = atomicLong.get();
        while (true) {
            long j11 = bVar.f6342c;
            if (j11 <= 0 || j10 + length <= j11) {
                break;
            }
            long jD2 = bVar.d();
            long jAddAndGet = atomicLong.addAndGet(-jD2);
            if (jD2 == 0) {
                break;
            } else {
                j10 = jAddAndGet;
            }
        }
        atomicLong.addAndGet(length);
        long jCurrentTimeMillis = System.currentTimeMillis();
        Long lValueOf = Long.valueOf(jCurrentTimeMillis);
        file.setLastModified(jCurrentTimeMillis);
        bVar.f6343e.put(file, lValueOf);
    }

    public final File b(String str) {
        File fileC = c(str);
        long jCurrentTimeMillis = System.currentTimeMillis();
        Long lValueOf = Long.valueOf(jCurrentTimeMillis);
        fileC.setLastModified(jCurrentTimeMillis);
        this.f6343e.put(fileC, lValueOf);
        return fileC;
    }

    public final File c(String str) {
        return new File(this.f, str.hashCode() + "");
    }

    public final long d() {
        File file;
        if (this.f6343e.isEmpty()) {
            return 0L;
        }
        Set<Map.Entry> setEntrySet = this.f6343e.entrySet();
        synchronized (this.f6343e) {
            try {
                file = null;
                Long l9 = null;
                for (Map.Entry entry : setEntrySet) {
                    if (file == null) {
                        file = (File) entry.getKey();
                        l9 = (Long) entry.getValue();
                    } else {
                        Long l10 = (Long) entry.getValue();
                        if (l10.longValue() < l9.longValue()) {
                            file = (File) entry.getKey();
                            l9 = l10;
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        long length = file != null ? file.length() : 0L;
        if (file != null && file.delete()) {
            this.f6343e.remove(file);
        }
        return length;
    }
}
