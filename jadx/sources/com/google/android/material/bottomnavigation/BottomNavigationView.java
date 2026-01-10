package com.google.android.material.bottomnavigation;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import b6.b;
import b6.c;
import b6.d;
import com.google.android.material.internal.a0;
import com.google.android.material.navigation.f;
import com.google.android.material.navigation.l;
import com.p2elite.brtv2.R;
import x4.e;
import x5.a;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class BottomNavigationView extends l {
    public BottomNavigationView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.bottomNavigationStyle);
    }

    @Override // com.google.android.material.navigation.l
    public final f a(Context context) {
        return new b(context);
    }

    @Override // com.google.android.material.navigation.l
    public int getMaxItemCount() {
        return 5;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i6, int i10) {
        int suggestedMinimumHeight = getSuggestedMinimumHeight();
        if (View.MeasureSpec.getMode(i10) != 1073741824 && suggestedMinimumHeight > 0) {
            i10 = View.MeasureSpec.makeMeasureSpec(Math.min(View.MeasureSpec.getSize(i10), getPaddingBottom() + getPaddingTop() + suggestedMinimumHeight), 1073741824);
        }
        super.onMeasure(i6, i10);
    }

    public void setItemHorizontalTranslationEnabled(boolean z7) throws Resources.NotFoundException {
        b bVar = (b) getMenuView();
        if (bVar.I != z7) {
            bVar.setItemHorizontalTranslationEnabled(z7);
            getPresenter().j(false);
        }
    }

    @Deprecated
    public void setOnNavigationItemReselectedListener(c cVar) {
        setOnItemReselectedListener(cVar);
    }

    @Deprecated
    public void setOnNavigationItemSelectedListener(d dVar) {
        setOnItemSelectedListener(dVar);
    }

    public BottomNavigationView(Context context, AttributeSet attributeSet, int i6) throws Resources.NotFoundException {
        super(context, attributeSet, i6, R.style.Widget_Design_BottomNavigationView);
        a1.b bVarK = a0.k(getContext(), attributeSet, a.f, i6, R.style.Widget_Design_BottomNavigationView, new int[0]);
        TypedArray typedArray = (TypedArray) bVarK.f48c;
        setItemHorizontalTranslationEnabled(typedArray.getBoolean(1, true));
        if (typedArray.hasValue(0)) {
            setMinimumHeight(typedArray.getDimensionPixelSize(0, 0));
        }
        bVarK.F();
        a0.d(this, new e(4));
    }
}
