package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import com.p2elite.brtv2.R;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class v3 implements j1 {

    /* renamed from: a, reason: collision with root package name */
    public final Toolbar f862a;

    /* renamed from: b, reason: collision with root package name */
    public int f863b;

    /* renamed from: c, reason: collision with root package name */
    public final View f864c;
    public Drawable d;

    /* renamed from: e, reason: collision with root package name */
    public Drawable f865e;
    public Drawable f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f866g;

    /* renamed from: h, reason: collision with root package name */
    public CharSequence f867h;

    /* renamed from: i, reason: collision with root package name */
    public CharSequence f868i;

    /* renamed from: j, reason: collision with root package name */
    public final CharSequence f869j;

    /* renamed from: k, reason: collision with root package name */
    public Window.Callback f870k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f871l;

    /* renamed from: m, reason: collision with root package name */
    public k f872m;

    /* renamed from: n, reason: collision with root package name */
    public final int f873n;

    /* renamed from: o, reason: collision with root package name */
    public final Drawable f874o;

    public v3(Toolbar toolbar, boolean z7) {
        Drawable drawable;
        this.f873n = 0;
        this.f862a = toolbar;
        this.f867h = toolbar.getTitle();
        this.f868i = toolbar.getSubtitle();
        this.f866g = this.f867h != null;
        this.f = toolbar.getNavigationIcon();
        a1.b bVarC = a1.b.C(toolbar.getContext(), null, e.a.f6347a, R.attr.actionBarStyle);
        int i6 = 15;
        this.f874o = bVarC.t(15);
        if (z7) {
            TypedArray typedArray = (TypedArray) bVarC.f48c;
            CharSequence text = typedArray.getText(27);
            if (!TextUtils.isEmpty(text)) {
                this.f866g = true;
                this.f867h = text;
                if ((this.f863b & 8) != 0) {
                    Toolbar toolbar2 = this.f862a;
                    toolbar2.setTitle(text);
                    if (this.f866g) {
                        n0.s0.r(toolbar2.getRootView(), text);
                    }
                }
            }
            CharSequence text2 = typedArray.getText(25);
            if (!TextUtils.isEmpty(text2)) {
                b(text2);
            }
            Drawable drawableT = bVarC.t(20);
            if (drawableT != null) {
                this.f865e = drawableT;
                d();
            }
            Drawable drawableT2 = bVarC.t(17);
            if (drawableT2 != null) {
                this.d = drawableT2;
                d();
            }
            if (this.f == null && (drawable = this.f874o) != null) {
                this.f = drawable;
                int i10 = this.f863b & 4;
                Toolbar toolbar3 = this.f862a;
                if (i10 != 0) {
                    toolbar3.setNavigationIcon(drawable);
                } else {
                    toolbar3.setNavigationIcon((Drawable) null);
                }
            }
            a(typedArray.getInt(10, 0));
            int resourceId = typedArray.getResourceId(9, 0);
            if (resourceId != 0) {
                View viewInflate = LayoutInflater.from(toolbar.getContext()).inflate(resourceId, (ViewGroup) toolbar, false);
                View view = this.f864c;
                if (view != null && (this.f863b & 16) != 0) {
                    toolbar.removeView(view);
                }
                this.f864c = viewInflate;
                if (viewInflate != null && (this.f863b & 16) != 0) {
                    toolbar.addView(viewInflate);
                }
                a(this.f863b | 16);
            }
            int layoutDimension = typedArray.getLayoutDimension(13, 0);
            if (layoutDimension > 0) {
                ViewGroup.LayoutParams layoutParams = toolbar.getLayoutParams();
                layoutParams.height = layoutDimension;
                toolbar.setLayoutParams(layoutParams);
            }
            int dimensionPixelOffset = typedArray.getDimensionPixelOffset(7, -1);
            int dimensionPixelOffset2 = typedArray.getDimensionPixelOffset(3, -1);
            if (dimensionPixelOffset >= 0 || dimensionPixelOffset2 >= 0) {
                int iMax = Math.max(dimensionPixelOffset, 0);
                int iMax2 = Math.max(dimensionPixelOffset2, 0);
                toolbar.d();
                toolbar.f647t.a(iMax, iMax2);
            }
            int resourceId2 = typedArray.getResourceId(28, 0);
            if (resourceId2 != 0) {
                Context context = toolbar.getContext();
                toolbar.f639l = resourceId2;
                AppCompatTextView appCompatTextView = toolbar.f631b;
                if (appCompatTextView != null) {
                    appCompatTextView.setTextAppearance(context, resourceId2);
                }
            }
            int resourceId3 = typedArray.getResourceId(26, 0);
            if (resourceId3 != 0) {
                Context context2 = toolbar.getContext();
                toolbar.f640m = resourceId3;
                AppCompatTextView appCompatTextView2 = toolbar.f632c;
                if (appCompatTextView2 != null) {
                    appCompatTextView2.setTextAppearance(context2, resourceId3);
                }
            }
            int resourceId4 = typedArray.getResourceId(22, 0);
            if (resourceId4 != 0) {
                toolbar.setPopupTheme(resourceId4);
            }
        } else {
            if (toolbar.getNavigationIcon() != null) {
                this.f874o = toolbar.getNavigationIcon();
            } else {
                i6 = 11;
            }
            this.f863b = i6;
        }
        bVarC.F();
        if (R.string.abc_action_bar_up_description != this.f873n) {
            this.f873n = R.string.abc_action_bar_up_description;
            if (TextUtils.isEmpty(toolbar.getNavigationContentDescription())) {
                int i11 = this.f873n;
                this.f869j = i11 != 0 ? toolbar.getContext().getString(i11) : null;
                c();
            }
        }
        this.f869j = toolbar.getNavigationContentDescription();
        toolbar.setNavigationOnClickListener(new t3(this));
    }

    public final void a(int i6) {
        View view;
        int i10 = this.f863b ^ i6;
        this.f863b = i6;
        if (i10 != 0) {
            if ((i10 & 4) != 0) {
                if ((i6 & 4) != 0) {
                    c();
                }
                int i11 = this.f863b & 4;
                Toolbar toolbar = this.f862a;
                if (i11 != 0) {
                    Drawable drawable = this.f;
                    if (drawable == null) {
                        drawable = this.f874o;
                    }
                    toolbar.setNavigationIcon(drawable);
                } else {
                    toolbar.setNavigationIcon((Drawable) null);
                }
            }
            if ((i10 & 3) != 0) {
                d();
            }
            int i12 = i10 & 8;
            Toolbar toolbar2 = this.f862a;
            if (i12 != 0) {
                if ((i6 & 8) != 0) {
                    toolbar2.setTitle(this.f867h);
                    toolbar2.setSubtitle(this.f868i);
                } else {
                    toolbar2.setTitle((CharSequence) null);
                    toolbar2.setSubtitle((CharSequence) null);
                }
            }
            if ((i10 & 16) == 0 || (view = this.f864c) == null) {
                return;
            }
            if ((i6 & 16) != 0) {
                toolbar2.addView(view);
            } else {
                toolbar2.removeView(view);
            }
        }
    }

    public final void b(CharSequence charSequence) {
        this.f868i = charSequence;
        if ((this.f863b & 8) != 0) {
            this.f862a.setSubtitle(charSequence);
        }
    }

    public final void c() {
        if ((this.f863b & 4) != 0) {
            boolean zIsEmpty = TextUtils.isEmpty(this.f869j);
            Toolbar toolbar = this.f862a;
            if (zIsEmpty) {
                toolbar.setNavigationContentDescription(this.f873n);
            } else {
                toolbar.setNavigationContentDescription(this.f869j);
            }
        }
    }

    public final void d() {
        Drawable drawable;
        int i6 = this.f863b;
        if ((i6 & 2) == 0) {
            drawable = null;
        } else if ((i6 & 1) == 0 || (drawable = this.f865e) == null) {
            drawable = this.d;
        }
        this.f862a.setLogo(drawable);
    }
}
