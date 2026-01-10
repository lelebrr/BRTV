package d6;

import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.util.AttributeSet;
import androidx.cardview.widget.CardView;
import com.google.android.material.card.MaterialCardView;
import com.p2elite.brtv2.R;
import java.util.WeakHashMap;
import n0.s0;
import n5.d;
import u6.h;
import u6.k;
import u6.l;
import u6.m;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c {

    /* renamed from: t, reason: collision with root package name */
    public static final double f6061t = Math.cos(Math.toRadians(45.0d));

    /* renamed from: u, reason: collision with root package name */
    public static final ColorDrawable f6062u;

    /* renamed from: a, reason: collision with root package name */
    public final MaterialCardView f6063a;

    /* renamed from: c, reason: collision with root package name */
    public final h f6065c;
    public final h d;

    /* renamed from: e, reason: collision with root package name */
    public int f6066e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public int f6067g;

    /* renamed from: h, reason: collision with root package name */
    public int f6068h;

    /* renamed from: i, reason: collision with root package name */
    public Drawable f6069i;

    /* renamed from: j, reason: collision with root package name */
    public Drawable f6070j;

    /* renamed from: k, reason: collision with root package name */
    public ColorStateList f6071k;

    /* renamed from: l, reason: collision with root package name */
    public ColorStateList f6072l;

    /* renamed from: m, reason: collision with root package name */
    public m f6073m;

    /* renamed from: n, reason: collision with root package name */
    public ColorStateList f6074n;

    /* renamed from: o, reason: collision with root package name */
    public RippleDrawable f6075o;

    /* renamed from: p, reason: collision with root package name */
    public LayerDrawable f6076p;

    /* renamed from: q, reason: collision with root package name */
    public h f6077q;

    /* renamed from: s, reason: collision with root package name */
    public boolean f6079s;

    /* renamed from: b, reason: collision with root package name */
    public final Rect f6064b = new Rect();

    /* renamed from: r, reason: collision with root package name */
    public boolean f6078r = false;

    static {
        f6062u = Build.VERSION.SDK_INT <= 28 ? new ColorDrawable() : null;
    }

    public c(MaterialCardView materialCardView, AttributeSet attributeSet, int i6) {
        this.f6063a = materialCardView;
        h hVar = new h(materialCardView.getContext(), attributeSet, i6, R.style.Widget_MaterialComponents_CardView);
        this.f6065c = hVar;
        hVar.k(materialCardView.getContext());
        hVar.q();
        l lVarF = hVar.f10367a.f10350a.f();
        TypedArray typedArrayObtainStyledAttributes = materialCardView.getContext().obtainStyledAttributes(attributeSet, x5.a.f11027h, i6, R.style.CardView);
        if (typedArrayObtainStyledAttributes.hasValue(3)) {
            lVarF.c(typedArrayObtainStyledAttributes.getDimension(3, 0.0f));
        }
        this.d = new h();
        g(lVarF.a());
        typedArrayObtainStyledAttributes.recycle();
    }

    public static float b(d dVar, float f) {
        if (dVar instanceof k) {
            return (float) ((1.0d - f6061t) * f);
        }
        if (dVar instanceof u6.d) {
            return f / 2.0f;
        }
        return 0.0f;
    }

    public final float a() {
        d dVar = this.f6073m.f10400a;
        h hVar = this.f6065c;
        return Math.max(Math.max(b(dVar, hVar.i()), b(this.f6073m.f10401b, hVar.f10367a.f10350a.f.a(hVar.g()))), Math.max(b(this.f6073m.f10402c, hVar.f10367a.f10350a.f10404g.a(hVar.g())), b(this.f6073m.d, hVar.f10367a.f10350a.f10405h.a(hVar.g()))));
    }

    public final LayerDrawable c() {
        if (this.f6075o == null) {
            int[] iArr = s6.c.f9823a;
            this.f6077q = new h(this.f6073m);
            this.f6075o = new RippleDrawable(this.f6071k, null, this.f6077q);
        }
        if (this.f6076p == null) {
            LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{this.f6075o, this.d, this.f6070j});
            this.f6076p = layerDrawable;
            layerDrawable.setId(2, R.id.mtrl_card_checked_layer_id);
        }
        return this.f6076p;
    }

    public final b d(Drawable drawable) {
        int iCeil;
        int i6;
        if (this.f6063a.getUseCompatPadding()) {
            int iCeil2 = (int) Math.ceil((r0.getMaxCardElevation() * 1.5f) + (h() ? a() : 0.0f));
            iCeil = (int) Math.ceil(r0.getMaxCardElevation() + (h() ? a() : 0.0f));
            i6 = iCeil2;
        } else {
            iCeil = 0;
            i6 = 0;
        }
        return new b(drawable, iCeil, i6, iCeil, i6);
    }

    public final void e(int i6, int i10) {
        int iCeil;
        int iCeil2;
        int i11;
        int i12;
        if (this.f6076p != null) {
            MaterialCardView materialCardView = this.f6063a;
            if (materialCardView.getUseCompatPadding()) {
                iCeil = (int) Math.ceil(((materialCardView.getMaxCardElevation() * 1.5f) + (h() ? a() : 0.0f)) * 2.0f);
                iCeil2 = (int) Math.ceil((materialCardView.getMaxCardElevation() + (h() ? a() : 0.0f)) * 2.0f);
            } else {
                iCeil = 0;
                iCeil2 = 0;
            }
            int i13 = this.f6067g;
            int i14 = (i13 & 8388613) == 8388613 ? ((i6 - this.f6066e) - this.f) - iCeil2 : this.f6066e;
            int i15 = (i13 & 80) == 80 ? this.f6066e : ((i10 - this.f6066e) - this.f) - iCeil;
            int i16 = (i13 & 8388613) == 8388613 ? this.f6066e : ((i6 - this.f6066e) - this.f) - iCeil2;
            int i17 = (i13 & 80) == 80 ? ((i10 - this.f6066e) - this.f) - iCeil : this.f6066e;
            WeakHashMap weakHashMap = s0.f8353a;
            if (materialCardView.getLayoutDirection() == 1) {
                i12 = i16;
                i11 = i14;
            } else {
                i11 = i16;
                i12 = i14;
            }
            this.f6076p.setLayerInset(2, i12, i17, i11, i15);
        }
    }

    public final void f(Drawable drawable) {
        if (drawable != null) {
            Drawable drawableMutate = d.W(drawable).mutate();
            this.f6070j = drawableMutate;
            g0.a.h(drawableMutate, this.f6072l);
            boolean z7 = this.f6063a.f4761j;
            Drawable drawable2 = this.f6070j;
            if (drawable2 != null) {
                drawable2.setAlpha(z7 ? 255 : 0);
            }
        } else {
            this.f6070j = f6062u;
        }
        LayerDrawable layerDrawable = this.f6076p;
        if (layerDrawable != null) {
            layerDrawable.setDrawableByLayerId(R.id.mtrl_card_checked_layer_id, this.f6070j);
        }
    }

    public final void g(m mVar) {
        this.f6073m = mVar;
        h hVar = this.f6065c;
        hVar.setShapeAppearanceModel(mVar);
        hVar.f10386v = !hVar.l();
        h hVar2 = this.d;
        if (hVar2 != null) {
            hVar2.setShapeAppearanceModel(mVar);
        }
        h hVar3 = this.f6077q;
        if (hVar3 != null) {
            hVar3.setShapeAppearanceModel(mVar);
        }
    }

    public final boolean h() {
        MaterialCardView materialCardView = this.f6063a;
        return materialCardView.getPreventCornerOverlap() && this.f6065c.l() && materialCardView.getUseCompatPadding();
    }

    public final void i() {
        MaterialCardView materialCardView = this.f6063a;
        float cardViewRadius = 0.0f;
        float fA = ((materialCardView.getPreventCornerOverlap() && !this.f6065c.l()) || h()) ? a() : 0.0f;
        if (materialCardView.getPreventCornerOverlap() && materialCardView.getUseCompatPadding()) {
            cardViewRadius = (float) ((1.0d - f6061t) * materialCardView.getCardViewRadius());
        }
        int i6 = (int) (fA - cardViewRadius);
        Rect rect = this.f6064b;
        materialCardView.f920c.set(rect.left + i6, rect.top + i6, rect.right + i6, rect.bottom + i6);
        l6.h hVar = materialCardView.f921e;
        if (!((CardView) hVar.f8017c).getUseCompatPadding()) {
            hVar.s(0, 0, 0, 0);
            return;
        }
        o.a aVar = (o.a) ((Drawable) hVar.f8016b);
        float f = aVar.f8511e;
        float f3 = aVar.f8508a;
        CardView cardView = (CardView) hVar.f8017c;
        int iCeil = (int) Math.ceil(o.b.a(f, f3, cardView.getPreventCornerOverlap()));
        int iCeil2 = (int) Math.ceil(o.b.b(f, f3, cardView.getPreventCornerOverlap()));
        hVar.s(iCeil, iCeil2, iCeil, iCeil2);
    }

    public final void j() {
        boolean z7 = this.f6078r;
        MaterialCardView materialCardView = this.f6063a;
        if (!z7) {
            materialCardView.setBackgroundInternal(d(this.f6065c));
        }
        materialCardView.setForeground(d(this.f6069i));
    }
}
