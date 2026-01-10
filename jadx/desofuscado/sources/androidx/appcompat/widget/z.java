package androidx.appcompat.widget;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.ImageView;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class z implements w5.c {

    /* renamed from: a, reason: collision with root package name */
    public int f906a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f907b;

    /* renamed from: c, reason: collision with root package name */
    public Object f908c;
    public Object d;

    public /* synthetic */ z(com.google.android.gms.internal.cast.m1 m1Var, String str, int i6, SharedPreferences sharedPreferences) {
        this.f907b = m1Var;
        this.f908c = str;
        this.f906a = i6;
        this.d = sharedPreferences;
    }

    public void a() {
        ImageView imageView = (ImageView) this.f907b;
        Drawable drawable = imageView.getDrawable();
        if (drawable != null) {
            m1.a(drawable);
        }
        if (drawable != null) {
            int i6 = Build.VERSION.SDK_INT;
            if (i6 <= 21 && i6 == 21) {
                if (((l3) this.d) == null) {
                    this.d = new l3();
                }
                l3 l3Var = (l3) this.d;
                l3Var.f781a = null;
                l3Var.d = false;
                l3Var.f782b = null;
                l3Var.f783c = false;
                ColorStateList colorStateListA = androidx.core.widget.g.a(imageView);
                if (colorStateListA != null) {
                    l3Var.d = true;
                    l3Var.f781a = colorStateListA;
                }
                PorterDuff.Mode modeB = androidx.core.widget.g.b(imageView);
                if (modeB != null) {
                    l3Var.f783c = true;
                    l3Var.f782b = modeB;
                }
                if (l3Var.d || l3Var.f783c) {
                    w.e(drawable, l3Var, imageView.getDrawableState());
                    return;
                }
            }
            l3 l3Var2 = (l3) this.f908c;
            if (l3Var2 != null) {
                w.e(drawable, l3Var2, imageView.getDrawableState());
            }
        }
    }

    public void b(AttributeSet attributeSet, int i6) {
        Drawable drawable;
        Drawable drawable2;
        int resourceId;
        ImageView imageView = (ImageView) this.f907b;
        Context context = imageView.getContext();
        int[] iArr = e.a.f6351g;
        a1.b bVarC = a1.b.C(context, attributeSet, iArr, i6);
        n0.s0.p(imageView, imageView.getContext(), iArr, attributeSet, (TypedArray) bVarC.f48c, i6, 0);
        try {
            Drawable drawable3 = imageView.getDrawable();
            TypedArray typedArray = (TypedArray) bVarC.f48c;
            if (drawable3 == null && (resourceId = typedArray.getResourceId(1, -1)) != -1 && (drawable3 = com.bumptech.glide.c.h(imageView.getContext(), resourceId)) != null) {
                imageView.setImageDrawable(drawable3);
            }
            if (drawable3 != null) {
                m1.a(drawable3);
            }
            if (typedArray.hasValue(2)) {
                ColorStateList colorStateListS = bVarC.s(2);
                int i10 = Build.VERSION.SDK_INT;
                androidx.core.widget.g.c(imageView, colorStateListS);
                if (i10 == 21 && (drawable2 = imageView.getDrawable()) != null && androidx.core.widget.g.a(imageView) != null) {
                    if (drawable2.isStateful()) {
                        drawable2.setState(imageView.getDrawableState());
                    }
                    imageView.setImageDrawable(drawable2);
                }
            }
            if (typedArray.hasValue(3)) {
                PorterDuff.Mode modeC = m1.c(typedArray.getInt(3, -1), null);
                int i11 = Build.VERSION.SDK_INT;
                androidx.core.widget.g.d(imageView, modeC);
                if (i11 == 21 && (drawable = imageView.getDrawable()) != null && androidx.core.widget.g.a(imageView) != null) {
                    if (drawable.isStateful()) {
                        drawable.setState(imageView.getDrawableState());
                    }
                    imageView.setImageDrawable(drawable);
                }
            }
            bVarC.F();
        } catch (Throwable th) {
            bVarC.F();
            throw th;
        }
    }

    public void c(int i6) {
        ImageView imageView = (ImageView) this.f907b;
        if (i6 != 0) {
            Drawable drawableH = com.bumptech.glide.c.h(imageView.getContext(), i6);
            if (drawableH != null) {
                m1.a(drawableH);
            }
            imageView.setImageDrawable(drawableH);
        } else {
            imageView.setImageDrawable(null);
        }
        a();
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0034  */
    @Override // w5.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void onSuccess(java.lang.Object r14) {
        /*
            r13 = this;
            r0 = 0
            r1 = 1
            r6 = r14
            android.os.Bundle r6 = (android.os.Bundle) r6
            java.lang.Object r14 = r13.f907b
            r4 = r14
            com.google.android.gms.internal.cast.m1 r4 = (com.google.android.gms.internal.cast.m1) r4
            q4.f r14 = r4.f4315a
            b5.l.e(r14)
            java.lang.String r8 = "Must be called from the main thread."
            java.lang.String r9 = "register callback = %s"
            java.lang.Object r2 = r13.f908c
            r7 = r2
            java.lang.String r7 = (java.lang.String) r7
            int r2 = r13.f906a
            r3 = 3
            r5 = 2
            com.google.android.gms.internal.cast.x r10 = r4.f4316b
            if (r2 == r3) goto L23
            if (r2 != r5) goto L4a
            r2 = 2
        L23:
            c2.b r3 = new c2.b
            com.google.android.gms.internal.cast.h r11 = r4.f4317c
            r3.<init>(r4, r11, r7)
            com.google.android.gms.internal.cast.u4 r11 = new com.google.android.gms.internal.cast.u4
            r11.<init>(r3)
            r14.a(r11)
            if (r10 == 0) goto L4a
            com.google.android.gms.internal.cast.d2 r11 = new com.google.android.gms.internal.cast.d2
            r11.<init>(r1, r3)
            java.lang.Object[] r3 = new java.lang.Object[r1]
            r3[r0] = r11
            v4.b r12 = com.google.android.gms.internal.cast.x.f4455g
            r12.b(r9, r3)
            b5.l.b(r8)
            java.util.Set r3 = r10.f4457b
            r3.add(r11)
        L4a:
            if (r2 == r1) goto L4e
            if (r2 != r5) goto L7c
        L4e:
            com.google.android.gms.internal.cast.g2 r11 = new com.google.android.gms.internal.cast.g2
            com.google.android.gms.internal.cast.h r5 = r4.f4317c
            java.lang.Object r2 = r13.d
            r3 = r2
            android.content.SharedPreferences r3 = (android.content.SharedPreferences) r3
            r2 = r11
            r2.<init>(r3, r4, r5, r6, r7)
            com.google.android.gms.internal.cast.l7 r2 = new com.google.android.gms.internal.cast.l7
            r3 = 4
            r2.<init>(r3, r11)
            r14.a(r2)
            if (r10 == 0) goto L7c
            com.google.android.gms.internal.cast.d2 r14 = new com.google.android.gms.internal.cast.d2
            r14.<init>(r0, r11)
            java.lang.Object[] r1 = new java.lang.Object[r1]
            r1[r0] = r14
            v4.b r0 = com.google.android.gms.internal.cast.x.f4455g
            r0.b(r9, r1)
            b5.l.b(r8)
            java.util.Set r0 = r10.f4457b
            r0.add(r14)
        L7c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.z.onSuccess(java.lang.Object):void");
    }

    public z(ImageView imageView) {
        this.f906a = 0;
        this.f907b = imageView;
    }
}
