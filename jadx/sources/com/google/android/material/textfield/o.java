package com.google.android.material.textfield;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class o extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5346a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ TextView f5347b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f5348c;
    public final /* synthetic */ TextView d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ q f5349e;

    public o(q qVar, int i6, TextView textView, int i10, TextView textView2) {
        this.f5349e = qVar;
        this.f5346a = i6;
        this.f5347b = textView;
        this.f5348c = i10;
        this.d = textView2;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        AppCompatTextView appCompatTextView;
        int i6 = this.f5346a;
        q qVar = this.f5349e;
        qVar.f5357h = i6;
        qVar.f = null;
        TextView textView = this.f5347b;
        if (textView != null) {
            textView.setVisibility(4);
            if (this.f5348c == 1 && (appCompatTextView = qVar.f5361l) != null) {
                appCompatTextView.setText((CharSequence) null);
            }
        }
        TextView textView2 = this.d;
        if (textView2 != null) {
            textView2.setTranslationY(0.0f);
            textView2.setAlpha(1.0f);
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        TextView textView = this.d;
        if (textView != null) {
            textView.setVisibility(0);
        }
    }
}
