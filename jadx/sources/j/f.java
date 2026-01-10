package j;

import android.content.Context;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.View;
import k.b0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class f extends ActionMode {

    /* renamed from: a, reason: collision with root package name */
    public final Context f7377a;

    /* renamed from: b, reason: collision with root package name */
    public final a f7378b;

    public f(Context context, a aVar) {
        this.f7377a = context;
        this.f7378b = aVar;
    }

    @Override // android.view.ActionMode
    public final void finish() {
        this.f7378b.a();
    }

    @Override // android.view.ActionMode
    public final View getCustomView() {
        return this.f7378b.b();
    }

    @Override // android.view.ActionMode
    public final Menu getMenu() {
        return new b0(this.f7377a, this.f7378b.c());
    }

    @Override // android.view.ActionMode
    public final MenuInflater getMenuInflater() {
        return this.f7378b.d();
    }

    @Override // android.view.ActionMode
    public final CharSequence getSubtitle() {
        return this.f7378b.e();
    }

    @Override // android.view.ActionMode
    public final Object getTag() {
        return this.f7378b.f7367a;
    }

    @Override // android.view.ActionMode
    public final CharSequence getTitle() {
        return this.f7378b.f();
    }

    @Override // android.view.ActionMode
    public final boolean getTitleOptionalHint() {
        return this.f7378b.f7368b;
    }

    @Override // android.view.ActionMode
    public final void invalidate() {
        this.f7378b.g();
    }

    @Override // android.view.ActionMode
    public final boolean isTitleOptional() {
        return this.f7378b.h();
    }

    @Override // android.view.ActionMode
    public final void setCustomView(View view) {
        this.f7378b.i(view);
    }

    @Override // android.view.ActionMode
    public final void setSubtitle(CharSequence charSequence) {
        this.f7378b.l(charSequence);
    }

    @Override // android.view.ActionMode
    public final void setTag(Object obj) {
        this.f7378b.f7367a = obj;
    }

    @Override // android.view.ActionMode
    public final void setTitle(CharSequence charSequence) {
        this.f7378b.o(charSequence);
    }

    @Override // android.view.ActionMode
    public final void setTitleOptionalHint(boolean z7) {
        this.f7378b.p(z7);
    }

    @Override // android.view.ActionMode
    public final void setSubtitle(int i6) {
        this.f7378b.k(i6);
    }

    @Override // android.view.ActionMode
    public final void setTitle(int i6) {
        this.f7378b.m(i6);
    }
}
