package b1;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.text.style.ReplacementSpan;
import java.nio.ByteBuffer;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class t extends ReplacementSpan {

    /* renamed from: b, reason: collision with root package name */
    public final m f3141b;

    /* renamed from: a, reason: collision with root package name */
    public final Paint.FontMetricsInt f3140a = new Paint.FontMetricsInt();

    /* renamed from: c, reason: collision with root package name */
    public float f3142c = 1.0f;

    public t(m mVar) {
        a2.a.p(mVar, "metadata cannot be null");
        this.f3141b = mVar;
    }

    @Override // android.text.style.ReplacementSpan
    public final void draw(Canvas canvas, CharSequence charSequence, int i6, int i10, float f, int i11, int i12, int i13, Paint paint) {
        i.a().getClass();
        m mVar = this.f3141b;
        a0.f fVar = mVar.f3119b;
        Typeface typeface = (Typeface) fVar.f40e;
        Typeface typeface2 = paint.getTypeface();
        paint.setTypeface(typeface);
        canvas.drawText((char[]) fVar.f39c, mVar.f3118a * 2, 2, f, i12, paint);
        paint.setTypeface(typeface2);
    }

    @Override // android.text.style.ReplacementSpan
    public final int getSize(Paint paint, CharSequence charSequence, int i6, int i10, Paint.FontMetricsInt fontMetricsInt) {
        Paint.FontMetricsInt fontMetricsInt2 = this.f3140a;
        paint.getFontMetricsInt(fontMetricsInt2);
        float fAbs = Math.abs(fontMetricsInt2.descent - fontMetricsInt2.ascent) * 1.0f;
        m mVar = this.f3141b;
        this.f3142c = fAbs / (mVar.c().a(14) != 0 ? ((ByteBuffer) r8.d).getShort(r1 + r8.f3334a) : (short) 0);
        c1.a aVarC = mVar.c();
        int iA = aVarC.a(14);
        if (iA != 0) {
            ((ByteBuffer) aVarC.d).getShort(iA + aVarC.f3334a);
        }
        short s10 = (short) ((mVar.c().a(12) != 0 ? ((ByteBuffer) r5.d).getShort(r7 + r5.f3334a) : (short) 0) * this.f3142c);
        if (fontMetricsInt != null) {
            fontMetricsInt.ascent = fontMetricsInt2.ascent;
            fontMetricsInt.descent = fontMetricsInt2.descent;
            fontMetricsInt.top = fontMetricsInt2.top;
            fontMetricsInt.bottom = fontMetricsInt2.bottom;
        }
        return s10;
    }
}
