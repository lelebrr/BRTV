package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.widget.FrameLayout;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class ContentFrameLayout extends FrameLayout {

    /* renamed from: a, reason: collision with root package name */
    public TypedValue f541a;

    /* renamed from: b, reason: collision with root package name */
    public TypedValue f542b;

    /* renamed from: c, reason: collision with root package name */
    public TypedValue f543c;
    public TypedValue d;

    /* renamed from: e, reason: collision with root package name */
    public TypedValue f544e;
    public TypedValue f;

    /* renamed from: g, reason: collision with root package name */
    public final Rect f545g;

    /* renamed from: h, reason: collision with root package name */
    public h1 f546h;

    public ContentFrameLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TypedValue getFixedHeightMajor() {
        if (this.f544e == null) {
            this.f544e = new TypedValue();
        }
        return this.f544e;
    }

    public TypedValue getFixedHeightMinor() {
        if (this.f == null) {
            this.f = new TypedValue();
        }
        return this.f;
    }

    public TypedValue getFixedWidthMajor() {
        if (this.f543c == null) {
            this.f543c = new TypedValue();
        }
        return this.f543c;
    }

    public TypedValue getFixedWidthMinor() {
        if (this.d == null) {
            this.d = new TypedValue();
        }
        return this.d;
    }

    public TypedValue getMinWidthMajor() {
        if (this.f541a == null) {
            this.f541a = new TypedValue();
        }
        return this.f541a;
    }

    public TypedValue getMinWidthMinor() {
        if (this.f542b == null) {
            this.f542b = new TypedValue();
        }
        return this.f542b;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        h1 h1Var = this.f546h;
        if (h1Var != null) {
            h1Var.getClass();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        k kVar;
        super.onDetachedFromWindow();
        h1 h1Var = this.f546h;
        if (h1Var != null) {
            androidx.appcompat.app.g0 g0Var = ((androidx.appcompat.app.s) h1Var).f355b;
            i1 i1Var = g0Var.f281r;
            if (i1Var != null) {
                ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) i1Var;
                actionBarOverlayLayout.k();
                ActionMenuView actionMenuView = ((v3) actionBarOverlayLayout.f445e).f862a.f630a;
                if (actionMenuView != null && (kVar = actionMenuView.f471t) != null) {
                    kVar.c();
                    e eVar = kVar.f758u;
                    if (eVar != null && eVar.b()) {
                        eVar.f7674i.dismiss();
                    }
                }
            }
            if (g0Var.f286w != null) {
                g0Var.f275l.getDecorView().removeCallbacks(g0Var.f287x);
                if (g0Var.f286w.isShowing()) {
                    try {
                        g0Var.f286w.dismiss();
                    } catch (IllegalArgumentException unused) {
                    }
                }
                g0Var.f286w = null;
            }
            n0.a1 a1Var = g0Var.f288y;
            if (a1Var != null) {
                a1Var.b();
            }
            k.l lVar = g0Var.A(0).f253h;
            if (lVar != null) {
                lVar.c(true);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00de  */
    @Override // android.widget.FrameLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onMeasure(int r17, int r18) {
        /*
            Method dump skipped, instructions count: 229
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ContentFrameLayout.onMeasure(int, int):void");
    }

    public void setAttachListener(h1 h1Var) {
        this.f546h = h1Var;
    }

    public ContentFrameLayout(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
        this.f545g = new Rect();
    }
}
