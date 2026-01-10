package k0;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Typeface;
import com.tencent.bugly.proguard.c0;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import p.k;
import p.l;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class f {

    /* renamed from: a, reason: collision with root package name */
    public static final k f7688a = new k(16);

    /* renamed from: b, reason: collision with root package name */
    public static final ThreadPoolExecutor f7689b;

    /* renamed from: c, reason: collision with root package name */
    public static final Object f7690c;
    public static final l d;

    static {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 10000, TimeUnit.MILLISECONDS, new LinkedBlockingDeque(), new c0(1));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        f7689b = threadPoolExecutor;
        f7690c = new Object();
        d = new l(0);
    }

    public static e a(String str, Context context, c2.b bVar, int i6) throws Resources.NotFoundException {
        k kVar = f7688a;
        Typeface typeface = (Typeface) kVar.b(str);
        if (typeface != null) {
            return new e(typeface);
        }
        try {
            c6.b bVarA = b.a(context, bVar);
            int i10 = 1;
            g[] gVarArr = (g[]) bVarA.f3391b;
            int i11 = bVarA.f3390a;
            if (i11 != 0) {
                i10 = i11 != 1 ? -3 : -2;
            } else if (gVarArr != null && gVarArr.length != 0) {
                int length = gVarArr.length;
                i10 = 0;
                int i12 = 0;
                while (true) {
                    if (i12 >= length) {
                        break;
                    }
                    int i13 = gVarArr[i12].f7694e;
                    if (i13 == 0) {
                        i12++;
                    } else if (i13 >= 0) {
                        i10 = i13;
                    }
                }
            }
            if (i10 != 0) {
                return new e(i10);
            }
            Typeface typefaceM = f0.g.f6760a.m(context, gVarArr, i6);
            if (typefaceM == null) {
                return new e(-3);
            }
            kVar.d(str, typefaceM);
            return new e(typefaceM);
        } catch (PackageManager.NameNotFoundException unused) {
            return new e(-1);
        }
    }
}
