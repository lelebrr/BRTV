package com.google.android.material.internal;

import android.view.View;
import com.p2elite.brtv2.R;
import java.util.WeakHashMap;
import n0.s0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c0 implements View.OnAttachStateChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4988a;

    public /* synthetic */ c0(int i6) {
        this.f4988a = i6;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        switch (this.f4988a) {
            case 0:
                view.removeOnAttachStateChangeListener(this);
                WeakHashMap weakHashMap = s0.f8353a;
                n0.e0.c(view);
                break;
            default:
                (view != null ? (w0.e) view.getTag(R.id.dataBinding) : null).f10796b.run();
                view.removeOnAttachStateChangeListener(this);
                break;
        }
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        int i6 = this.f4988a;
    }

    private final void a(View view) {
    }

    private final void b(View view) {
    }
}
