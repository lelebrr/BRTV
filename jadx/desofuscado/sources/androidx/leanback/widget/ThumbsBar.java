package androidx.leanback.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.p2elite.brtv2.R;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class ThumbsBar extends LinearLayout {

    /* renamed from: a, reason: collision with root package name */
    public int f1797a;

    /* renamed from: b, reason: collision with root package name */
    public final int f1798b;

    /* renamed from: c, reason: collision with root package name */
    public final int f1799c;
    public final int d;

    /* renamed from: e, reason: collision with root package name */
    public final int f1800e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f1801g;

    public ThumbsBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public final void a() {
        int i6;
        int i10;
        while (getChildCount() > this.f1797a) {
            removeView(getChildAt(getChildCount() - 1));
        }
        while (true) {
            int childCount = getChildCount();
            int i11 = this.f1797a;
            i6 = this.f1799c;
            i10 = this.f1798b;
            if (childCount >= i11) {
                break;
            } else {
                addView(new ImageView(getContext()), new LinearLayout.LayoutParams(i10, i6));
            }
        }
        int heroIndex = getHeroIndex();
        for (int i12 = 0; i12 < getChildCount(); i12++) {
            View childAt = getChildAt(i12);
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) childAt.getLayoutParams();
            if (heroIndex == i12) {
                layoutParams.width = this.d;
                layoutParams.height = this.f1800e;
            } else {
                layoutParams.width = i10;
                layoutParams.height = i6;
            }
            childAt.setLayoutParams(layoutParams);
        }
    }

    public int getHeroIndex() {
        return getChildCount() / 2;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z7, int i6, int i10, int i11, int i12) {
        super.onLayout(z7, i6, i10, i11, i12);
        int heroIndex = getHeroIndex();
        View childAt = getChildAt(heroIndex);
        int width = (getWidth() / 2) - (childAt.getMeasuredWidth() / 2);
        int measuredWidth = (childAt.getMeasuredWidth() / 2) + (getWidth() / 2);
        childAt.layout(width, getPaddingTop(), measuredWidth, childAt.getMeasuredHeight() + getPaddingTop());
        int measuredHeight = (childAt.getMeasuredHeight() / 2) + getPaddingTop();
        for (int i13 = heroIndex - 1; i13 >= 0; i13--) {
            int i14 = width - this.f;
            View childAt2 = getChildAt(i13);
            childAt2.layout(i14 - childAt2.getMeasuredWidth(), measuredHeight - (childAt2.getMeasuredHeight() / 2), i14, (childAt2.getMeasuredHeight() / 2) + measuredHeight);
            width = i14 - childAt2.getMeasuredWidth();
        }
        while (true) {
            heroIndex++;
            if (heroIndex >= this.f1797a) {
                return;
            }
            int i15 = measuredWidth + this.f;
            View childAt3 = getChildAt(heroIndex);
            childAt3.layout(i15, measuredHeight - (childAt3.getMeasuredHeight() / 2), childAt3.getMeasuredWidth() + i15, (childAt3.getMeasuredHeight() / 2) + measuredHeight);
            measuredWidth = i15 + childAt3.getMeasuredWidth();
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i6, int i10) {
        super.onMeasure(i6, i10);
        int measuredWidth = getMeasuredWidth();
        if (this.f1801g) {
            return;
        }
        int i11 = measuredWidth - this.d;
        int i12 = ((i11 + r3) - 1) / (this.f1798b + this.f);
        if (i12 < 2) {
            i12 = 2;
        } else if ((i12 & 1) != 0) {
            i12++;
        }
        int i13 = i12 + 1;
        if (this.f1797a != i13) {
            this.f1797a = i13;
            a();
        }
    }

    public void setNumberOfThumbs(int i6) {
        this.f1801g = true;
        this.f1797a = i6;
        a();
    }

    public void setThumbSpace(int i6) {
        this.f = i6;
        requestLayout();
    }

    public ThumbsBar(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
        this.f1797a = -1;
        new SparseArray();
        this.f1801g = false;
        this.f1798b = context.getResources().getDimensionPixelSize(R.dimen.lb_playback_transport_thumbs_width);
        this.f1799c = context.getResources().getDimensionPixelSize(R.dimen.lb_playback_transport_thumbs_height);
        this.f1800e = context.getResources().getDimensionPixelSize(R.dimen.lb_playback_transport_hero_thumbs_width);
        this.d = context.getResources().getDimensionPixelSize(R.dimen.lb_playback_transport_hero_thumbs_height);
        this.f = context.getResources().getDimensionPixelSize(R.dimen.lb_playback_transport_thumbs_margin);
    }
}
