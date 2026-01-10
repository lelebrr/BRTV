package androidx.transition;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.util.AttributeSet;
import com.bumptech.glide.d;
import e0.b;
import org.xmlpull.v1.XmlPullParser;
import y1.v;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class PatternPathMotion extends PathMotion {

    /* renamed from: a, reason: collision with root package name */
    public final Path f3008a = new Path();

    /* renamed from: b, reason: collision with root package name */
    public final Matrix f3009b = new Matrix();

    @SuppressLint({"RestrictedApi"})
    public PatternPathMotion(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, v.f11329i);
        try {
            String strD = b.d(typedArrayObtainStyledAttributes, (XmlPullParser) attributeSet, "patternPathData", 0);
            if (strD == null) {
                throw new RuntimeException("pathData must be supplied for patternPathMotion");
            }
            a(d.g(strD));
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public final void a(Path path) {
        PathMeasure pathMeasure = new PathMeasure(path, false);
        float[] fArr = new float[2];
        pathMeasure.getPosTan(pathMeasure.getLength(), fArr, null);
        float f = fArr[0];
        float f3 = fArr[1];
        pathMeasure.getPosTan(0.0f, fArr, null);
        float f4 = fArr[0];
        float f5 = fArr[1];
        if (f4 == f && f5 == f3) {
            throw new IllegalArgumentException("pattern must not end at the starting point");
        }
        Matrix matrix = this.f3009b;
        matrix.setTranslate(-f4, -f5);
        float f10 = f3 - f5;
        float fSqrt = 1.0f / ((float) Math.sqrt((f10 * f10) + (r2 * r2)));
        matrix.postScale(fSqrt, fSqrt);
        matrix.postRotate((float) Math.toDegrees(-Math.atan2(f10, f - f4)));
        path.transform(matrix, this.f3008a);
    }
}
