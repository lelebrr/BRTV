package androidx.leanback.widget;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.style.ReplacementSpan;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class g1 extends ReplacementSpan {

    /* renamed from: a, reason: collision with root package name */
    public final int f1830a;

    /* renamed from: b, reason: collision with root package name */
    public final int f1831b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ StreamingTextView f1832c;

    public g1(StreamingTextView streamingTextView, int i6, int i10) {
        this.f1832c = streamingTextView;
        this.f1830a = i6;
        this.f1831b = i10;
    }

    @Override // android.text.style.ReplacementSpan
    public final void draw(Canvas canvas, CharSequence charSequence, int i6, int i10, float f, int i11, int i12, int i13, Paint paint) {
        int iMeasureText = (int) paint.measureText(charSequence, i6, i10);
        StreamingTextView streamingTextView = this.f1832c;
        int width = streamingTextView.f1794b.getWidth();
        int i14 = width * 2;
        int i15 = iMeasureText / i14;
        int i16 = (iMeasureText % i14) / 2;
        boolean z7 = 1 == streamingTextView.getLayoutDirection();
        streamingTextView.f1793a.setSeed(this.f1830a);
        int alpha = paint.getAlpha();
        for (int i17 = 0; i17 < i15 && this.f1831b + i17 < streamingTextView.d; i17++) {
            float f3 = (width / 2) + (i17 * i14) + i16;
            float f4 = z7 ? ((f + iMeasureText) - f3) - width : f + f3;
            paint.setAlpha((streamingTextView.f1793a.nextInt(4) + 1) * 63);
            if (streamingTextView.f1793a.nextBoolean()) {
                canvas.drawBitmap(streamingTextView.f1795c, f4, i12 - r13.getHeight(), paint);
            } else {
                canvas.drawBitmap(streamingTextView.f1794b, f4, i12 - r13.getHeight(), paint);
            }
        }
        paint.setAlpha(alpha);
    }

    @Override // android.text.style.ReplacementSpan
    public final int getSize(Paint paint, CharSequence charSequence, int i6, int i10, Paint.FontMetricsInt fontMetricsInt) {
        return (int) paint.measureText(charSequence, i6, i10);
    }
}
