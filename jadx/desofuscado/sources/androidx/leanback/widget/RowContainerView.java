package androidx.leanback.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.LinearLayout;
import com.p2elite.brtv2.R;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
final class RowContainerView extends LinearLayout {

    /* renamed from: a, reason: collision with root package name */
    public Drawable f1729a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f1730b;

    public RowContainerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        super.draw(canvas);
        Drawable drawable = this.f1729a;
        if (drawable != null) {
            if (this.f1730b) {
                this.f1730b = false;
                drawable.setBounds(0, 0, getWidth(), getHeight());
            }
            this.f1729a.draw(canvas);
        }
    }

    @Override // android.view.View
    public final Drawable getForeground() {
        return this.f1729a;
    }

    @Override // android.view.View
    public final boolean hasOverlappingRendering() {
        return false;
    }

    @Override // android.view.View
    public final void onSizeChanged(int i6, int i10, int i11, int i12) {
        super.onSizeChanged(i6, i10, i11, i12);
        this.f1730b = true;
    }

    @Override // android.view.View
    public final void setForeground(Drawable drawable) {
        this.f1729a = drawable;
        setWillNotDraw(drawable == null);
        invalidate();
    }

    public RowContainerView(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
        this.f1730b = true;
        setOrientation(1);
        LayoutInflater.from(context).inflate(R.layout.lb_row_container, this);
        setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
    }
}
