package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import com.p2elite.brtv2.R;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class i extends AppCompatImageView implements l {
    public final /* synthetic */ k d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(k kVar, Context context) {
        super(context, null, R.attr.actionOverflowButtonStyle);
        this.d = kVar;
        setClickable(true);
        setFocusable(true);
        setVisibility(0);
        setEnabled(true);
        r4.b.L(this, getContentDescription());
        setOnTouchListener(new h(this, this, 0));
    }

    @Override // androidx.appcompat.widget.l
    public final boolean a() {
        return false;
    }

    @Override // androidx.appcompat.widget.l
    public final boolean b() {
        return false;
    }

    @Override // android.view.View
    public final boolean performClick() {
        if (super.performClick()) {
            return true;
        }
        playSoundEffect(0);
        this.d.n();
        return true;
    }

    @Override // android.widget.ImageView
    public final boolean setFrame(int i6, int i10, int i11, int i12) {
        boolean frame = super.setFrame(i6, i10, i11, i12);
        Drawable drawable = getDrawable();
        Drawable background = getBackground();
        if (drawable != null && background != null) {
            int width = getWidth();
            int height = getHeight();
            int iMax = Math.max(width, height) / 2;
            int paddingLeft = (width + (getPaddingLeft() - getPaddingRight())) / 2;
            int paddingTop = (height + (getPaddingTop() - getPaddingBottom())) / 2;
            g0.a.f(background, paddingLeft - iMax, paddingTop - iMax, paddingLeft + iMax, paddingTop + iMax);
        }
        return frame;
    }
}
