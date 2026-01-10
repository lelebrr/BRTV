package c1;

import android.os.Build;
import android.view.View;
import java.nio.ByteBuffer;
import n0.s0;
import u6.e;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class c {

    /* renamed from: a, reason: collision with root package name */
    public int f3334a;

    /* renamed from: b, reason: collision with root package name */
    public int f3335b;

    /* renamed from: c, reason: collision with root package name */
    public int f3336c;
    public Object d;

    public c() {
        if (e.f10347b == null) {
            e.f10347b = new e(5);
        }
    }

    public int a(int i6) {
        if (i6 < this.f3336c) {
            return ((ByteBuffer) this.d).getShort(this.f3335b + i6);
        }
        return 0;
    }

    public abstract Object b(View view);

    public abstract void c(View view, Object obj);

    public void d(View view, Object obj) {
        Object tag;
        if (Build.VERSION.SDK_INT >= this.f3335b) {
            c(view, obj);
            return;
        }
        if (Build.VERSION.SDK_INT >= this.f3335b) {
            tag = b(view);
        } else {
            tag = view.getTag(this.f3334a);
            if (!((Class) this.d).isInstance(tag)) {
                tag = null;
            }
        }
        if (e(tag, obj)) {
            View.AccessibilityDelegate accessibilityDelegateD = s0.d(view);
            n0.b bVar = accessibilityDelegateD == null ? null : accessibilityDelegateD instanceof n0.a ? ((n0.a) accessibilityDelegateD).f8291a : new n0.b(accessibilityDelegateD);
            if (bVar == null) {
                bVar = new n0.b();
            }
            s0.q(view, bVar);
            view.setTag(this.f3334a, obj);
            s0.h(this.f3336c, view);
        }
    }

    public abstract boolean e(Object obj, Object obj2);
}
