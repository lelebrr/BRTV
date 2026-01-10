package androidx.appcompat.widget;

import android.os.Build;
import java.lang.reflect.Method;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a3 {

    /* renamed from: a, reason: collision with root package name */
    public Method f664a;

    /* renamed from: b, reason: collision with root package name */
    public Method f665b;

    /* renamed from: c, reason: collision with root package name */
    public Method f666c;

    public a3(Method method, Method method2, Method method3) {
        this.f664a = method;
        this.f665b = method2;
        this.f666c = method3;
    }

    public static void a() {
        if (Build.VERSION.SDK_INT >= 29) {
            throw new UnsupportedClassVersionError("This function can only be used for API Level < 29.");
        }
    }
}
