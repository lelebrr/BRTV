package androidx.viewpager.widget;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.TextView;
import b2.c;
import b2.f;
import b2.j;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import n5.d;

/* compiled from: MyApplication */
@f
/* loaded from: classes.dex */
public class PagerTitleStrip extends ViewGroup {

    /* renamed from: o, reason: collision with root package name */
    public static final int[] f3048o = {R.attr.textAppearance, R.attr.textSize, R.attr.textColor, R.attr.gravity};

    /* renamed from: p, reason: collision with root package name */
    public static final int[] f3049p = {R.attr.textAllCaps};

    /* renamed from: a, reason: collision with root package name */
    public ViewPager f3050a;

    /* renamed from: b, reason: collision with root package name */
    public final TextView f3051b;

    /* renamed from: c, reason: collision with root package name */
    public final TextView f3052c;
    public final TextView d;

    /* renamed from: e, reason: collision with root package name */
    public int f3053e;
    public float f;

    /* renamed from: g, reason: collision with root package name */
    public int f3054g;

    /* renamed from: h, reason: collision with root package name */
    public int f3055h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f3056i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f3057j;

    /* renamed from: k, reason: collision with root package name */
    public final c f3058k;

    /* renamed from: l, reason: collision with root package name */
    public WeakReference f3059l;

    /* renamed from: m, reason: collision with root package name */
    public int f3060m;

    /* renamed from: n, reason: collision with root package name */
    public int f3061n;

    public PagerTitleStrip(Context context, AttributeSet attributeSet) throws Resources.NotFoundException {
        super(context, attributeSet);
        this.f3053e = -1;
        this.f = -1.0f;
        this.f3058k = new c(this);
        TextView textView = new TextView(context);
        this.f3051b = textView;
        addView(textView);
        TextView textView2 = new TextView(context);
        this.f3052c = textView2;
        addView(textView2);
        TextView textView3 = new TextView(context);
        this.d = textView3;
        addView(textView3);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f3048o);
        boolean z7 = false;
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        if (resourceId != 0) {
            d.R(textView, resourceId);
            d.R(textView2, resourceId);
            d.R(textView3, resourceId);
        }
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(1, 0);
        if (dimensionPixelSize != 0) {
            float f = dimensionPixelSize;
            textView.setTextSize(0, f);
            textView2.setTextSize(0, f);
            textView3.setTextSize(0, f);
        }
        if (typedArrayObtainStyledAttributes.hasValue(2)) {
            int color = typedArrayObtainStyledAttributes.getColor(2, 0);
            textView.setTextColor(color);
            textView2.setTextColor(color);
            textView3.setTextColor(color);
        }
        this.f3055h = typedArrayObtainStyledAttributes.getInteger(3, 80);
        typedArrayObtainStyledAttributes.recycle();
        this.f3061n = textView2.getTextColors().getDefaultColor();
        setNonPrimaryAlpha(0.6f);
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
        textView.setEllipsize(truncateAt);
        textView2.setEllipsize(truncateAt);
        textView3.setEllipsize(truncateAt);
        if (resourceId != 0) {
            TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(resourceId, f3049p);
            z7 = typedArrayObtainStyledAttributes2.getBoolean(0, false);
            typedArrayObtainStyledAttributes2.recycle();
        }
        if (z7) {
            setSingleLineAllCaps(textView);
            setSingleLineAllCaps(textView2);
            setSingleLineAllCaps(textView3);
        } else {
            textView.setSingleLine();
            textView2.setSingleLine();
            textView3.setSingleLine();
        }
        this.f3054g = (int) (context.getResources().getDisplayMetrics().density * 16.0f);
    }

    private static void setSingleLineAllCaps(TextView textView) {
        Context context = textView.getContext();
        b2.d dVar = new b2.d();
        dVar.f3151a = context.getResources().getConfiguration().locale;
        textView.setTransformationMethod(dVar);
    }

    public final void a(b2.a aVar, b2.a aVar2) {
        c cVar = this.f3058k;
        if (aVar != null) {
            aVar.f3145a.unregisterObserver(cVar);
            this.f3059l = null;
        }
        if (aVar2 != null) {
            aVar2.f3145a.registerObserver(cVar);
            this.f3059l = new WeakReference(aVar2);
        }
        ViewPager viewPager = this.f3050a;
        if (viewPager != null) {
            this.f3053e = -1;
            this.f = -1.0f;
            b(viewPager.getCurrentItem(), aVar2);
            requestLayout();
        }
    }

    public final void b(int i6, b2.a aVar) {
        if (aVar != null) {
            aVar.c();
        }
        this.f3056i = true;
        TextView textView = this.f3051b;
        textView.setText((CharSequence) null);
        TextView textView2 = this.f3052c;
        textView2.setText((CharSequence) null);
        int i10 = i6 + 1;
        TextView textView3 = this.d;
        textView3.setText((CharSequence) null);
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(Math.max(0, (int) (((getWidth() - getPaddingLeft()) - getPaddingRight()) * 0.8f)), Integer.MIN_VALUE);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(Math.max(0, (getHeight() - getPaddingTop()) - getPaddingBottom()), Integer.MIN_VALUE);
        textView.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
        textView2.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
        textView3.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
        this.f3053e = i6;
        if (!this.f3057j) {
            c(this.f, i6, false);
        }
        this.f3056i = false;
    }

    public void c(float f, int i6, boolean z7) {
        int i10;
        int i11;
        int i12;
        int i13;
        if (i6 != this.f3053e) {
            b(i6, this.f3050a.getAdapter());
        } else if (!z7 && f == this.f) {
            return;
        }
        this.f3057j = true;
        TextView textView = this.f3051b;
        int measuredWidth = textView.getMeasuredWidth();
        TextView textView2 = this.f3052c;
        int measuredWidth2 = textView2.getMeasuredWidth();
        TextView textView3 = this.d;
        int measuredWidth3 = textView3.getMeasuredWidth();
        int i14 = measuredWidth2 / 2;
        int width = getWidth();
        int height = getHeight();
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int i15 = paddingRight + i14;
        int i16 = (width - (paddingLeft + i14)) - i15;
        float f3 = f + 0.5f;
        if (f3 > 1.0f) {
            f3 -= 1.0f;
        }
        int i17 = ((width - i15) - ((int) (i16 * f3))) - i14;
        int i18 = measuredWidth2 + i17;
        int baseline = textView.getBaseline();
        int baseline2 = textView2.getBaseline();
        int baseline3 = textView3.getBaseline();
        int iMax = Math.max(Math.max(baseline, baseline2), baseline3);
        int i19 = iMax - baseline;
        int i20 = iMax - baseline2;
        int i21 = iMax - baseline3;
        int iMax2 = Math.max(Math.max(textView.getMeasuredHeight() + i19, textView2.getMeasuredHeight() + i20), textView3.getMeasuredHeight() + i21);
        int i22 = this.f3055h & 112;
        if (i22 == 16) {
            i10 = (((height - paddingTop) - paddingBottom) - iMax2) / 2;
        } else {
            if (i22 != 80) {
                i11 = i19 + paddingTop;
                i12 = i20 + paddingTop;
                i13 = paddingTop + i21;
                textView2.layout(i17, i12, i18, textView2.getMeasuredHeight() + i12);
                int iMin = Math.min(paddingLeft, (i17 - this.f3054g) - measuredWidth);
                textView.layout(iMin, i11, measuredWidth + iMin, textView.getMeasuredHeight() + i11);
                int iMax3 = Math.max((width - paddingRight) - measuredWidth3, i18 + this.f3054g);
                textView3.layout(iMax3, i13, iMax3 + measuredWidth3, textView3.getMeasuredHeight() + i13);
                this.f = f;
                this.f3057j = false;
            }
            i10 = (height - paddingBottom) - iMax2;
        }
        i11 = i19 + i10;
        i12 = i20 + i10;
        i13 = i10 + i21;
        textView2.layout(i17, i12, i18, textView2.getMeasuredHeight() + i12);
        int iMin2 = Math.min(paddingLeft, (i17 - this.f3054g) - measuredWidth);
        textView.layout(iMin2, i11, measuredWidth + iMin2, textView.getMeasuredHeight() + i11);
        int iMax32 = Math.max((width - paddingRight) - measuredWidth3, i18 + this.f3054g);
        textView3.layout(iMax32, i13, iMax32 + measuredWidth3, textView3.getMeasuredHeight() + i13);
        this.f = f;
        this.f3057j = false;
    }

    public int getMinHeight() {
        Drawable background = getBackground();
        if (background != null) {
            return background.getIntrinsicHeight();
        }
        return 0;
    }

    public int getTextSpacing() {
        return this.f3054g;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewParent parent = getParent();
        if (!(parent instanceof ViewPager)) {
            throw new IllegalStateException("PagerTitleStrip must be a direct child of a ViewPager.");
        }
        ViewPager viewPager = (ViewPager) parent;
        b2.a adapter = viewPager.getAdapter();
        c cVar = this.f3058k;
        viewPager.S = cVar;
        if (viewPager.T == null) {
            viewPager.T = new ArrayList();
        }
        viewPager.T.add(cVar);
        this.f3050a = viewPager;
        WeakReference weakReference = this.f3059l;
        a(weakReference != null ? (b2.a) weakReference.get() : null, adapter);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ViewPager viewPager = this.f3050a;
        if (viewPager != null) {
            a(viewPager.getAdapter(), null);
            ViewPager viewPager2 = this.f3050a;
            j jVar = viewPager2.S;
            viewPager2.S = null;
            ArrayList arrayList = viewPager2.T;
            if (arrayList != null) {
                arrayList.remove(this.f3058k);
            }
            this.f3050a = null;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z7, int i6, int i10, int i11, int i12) {
        if (this.f3050a != null) {
            float f = this.f;
            if (f < 0.0f) {
                f = 0.0f;
            }
            c(f, this.f3053e, true);
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i6, int i10) {
        int iMax;
        if (View.MeasureSpec.getMode(i6) != 1073741824) {
            throw new IllegalStateException("Must measure with an exact width");
        }
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i10, paddingBottom, -2);
        int size = View.MeasureSpec.getSize(i6);
        int childMeasureSpec2 = ViewGroup.getChildMeasureSpec(i6, (int) (size * 0.2f), -2);
        this.f3051b.measure(childMeasureSpec2, childMeasureSpec);
        TextView textView = this.f3052c;
        textView.measure(childMeasureSpec2, childMeasureSpec);
        this.d.measure(childMeasureSpec2, childMeasureSpec);
        if (View.MeasureSpec.getMode(i10) == 1073741824) {
            iMax = View.MeasureSpec.getSize(i10);
        } else {
            iMax = Math.max(getMinHeight(), textView.getMeasuredHeight() + paddingBottom);
        }
        setMeasuredDimension(size, View.resolveSizeAndState(iMax, i10, textView.getMeasuredState() << 16));
    }

    @Override // android.view.View, android.view.ViewParent
    public final void requestLayout() {
        if (this.f3056i) {
            return;
        }
        super.requestLayout();
    }

    public void setGravity(int i6) {
        this.f3055h = i6;
        requestLayout();
    }

    public void setNonPrimaryAlpha(float f) {
        int i6 = ((int) (f * 255.0f)) & 255;
        this.f3060m = i6;
        int i10 = (i6 << 24) | (this.f3061n & 16777215);
        this.f3051b.setTextColor(i10);
        this.d.setTextColor(i10);
    }

    public void setTextColor(int i6) {
        this.f3061n = i6;
        this.f3052c.setTextColor(i6);
        int i10 = (this.f3060m << 24) | (this.f3061n & 16777215);
        this.f3051b.setTextColor(i10);
        this.d.setTextColor(i10);
    }

    public void setTextSpacing(int i6) {
        this.f3054g = i6;
        requestLayout();
    }
}
