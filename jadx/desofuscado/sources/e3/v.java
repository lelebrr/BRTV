package e3;

import android.os.Build;
import android.util.Log;
import java.io.File;
import java.util.Arrays;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class v {

    /* renamed from: e, reason: collision with root package name */
    public static final boolean f6532e;
    public static final boolean f;

    /* renamed from: g, reason: collision with root package name */
    public static final File f6533g;

    /* renamed from: h, reason: collision with root package name */
    public static volatile v f6534h;

    /* renamed from: b, reason: collision with root package name */
    public int f6536b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f6537c = true;
    public final AtomicBoolean d = new AtomicBoolean(false);

    /* renamed from: a, reason: collision with root package name */
    public final int f6535a = 20000;

    static {
        int i6 = Build.VERSION.SDK_INT;
        f6532e = i6 < 29;
        f = i6 >= 28;
        f6533g = new File("/proc/self/fd");
    }

    public static v a() {
        if (f6534h == null) {
            synchronized (v.class) {
                try {
                    if (f6534h == null) {
                        f6534h = new v();
                    }
                } finally {
                }
            }
        }
        return f6534h;
    }

    public final int b() {
        if (Build.VERSION.SDK_INT == 28) {
            Iterator it = Arrays.asList("GM1900", "GM1901", "GM1903", "GM1911", "GM1915", "ONEPLUS A3000", "ONEPLUS A3010", "ONEPLUS A5010", "ONEPLUS A5000", "ONEPLUS A3003", "ONEPLUS A6000", "ONEPLUS A6003", "ONEPLUS A6010", "ONEPLUS A6013").iterator();
            while (it.hasNext()) {
                if (Build.MODEL.startsWith((String) it.next())) {
                    return 500;
                }
            }
        }
        return this.f6535a;
    }

    public final boolean c(int i6, int i10, boolean z7, boolean z10) {
        boolean z11;
        if (!z7) {
            if (Log.isLoggable("HardwareConfig", 2)) {
                Log.v("HardwareConfig", "Hardware config disallowed by caller");
            }
            return false;
        }
        if (!f) {
            if (Log.isLoggable("HardwareConfig", 2)) {
                Log.v("HardwareConfig", "Hardware config disallowed by sdk");
            }
            return false;
        }
        if (f6532e && !this.d.get()) {
            if (Log.isLoggable("HardwareConfig", 2)) {
                Log.v("HardwareConfig", "Hardware config disallowed by app state");
            }
            return false;
        }
        if (z10) {
            if (Log.isLoggable("HardwareConfig", 2)) {
                Log.v("HardwareConfig", "Hardware config disallowed because exif orientation is required");
            }
            return false;
        }
        if (i6 < 0 || i10 < 0) {
            if (Log.isLoggable("HardwareConfig", 2)) {
                Log.v("HardwareConfig", "Hardware config disallowed because of invalid dimensions");
            }
            return false;
        }
        synchronized (this) {
            try {
                int i11 = this.f6536b + 1;
                this.f6536b = i11;
                if (i11 >= 50) {
                    this.f6536b = 0;
                    int length = f6533g.list().length;
                    long jB = b();
                    boolean z12 = ((long) length) < jB;
                    this.f6537c = z12;
                    if (!z12 && Log.isLoggable("Downsampler", 5)) {
                        Log.w("Downsampler", "Excluding HARDWARE bitmap config because we're over the file descriptor limit, file descriptors " + length + ", limit " + jB);
                    }
                }
                z11 = this.f6537c;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z11) {
            return true;
        }
        if (Log.isLoggable("HardwareConfig", 2)) {
            Log.v("HardwareConfig", "Hardware config disallowed because there are insufficient FDs");
        }
        return false;
    }
}
