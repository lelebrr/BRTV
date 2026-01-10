package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Button;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.h;
import androidx.appcompat.widget.l;
import e.a;
import k.b;
import k.k;
import k.n;
import k.z;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class ActionMenuItemView extends AppCompatTextView implements z, View.OnClickListener, l {

    /* renamed from: h, reason: collision with root package name */
    public n f389h;

    /* renamed from: i, reason: collision with root package name */
    public CharSequence f390i;

    /* renamed from: j, reason: collision with root package name */
    public Drawable f391j;

    /* renamed from: k, reason: collision with root package name */
    public k f392k;

    /* renamed from: l, reason: collision with root package name */
    public h f393l;

    /* renamed from: m, reason: collision with root package name */
    public b f394m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f395n;

    /* renamed from: o, reason: collision with root package name */
    public boolean f396o;

    /* renamed from: p, reason: collision with root package name */
    public final int f397p;

    /* renamed from: q, reason: collision with root package name */
    public int f398q;

    /* renamed from: r, reason: collision with root package name */
    public final int f399r;

    public ActionMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // androidx.appcompat.widget.l
    public final boolean a() {
        return !TextUtils.isEmpty(getText());
    }

    @Override // androidx.appcompat.widget.l
    public final boolean b() {
        return !TextUtils.isEmpty(getText()) && this.f389h.getIcon() == null;
    }

    @Override // k.z
    public final void c(n nVar) {
        this.f389h = nVar;
        setIcon(nVar.getIcon());
        setTitle(nVar.getTitleCondensed());
        setId(nVar.f7634a);
        setVisibility(nVar.isVisible() ? 0 : 8);
        setEnabled(nVar.isEnabled());
        if (nVar.hasSubMenu() && this.f393l == null) {
            this.f393l = new h(this);
        }
    }

    public final boolean g() {
        Configuration configuration = getContext().getResources().getConfiguration();
        int i6 = configuration.screenWidthDp;
        return i6 >= 480 || (i6 >= 640 && configuration.screenHeightDp >= 480) || configuration.orientation == 2;
    }

    @Override // android.widget.TextView, android.view.View
    public CharSequence getAccessibilityClassName() {
        return Button.class.getName();
    }

    @Override // k.z
    public n getItemData() {
        return this.f389h;
    }

    public final void h() {
        boolean z7 = true;
        boolean z10 = !TextUtils.isEmpty(this.f390i);
        if (this.f391j != null && ((this.f389h.f7656y & 4) != 4 || (!this.f395n && !this.f396o))) {
            z7 = false;
        }
        boolean z11 = z10 & z7;
        setText(z11 ? this.f390i : null);
        CharSequence charSequence = this.f389h.f7648q;
        if (TextUtils.isEmpty(charSequence)) {
            setContentDescription(z11 ? null : this.f389h.f7637e);
        } else {
            setContentDescription(charSequence);
        }
        CharSequence charSequence2 = this.f389h.f7649r;
        if (TextUtils.isEmpty(charSequence2)) {
            r4.b.L(this, z11 ? null : this.f389h.f7637e);
        } else {
            r4.b.L(this, charSequence2);
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        k kVar = this.f392k;
        if (kVar != null) {
            kVar.a(this.f389h);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f395n = g();
        h();
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView, android.view.View
    public final void onMeasure(int i6, int i10) {
        int i11;
        boolean zIsEmpty = TextUtils.isEmpty(getText());
        if (!zIsEmpty && (i11 = this.f398q) >= 0) {
            super.setPadding(i11, getPaddingTop(), getPaddingRight(), getPaddingBottom());
        }
        super.onMeasure(i6, i10);
        int mode = View.MeasureSpec.getMode(i6);
        int size = View.MeasureSpec.getSize(i6);
        int measuredWidth = getMeasuredWidth();
        int i12 = this.f397p;
        int iMin = mode == Integer.MIN_VALUE ? Math.min(size, i12) : i12;
        if (mode != 1073741824 && i12 > 0 && measuredWidth < iMin) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(iMin, 1073741824), i10);
        }
        if (!zIsEmpty || this.f391j == null) {
            return;
        }
        super.setPadding((getMeasuredWidth() - this.f391j.getBounds().width()) / 2, getPaddingTop(), getPaddingRight(), getPaddingBottom());
    }

    @Override // android.widget.TextView, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        super.onRestoreInstanceState(null);
    }

    @Override // android.widget.TextView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        h hVar;
        if (this.f389h.hasSubMenu() && (hVar = this.f393l) != null && hVar.onTouch(this, motionEvent)) {
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setExpandedFormat(boolean z7) {
        if (this.f396o != z7) {
            this.f396o = z7;
            n nVar = this.f389h;
            if (nVar != null) {
                k.l lVar = nVar.f7645n;
                lVar.f7617k = true;
                lVar.p(true);
            }
        }
    }

    public void setIcon(Drawable drawable) {
        this.f391j = drawable;
        if (drawable != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            int i6 = this.f399r;
            if (intrinsicWidth > i6) {
                intrinsicHeight = (int) (intrinsicHeight * (i6 / intrinsicWidth));
                intrinsicWidth = i6;
            }
            if (intrinsicHeight > i6) {
                intrinsicWidth = (int) (intrinsicWidth * (i6 / intrinsicHeight));
            } else {
                i6 = intrinsicHeight;
            }
            drawable.setBounds(0, 0, intrinsicWidth, i6);
        }
        setCompoundDrawables(drawable, null, null, null);
        h();
    }

    public void setItemInvoker(k kVar) {
        this.f392k = kVar;
    }

    @Override // android.widget.TextView, android.view.View
    public final void setPadding(int i6, int i10, int i11, int i12) {
        this.f398q = i6;
        super.setPadding(i6, i10, i11, i12);
    }

    public void setPopupCallback(b bVar) {
        this.f394m = bVar;
    }

    public void setTitle(CharSequence charSequence) {
        this.f390i = charSequence;
        h();
    }

    public ActionMenuItemView(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
        Resources resources = context.getResources();
        this.f395n = g();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.f6349c, i6, 0);
        this.f397p = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
        typedArrayObtainStyledAttributes.recycle();
        this.f399r = (int) ((resources.getDisplayMetrics().density * 32.0f) + 0.5f);
        setOnClickListener(this);
        this.f398q = -1;
        setSaveEnabled(false);
    }

    public void setCheckable(boolean z7) {
    }

    public void setChecked(boolean z7) {
    }
}
