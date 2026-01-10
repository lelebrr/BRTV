package androidx.coordinatorlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import ea.q;
import java.lang.reflect.Constructor;
import java.util.HashMap;
import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c extends ViewGroup.MarginLayoutParams {

    /* renamed from: a, reason: collision with root package name */
    public CoordinatorLayout.Behavior f1122a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f1123b;

    /* renamed from: c, reason: collision with root package name */
    public final int f1124c;
    public int d;

    /* renamed from: e, reason: collision with root package name */
    public final int f1125e;
    public final int f;

    /* renamed from: g, reason: collision with root package name */
    public final int f1126g;

    /* renamed from: h, reason: collision with root package name */
    public int f1127h;

    /* renamed from: i, reason: collision with root package name */
    public int f1128i;

    /* renamed from: j, reason: collision with root package name */
    public int f1129j;

    /* renamed from: k, reason: collision with root package name */
    public View f1130k;

    /* renamed from: l, reason: collision with root package name */
    public View f1131l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f1132m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f1133n;

    /* renamed from: o, reason: collision with root package name */
    public boolean f1134o;

    /* renamed from: p, reason: collision with root package name */
    public final Rect f1135p;

    public c() {
        super(-2, -2);
        this.f1123b = false;
        this.f1124c = 0;
        this.d = 0;
        this.f1125e = -1;
        this.f = -1;
        this.f1126g = 0;
        this.f1127h = 0;
        this.f1135p = new Rect();
    }

    public final boolean a(int i6) {
        if (i6 == 0) {
            return this.f1132m;
        }
        if (i6 != 1) {
            return false;
        }
        return this.f1133n;
    }

    public c(Context context, AttributeSet attributeSet) throws NoSuchMethodException, SecurityException {
        CoordinatorLayout.Behavior behavior;
        super(context, attributeSet);
        this.f1123b = false;
        this.f1124c = 0;
        this.d = 0;
        this.f1125e = -1;
        this.f = -1;
        this.f1126g = 0;
        this.f1127h = 0;
        this.f1135p = new Rect();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, z.a.f11439b);
        this.f1124c = typedArrayObtainStyledAttributes.getInteger(0, 0);
        this.f = typedArrayObtainStyledAttributes.getResourceId(1, -1);
        this.d = typedArrayObtainStyledAttributes.getInteger(2, 0);
        this.f1125e = typedArrayObtainStyledAttributes.getInteger(6, -1);
        this.f1126g = typedArrayObtainStyledAttributes.getInt(5, 0);
        this.f1127h = typedArrayObtainStyledAttributes.getInt(4, 0);
        boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(3);
        this.f1123b = zHasValue;
        if (zHasValue) {
            String string = typedArrayObtainStyledAttributes.getString(3);
            String str = CoordinatorLayout.f1099t;
            if (TextUtils.isEmpty(string)) {
                behavior = null;
            } else {
                if (string.startsWith(".")) {
                    string = context.getPackageName() + string;
                } else if (string.indexOf(46) < 0) {
                    String str2 = CoordinatorLayout.f1099t;
                    if (!TextUtils.isEmpty(str2)) {
                        string = str2 + '.' + string;
                    }
                }
                try {
                    ThreadLocal threadLocal = CoordinatorLayout.f1101v;
                    Map map = (Map) threadLocal.get();
                    if (map == null) {
                        map = new HashMap();
                        threadLocal.set(map);
                    }
                    Constructor<?> constructor = (Constructor) map.get(string);
                    if (constructor == null) {
                        constructor = Class.forName(string, false, context.getClassLoader()).getConstructor(CoordinatorLayout.f1100u);
                        constructor.setAccessible(true);
                        map.put(string, constructor);
                    }
                    behavior = (CoordinatorLayout.Behavior) constructor.newInstance(context, attributeSet);
                } catch (Exception e5) {
                    throw new RuntimeException(q.p("Could not inflate Behavior subclass ", string), e5);
                }
            }
            this.f1122a = behavior;
        }
        typedArrayObtainStyledAttributes.recycle();
        CoordinatorLayout.Behavior behavior2 = this.f1122a;
        if (behavior2 != null) {
            behavior2.c(this);
        }
    }

    public c(c cVar) {
        super((ViewGroup.MarginLayoutParams) cVar);
        this.f1123b = false;
        this.f1124c = 0;
        this.d = 0;
        this.f1125e = -1;
        this.f = -1;
        this.f1126g = 0;
        this.f1127h = 0;
        this.f1135p = new Rect();
    }

    public c(ViewGroup.MarginLayoutParams marginLayoutParams) {
        super(marginLayoutParams);
        this.f1123b = false;
        this.f1124c = 0;
        this.d = 0;
        this.f1125e = -1;
        this.f = -1;
        this.f1126g = 0;
        this.f1127h = 0;
        this.f1135p = new Rect();
    }

    public c(ViewGroup.LayoutParams layoutParams) {
        super(layoutParams);
        this.f1123b = false;
        this.f1124c = 0;
        this.d = 0;
        this.f1125e = -1;
        this.f = -1;
        this.f1126g = 0;
        this.f1127h = 0;
        this.f1135p = new Rect();
    }
}
