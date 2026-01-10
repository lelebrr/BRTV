package androidx.leanback.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import com.p2elite.brtv2.R;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class SeekBar extends View {

    /* renamed from: a, reason: collision with root package name */
    public final RectF f1774a;

    /* renamed from: b, reason: collision with root package name */
    public final RectF f1775b;

    /* renamed from: c, reason: collision with root package name */
    public final RectF f1776c;
    public final Paint d;

    /* renamed from: e, reason: collision with root package name */
    public final Paint f1777e;
    public final Paint f;

    /* renamed from: g, reason: collision with root package name */
    public final Paint f1778g;

    /* renamed from: h, reason: collision with root package name */
    public int f1779h;

    /* renamed from: i, reason: collision with root package name */
    public int f1780i;

    /* renamed from: j, reason: collision with root package name */
    public int f1781j;

    /* renamed from: k, reason: collision with root package name */
    public int f1782k;

    /* renamed from: l, reason: collision with root package name */
    public int f1783l;

    /* renamed from: m, reason: collision with root package name */
    public int f1784m;

    /* renamed from: n, reason: collision with root package name */
    public int f1785n;

    public SeekBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1774a = new RectF();
        this.f1775b = new RectF();
        this.f1776c = new RectF();
        Paint paint = new Paint(1);
        this.d = paint;
        Paint paint2 = new Paint(1);
        this.f1777e = paint2;
        Paint paint3 = new Paint(1);
        this.f = paint3;
        Paint paint4 = new Paint(1);
        this.f1778g = paint4;
        setWillNotDraw(false);
        paint3.setColor(-7829368);
        paint.setColor(-3355444);
        paint2.setColor(-65536);
        paint4.setColor(-1);
        this.f1784m = context.getResources().getDimensionPixelSize(R.dimen.lb_playback_transport_progressbar_bar_height);
        this.f1785n = context.getResources().getDimensionPixelSize(R.dimen.lb_playback_transport_progressbar_active_bar_height);
        this.f1783l = context.getResources().getDimensionPixelSize(R.dimen.lb_playback_transport_progressbar_active_radius);
    }

    public final void a() {
        int i6 = isFocused() ? this.f1785n : this.f1784m;
        int width = getWidth();
        int height = getHeight();
        int i10 = (height - i6) / 2;
        RectF rectF = this.f1776c;
        int i11 = this.f1784m;
        float f = i10;
        float f3 = height - i10;
        rectF.set(i11 / 2, f, width - (i11 / 2), f3);
        int i12 = isFocused() ? this.f1783l : this.f1784m / 2;
        float f4 = width - (i12 * 2);
        float f5 = (this.f1779h / this.f1781j) * f4;
        RectF rectF2 = this.f1774a;
        int i13 = this.f1784m;
        rectF2.set(i13 / 2, f, (i13 / 2) + f5, f3);
        this.f1775b.set(rectF2.right, f, (this.f1784m / 2) + ((this.f1780i / this.f1781j) * f4), f3);
        this.f1782k = i12 + ((int) f5);
        invalidate();
    }

    @Override // android.view.View
    public CharSequence getAccessibilityClassName() {
        return android.widget.SeekBar.class.getName();
    }

    public int getMax() {
        return this.f1781j;
    }

    public int getProgress() {
        return this.f1779h;
    }

    public int getSecondProgress() {
        return this.f1780i;
    }

    public int getSecondaryProgressColor() {
        return this.d.getColor();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        float f = isFocused() ? this.f1783l : this.f1784m / 2;
        canvas.drawRoundRect(this.f1776c, f, f, this.f);
        RectF rectF = this.f1775b;
        if (rectF.right > rectF.left) {
            canvas.drawRoundRect(rectF, f, f, this.d);
        }
        canvas.drawRoundRect(this.f1774a, f, f, this.f1777e);
        canvas.drawCircle(this.f1782k, getHeight() / 2, f, this.f1778g);
    }

    @Override // android.view.View
    public final void onFocusChanged(boolean z7, int i6, Rect rect) {
        super.onFocusChanged(z7, i6, rect);
        a();
    }

    @Override // android.view.View
    public final void onSizeChanged(int i6, int i10, int i11, int i12) {
        super.onSizeChanged(i6, i10, i11, i12);
        a();
    }

    public void setActiveBarHeight(int i6) {
        this.f1785n = i6;
        a();
    }

    public void setActiveRadius(int i6) {
        this.f1783l = i6;
        a();
    }

    public void setBarHeight(int i6) {
        this.f1784m = i6;
        a();
    }

    public void setMax(int i6) {
        this.f1781j = i6;
        a();
    }

    public void setProgress(int i6) {
        int i10 = this.f1781j;
        if (i6 > i10) {
            i6 = i10;
        } else if (i6 < 0) {
            i6 = 0;
        }
        this.f1779h = i6;
        a();
    }

    public void setProgressColor(int i6) {
        this.f1777e.setColor(i6);
    }

    public void setSecondaryProgress(int i6) {
        int i10 = this.f1781j;
        if (i6 > i10) {
            i6 = i10;
        } else if (i6 < 0) {
            i6 = 0;
        }
        this.f1780i = i6;
        a();
    }

    public void setSecondaryProgressColor(int i6) {
        this.d.setColor(i6);
    }

    public void setAccessibilitySeekListener(z0 z0Var) {
    }
}
