package com.google.android.material.textfield;

import android.view.View;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityManager;
import k.d0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class k implements View.OnAttachStateChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5324a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f5325b;

    public /* synthetic */ k(int i6, Object obj) {
        this.f5324a = i6;
        this.f5325b = obj;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        switch (this.f5324a) {
            case 0:
                ((m) this.f5325b).f();
                break;
        }
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        switch (this.f5324a) {
            case 0:
                m mVar = (m) this.f5325b;
                AccessibilityManager accessibilityManager = mVar.f5340q;
                if (accessibilityManager != null) {
                    accessibilityManager.removeTouchExplorationStateChangeListener(new o0.b(mVar.f5334k));
                    break;
                }
                break;
            case 1:
                k.f fVar = (k.f) this.f5325b;
                ViewTreeObserver viewTreeObserver = fVar.f7595x;
                if (viewTreeObserver != null) {
                    if (!viewTreeObserver.isAlive()) {
                        fVar.f7595x = view.getViewTreeObserver();
                    }
                    fVar.f7595x.removeGlobalOnLayoutListener(fVar.f7580i);
                }
                view.removeOnAttachStateChangeListener(this);
                break;
            default:
                d0 d0Var = (d0) this.f5325b;
                ViewTreeObserver viewTreeObserver2 = d0Var.f7565o;
                if (viewTreeObserver2 != null) {
                    if (!viewTreeObserver2.isAlive()) {
                        d0Var.f7565o = view.getViewTreeObserver();
                    }
                    d0Var.f7565o.removeGlobalOnLayoutListener(d0Var.f7559i);
                }
                view.removeOnAttachStateChangeListener(this);
                break;
        }
    }

    private final void a(View view) {
    }

    private final void b(View view) {
    }
}
