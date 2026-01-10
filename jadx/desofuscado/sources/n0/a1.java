package n0;

import android.view.View;
import java.lang.ref.WeakReference;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a1 {

    /* renamed from: a, reason: collision with root package name */
    public final WeakReference f8296a;

    public a1(View view) {
        this.f8296a = new WeakReference(view);
    }

    public final void a(float f) {
        View view = (View) this.f8296a.get();
        if (view != null) {
            view.animate().alpha(f);
        }
    }

    public final void b() {
        View view = (View) this.f8296a.get();
        if (view != null) {
            view.animate().cancel();
        }
    }

    public final void c(long j10) {
        View view = (View) this.f8296a.get();
        if (view != null) {
            view.animate().setDuration(j10);
        }
    }

    public final void d(b1 b1Var) {
        View view = (View) this.f8296a.get();
        if (view != null) {
            if (b1Var != null) {
                view.animate().setListener(new a7.d(b1Var, 1, view));
            } else {
                view.animate().setListener(null);
            }
        }
    }

    public final void e(float f) {
        View view = (View) this.f8296a.get();
        if (view != null) {
            view.animate().translationY(f);
        }
    }
}
