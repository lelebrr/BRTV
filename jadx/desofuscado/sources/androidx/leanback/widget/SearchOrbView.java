package androidx.leanback.widget;

import android.animation.ArgbEvaluator;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.p2elite.brtv2.R;
import java.util.WeakHashMap;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class SearchOrbView extends FrameLayout implements View.OnClickListener {

    /* renamed from: s, reason: collision with root package name */
    public static final /* synthetic */ int f1757s = 0;

    /* renamed from: a, reason: collision with root package name */
    public View.OnClickListener f1758a;

    /* renamed from: b, reason: collision with root package name */
    public final View f1759b;

    /* renamed from: c, reason: collision with root package name */
    public final View f1760c;
    public final ImageView d;

    /* renamed from: e, reason: collision with root package name */
    public Drawable f1761e;
    public y0 f;

    /* renamed from: g, reason: collision with root package name */
    public final float f1762g;

    /* renamed from: h, reason: collision with root package name */
    public final int f1763h;

    /* renamed from: i, reason: collision with root package name */
    public final int f1764i;

    /* renamed from: j, reason: collision with root package name */
    public final float f1765j;

    /* renamed from: k, reason: collision with root package name */
    public final float f1766k;

    /* renamed from: l, reason: collision with root package name */
    public ValueAnimator f1767l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f1768m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f1769n;

    /* renamed from: o, reason: collision with root package name */
    public final ArgbEvaluator f1770o;

    /* renamed from: p, reason: collision with root package name */
    public final x0 f1771p;

    /* renamed from: q, reason: collision with root package name */
    public ValueAnimator f1772q;

    /* renamed from: r, reason: collision with root package name */
    public final x0 f1773r;

    public SearchOrbView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.searchOrbViewStyle);
    }

    public final void a(boolean z7) {
        float f = z7 ? this.f1762g : 1.0f;
        ViewPropertyAnimator viewPropertyAnimatorScaleY = this.f1759b.animate().scaleX(f).scaleY(f);
        long j10 = this.f1764i;
        viewPropertyAnimatorScaleY.setDuration(j10).start();
        if (this.f1772q == null) {
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            this.f1772q = valueAnimatorOfFloat;
            valueAnimatorOfFloat.addUpdateListener(this.f1773r);
        }
        if (z7) {
            this.f1772q.start();
        } else {
            this.f1772q.reverse();
        }
        this.f1772q.setDuration(j10);
        this.f1768m = z7;
        b();
    }

    public final void b() {
        ValueAnimator valueAnimator = this.f1767l;
        if (valueAnimator != null) {
            valueAnimator.end();
            this.f1767l = null;
        }
        if (this.f1768m && this.f1769n) {
            ValueAnimator valueAnimatorOfObject = ValueAnimator.ofObject(this.f1770o, Integer.valueOf(this.f.f1931a), Integer.valueOf(this.f.f1932b), Integer.valueOf(this.f.f1931a));
            this.f1767l = valueAnimatorOfObject;
            valueAnimatorOfObject.setRepeatCount(-1);
            this.f1767l.setDuration(this.f1763h * 2);
            this.f1767l.addUpdateListener(this.f1771p);
            this.f1767l.start();
        }
    }

    public float getFocusedZoom() {
        return this.f1762g;
    }

    public int getLayoutResourceId() {
        return R.layout.lb_search_orb;
    }

    public int getOrbColor() {
        return this.f.f1931a;
    }

    public y0 getOrbColors() {
        return this.f;
    }

    public Drawable getOrbIcon() {
        return this.f1761e;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f1769n = true;
        b();
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        View.OnClickListener onClickListener = this.f1758a;
        if (onClickListener != null) {
            onClickListener.onClick(view);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        this.f1769n = false;
        b();
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public final void onFocusChanged(boolean z7, int i6, Rect rect) {
        super.onFocusChanged(z7, i6, rect);
        a(z7);
    }

    public void setOnOrbClickedListener(View.OnClickListener onClickListener) {
        this.f1758a = onClickListener;
    }

    public void setOrbColor(int i6) {
        setOrbColors(new y0(i6, i6, 0));
    }

    public void setOrbColors(y0 y0Var) {
        this.f = y0Var;
        this.d.setColorFilter(y0Var.f1933c);
        if (this.f1767l == null) {
            setOrbViewColor(this.f.f1931a);
        } else {
            this.f1768m = true;
            b();
        }
    }

    public void setOrbIcon(Drawable drawable) {
        this.f1761e = drawable;
        this.d.setImageDrawable(drawable);
    }

    public void setOrbViewColor(int i6) {
        View view = this.f1760c;
        if (view.getBackground() instanceof GradientDrawable) {
            ((GradientDrawable) view.getBackground()).setColor(i6);
        }
    }

    public void setSearchOrbZ(float f) {
        float f3 = this.f1766k;
        float f4 = this.f1765j;
        float fD = ea.q.d(f3, f4, f, f4);
        WeakHashMap weakHashMap = n0.s0.f8353a;
        n0.g0.x(this.f1760c, fD);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.leanback.widget.x0] */
    /* JADX WARN: Type inference failed for: r0v2, types: [androidx.leanback.widget.x0] */
    @SuppressLint({"CustomViewStyleable"})
    public SearchOrbView(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
        this.f1770o = new ArgbEvaluator();
        final int i10 = 0;
        this.f1771p = new ValueAnimator.AnimatorUpdateListener(this) { // from class: androidx.leanback.widget.x0

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ SearchOrbView f1930b;

            {
                this.f1930b = this;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                SearchOrbView searchOrbView = this.f1930b;
                switch (i10) {
                    case 0:
                        int i11 = SearchOrbView.f1757s;
                        searchOrbView.getClass();
                        searchOrbView.setOrbViewColor(((Integer) valueAnimator.getAnimatedValue()).intValue());
                        break;
                    default:
                        int i12 = SearchOrbView.f1757s;
                        searchOrbView.getClass();
                        searchOrbView.setSearchOrbZ(valueAnimator.getAnimatedFraction());
                        break;
                }
            }
        };
        final int i11 = 1;
        this.f1773r = new ValueAnimator.AnimatorUpdateListener(this) { // from class: androidx.leanback.widget.x0

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ SearchOrbView f1930b;

            {
                this.f1930b = this;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                SearchOrbView searchOrbView = this.f1930b;
                switch (i11) {
                    case 0:
                        int i112 = SearchOrbView.f1757s;
                        searchOrbView.getClass();
                        searchOrbView.setOrbViewColor(((Integer) valueAnimator.getAnimatedValue()).intValue());
                        break;
                    default:
                        int i12 = SearchOrbView.f1757s;
                        searchOrbView.getClass();
                        searchOrbView.setSearchOrbZ(valueAnimator.getAnimatedFraction());
                        break;
                }
            }
        };
        Resources resources = context.getResources();
        View viewInflate = ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(getLayoutResourceId(), (ViewGroup) this, true);
        this.f1759b = viewInflate;
        this.f1760c = viewInflate.findViewById(R.id.search_orb);
        ImageView imageView = (ImageView) viewInflate.findViewById(R.id.icon);
        this.d = imageView;
        this.f1762g = context.getResources().getFraction(R.fraction.lb_search_orb_focused_zoom, 1, 1);
        this.f1763h = context.getResources().getInteger(R.integer.lb_search_orb_pulse_duration_ms);
        this.f1764i = context.getResources().getInteger(R.integer.lb_search_orb_scale_duration_ms);
        float dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.lb_search_orb_focused_z);
        this.f1766k = dimensionPixelSize;
        this.f1765j = context.getResources().getDimensionPixelSize(R.dimen.lb_search_orb_unfocused_z);
        int[] iArr = h1.a.f7167j;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i6, 0);
        n0.s0.p(this, context, iArr, attributeSet, typedArrayObtainStyledAttributes, i6, 0);
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(2);
        setOrbIcon(drawable == null ? resources.getDrawable(R.drawable.lb_ic_in_app_search) : drawable);
        int color = typedArrayObtainStyledAttributes.getColor(1, resources.getColor(R.color.lb_default_search_color));
        setOrbColors(new y0(color, typedArrayObtainStyledAttributes.getColor(0, color), typedArrayObtainStyledAttributes.getColor(3, 0)));
        typedArrayObtainStyledAttributes.recycle();
        setFocusable(true);
        setClipChildren(false);
        setOnClickListener(this);
        setSoundEffectsEnabled(false);
        setSearchOrbZ(0.0f);
        n0.g0.x(imageView, dimensionPixelSize);
    }
}
