package com.google.android.material.tabs;

import a1.b;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import x5.a;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class TabItem extends View {

    /* renamed from: a, reason: collision with root package name */
    public final CharSequence f5223a;

    /* renamed from: b, reason: collision with root package name */
    public final Drawable f5224b;

    /* renamed from: c, reason: collision with root package name */
    public final int f5225c;

    public TabItem(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        b bVarB = b.B(context, attributeSet, a.X);
        TypedArray typedArray = (TypedArray) bVarB.f48c;
        this.f5223a = typedArray.getText(2);
        this.f5224b = bVarB.t(0);
        this.f5225c = typedArray.getResourceId(1, 0);
        bVarB.F();
    }
}
