package z5;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.TextPaint;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.material.badge.BadgeState$State;
import com.google.android.material.internal.a0;
import com.google.android.material.internal.w;
import com.google.android.material.internal.x;
import com.p2elite.brtv2.R;
import java.lang.ref.WeakReference;
import java.text.NumberFormat;
import java.util.WeakHashMap;
import n0.s0;
import r6.d;
import u6.h;
import u6.l;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class a extends Drawable implements w {

    /* renamed from: a, reason: collision with root package name */
    public final WeakReference f11654a;

    /* renamed from: b, reason: collision with root package name */
    public final h f11655b;

    /* renamed from: c, reason: collision with root package name */
    public final x f11656c;
    public final Rect d;

    /* renamed from: e, reason: collision with root package name */
    public final b f11657e;
    public float f;

    /* renamed from: g, reason: collision with root package name */
    public float f11658g;

    /* renamed from: h, reason: collision with root package name */
    public final int f11659h;

    /* renamed from: i, reason: collision with root package name */
    public float f11660i;

    /* renamed from: j, reason: collision with root package name */
    public float f11661j;

    /* renamed from: k, reason: collision with root package name */
    public float f11662k;

    /* renamed from: l, reason: collision with root package name */
    public WeakReference f11663l;

    /* renamed from: m, reason: collision with root package name */
    public WeakReference f11664m;

    public a(Context context, BadgeState$State badgeState$State) throws Resources.NotFoundException {
        d dVar;
        Context context2;
        WeakReference weakReference = new WeakReference(context);
        this.f11654a = weakReference;
        a0.c(context, a0.f4981b, "Theme.MaterialComponents");
        this.d = new Rect();
        h hVar = new h();
        this.f11655b = hVar;
        x xVar = new x(this);
        this.f11656c = xVar;
        TextPaint textPaint = xVar.f5081a;
        textPaint.setTextAlign(Paint.Align.CENTER);
        Context context3 = (Context) weakReference.get();
        if (context3 != null && xVar.f != (dVar = new d(context3, R.style.TextAppearance_MaterialComponents_Badge)) && (context2 = (Context) weakReference.get()) != null) {
            xVar.b(dVar, context2);
            g();
        }
        b bVar = new b(context, badgeState$State);
        this.f11657e = bVar;
        BadgeState$State badgeState$State2 = bVar.f11666b;
        this.f11659h = ((int) Math.pow(10.0d, badgeState$State2.f - 1.0d)) - 1;
        xVar.d = true;
        g();
        invalidateSelf();
        xVar.d = true;
        g();
        invalidateSelf();
        textPaint.setAlpha(getAlpha());
        invalidateSelf();
        ColorStateList colorStateListValueOf = ColorStateList.valueOf(badgeState$State2.f4623b.intValue());
        if (hVar.f10367a.f10352c != colorStateListValueOf) {
            hVar.n(colorStateListValueOf);
            invalidateSelf();
        }
        textPaint.setColor(badgeState$State2.f4624c.intValue());
        invalidateSelf();
        WeakReference weakReference2 = this.f11663l;
        if (weakReference2 != null && weakReference2.get() != null) {
            View view = (View) this.f11663l.get();
            WeakReference weakReference3 = this.f11664m;
            f(view, weakReference3 != null ? (FrameLayout) weakReference3.get() : null);
        }
        g();
        setVisible(badgeState$State2.f4631l.booleanValue(), false);
    }

    @Override // com.google.android.material.internal.w
    public final void a() {
        invalidateSelf();
    }

    public final String b() {
        int iD = d();
        int i6 = this.f11659h;
        b bVar = this.f11657e;
        if (iD <= i6) {
            return NumberFormat.getInstance(bVar.f11666b.f4626g).format(d());
        }
        Context context = (Context) this.f11654a.get();
        return context == null ? "" : String.format(bVar.f11666b.f4626g, context.getString(R.string.mtrl_exceed_max_badge_number_suffix), Integer.valueOf(i6), "+");
    }

    public final CharSequence c() {
        Context context;
        if (!isVisible()) {
            return null;
        }
        boolean zE = e();
        b bVar = this.f11657e;
        if (!zE) {
            return bVar.f11666b.f4627h;
        }
        if (bVar.f11666b.f4628i == 0 || (context = (Context) this.f11654a.get()) == null) {
            return null;
        }
        int iD = d();
        int i6 = this.f11659h;
        BadgeState$State badgeState$State = bVar.f11666b;
        return iD <= i6 ? context.getResources().getQuantityString(badgeState$State.f4628i, d(), Integer.valueOf(d())) : context.getString(badgeState$State.f4629j, Integer.valueOf(i6));
    }

    public final int d() {
        if (e()) {
            return this.f11657e.f11666b.f4625e;
        }
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        if (getBounds().isEmpty() || getAlpha() == 0 || !isVisible()) {
            return;
        }
        this.f11655b.draw(canvas);
        if (e()) {
            Rect rect = new Rect();
            String strB = b();
            x xVar = this.f11656c;
            xVar.f5081a.getTextBounds(strB, 0, strB.length(), rect);
            canvas.drawText(strB, this.f, this.f11658g + (rect.height() / 2), xVar.f5081a);
        }
    }

    public final boolean e() {
        return this.f11657e.f11666b.f4625e != -1;
    }

    public final void f(View view, FrameLayout frameLayout) {
        this.f11663l = new WeakReference(view);
        this.f11664m = new WeakReference(frameLayout);
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        viewGroup.setClipChildren(false);
        viewGroup.setClipToPadding(false);
        g();
        invalidateSelf();
    }

    public final void g() throws Resources.NotFoundException {
        Context context = (Context) this.f11654a.get();
        WeakReference weakReference = this.f11663l;
        View view = weakReference != null ? (View) weakReference.get() : null;
        if (context == null || view == null) {
            return;
        }
        Rect rect = new Rect();
        Rect rect2 = this.d;
        rect.set(rect2);
        Rect rect3 = new Rect();
        view.getDrawingRect(rect3);
        WeakReference weakReference2 = this.f11664m;
        FrameLayout frameLayout = weakReference2 != null ? (FrameLayout) weakReference2.get() : null;
        if (frameLayout != null) {
            frameLayout.offsetDescendantRectToMyCoords(view, rect3);
        }
        boolean zE = e();
        b bVar = this.f11657e;
        int iIntValue = bVar.f11666b.f4637r.intValue() + (zE ? bVar.f11666b.f4635p.intValue() : bVar.f11666b.f4633n.intValue());
        BadgeState$State badgeState$State = bVar.f11666b;
        int iIntValue2 = badgeState$State.f4630k.intValue();
        if (iIntValue2 == 8388691 || iIntValue2 == 8388693) {
            this.f11658g = rect3.bottom - iIntValue;
        } else {
            this.f11658g = rect3.top + iIntValue;
        }
        int iD = d();
        float f = bVar.d;
        if (iD <= 9) {
            if (!e()) {
                f = bVar.f11667c;
            }
            this.f11660i = f;
            this.f11662k = f;
            this.f11661j = f;
        } else {
            this.f11660i = f;
            this.f11662k = f;
            this.f11661j = (this.f11656c.a(b()) / 2.0f) + bVar.f11668e;
        }
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(e() ? R.dimen.mtrl_badge_text_horizontal_edge_offset : R.dimen.mtrl_badge_horizontal_edge_offset);
        int iIntValue3 = badgeState$State.f4636q.intValue() + (e() ? badgeState$State.f4634o.intValue() : badgeState$State.f4632m.intValue());
        int iIntValue4 = badgeState$State.f4630k.intValue();
        if (iIntValue4 == 8388659 || iIntValue4 == 8388691) {
            WeakHashMap weakHashMap = s0.f8353a;
            this.f = view.getLayoutDirection() == 0 ? (rect3.left - this.f11661j) + dimensionPixelSize + iIntValue3 : ((rect3.right + this.f11661j) - dimensionPixelSize) - iIntValue3;
        } else {
            WeakHashMap weakHashMap2 = s0.f8353a;
            this.f = view.getLayoutDirection() == 0 ? ((rect3.right + this.f11661j) - dimensionPixelSize) - iIntValue3 : (rect3.left - this.f11661j) + dimensionPixelSize + iIntValue3;
        }
        float f3 = this.f;
        float f4 = this.f11658g;
        float f5 = this.f11661j;
        float f10 = this.f11662k;
        rect2.set((int) (f3 - f5), (int) (f4 - f10), (int) (f3 + f5), (int) (f4 + f10));
        float f11 = this.f11660i;
        h hVar = this.f11655b;
        l lVarF = hVar.f10367a.f10350a.f();
        lVarF.c(f11);
        hVar.setShapeAppearanceModel(lVarF.a());
        if (rect.equals(rect2)) {
            return;
        }
        hVar.setBounds(rect2);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        return this.f11657e.f11666b.d;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return this.d.height();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return this.d.width();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        return false;
    }

    @Override // android.graphics.drawable.Drawable, com.google.android.material.internal.w
    public final boolean onStateChange(int[] iArr) {
        return super.onStateChange(iArr);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i6) {
        b bVar = this.f11657e;
        bVar.f11665a.d = i6;
        bVar.f11666b.d = i6;
        this.f11656c.f5081a.setAlpha(getAlpha());
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
    }
}
