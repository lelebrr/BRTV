package com.google.android.gms.cast.framework.media.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import b5.l;
import com.google.android.gms.internal.cast.o0;
import com.google.android.material.textfield.p;
import com.p2elite.brtv2.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.regex.Pattern;
import n0.r;
import q4.d;
import s2.c;
import s4.h;
import u4.b;
import v4.a;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class CastSeekBar extends View {

    /* renamed from: t, reason: collision with root package name */
    public static final /* synthetic */ int f3850t = 0;

    /* renamed from: a, reason: collision with root package name */
    public b f3851a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f3852b;

    /* renamed from: c, reason: collision with root package name */
    public Integer f3853c;
    public r d;

    /* renamed from: e, reason: collision with root package name */
    public ArrayList f3854e;
    public c f;

    /* renamed from: g, reason: collision with root package name */
    public final float f3855g;

    /* renamed from: h, reason: collision with root package name */
    public final float f3856h;

    /* renamed from: i, reason: collision with root package name */
    public final float f3857i;

    /* renamed from: j, reason: collision with root package name */
    public final float f3858j;

    /* renamed from: k, reason: collision with root package name */
    public final float f3859k;

    /* renamed from: l, reason: collision with root package name */
    public final Paint f3860l;

    /* renamed from: m, reason: collision with root package name */
    public final int f3861m;

    /* renamed from: n, reason: collision with root package name */
    public final int f3862n;

    /* renamed from: o, reason: collision with root package name */
    public final int f3863o;

    /* renamed from: p, reason: collision with root package name */
    public final int f3864p;

    /* renamed from: q, reason: collision with root package name */
    public int[] f3865q;

    /* renamed from: r, reason: collision with root package name */
    public Point f3866r;

    /* renamed from: s, reason: collision with root package name */
    public h f3867s;

    public CastSeekBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public final void a(ArrayList arrayList) {
        if (l.h(this.f3854e, arrayList)) {
            return;
        }
        this.f3854e = arrayList == null ? null : new ArrayList(arrayList);
        postInvalidate();
    }

    public final int b(int i6) {
        return (int) ((i6 / ((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight())) * this.f3851a.f10334b);
    }

    public final void c(Canvas canvas, int i6, int i10, int i11, int i12, int i13) {
        Paint paint = this.f3860l;
        paint.setColor(i13);
        float f = i11;
        float f3 = i10 / f;
        float f4 = i6 / f;
        float f5 = i12;
        float f10 = this.f3857i;
        canvas.drawRect(f4 * f5, -f10, f3 * f5, f10, paint);
    }

    public final void d(int i6) {
        b bVar = this.f3851a;
        if (bVar.f) {
            int i10 = bVar.d;
            int i11 = bVar.f10336e;
            Pattern pattern = a.f10669a;
            this.f3853c = Integer.valueOf(Math.min(Math.max(i6, i10), i11));
            c cVar = this.f;
            if (cVar != null) {
                getProgress();
                cVar.f(true);
            }
            h hVar = this.f3867s;
            if (hVar == null) {
                this.f3867s = new h(1, this);
            } else {
                removeCallbacks(hVar);
            }
            postDelayed(this.f3867s, 200L);
            postInvalidate();
        }
    }

    public final void e() {
        this.f3852b = true;
        c cVar = this.f;
        if (cVar != null) {
            Iterator it = ((t4.b) cVar.f9745b).d.iterator();
            while (it.hasNext()) {
                o0 o0Var = (o0) it.next();
                o0Var.f4364b = false;
                o0Var.f();
            }
        }
    }

    public int getMaxProgress() {
        return this.f3851a.f10334b;
    }

    public int getProgress() {
        Integer num = this.f3853c;
        return num != null ? num.intValue() : this.f3851a.f10333a;
    }

    @Override // android.view.View
    public final void onDetachedFromWindow() {
        h hVar = this.f3867s;
        if (hVar != null) {
            removeCallbacks(hVar);
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        int iSave = canvas.save();
        canvas.translate(getPaddingLeft(), getPaddingTop());
        r rVar = this.d;
        if (rVar == null) {
            int measuredWidth = (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
            int measuredHeight = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
            int progress = getProgress();
            int iSave2 = canvas.save();
            canvas.translate(0.0f, measuredHeight / 2);
            b bVar = this.f3851a;
            if (bVar.f) {
                int i6 = bVar.d;
                if (i6 > 0) {
                    c(canvas, 0, i6, bVar.f10334b, measuredWidth, this.f3863o);
                }
                b bVar2 = this.f3851a;
                int i10 = bVar2.d;
                if (progress > i10) {
                    c(canvas, i10, progress, bVar2.f10334b, measuredWidth, this.f3861m);
                }
                b bVar3 = this.f3851a;
                int i11 = bVar3.f10336e;
                if (i11 > progress) {
                    c(canvas, progress, i11, bVar3.f10334b, measuredWidth, this.f3862n);
                }
                b bVar4 = this.f3851a;
                int i12 = bVar4.f10334b;
                int i13 = bVar4.f10336e;
                if (i12 > i13) {
                    c(canvas, i13, i12, i12, measuredWidth, this.f3863o);
                }
            } else {
                int iMax = Math.max(bVar.f10335c, 0);
                if (iMax > 0) {
                    c(canvas, 0, iMax, this.f3851a.f10334b, measuredWidth, this.f3863o);
                }
                if (progress > iMax) {
                    c(canvas, iMax, progress, this.f3851a.f10334b, measuredWidth, this.f3861m);
                }
                int i14 = this.f3851a.f10334b;
                if (i14 > progress) {
                    c(canvas, progress, i14, i14, measuredWidth, this.f3863o);
                }
            }
            canvas.restoreToCount(iSave2);
            ArrayList<u4.a> arrayList = this.f3854e;
            Paint paint = this.f3860l;
            if (arrayList != null && !arrayList.isEmpty()) {
                paint.setColor(this.f3864p);
                int measuredWidth2 = (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
                int measuredHeight2 = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
                int iSave3 = canvas.save();
                canvas.translate(0.0f, measuredHeight2 / 2);
                for (u4.a aVar : arrayList) {
                    if (aVar != null) {
                        int iMin = Math.min(aVar.f10330a, this.f3851a.f10334b);
                        int i15 = (aVar.f10332c ? aVar.f10331b : 1) + iMin;
                        float f = measuredWidth2;
                        float f3 = this.f3851a.f10334b;
                        float f4 = (i15 * f) / f3;
                        float f5 = (iMin * f) / f3;
                        float f10 = f4 - f5;
                        float f11 = this.f3859k;
                        if (f10 < f11) {
                            f4 = f5 + f11;
                        }
                        if (f4 > f) {
                            f4 = f;
                        }
                        if (f4 - f5 < f11) {
                            f5 = f4 - f11;
                        }
                        float f12 = this.f3857i;
                        canvas.drawRect(f5, -f12, f4, f12, paint);
                    }
                }
                canvas.restoreToCount(iSave3);
            }
            if (isEnabled() && this.f3851a.f) {
                paint.setColor(this.f3861m);
                int measuredWidth3 = (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
                int measuredHeight3 = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
                double progress2 = getProgress();
                double d = this.f3851a.f10334b;
                int iSave4 = canvas.save();
                canvas.drawCircle((int) ((progress2 / d) * measuredWidth3), measuredHeight3 / 2.0f, this.f3858j, paint);
                canvas.restoreToCount(iSave4);
            }
        } else {
            int measuredWidth4 = (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
            int measuredHeight4 = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
            int iSave5 = canvas.save();
            canvas.translate(0.0f, measuredHeight4 / 2);
            int i16 = this.f3864p;
            int i17 = rVar.f8346a;
            int i18 = rVar.f8347b;
            c(canvas, 0, i17, i18, measuredWidth4, i16);
            c(canvas, i17, i18, i18, measuredWidth4, this.f3863o);
            canvas.restoreToCount(iSave5);
        }
        canvas.restoreToCount(iSave);
    }

    @Override // android.view.View
    public final synchronized void onMeasure(int i6, int i10) {
        float paddingLeft = getPaddingLeft();
        setMeasuredDimension(View.resolveSizeAndState((int) (this.f3855g + paddingLeft + getPaddingRight()), i6, 0), View.resolveSizeAndState((int) (this.f3856h + getPaddingTop() + getPaddingBottom()), i10, 0));
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (isEnabled() && this.f3851a.f) {
            if (this.f3866r == null) {
                this.f3866r = new Point();
            }
            if (this.f3865q == null) {
                this.f3865q = new int[2];
            }
            getLocationOnScreen(this.f3865q);
            this.f3866r.set((((int) motionEvent.getRawX()) - this.f3865q[0]) - getPaddingLeft(), ((int) motionEvent.getRawY()) - this.f3865q[1]);
            int action = motionEvent.getAction();
            if (action == 0) {
                e();
                d(b(this.f3866r.x));
                return true;
            }
            if (action == 1) {
                d(b(this.f3866r.x));
                this.f3852b = false;
                c cVar = this.f;
                if (cVar != null) {
                    cVar.h(this);
                }
                return true;
            }
            if (action == 2) {
                d(b(this.f3866r.x));
                return true;
            }
            if (action == 3) {
                this.f3852b = false;
                this.f3853c = null;
                c cVar2 = this.f;
                if (cVar2 != null) {
                    getProgress();
                    cVar2.f(true);
                    this.f.h(this);
                }
                postInvalidate();
                return true;
            }
        }
        return false;
    }

    public CastSeekBar(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
        this.f3854e = new ArrayList();
        setAccessibilityDelegate(new p(1, this));
        Paint paint = new Paint(1);
        this.f3860l = paint;
        paint.setStyle(Paint.Style.FILL);
        this.f3855g = context.getResources().getDimension(R.dimen.cast_seek_bar_minimum_width);
        this.f3856h = context.getResources().getDimension(R.dimen.cast_seek_bar_minimum_height);
        this.f3857i = context.getResources().getDimension(R.dimen.cast_seek_bar_progress_height) / 2.0f;
        this.f3858j = context.getResources().getDimension(R.dimen.cast_seek_bar_thumb_size) / 2.0f;
        this.f3859k = context.getResources().getDimension(R.dimen.cast_seek_bar_ad_break_minimum_width);
        b bVar = new b();
        this.f3851a = bVar;
        bVar.f10334b = 1;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, d.f9222a, R.attr.castExpandedControllerStyle, R.style.CastExpandedController);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(18, 0);
        int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(20, 0);
        int resourceId3 = typedArrayObtainStyledAttributes.getResourceId(23, 0);
        int resourceId4 = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        this.f3861m = context.getResources().getColor(resourceId);
        this.f3862n = context.getResources().getColor(resourceId2);
        this.f3863o = context.getResources().getColor(resourceId3);
        this.f3864p = context.getResources().getColor(resourceId4);
        typedArrayObtainStyledAttributes.recycle();
    }
}
