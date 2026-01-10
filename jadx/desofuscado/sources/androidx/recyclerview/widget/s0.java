package androidx.recyclerview.widget;

import android.view.View;
import java.util.ArrayList;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class s0 {

    /* renamed from: a, reason: collision with root package name */
    public q0 f2944a;

    /* renamed from: b, reason: collision with root package name */
    public ArrayList f2945b;

    /* renamed from: c, reason: collision with root package name */
    public long f2946c;
    public long d;

    /* renamed from: e, reason: collision with root package name */
    public long f2947e;
    public long f;

    public static void b(p1 p1Var) {
        int i6 = p1Var.mFlags;
        if (!p1Var.isInvalid() && (i6 & 4) == 0) {
            p1Var.getOldPosition();
            p1Var.getAbsoluteAdapterPosition();
        }
    }

    public abstract boolean a(p1 p1Var, p1 p1Var2, r0 r0Var, r0 r0Var2);

    public final void c(p1 p1Var) {
        q0 q0Var = this.f2944a;
        if (q0Var != null) {
            i0 i0Var = (i0) q0Var;
            i0Var.getClass();
            p1Var.setIsRecyclable(true);
            if (p1Var.mShadowedHolder != null && p1Var.mShadowingHolder == null) {
                p1Var.mShadowedHolder = null;
            }
            p1Var.mShadowingHolder = null;
            if (p1Var.shouldBeKeptAsChild()) {
                return;
            }
            View view = p1Var.itemView;
            RecyclerView recyclerView = (RecyclerView) i0Var.f2858a;
            if (recyclerView.removeAnimatingView(view) || !p1Var.isTmpDetached()) {
                return;
            }
            recyclerView.removeDetachedView(p1Var.itemView, false);
        }
    }

    public abstract void d(p1 p1Var);

    public abstract void e();

    public abstract boolean f();
}
