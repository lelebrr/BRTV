package androidx.appcompat.view.menu;

import a1.b;
import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import k.a0;
import k.k;
import k.l;
import k.n;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class ExpandedMenuView extends ListView implements k, a0, AdapterView.OnItemClickListener {

    /* renamed from: b, reason: collision with root package name */
    public static final int[] f400b = {R.attr.background, R.attr.divider};

    /* renamed from: a, reason: collision with root package name */
    public l f401a;

    public ExpandedMenuView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.listViewStyle);
    }

    @Override // k.k
    public final boolean a(n nVar) {
        return this.f401a.q(nVar, null, 0);
    }

    @Override // k.a0
    public final void d(l lVar) {
        this.f401a = lVar;
    }

    public int getWindowAnimations() {
        return 0;
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        setChildrenDrawingCacheEnabled(false);
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i6, long j10) {
        a((n) getAdapter().getItem(i6));
    }

    public ExpandedMenuView(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet);
        setOnItemClickListener(this);
        b bVarC = b.C(context, attributeSet, f400b, i6);
        TypedArray typedArray = (TypedArray) bVarC.f48c;
        if (typedArray.hasValue(0)) {
            setBackgroundDrawable(bVarC.t(0));
        }
        if (typedArray.hasValue(1)) {
            setDivider(bVarC.t(1));
        }
        bVarC.F();
    }
}
