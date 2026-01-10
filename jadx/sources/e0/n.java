package e0;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.util.SparseArray;
import android.util.TypedValue;
import java.util.WeakHashMap;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class n {

    /* renamed from: a, reason: collision with root package name */
    public static final ThreadLocal f6394a = new ThreadLocal();

    /* renamed from: b, reason: collision with root package name */
    public static final WeakHashMap f6395b = new WeakHashMap(0);

    /* renamed from: c, reason: collision with root package name */
    public static final Object f6396c = new Object();

    public static void a(l lVar, int i6, ColorStateList colorStateList, Resources.Theme theme) {
        synchronized (f6396c) {
            try {
                WeakHashMap weakHashMap = f6395b;
                SparseArray sparseArray = (SparseArray) weakHashMap.get(lVar);
                if (sparseArray == null) {
                    sparseArray = new SparseArray();
                    weakHashMap.put(lVar, sparseArray);
                }
                sparseArray.append(i6, new k(colorStateList, lVar.f6392a.getConfiguration(), theme));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static Typeface b(Context context, int i6) {
        if (context.isRestricted()) {
            return null;
        }
        return c(context, i6, new TypedValue(), 0, null, false, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00df A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static android.graphics.Typeface c(android.content.Context r16, int r17, android.util.TypedValue r18, int r19, e0.b r20, boolean r21, boolean r22) throws android.content.res.Resources.NotFoundException {
        /*
            Method dump skipped, instructions count: 302
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: e0.n.c(android.content.Context, int, android.util.TypedValue, int, e0.b, boolean, boolean):android.graphics.Typeface");
    }
}
