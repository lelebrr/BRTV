package com.google.android.material.textfield;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class t implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5379a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ TextInputLayout f5380b;

    public /* synthetic */ t(TextInputLayout textInputLayout, int i6) {
        this.f5379a = i6;
        this.f5380b = textInputLayout;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5379a) {
            case 0:
                TextInputLayout textInputLayout = this.f5380b;
                textInputLayout.f5263f0.performClick();
                textInputLayout.f5263f0.jumpDrawablesToCurrentState();
                break;
            default:
                this.f5380b.f5261e.requestLayout();
                break;
        }
    }
}
