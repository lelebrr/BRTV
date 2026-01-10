package androidx.leanback.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import com.p2elite.brtv2.R;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
class MediaRowFocusView extends View {

    /* renamed from: a, reason: collision with root package name */
    public final Paint f1685a;

    /* renamed from: b, reason: collision with root package name */
    public final RectF f1686b;

    /* renamed from: c, reason: collision with root package name */
    public int f1687c;

    public MediaRowFocusView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1686b = new RectF();
        Paint paint = new Paint();
        paint.setColor(context.getResources().getColor(R.color.lb_playback_media_row_highlight_color));
        this.f1685a = paint;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int height = getHeight() / 2;
        this.f1687c = height;
        int height2 = ((height * 2) - getHeight()) / 2;
        float f = -height2;
        float width = getWidth();
        float height3 = getHeight() + height2;
        RectF rectF = this.f1686b;
        rectF.set(0.0f, f, width, height3);
        int i6 = this.f1687c;
        canvas.drawRoundRect(rectF, i6, i6, this.f1685a);
    }

    public MediaRowFocusView(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
        this.f1686b = new RectF();
        Paint paint = new Paint();
        paint.setColor(context.getResources().getColor(R.color.lb_playback_media_row_highlight_color));
        this.f1685a = paint;
    }
}
