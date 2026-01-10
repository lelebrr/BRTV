package f6;

import android.util.Property;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c extends Property {

    /* renamed from: a, reason: collision with root package name */
    public static final c f6790a = new c(Integer.class, "circularRevealScrimColor");

    @Override // android.util.Property
    public final Object get(Object obj) {
        return Integer.valueOf(((e) obj).getCircularRevealScrimColor());
    }

    @Override // android.util.Property
    public final void set(Object obj, Object obj2) {
        ((e) obj).setCircularRevealScrimColor(((Integer) obj2).intValue());
    }
}
