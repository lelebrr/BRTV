package com.google.android.material.button;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import com.p2elite.brtv2.R;
import java.util.WeakHashMap;
import n0.s0;
import u6.h;
import u6.m;
import u6.x;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c {

    /* renamed from: t, reason: collision with root package name */
    public static final boolean f4732t;

    /* renamed from: u, reason: collision with root package name */
    public static final boolean f4733u;

    /* renamed from: a, reason: collision with root package name */
    public final MaterialButton f4734a;

    /* renamed from: b, reason: collision with root package name */
    public m f4735b;

    /* renamed from: c, reason: collision with root package name */
    public int f4736c;
    public int d;

    /* renamed from: e, reason: collision with root package name */
    public int f4737e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public int f4738g;

    /* renamed from: h, reason: collision with root package name */
    public int f4739h;

    /* renamed from: i, reason: collision with root package name */
    public PorterDuff.Mode f4740i;

    /* renamed from: j, reason: collision with root package name */
    public ColorStateList f4741j;

    /* renamed from: k, reason: collision with root package name */
    public ColorStateList f4742k;

    /* renamed from: l, reason: collision with root package name */
    public ColorStateList f4743l;

    /* renamed from: m, reason: collision with root package name */
    public Drawable f4744m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f4745n = false;

    /* renamed from: o, reason: collision with root package name */
    public boolean f4746o = false;

    /* renamed from: p, reason: collision with root package name */
    public boolean f4747p = false;

    /* renamed from: q, reason: collision with root package name */
    public boolean f4748q;

    /* renamed from: r, reason: collision with root package name */
    public LayerDrawable f4749r;

    /* renamed from: s, reason: collision with root package name */
    public int f4750s;

    static {
        int i6 = Build.VERSION.SDK_INT;
        f4732t = true;
        f4733u = i6 <= 22;
    }

    public c(MaterialButton materialButton, m mVar) {
        this.f4734a = materialButton;
        this.f4735b = mVar;
    }

    public final x a() {
        LayerDrawable layerDrawable = this.f4749r;
        if (layerDrawable == null || layerDrawable.getNumberOfLayers() <= 1) {
            return null;
        }
        return this.f4749r.getNumberOfLayers() > 2 ? (x) this.f4749r.getDrawable(2) : (x) this.f4749r.getDrawable(1);
    }

    public final h b(boolean z7) {
        LayerDrawable layerDrawable = this.f4749r;
        if (layerDrawable == null || layerDrawable.getNumberOfLayers() <= 0) {
            return null;
        }
        return f4732t ? (h) ((LayerDrawable) ((InsetDrawable) this.f4749r.getDrawable(0)).getDrawable()).getDrawable(!z7 ? 1 : 0) : (h) this.f4749r.getDrawable(!z7 ? 1 : 0);
    }

    public final void c(m mVar) {
        this.f4735b = mVar;
        if (!f4733u || this.f4746o) {
            if (b(false) != null) {
                b(false).setShapeAppearanceModel(mVar);
            }
            if (b(true) != null) {
                b(true).setShapeAppearanceModel(mVar);
            }
            if (a() != null) {
                a().setShapeAppearanceModel(mVar);
                return;
            }
            return;
        }
        WeakHashMap weakHashMap = s0.f8353a;
        MaterialButton materialButton = this.f4734a;
        int paddingStart = materialButton.getPaddingStart();
        int paddingTop = materialButton.getPaddingTop();
        int paddingEnd = materialButton.getPaddingEnd();
        int paddingBottom = materialButton.getPaddingBottom();
        e();
        materialButton.setPaddingRelative(paddingStart, paddingTop, paddingEnd, paddingBottom);
    }

    public final void d(int i6, int i10) {
        WeakHashMap weakHashMap = s0.f8353a;
        MaterialButton materialButton = this.f4734a;
        int paddingStart = materialButton.getPaddingStart();
        int paddingTop = materialButton.getPaddingTop();
        int paddingEnd = materialButton.getPaddingEnd();
        int paddingBottom = materialButton.getPaddingBottom();
        int i11 = this.f4737e;
        int i12 = this.f;
        this.f = i10;
        this.f4737e = i6;
        if (!this.f4746o) {
            e();
        }
        materialButton.setPaddingRelative(paddingStart, (paddingTop + i6) - i11, paddingEnd, (paddingBottom + i10) - i12);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v11, types: [android.graphics.drawable.LayerDrawable, android.graphics.drawable.RippleDrawable] */
    public final void e() {
        InsetDrawable insetDrawable;
        h hVar = new h(this.f4735b);
        MaterialButton materialButton = this.f4734a;
        hVar.k(materialButton.getContext());
        g0.a.h(hVar, this.f4741j);
        PorterDuff.Mode mode = this.f4740i;
        if (mode != null) {
            g0.a.i(hVar, mode);
        }
        float f = this.f4739h;
        ColorStateList colorStateList = this.f4742k;
        hVar.f10367a.f10357j = f;
        hVar.invalidateSelf();
        hVar.s(colorStateList);
        h hVar2 = new h(this.f4735b);
        hVar2.setTint(0);
        float f3 = this.f4739h;
        int iP = this.f4745n ? o9.e.p(R.attr.colorSurface, materialButton) : 0;
        hVar2.f10367a.f10357j = f3;
        hVar2.invalidateSelf();
        hVar2.s(ColorStateList.valueOf(iP));
        if (f4732t) {
            h hVar3 = new h(this.f4735b);
            this.f4744m = hVar3;
            g0.a.g(hVar3, -1);
            ?? rippleDrawable = new RippleDrawable(s6.c.b(this.f4743l), new InsetDrawable((Drawable) new LayerDrawable(new Drawable[]{hVar2, hVar}), this.f4736c, this.f4737e, this.d, this.f), this.f4744m);
            this.f4749r = rippleDrawable;
            insetDrawable = rippleDrawable;
        } else {
            h hVar4 = new h(this.f4735b);
            s6.a aVar = new s6.a();
            aVar.f9820a = hVar4;
            aVar.f9821b = false;
            s6.b bVar = new s6.b(aVar);
            this.f4744m = bVar;
            g0.a.h(bVar, s6.c.b(this.f4743l));
            LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{hVar2, hVar, this.f4744m});
            this.f4749r = layerDrawable;
            insetDrawable = new InsetDrawable((Drawable) layerDrawable, this.f4736c, this.f4737e, this.d, this.f);
        }
        materialButton.setInternalBackground(insetDrawable);
        h hVarB = b(false);
        if (hVarB != null) {
            hVarB.m(this.f4750s);
        }
    }

    public final void f() {
        h hVarB = b(false);
        h hVarB2 = b(true);
        if (hVarB != null) {
            float f = this.f4739h;
            ColorStateList colorStateList = this.f4742k;
            hVarB.f10367a.f10357j = f;
            hVarB.invalidateSelf();
            hVarB.s(colorStateList);
            if (hVarB2 != null) {
                float f3 = this.f4739h;
                int iP = this.f4745n ? o9.e.p(R.attr.colorSurface, this.f4734a) : 0;
                hVarB2.f10367a.f10357j = f3;
                hVarB2.invalidateSelf();
                hVarB2.s(ColorStateList.valueOf(iP));
            }
        }
    }
}
