package androidx.transition;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import e0.b;
import org.xmlpull.v1.XmlPullParser;
import y1.v;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class ArcMotion extends PathMotion {

    /* renamed from: a, reason: collision with root package name */
    public static final float f2995a = (float) Math.tan(Math.toRadians(35.0d));

    @SuppressLint({"RestrictedApi"})
    public ArcMotion(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, v.f11328h);
        XmlPullParser xmlPullParser = (XmlPullParser) attributeSet;
        a(!b.e(xmlPullParser, "minimumVerticalAngle") ? 0.0f : typedArrayObtainStyledAttributes.getFloat(1, 0.0f));
        a(b.e(xmlPullParser, "minimumHorizontalAngle") ? typedArrayObtainStyledAttributes.getFloat(0, 0.0f) : 0.0f);
        a(b.e(xmlPullParser, "maximumAngle") ? typedArrayObtainStyledAttributes.getFloat(2, 70.0f) : 70.0f);
        typedArrayObtainStyledAttributes.recycle();
    }

    public static float a(float f) {
        if (f < 0.0f || f > 90.0f) {
            throw new IllegalArgumentException("Arc must be between 0 and 90 degrees");
        }
        return (float) Math.tan(Math.toRadians(f / 2.0f));
    }
}
