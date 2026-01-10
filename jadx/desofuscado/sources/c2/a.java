package c2;

import android.content.Context;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public static final a f3337a = new a();

    /* renamed from: b, reason: collision with root package name */
    public static l f3338b;

    public static final l a(Context context) {
        l lVar = f3338b;
        if (lVar != null) {
            return lVar;
        }
        synchronized (f3337a) {
            l lVar2 = f3338b;
            if (lVar2 != null) {
                return lVar2;
            }
            context.getApplicationContext();
            l lVarK = l5.a.k(context);
            f3338b = lVarK;
            return lVarK;
        }
    }
}
