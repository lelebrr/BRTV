package com.google.android.material.internal;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.CheckedTextView;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.appcompat.widget.LinearLayoutCompat;
import java.util.WeakHashMap;
import n0.s0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class NavigationMenuItemView extends ForegroundLinearLayout implements k.z {
    public static final int[] F = {R.attr.state_checked};
    public k.n A;
    public ColorStateList B;
    public boolean C;
    public Drawable D;
    public final b2.h E;

    /* renamed from: v, reason: collision with root package name */
    public int f4966v;

    /* renamed from: w, reason: collision with root package name */
    public boolean f4967w;

    /* renamed from: x, reason: collision with root package name */
    public boolean f4968x;

    /* renamed from: y, reason: collision with root package name */
    public final CheckedTextView f4969y;

    /* renamed from: z, reason: collision with root package name */
    public FrameLayout f4970z;

    public NavigationMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private void setActionView(View view) {
        if (view != null) {
            if (this.f4970z == null) {
                this.f4970z = (FrameLayout) ((ViewStub) findViewById(com.p2elite.brtv2.R.id.design_menu_item_action_area_stub)).inflate();
            }
            this.f4970z.removeAllViews();
            this.f4970z.addView(view);
        }
    }

    @Override // k.z
    public final void c(k.n nVar) {
        StateListDrawable stateListDrawable;
        this.A = nVar;
        int i6 = nVar.f7634a;
        if (i6 > 0) {
            setId(i6);
        }
        setVisibility(nVar.isVisible() ? 0 : 8);
        if (getBackground() == null) {
            TypedValue typedValue = new TypedValue();
            if (getContext().getTheme().resolveAttribute(com.p2elite.brtv2.R.attr.colorControlHighlight, typedValue, true)) {
                stateListDrawable = new StateListDrawable();
                stateListDrawable.addState(F, new ColorDrawable(typedValue.data));
                stateListDrawable.addState(ViewGroup.EMPTY_STATE_SET, new ColorDrawable(0));
            } else {
                stateListDrawable = null;
            }
            WeakHashMap weakHashMap = s0.f8353a;
            setBackground(stateListDrawable);
        }
        setCheckable(nVar.isCheckable());
        setChecked(nVar.isChecked());
        setEnabled(nVar.isEnabled());
        setTitle(nVar.f7637e);
        setIcon(nVar.getIcon());
        setActionView(nVar.getActionView());
        setContentDescription(nVar.f7648q);
        r4.b.L(this, nVar.f7649r);
        k.n nVar2 = this.A;
        CharSequence charSequence = nVar2.f7637e;
        CheckedTextView checkedTextView = this.f4969y;
        if (charSequence == null && nVar2.getIcon() == null && this.A.getActionView() != null) {
            checkedTextView.setVisibility(8);
            FrameLayout frameLayout = this.f4970z;
            if (frameLayout != null) {
                LinearLayoutCompat.LayoutParams layoutParams = (LinearLayoutCompat.LayoutParams) frameLayout.getLayoutParams();
                ((LinearLayout.LayoutParams) layoutParams).width = -1;
                this.f4970z.setLayoutParams(layoutParams);
                return;
            }
            return;
        }
        checkedTextView.setVisibility(0);
        FrameLayout frameLayout2 = this.f4970z;
        if (frameLayout2 != null) {
            LinearLayoutCompat.LayoutParams layoutParams2 = (LinearLayoutCompat.LayoutParams) frameLayout2.getLayoutParams();
            ((LinearLayout.LayoutParams) layoutParams2).width = -2;
            this.f4970z.setLayoutParams(layoutParams2);
        }
    }

    @Override // k.z
    public k.n getItemData() {
        return this.A;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final int[] onCreateDrawableState(int i6) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i6 + 1);
        k.n nVar = this.A;
        if (nVar != null && nVar.isCheckable() && this.A.isChecked()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, F);
        }
        return iArrOnCreateDrawableState;
    }

    public void setCheckable(boolean z7) {
        refreshDrawableState();
        if (this.f4968x != z7) {
            this.f4968x = z7;
            this.E.h(this.f4969y, 2048);
        }
    }

    public void setChecked(boolean z7) {
        refreshDrawableState();
        this.f4969y.setChecked(z7);
    }

    public void setHorizontalPadding(int i6) {
        setPadding(i6, getPaddingTop(), i6, getPaddingBottom());
    }

    public void setIcon(Drawable drawable) {
        if (drawable != null) {
            if (this.C) {
                Drawable.ConstantState constantState = drawable.getConstantState();
                if (constantState != null) {
                    drawable = constantState.newDrawable();
                }
                drawable = n5.d.W(drawable).mutate();
                g0.a.h(drawable, this.B);
            }
            int i6 = this.f4966v;
            drawable.setBounds(0, 0, i6, i6);
        } else if (this.f4967w) {
            if (this.D == null) {
                Resources resources = getResources();
                Resources.Theme theme = getContext().getTheme();
                ThreadLocal threadLocal = e0.n.f6394a;
                Drawable drawableA = e0.i.a(resources, com.p2elite.brtv2.R.drawable.navigation_empty_icon, theme);
                this.D = drawableA;
                if (drawableA != null) {
                    int i10 = this.f4966v;
                    drawableA.setBounds(0, 0, i10, i10);
                }
            }
            drawable = this.D;
        }
        this.f4969y.setCompoundDrawablesRelative(drawable, null, null, null);
    }

    public void setIconPadding(int i6) {
        this.f4969y.setCompoundDrawablePadding(i6);
    }

    public void setIconSize(int i6) {
        this.f4966v = i6;
    }

    public void setIconTintList(ColorStateList colorStateList) {
        this.B = colorStateList;
        this.C = colorStateList != null;
        k.n nVar = this.A;
        if (nVar != null) {
            setIcon(nVar.getIcon());
        }
    }

    public void setMaxLines(int i6) {
        this.f4969y.setMaxLines(i6);
    }

    public void setNeedsEmptyIcon(boolean z7) {
        this.f4967w = z7;
    }

    public void setTextAppearance(int i6) {
        n5.d.R(this.f4969y, i6);
    }

    public void setTextColor(ColorStateList colorStateList) {
        this.f4969y.setTextColor(colorStateList);
    }

    public void setTitle(CharSequence charSequence) {
        this.f4969y.setText(charSequence);
    }

    public NavigationMenuItemView(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
        b2.h hVar = new b2.h(4, this);
        this.E = hVar;
        setOrientation(0);
        LayoutInflater.from(context).inflate(com.p2elite.brtv2.R.layout.design_navigation_menu_item, (ViewGroup) this, true);
        setIconSize(context.getResources().getDimensionPixelSize(com.p2elite.brtv2.R.dimen.design_navigation_icon_size));
        CheckedTextView checkedTextView = (CheckedTextView) findViewById(com.p2elite.brtv2.R.id.design_menu_item_text);
        this.f4969y = checkedTextView;
        checkedTextView.setDuplicateParentStateEnabled(true);
        s0.q(checkedTextView, hVar);
    }
}
