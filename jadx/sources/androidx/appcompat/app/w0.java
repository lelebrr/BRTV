package androidx.appcompat.app;

import android.content.Context;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.widget.ActionBarContextView;
import java.lang.ref.WeakReference;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class w0 extends j.a implements k.j {

    /* renamed from: c, reason: collision with root package name */
    public final Context f373c;
    public final k.l d;

    /* renamed from: e, reason: collision with root package name */
    public a7.f f374e;
    public WeakReference f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ x0 f375g;

    public w0(x0 x0Var, Context context, a7.f fVar) {
        this.f375g = x0Var;
        this.f373c = context;
        this.f374e = fVar;
        k.l lVar = new k.l(context);
        lVar.f7618l = 1;
        this.d = lVar;
        lVar.f7612e = this;
    }

    @Override // j.a
    public final void a() {
        x0 x0Var = this.f375g;
        if (x0Var.f384z != this) {
            return;
        }
        if (x0Var.G) {
            x0Var.A = this;
            x0Var.B = this.f374e;
        } else {
            this.f374e.E(this);
        }
        this.f374e = null;
        x0Var.V(false);
        ActionBarContextView actionBarContextView = x0Var.f381w;
        if (actionBarContextView.f432k == null) {
            actionBarContextView.e();
        }
        x0Var.f378t.setHideOnContentScrollEnabled(x0Var.L);
        x0Var.f384z = null;
    }

    @Override // j.a
    public final View b() {
        WeakReference weakReference = this.f;
        if (weakReference != null) {
            return (View) weakReference.get();
        }
        return null;
    }

    @Override // j.a
    public final k.l c() {
        return this.d;
    }

    @Override // j.a
    public final MenuInflater d() {
        return new j.i(this.f373c);
    }

    @Override // j.a
    public final CharSequence e() {
        return this.f375g.f381w.getSubtitle();
    }

    @Override // j.a
    public final CharSequence f() {
        return this.f375g.f381w.getTitle();
    }

    @Override // j.a
    public final void g() {
        if (this.f375g.f384z != this) {
            return;
        }
        k.l lVar = this.d;
        lVar.y();
        try {
            this.f374e.F(this, lVar);
        } finally {
            lVar.x();
        }
    }

    @Override // j.a
    public final boolean h() {
        return this.f375g.f381w.f440s;
    }

    @Override // j.a
    public final void i(View view) {
        this.f375g.f381w.setCustomView(view);
        this.f = new WeakReference(view);
    }

    @Override // k.j
    public final boolean j(k.l lVar, MenuItem menuItem) {
        a7.f fVar = this.f374e;
        if (fVar != null) {
            return ((a0.f) fVar.f169b).g(this, menuItem);
        }
        return false;
    }

    @Override // j.a
    public final void k(int i6) {
        l(this.f375g.f376r.getResources().getString(i6));
    }

    @Override // j.a
    public final void l(CharSequence charSequence) {
        this.f375g.f381w.setSubtitle(charSequence);
    }

    @Override // j.a
    public final void m(int i6) {
        o(this.f375g.f376r.getResources().getString(i6));
    }

    @Override // k.j
    public final void n(k.l lVar) {
        if (this.f374e == null) {
            return;
        }
        g();
        androidx.appcompat.widget.k kVar = this.f375g.f381w.d;
        if (kVar != null) {
            kVar.n();
        }
    }

    @Override // j.a
    public final void o(CharSequence charSequence) {
        this.f375g.f381w.setTitle(charSequence);
    }

    @Override // j.a
    public final void p(boolean z7) {
        this.f7368b = z7;
        this.f375g.f381w.setTitleOptional(z7);
    }
}
