package com.google.android.gms.internal.cast;

import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class l0 extends t4.a {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f4296b;

    /* renamed from: c, reason: collision with root package name */
    public final View f4297c;

    public l0(ImageView imageView, int i6) {
        this.f4296b = i6;
        switch (i6) {
            case 1:
                this.f4297c = imageView;
                imageView.setEnabled(false);
                break;
            default:
                this.f4297c = imageView;
                imageView.setEnabled(false);
                break;
        }
    }

    @Override // t4.a
    public final void b() {
        switch (this.f4296b) {
            case 0:
                f();
                break;
            case 1:
                g();
                break;
            default:
                r4.f fVar = this.f10136a;
                ProgressBar progressBar = (ProgressBar) this.f4297c;
                if (fVar != null && fVar.i() && !fVar.j()) {
                    progressBar.setVisibility(8);
                    break;
                } else {
                    progressBar.setVisibility(0);
                    break;
                }
                break;
        }
    }

    @Override // t4.a
    public final void c() {
        switch (this.f4296b) {
            case 0:
                ((ImageView) this.f4297c).setEnabled(false);
                break;
            case 1:
                ((ImageView) this.f4297c).setEnabled(false);
                break;
            default:
                ((ProgressBar) this.f4297c).setVisibility(0);
                break;
        }
    }

    @Override // t4.a
    public final void d(q4.b bVar) {
        switch (this.f4296b) {
            case 0:
                super.d(bVar);
                f();
                break;
            case 1:
                super.d(bVar);
                g();
                break;
            default:
                super.d(bVar);
                r4.f fVar = this.f10136a;
                ProgressBar progressBar = (ProgressBar) this.f4297c;
                if (fVar != null && fVar.i() && !fVar.j()) {
                    progressBar.setVisibility(8);
                    break;
                } else {
                    progressBar.setVisibility(0);
                    break;
                }
                break;
        }
    }

    @Override // t4.a
    public final void e() {
        switch (this.f4296b) {
            case 0:
                ((ImageView) this.f4297c).setEnabled(false);
                this.f10136a = null;
                break;
            case 1:
                ((ImageView) this.f4297c).setEnabled(false);
                this.f10136a = null;
                break;
            default:
                ((ProgressBar) this.f4297c).setVisibility(8);
                this.f10136a = null;
                break;
        }
    }

    public void f() {
        r4.f fVar = this.f10136a;
        ImageView imageView = (ImageView) this.f4297c;
        if (fVar == null || !fVar.A() || fVar.o()) {
            imageView.setVisibility(0);
            imageView.setEnabled(false);
        } else {
            imageView.setVisibility(0);
            imageView.setEnabled(true);
        }
    }

    public void g() {
        r4.f fVar = this.f10136a;
        ImageView imageView = (ImageView) this.f4297c;
        if (fVar == null || !fVar.B() || fVar.o()) {
            imageView.setVisibility(0);
            imageView.setEnabled(false);
        } else {
            imageView.setVisibility(0);
            imageView.setEnabled(true);
        }
    }

    public l0(ProgressBar progressBar) {
        this.f4296b = 2;
        this.f4297c = progressBar;
    }
}
