package j;

import android.content.Context;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.widget.ActionBarContextView;
import java.lang.ref.WeakReference;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class e extends a implements k.j {

    /* renamed from: c, reason: collision with root package name */
    public Context f7373c;
    public ActionBarContextView d;

    /* renamed from: e, reason: collision with root package name */
    public a7.f f7374e;
    public WeakReference f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f7375g;

    /* renamed from: h, reason: collision with root package name */
    public k.l f7376h;

    @Override // j.a
    public final void a() {
        if (this.f7375g) {
            return;
        }
        this.f7375g = true;
        this.f7374e.E(this);
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
        return this.f7376h;
    }

    @Override // j.a
    public final MenuInflater d() {
        return new i(this.d.getContext());
    }

    @Override // j.a
    public final CharSequence e() {
        return this.d.getSubtitle();
    }

    @Override // j.a
    public final CharSequence f() {
        return this.d.getTitle();
    }

    @Override // j.a
    public final void g() {
        this.f7374e.F(this, this.f7376h);
    }

    @Override // j.a
    public final boolean h() {
        return this.d.f440s;
    }

    @Override // j.a
    public final void i(View view) {
        this.d.setCustomView(view);
        this.f = view != null ? new WeakReference(view) : null;
    }

    @Override // k.j
    public final boolean j(k.l lVar, MenuItem menuItem) {
        return ((a0.f) this.f7374e.f169b).g(this, menuItem);
    }

    @Override // j.a
    public final void k(int i6) {
        l(this.f7373c.getString(i6));
    }

    @Override // j.a
    public final void l(CharSequence charSequence) {
        this.d.setSubtitle(charSequence);
    }

    @Override // j.a
    public final void m(int i6) {
        o(this.f7373c.getString(i6));
    }

    @Override // k.j
    public final void n(k.l lVar) {
        g();
        androidx.appcompat.widget.k kVar = this.d.d;
        if (kVar != null) {
            kVar.n();
        }
    }

    @Override // j.a
    public final void o(CharSequence charSequence) {
        this.d.setTitle(charSequence);
    }

    @Override // j.a
    public final void p(boolean z7) {
        this.f7368b = z7;
        this.d.setTitleOptional(z7);
    }
}
