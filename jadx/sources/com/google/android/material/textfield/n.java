package com.google.android.material.textfield;

import android.content.Context;
import com.google.android.material.internal.CheckableImageButton;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class n {

    /* renamed from: a, reason: collision with root package name */
    public final TextInputLayout f5343a;

    /* renamed from: b, reason: collision with root package name */
    public final Context f5344b;

    /* renamed from: c, reason: collision with root package name */
    public final CheckableImageButton f5345c;
    public final int d;

    public n(TextInputLayout textInputLayout, int i6) {
        this.f5343a = textInputLayout;
        this.f5344b = textInputLayout.getContext();
        this.f5345c = textInputLayout.getEndIconView();
        this.d = i6;
    }

    public abstract void a();

    public boolean b(int i6) {
        return true;
    }

    public void c(boolean z7) {
    }
}
