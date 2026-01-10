package t1;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import java.io.File;
import java.io.IOException;
import q1.f0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class j {

    /* renamed from: a, reason: collision with root package name */
    public static final r.h f10085a = new r.h();

    /* renamed from: b, reason: collision with root package name */
    public static final Object f10086b = new Object();

    /* renamed from: c, reason: collision with root package name */
    public static f0 f10087c = null;

    public static long a(Context context) {
        PackageManager packageManager = context.getApplicationContext().getPackageManager();
        return Build.VERSION.SDK_INT >= 33 ? h.a(packageManager, context).lastUpdateTime : packageManager.getPackageInfo(context.getPackageName(), 0).lastUpdateTime;
    }

    public static f0 b() {
        f0 f0Var = new f0(4);
        f10087c = f0Var;
        r.h hVar = f10085a;
        hVar.getClass();
        if (r.g.f.c(hVar, null, f0Var)) {
            r.g.b(hVar);
        }
        return f10087c;
    }

    public static void c(Context context, boolean z7) {
        i iVarA;
        int i6;
        if (z7 || f10087c == null) {
            synchronized (f10086b) {
                if (!z7) {
                    try {
                        if (f10087c != null) {
                            return;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                int i10 = Build.VERSION.SDK_INT;
                if (i10 >= 28 && i10 != 30) {
                    File file = new File(new File("/data/misc/profiles/ref/", context.getPackageName()), "primary.prof");
                    long length = file.length();
                    int i11 = 0;
                    boolean z10 = file.exists() && length > 0;
                    File file2 = new File(new File("/data/misc/profiles/cur/0/", context.getPackageName()), "primary.prof");
                    long length2 = file2.length();
                    boolean z11 = file2.exists() && length2 > 0;
                    try {
                        long jA = a(context);
                        File file3 = new File(context.getFilesDir(), "profileInstalled");
                        if (file3.exists()) {
                            try {
                                iVarA = i.a(file3);
                            } catch (IOException unused) {
                                b();
                                return;
                            }
                        } else {
                            iVarA = null;
                        }
                        if (iVarA != null && iVarA.f10084c == jA && (i6 = iVarA.f10083b) != 2) {
                            i11 = i6;
                        } else if (z10) {
                            i11 = 1;
                        } else if (z11) {
                            i11 = 2;
                        }
                        if (z7 && z11 && i11 != 1) {
                            i11 = 2;
                        }
                        i iVar = new i(jA, 1, (iVarA == null || iVarA.f10083b != 2 || i11 != 1 || length >= iVarA.d) ? i11 : 3, length2);
                        if (iVarA == null || !iVarA.equals(iVar)) {
                            try {
                                iVar.b(file3);
                            } catch (IOException unused2) {
                            }
                        }
                        b();
                        return;
                    } catch (PackageManager.NameNotFoundException unused3) {
                        b();
                        return;
                    }
                }
                b();
            }
        }
    }
}
