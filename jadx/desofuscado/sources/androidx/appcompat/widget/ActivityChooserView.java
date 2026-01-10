package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class ActivityChooserView extends ViewGroup {

    /* renamed from: a, reason: collision with root package name */
    public final s f482a;

    /* renamed from: b, reason: collision with root package name */
    public final t f483b;

    /* renamed from: c, reason: collision with root package name */
    public final View f484c;
    public final FrameLayout d;

    /* renamed from: e, reason: collision with root package name */
    public final ImageView f485e;
    public final FrameLayout f;

    /* renamed from: g, reason: collision with root package name */
    public n0.c f486g;

    /* renamed from: h, reason: collision with root package name */
    public final q f487h;

    /* renamed from: i, reason: collision with root package name */
    public ListPopupWindow f488i;

    /* renamed from: j, reason: collision with root package name */
    public PopupWindow.OnDismissListener f489j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f490k;

    /* compiled from: MyApplication */
    public static class InnerLayout extends LinearLayout {

        /* renamed from: a, reason: collision with root package name */
        public static final int[] f491a = {R.attr.background};

        public InnerLayout(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            a1.b bVarB = a1.b.B(context, attributeSet, f491a);
            setBackgroundDrawable(bVarB.t(0));
            bVarB.F();
        }
    }

    public ActivityChooserView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public final void a() {
        if (b()) {
            getListPopupWindow().dismiss();
            ViewTreeObserver viewTreeObserver = getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.removeGlobalOnLayoutListener(this.f487h);
            }
        }
    }

    public final boolean b() {
        return getListPopupWindow().f583y.isShowing();
    }

    public o getDataModel() {
        this.f482a.getClass();
        return null;
    }

    public ListPopupWindow getListPopupWindow() {
        if (this.f488i == null) {
            ListPopupWindow listPopupWindow = new ListPopupWindow(getContext());
            this.f488i = listPopupWindow;
            listPopupWindow.q(this.f482a);
            ListPopupWindow listPopupWindow2 = this.f488i;
            listPopupWindow2.f573o = this;
            listPopupWindow2.f582x = true;
            listPopupWindow2.f583y.setFocusable(true);
            ListPopupWindow listPopupWindow3 = this.f488i;
            t tVar = this.f483b;
            listPopupWindow3.f574p = tVar;
            listPopupWindow3.f583y.setOnDismissListener(tVar);
        }
        return this.f488i;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f482a.getClass();
        this.f490k = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f482a.getClass();
        ViewTreeObserver viewTreeObserver = getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeGlobalOnLayoutListener(this.f487h);
        }
        if (b()) {
            a();
        }
        this.f490k = false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z7, int i6, int i10, int i11, int i12) {
        this.f484c.layout(0, 0, i11 - i6, i12 - i10);
        if (b()) {
            return;
        }
        a();
    }

    @Override // android.view.View
    public final void onMeasure(int i6, int i10) {
        if (this.f.getVisibility() != 0) {
            i10 = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i10), 1073741824);
        }
        View view = this.f484c;
        measureChild(view, i6, i10);
        setMeasuredDimension(view.getMeasuredWidth(), view.getMeasuredHeight());
    }

    public void setActivityChooserModel(o oVar) {
        s sVar = this.f482a;
        sVar.f822a.f482a.getClass();
        sVar.notifyDataSetChanged();
        if (b()) {
            a();
            if (b() || !this.f490k) {
                return;
            }
            sVar.getClass();
            throw new IllegalStateException("No data model. Did you call #setDataModel?");
        }
    }

    public void setExpandActivityOverflowButtonContentDescription(int i6) {
        this.f485e.setContentDescription(getContext().getString(i6));
    }

    public void setExpandActivityOverflowButtonDrawable(Drawable drawable) {
        this.f485e.setImageDrawable(drawable);
    }

    public void setOnDismissListener(PopupWindow.OnDismissListener onDismissListener) {
        this.f489j = onDismissListener;
    }

    public void setProvider(n0.c cVar) {
        this.f486g = cVar;
    }

    public ActivityChooserView(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
        int i10 = 0;
        new p(this, i10);
        this.f487h = new q(i10, this);
        int[] iArr = e.a.f6350e;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i6, 0);
        n0.s0.p(this, context, iArr, attributeSet, typedArrayObtainStyledAttributes, i6, 0);
        typedArrayObtainStyledAttributes.getInt(1, 4);
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(0);
        typedArrayObtainStyledAttributes.recycle();
        LayoutInflater.from(getContext()).inflate(com.p2elite.brtv2.R.layout.abc_activity_chooser_view, (ViewGroup) this, true);
        t tVar = new t(this);
        this.f483b = tVar;
        View viewFindViewById = findViewById(com.p2elite.brtv2.R.id.activity_chooser_view_content);
        this.f484c = viewFindViewById;
        viewFindViewById.getBackground();
        FrameLayout frameLayout = (FrameLayout) findViewById(com.p2elite.brtv2.R.id.default_activity_button);
        this.f = frameLayout;
        frameLayout.setOnClickListener(tVar);
        frameLayout.setOnLongClickListener(tVar);
        FrameLayout frameLayout2 = (FrameLayout) findViewById(com.p2elite.brtv2.R.id.expand_activities_button);
        frameLayout2.setOnClickListener(tVar);
        frameLayout2.setAccessibilityDelegate(new r());
        frameLayout2.setOnTouchListener(new h(this, frameLayout2, 1));
        this.d = frameLayout2;
        ImageView imageView = (ImageView) frameLayout2.findViewById(com.p2elite.brtv2.R.id.image);
        this.f485e = imageView;
        imageView.setImageDrawable(drawable);
        s sVar = new s(this);
        this.f482a = sVar;
        sVar.registerDataSetObserver(new p(this, 1));
        Resources resources = context.getResources();
        Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(com.p2elite.brtv2.R.dimen.abc_config_prefDialogWidth));
    }

    public void setDefaultActionButtonContentDescription(int i6) {
    }

    public void setInitialActivityCount(int i6) {
    }
}
