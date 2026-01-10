package com.bumptech.glide;

import android.graphics.drawable.Drawable;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import com.p2elite.brtv2.R;
import java.util.ArrayList;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class m implements o3.h {

    /* renamed from: a, reason: collision with root package name */
    public final o3.d f3566a;

    /* renamed from: b, reason: collision with root package name */
    public final ImageView f3567b;

    public m(ImageView imageView) {
        r3.f.c(imageView, "Argument must not be null");
        this.f3567b = imageView;
        this.f3566a = new o3.d(imageView);
    }

    @Override // o3.h
    public final void a(n3.c cVar) {
        this.f3567b.setTag(R.id.glide_custom_view_target_tag, cVar);
    }

    @Override // o3.h
    public final void e(n3.f fVar) {
        this.f3566a.f8558b.remove(fVar);
    }

    @Override // o3.h
    public final void f(n3.f fVar) {
        o3.d dVar = this.f3566a;
        ImageView imageView = dVar.f8557a;
        int paddingRight = imageView.getPaddingRight() + imageView.getPaddingLeft();
        ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
        int iA = dVar.a(imageView.getWidth(), layoutParams != null ? layoutParams.width : 0, paddingRight);
        ImageView imageView2 = dVar.f8557a;
        int paddingBottom = imageView2.getPaddingBottom() + imageView2.getPaddingTop();
        ViewGroup.LayoutParams layoutParams2 = imageView2.getLayoutParams();
        int iA2 = dVar.a(imageView2.getHeight(), layoutParams2 != null ? layoutParams2.height : 0, paddingBottom);
        if ((iA > 0 || iA == Integer.MIN_VALUE) && (iA2 > 0 || iA2 == Integer.MIN_VALUE)) {
            fVar.m(iA, iA2);
            return;
        }
        ArrayList arrayList = dVar.f8558b;
        if (!arrayList.contains(fVar)) {
            arrayList.add(fVar);
        }
        if (dVar.f8559c == null) {
            ViewTreeObserver viewTreeObserver = imageView2.getViewTreeObserver();
            o3.c cVar = new o3.c(dVar);
            dVar.f8559c = cVar;
            viewTreeObserver.addOnPreDrawListener(cVar);
        }
    }

    @Override // o3.h
    public final n3.c getRequest() {
        Object tag = this.f3567b.getTag(R.id.glide_custom_view_target_tag);
        if (tag == null) {
            return null;
        }
        if (tag instanceof n3.c) {
            return (n3.c) tag;
        }
        throw new IllegalArgumentException("You must not pass non-R.id ids to setTag(id)");
    }

    @Override // o3.h
    public final void h(Drawable drawable) {
        o3.d dVar = this.f3566a;
        ViewTreeObserver viewTreeObserver = dVar.f8557a.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnPreDrawListener(dVar.f8559c);
        }
        dVar.f8559c = null;
        dVar.f8558b.clear();
    }

    public final String toString() {
        return "Target for: " + this.f3567b;
    }

    @Override // k3.i
    public final void c() {
    }

    @Override // k3.i
    public final void i() {
    }

    @Override // k3.i
    public final void j() {
    }

    @Override // o3.h
    public final void b(Drawable drawable) {
    }

    @Override // o3.h
    public final void g(Drawable drawable) {
    }

    @Override // o3.h
    public final void d(Object obj, p3.c cVar) {
    }
}
