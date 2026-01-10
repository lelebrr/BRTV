package com.google.android.gms.internal.cast;

import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import com.google.android.gms.cast.framework.media.widget.ExpandedControllerActivity;
import com.p2elite.brtv2.R;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class k0 extends t4.a {

    /* renamed from: b, reason: collision with root package name */
    public final ImageView f4267b;

    /* renamed from: c, reason: collision with root package name */
    public final Drawable f4268c;
    public final String d;

    /* renamed from: e, reason: collision with root package name */
    public final Drawable f4269e;
    public final String f;

    /* renamed from: g, reason: collision with root package name */
    public final Drawable f4270g;

    /* renamed from: h, reason: collision with root package name */
    public final String f4271h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f4272i = false;

    public k0(ImageView imageView, ExpandedControllerActivity expandedControllerActivity, Drawable drawable, Drawable drawable2, Drawable drawable3) {
        this.f4267b = imageView;
        this.f4268c = drawable;
        this.f4269e = drawable2;
        this.f4270g = drawable3 != null ? drawable3 : drawable2;
        this.d = expandedControllerActivity.getString(R.string.cast_play);
        this.f = expandedControllerActivity.getString(R.string.cast_pause);
        this.f4271h = expandedControllerActivity.getString(R.string.cast_stop);
        imageView.setEnabled(false);
    }

    @Override // t4.a
    public final void b() {
        h();
    }

    @Override // t4.a
    public final void c() {
        g(true);
    }

    @Override // t4.a
    public final void d(q4.b bVar) {
        super.d(bVar);
        h();
    }

    @Override // t4.a
    public final void e() {
        this.f4267b.setEnabled(false);
        this.f10136a = null;
    }

    public final void f(Drawable drawable, String str) {
        ImageView imageView = this.f4267b;
        boolean zEquals = drawable.equals(imageView.getDrawable());
        imageView.setImageDrawable(drawable);
        imageView.setContentDescription(str);
        imageView.setVisibility(0);
        imageView.setEnabled(true);
        if (zEquals || !this.f4272i) {
            return;
        }
        imageView.sendAccessibilityEvent(8);
    }

    public final void g(boolean z7) {
        ImageView imageView = this.f4267b;
        this.f4272i = imageView.isAccessibilityFocused();
        imageView.setVisibility(0);
        imageView.setEnabled(!z7);
    }

    public final void h() {
        r4.f fVar = this.f10136a;
        if (fVar == null || !fVar.i()) {
            this.f4267b.setEnabled(false);
            return;
        }
        if (fVar.n()) {
            if (fVar.k()) {
                f(this.f4270g, this.f4271h);
                return;
            } else {
                f(this.f4269e, this.f);
                return;
            }
        }
        if (fVar.j()) {
            g(false);
        } else if (fVar.m()) {
            f(this.f4268c, this.d);
        } else if (fVar.l()) {
            g(true);
        }
    }
}
