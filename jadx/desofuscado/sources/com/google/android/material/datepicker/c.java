package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Paint;
import com.p2elite.brtv2.R;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public final androidx.appcompat.widget.u f4825a;

    /* renamed from: b, reason: collision with root package name */
    public final androidx.appcompat.widget.u f4826b;

    /* renamed from: c, reason: collision with root package name */
    public final androidx.appcompat.widget.u f4827c;
    public final androidx.appcompat.widget.u d;

    /* renamed from: e, reason: collision with root package name */
    public final androidx.appcompat.widget.u f4828e;
    public final androidx.appcompat.widget.u f;

    /* renamed from: g, reason: collision with root package name */
    public final androidx.appcompat.widget.u f4829g;

    /* renamed from: h, reason: collision with root package name */
    public final Paint f4830h;

    public c(Context context) throws Resources.NotFoundException {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(com.bumptech.glide.c.m(context, R.attr.materialCalendarStyle, r.class.getCanonicalName()), x5.a.A);
        this.f4825a = androidx.appcompat.widget.u.b(context, typedArrayObtainStyledAttributes.getResourceId(3, 0));
        this.f4829g = androidx.appcompat.widget.u.b(context, typedArrayObtainStyledAttributes.getResourceId(1, 0));
        this.f4826b = androidx.appcompat.widget.u.b(context, typedArrayObtainStyledAttributes.getResourceId(2, 0));
        this.f4827c = androidx.appcompat.widget.u.b(context, typedArrayObtainStyledAttributes.getResourceId(4, 0));
        ColorStateList colorStateListK = com.bumptech.glide.d.k(context, typedArrayObtainStyledAttributes, 6);
        this.d = androidx.appcompat.widget.u.b(context, typedArrayObtainStyledAttributes.getResourceId(8, 0));
        this.f4828e = androidx.appcompat.widget.u.b(context, typedArrayObtainStyledAttributes.getResourceId(7, 0));
        this.f = androidx.appcompat.widget.u.b(context, typedArrayObtainStyledAttributes.getResourceId(9, 0));
        Paint paint = new Paint();
        this.f4830h = paint;
        paint.setColor(colorStateListK.getDefaultColor());
        typedArrayObtainStyledAttributes.recycle();
    }
}
