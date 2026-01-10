package com.google.android.gms.internal.cast;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.google.android.gms.cast.framework.media.widget.CastSeekBar;
import com.p2elite.brtv2.R;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class o0 extends t4.a {

    /* renamed from: b, reason: collision with root package name */
    public boolean f4364b = true;

    /* renamed from: c, reason: collision with root package name */
    public final RelativeLayout f4365c;
    public final TextView d;

    /* renamed from: e, reason: collision with root package name */
    public final CastSeekBar f4366e;
    public final r4.n f;

    public o0(RelativeLayout relativeLayout, CastSeekBar castSeekBar, r4.n nVar) throws Resources.NotFoundException {
        this.f4365c = relativeLayout;
        TextView textView = (TextView) relativeLayout.findViewById(R.id.tooltip);
        this.d = textView;
        this.f4366e = castSeekBar;
        this.f = nVar;
        TypedArray typedArrayObtainStyledAttributes = textView.getContext().obtainStyledAttributes(null, q4.d.f9222a, R.attr.castExpandedControllerStyle, R.style.CastExpandedController);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(22, 0);
        typedArrayObtainStyledAttributes.recycle();
        textView.getBackground().setColorFilter(textView.getContext().getResources().getColor(resourceId), PorterDuff.Mode.SRC_IN);
    }

    @Override // t4.a
    public final void b() {
        f();
    }

    @Override // t4.a
    public final void d(q4.b bVar) {
        super.d(bVar);
        f();
    }

    @Override // t4.a
    public final void e() {
        this.f10136a = null;
        f();
    }

    public final void f() {
        r4.f fVar = this.f10136a;
        RelativeLayout relativeLayout = this.f4365c;
        if (fVar == null || !fVar.i() || this.f4364b) {
            relativeLayout.setVisibility(8);
            return;
        }
        relativeLayout.setVisibility(0);
        CastSeekBar castSeekBar = this.f4366e;
        long progress = castSeekBar.getProgress();
        r4.n nVar = this.f;
        String strK = nVar.k(nVar.e() + progress);
        TextView textView = this.d;
        textView.setText(strK);
        int measuredWidth = (castSeekBar.getMeasuredWidth() - castSeekBar.getPaddingLeft()) - castSeekBar.getPaddingRight();
        textView.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(0, 0));
        int measuredWidth2 = textView.getMeasuredWidth();
        int iMin = Math.min(Math.max(0, ((int) ((castSeekBar.getProgress() / castSeekBar.getMaxProgress()) * measuredWidth)) - (measuredWidth2 / 2)), measuredWidth - measuredWidth2);
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) textView.getLayoutParams();
        layoutParams.leftMargin = iMin;
        textView.setLayoutParams(layoutParams);
    }
}
