package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.ListAdapter;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class AppCompatSpinner extends Spinner {

    /* renamed from: i, reason: collision with root package name */
    public static final int[] f522i = {R.attr.spinnerMode};

    /* renamed from: a, reason: collision with root package name */
    public final u f523a;

    /* renamed from: b, reason: collision with root package name */
    public final Context f524b;

    /* renamed from: c, reason: collision with root package name */
    public final e0 f525c;
    public SpinnerAdapter d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f526e;
    public final o0 f;

    /* renamed from: g, reason: collision with root package name */
    public int f527g;

    /* renamed from: h, reason: collision with root package name */
    public final Rect f528h;

    /* compiled from: MyApplication */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new n0();

        /* renamed from: a, reason: collision with root package name */
        public boolean f529a;

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i6) {
            super.writeToParcel(parcel, i6);
            parcel.writeByte(this.f529a ? (byte) 1 : (byte) 0);
        }
    }

    public AppCompatSpinner(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, com.p2elite.brtv2.R.attr.spinnerStyle);
    }

    public final int a(SpinnerAdapter spinnerAdapter, Drawable drawable) {
        int i6 = 0;
        if (spinnerAdapter == null) {
            return 0;
        }
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
        int iMax = Math.max(0, getSelectedItemPosition());
        int iMin = Math.min(spinnerAdapter.getCount(), iMax + 15);
        View view = null;
        int iMax2 = 0;
        for (int iMax3 = Math.max(0, iMax - (15 - (iMin - iMax))); iMax3 < iMin; iMax3++) {
            int itemViewType = spinnerAdapter.getItemViewType(iMax3);
            if (itemViewType != i6) {
                view = null;
                i6 = itemViewType;
            }
            view = spinnerAdapter.getView(iMax3, view, this);
            if (view.getLayoutParams() == null) {
                view.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
            }
            view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
            iMax2 = Math.max(iMax2, view.getMeasuredWidth());
        }
        if (drawable == null) {
            return iMax2;
        }
        Rect rect = this.f528h;
        drawable.getPadding(rect);
        return iMax2 + rect.left + rect.right;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        u uVar = this.f523a;
        if (uVar != null) {
            uVar.a();
        }
    }

    @Override // android.widget.Spinner
    public int getDropDownHorizontalOffset() {
        o0 o0Var = this.f;
        return o0Var != null ? o0Var.e() : super.getDropDownHorizontalOffset();
    }

    @Override // android.widget.Spinner
    public int getDropDownVerticalOffset() {
        o0 o0Var = this.f;
        return o0Var != null ? o0Var.o() : super.getDropDownVerticalOffset();
    }

    @Override // android.widget.Spinner
    public int getDropDownWidth() {
        return this.f != null ? this.f527g : super.getDropDownWidth();
    }

    public final o0 getInternalPopup() {
        return this.f;
    }

    @Override // android.widget.Spinner
    public Drawable getPopupBackground() {
        o0 o0Var = this.f;
        return o0Var != null ? o0Var.f() : super.getPopupBackground();
    }

    @Override // android.widget.Spinner
    public Context getPopupContext() {
        return this.f524b;
    }

    @Override // android.widget.Spinner
    public CharSequence getPrompt() {
        o0 o0Var = this.f;
        return o0Var != null ? o0Var.p() : super.getPrompt();
    }

    public ColorStateList getSupportBackgroundTintList() {
        u uVar = this.f523a;
        if (uVar != null) {
            return uVar.c();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        u uVar = this.f523a;
        if (uVar != null) {
            return uVar.d();
        }
        return null;
    }

    @Override // android.widget.Spinner, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        o0 o0Var = this.f;
        if (o0Var == null || !o0Var.c()) {
            return;
        }
        o0Var.dismiss();
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public final void onMeasure(int i6, int i10) {
        super.onMeasure(i6, i10);
        if (this.f == null || View.MeasureSpec.getMode(i6) != Integer.MIN_VALUE) {
            return;
        }
        setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), a(getAdapter(), getBackground())), View.MeasureSpec.getSize(i6)), getMeasuredHeight());
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        ViewTreeObserver viewTreeObserver;
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        if (!savedState.f529a || (viewTreeObserver = getViewTreeObserver()) == null) {
            return;
        }
        viewTreeObserver.addOnGlobalLayoutListener(new q(1, this));
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public final Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        o0 o0Var = this.f;
        savedState.f529a = o0Var != null && o0Var.c();
        return savedState;
    }

    @Override // android.widget.Spinner, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        e0 e0Var = this.f525c;
        if (e0Var == null || !e0Var.onTouch(this, motionEvent)) {
            return super.onTouchEvent(motionEvent);
        }
        return true;
    }

    @Override // android.widget.Spinner, android.view.View
    public final boolean performClick() {
        o0 o0Var = this.f;
        if (o0Var == null) {
            return super.performClick();
        }
        if (o0Var.c()) {
            return true;
        }
        this.f.n(g0.b(this), g0.a(this));
        return true;
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        u uVar = this.f523a;
        if (uVar != null) {
            uVar.f();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i6) {
        super.setBackgroundResource(i6);
        u uVar = this.f523a;
        if (uVar != null) {
            uVar.g(i6);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownHorizontalOffset(int i6) {
        o0 o0Var = this.f;
        if (o0Var == null) {
            super.setDropDownHorizontalOffset(i6);
        } else {
            o0Var.l(i6);
            o0Var.m(i6);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownVerticalOffset(int i6) {
        o0 o0Var = this.f;
        if (o0Var != null) {
            o0Var.j(i6);
        } else {
            super.setDropDownVerticalOffset(i6);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownWidth(int i6) {
        if (this.f != null) {
            this.f527g = i6;
        } else {
            super.setDropDownWidth(i6);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundDrawable(Drawable drawable) {
        o0 o0Var = this.f;
        if (o0Var != null) {
            o0Var.i(drawable);
        } else {
            super.setPopupBackgroundDrawable(drawable);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundResource(int i6) {
        setPopupBackgroundDrawable(com.bumptech.glide.c.h(getPopupContext(), i6));
    }

    @Override // android.widget.Spinner
    public void setPrompt(CharSequence charSequence) {
        o0 o0Var = this.f;
        if (o0Var != null) {
            o0Var.g(charSequence);
        } else {
            super.setPrompt(charSequence);
        }
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        u uVar = this.f523a;
        if (uVar != null) {
            uVar.i(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        u uVar = this.f523a;
        if (uVar != null) {
            uVar.j(mode);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00d4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public AppCompatSpinner(android.content.Context r12, android.util.AttributeSet r13, int r14) throws java.lang.Throwable {
        /*
            r11 = this;
            r11.<init>(r12, r13, r14)
            android.graphics.Rect r0 = new android.graphics.Rect
            r0.<init>()
            r11.f528h = r0
            android.content.Context r0 = r11.getContext()
            androidx.appcompat.widget.j3.a(r11, r0)
            int[] r0 = e.a.f6367w
            a1.b r1 = a1.b.C(r12, r13, r0, r14)
            androidx.appcompat.widget.u r2 = new androidx.appcompat.widget.u
            r2.<init>(r11)
            r11.f523a = r2
            r2 = 4
            java.lang.Object r3 = r1.f48c
            android.content.res.TypedArray r3 = (android.content.res.TypedArray) r3
            r4 = 0
            int r2 = r3.getResourceId(r2, r4)
            if (r2 == 0) goto L32
            j.d r5 = new j.d
            r5.<init>(r12, r2)
            r11.f524b = r5
            goto L34
        L32:
            r11.f524b = r12
        L34:
            r2 = -1
            r5 = 0
            int[] r6 = androidx.appcompat.widget.AppCompatSpinner.f522i     // Catch: java.lang.Throwable -> L51 java.lang.Exception -> L54
            android.content.res.TypedArray r6 = r12.obtainStyledAttributes(r13, r6, r14, r4)     // Catch: java.lang.Throwable -> L51 java.lang.Exception -> L54
            boolean r7 = r6.hasValue(r4)     // Catch: java.lang.Throwable -> L47 java.lang.Exception -> L4b
            if (r7 == 0) goto L4d
            int r2 = r6.getInt(r4, r4)     // Catch: java.lang.Throwable -> L47 java.lang.Exception -> L4b
            goto L4d
        L47:
            r12 = move-exception
            r5 = r6
            goto Ld2
        L4b:
            r7 = move-exception
            goto L56
        L4d:
            r6.recycle()
            goto L60
        L51:
            r12 = move-exception
            goto Ld2
        L54:
            r7 = move-exception
            r6 = r5
        L56:
            java.lang.String r8 = "AppCompatSpinner"
            java.lang.String r9 = "Could not read android:spinnerMode"
            android.util.Log.i(r8, r9, r7)     // Catch: java.lang.Throwable -> L47
            if (r6 == 0) goto L60
            goto L4d
        L60:
            r6 = 2
            r7 = 1
            if (r2 == 0) goto L9a
            if (r2 == r7) goto L67
            goto La7
        L67:
            androidx.appcompat.widget.m0 r2 = new androidx.appcompat.widget.m0
            android.content.Context r8 = r11.f524b
            r2.<init>(r11, r8, r13, r14)
            android.content.Context r8 = r11.f524b
            a1.b r0 = a1.b.C(r8, r13, r0, r14)
            java.lang.Object r8 = r0.f48c
            android.content.res.TypedArray r8 = (android.content.res.TypedArray) r8
            r9 = 3
            r10 = -2
            int r8 = r8.getLayoutDimension(r9, r10)
            r11.f527g = r8
            android.graphics.drawable.Drawable r8 = r0.t(r7)
            r2.i(r8)
            java.lang.String r6 = r3.getString(r6)
            r2.C = r6
            r0.F()
            r11.f = r2
            androidx.appcompat.widget.e0 r0 = new androidx.appcompat.widget.e0
            r0.<init>(r11, r11, r2)
            r11.f525c = r0
            goto La7
        L9a:
            androidx.appcompat.widget.i0 r0 = new androidx.appcompat.widget.i0
            r0.<init>(r11)
            r11.f = r0
            java.lang.String r2 = r3.getString(r6)
            r0.f737c = r2
        La7:
            java.lang.CharSequence[] r0 = r3.getTextArray(r4)
            if (r0 == 0) goto Lbe
            android.widget.ArrayAdapter r2 = new android.widget.ArrayAdapter
            r3 = 17367048(0x1090008, float:2.5162948E-38)
            r2.<init>(r12, r3, r0)
            r12 = 2131624204(0x7f0e010c, float:1.8875581E38)
            r2.setDropDownViewResource(r12)
            r11.setAdapter(r2)
        Lbe:
            r1.F()
            r11.f526e = r7
            android.widget.SpinnerAdapter r12 = r11.d
            if (r12 == 0) goto Lcc
            r11.setAdapter(r12)
            r11.d = r5
        Lcc:
            androidx.appcompat.widget.u r12 = r11.f523a
            r12.e(r13, r14)
            return
        Ld2:
            if (r5 == 0) goto Ld7
            r5.recycle()
        Ld7:
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.AppCompatSpinner.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    @Override // android.widget.AdapterView
    public void setAdapter(SpinnerAdapter spinnerAdapter) {
        if (!this.f526e) {
            this.d = spinnerAdapter;
            return;
        }
        super.setAdapter(spinnerAdapter);
        o0 o0Var = this.f;
        if (o0Var != null) {
            Context context = this.f524b;
            if (context == null) {
                context = getContext();
            }
            Resources.Theme theme = context.getTheme();
            j0 j0Var = new j0();
            j0Var.f740a = spinnerAdapter;
            if (spinnerAdapter instanceof ListAdapter) {
                j0Var.f741b = (ListAdapter) spinnerAdapter;
            }
            if (theme != null && Build.VERSION.SDK_INT >= 23 && android.support.v4.media.a.x(spinnerAdapter)) {
                h0.a(android.support.v4.media.a.l(spinnerAdapter), theme);
            }
            o0Var.q(j0Var);
        }
    }
}
