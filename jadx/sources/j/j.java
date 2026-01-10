package j;

import android.view.View;
import android.view.animation.Interpolator;
import androidx.appcompat.widget.u3;
import java.util.ArrayList;
import java.util.Iterator;
import n0.a1;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class j {

    /* renamed from: c, reason: collision with root package name */
    public Interpolator f7412c;
    public o9.d d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f7413e;

    /* renamed from: b, reason: collision with root package name */
    public long f7411b = -1;
    public final u3 f = new u3(this);

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f7410a = new ArrayList();

    public final void a() {
        if (this.f7413e) {
            Iterator it = this.f7410a.iterator();
            while (it.hasNext()) {
                ((a1) it.next()).b();
            }
            this.f7413e = false;
        }
    }

    public final void b() {
        View view;
        if (this.f7413e) {
            return;
        }
        Iterator it = this.f7410a.iterator();
        while (it.hasNext()) {
            a1 a1Var = (a1) it.next();
            long j10 = this.f7411b;
            if (j10 >= 0) {
                a1Var.c(j10);
            }
            Interpolator interpolator = this.f7412c;
            if (interpolator != null && (view = (View) a1Var.f8296a.get()) != null) {
                view.animate().setInterpolator(interpolator);
            }
            if (this.d != null) {
                a1Var.d(this.f);
            }
            View view2 = (View) a1Var.f8296a.get();
            if (view2 != null) {
                view2.animate().start();
            }
        }
        this.f7413e = true;
    }
}
