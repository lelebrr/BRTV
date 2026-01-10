package androidx.appcompat.widget;

import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.widget.ListAdapter;
import androidx.appcompat.app.AlertController$RecycleListView;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class i0 implements o0, DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public androidx.appcompat.app.j f735a;

    /* renamed from: b, reason: collision with root package name */
    public j0 f736b;

    /* renamed from: c, reason: collision with root package name */
    public CharSequence f737c;
    public final /* synthetic */ AppCompatSpinner d;

    public i0(AppCompatSpinner appCompatSpinner) {
        this.d = appCompatSpinner;
    }

    @Override // androidx.appcompat.widget.o0
    public final boolean c() {
        androidx.appcompat.app.j jVar = this.f735a;
        if (jVar != null) {
            return jVar.isShowing();
        }
        return false;
    }

    @Override // androidx.appcompat.widget.o0
    public final void dismiss() {
        androidx.appcompat.app.j jVar = this.f735a;
        if (jVar != null) {
            jVar.dismiss();
            this.f735a = null;
        }
    }

    @Override // androidx.appcompat.widget.o0
    public final int e() {
        return 0;
    }

    @Override // androidx.appcompat.widget.o0
    public final Drawable f() {
        return null;
    }

    @Override // androidx.appcompat.widget.o0
    public final void g(CharSequence charSequence) {
        this.f737c = charSequence;
    }

    @Override // androidx.appcompat.widget.o0
    public final void i(Drawable drawable) {
        Log.e("AppCompatSpinner", "Cannot set popup background for MODE_DIALOG, ignoring");
    }

    @Override // androidx.appcompat.widget.o0
    public final void j(int i6) {
        Log.e("AppCompatSpinner", "Cannot set vertical offset for MODE_DIALOG, ignoring");
    }

    @Override // androidx.appcompat.widget.o0
    public final void l(int i6) {
        Log.e("AppCompatSpinner", "Cannot set horizontal (original) offset for MODE_DIALOG, ignoring");
    }

    @Override // androidx.appcompat.widget.o0
    public final void m(int i6) {
        Log.e("AppCompatSpinner", "Cannot set horizontal offset for MODE_DIALOG, ignoring");
    }

    @Override // androidx.appcompat.widget.o0
    public final void n(int i6, int i10) {
        if (this.f736b == null) {
            return;
        }
        AppCompatSpinner appCompatSpinner = this.d;
        androidx.appcompat.app.i iVar = new androidx.appcompat.app.i(appCompatSpinner.getPopupContext());
        CharSequence charSequence = this.f737c;
        androidx.appcompat.app.e eVar = iVar.f314a;
        if (charSequence != null) {
            eVar.d = charSequence;
        }
        j0 j0Var = this.f736b;
        int selectedItemPosition = appCompatSpinner.getSelectedItemPosition();
        eVar.f241g = j0Var;
        eVar.f242h = this;
        eVar.f245k = selectedItemPosition;
        eVar.f244j = true;
        androidx.appcompat.app.j jVarA = iVar.a();
        this.f735a = jVarA;
        AlertController$RecycleListView alertController$RecycleListView = jVarA.f319e.f293e;
        g0.d(alertController$RecycleListView, i6);
        g0.c(alertController$RecycleListView, i10);
        this.f735a.show();
    }

    @Override // androidx.appcompat.widget.o0
    public final int o() {
        return 0;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i6) {
        AppCompatSpinner appCompatSpinner = this.d;
        appCompatSpinner.setSelection(i6);
        if (appCompatSpinner.getOnItemClickListener() != null) {
            appCompatSpinner.performItemClick(null, i6, this.f736b.getItemId(i6));
        }
        dismiss();
    }

    @Override // androidx.appcompat.widget.o0
    public final CharSequence p() {
        return this.f737c;
    }

    @Override // androidx.appcompat.widget.o0
    public final void q(ListAdapter listAdapter) {
        this.f736b = (j0) listAdapter;
    }
}
