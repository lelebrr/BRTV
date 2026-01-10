package z1;

import android.R;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.InflateException;
import android.view.animation.AnimationUtils;
import java.util.ArrayList;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public abstract class a {

    /* renamed from: a, reason: collision with root package name */
    public static final int[] f11441a = {R.attr.name, R.attr.tint, R.attr.height, R.attr.width, R.attr.alpha, R.attr.autoMirrored, R.attr.tintMode, R.attr.viewportWidth, R.attr.viewportHeight};

    /* renamed from: b, reason: collision with root package name */
    public static final int[] f11442b = {R.attr.name, R.attr.pivotX, R.attr.pivotY, R.attr.scaleX, R.attr.scaleY, R.attr.rotation, R.attr.translateX, R.attr.translateY};

    /* renamed from: c, reason: collision with root package name */
    public static final int[] f11443c = {R.attr.name, R.attr.fillColor, R.attr.pathData, R.attr.strokeColor, R.attr.strokeWidth, R.attr.trimPathStart, R.attr.trimPathEnd, R.attr.trimPathOffset, R.attr.strokeLineCap, R.attr.strokeLineJoin, R.attr.strokeMiterLimit, R.attr.strokeAlpha, R.attr.fillAlpha, R.attr.fillType};
    public static final int[] d = {R.attr.name, R.attr.pathData, R.attr.fillType};

    /* renamed from: e, reason: collision with root package name */
    public static final int[] f11444e = {R.attr.drawable};
    public static final int[] f = {R.attr.name, R.attr.animation};

    /* renamed from: g, reason: collision with root package name */
    public static final int[] f11445g = {R.attr.interpolator, R.attr.duration, R.attr.startOffset, R.attr.repeatCount, R.attr.repeatMode, R.attr.valueFrom, R.attr.valueTo, R.attr.valueType};

    /* renamed from: h, reason: collision with root package name */
    public static final int[] f11446h = {R.attr.ordering};

    /* renamed from: i, reason: collision with root package name */
    public static final int[] f11447i = {R.attr.valueFrom, R.attr.valueTo, R.attr.valueType, R.attr.propertyName};

    /* renamed from: j, reason: collision with root package name */
    public static final int[] f11448j = {R.attr.value, R.attr.interpolator, R.attr.valueType, R.attr.fraction};

    /* renamed from: k, reason: collision with root package name */
    public static final int[] f11449k = {R.attr.propertyName, R.attr.pathData, R.attr.propertyXName, R.attr.propertyYName};

    /* JADX WARN: Code restructure failed: missing block: B:200:0x039c, code lost:
    
        if (r31 == null) goto L209;
     */
    /* JADX WARN: Code restructure failed: missing block: B:201:0x039e, code lost:
    
        if (r13 == null) goto L209;
     */
    /* JADX WARN: Code restructure failed: missing block: B:202:0x03a0, code lost:
    
        r1 = new android.animation.Animator[r13.size()];
        r3 = r13.iterator();
        r14 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:204:0x03af, code lost:
    
        if (r3.hasNext() == false) goto L217;
     */
    /* JADX WARN: Code restructure failed: missing block: B:205:0x03b1, code lost:
    
        r1[r14] = (android.animation.Animator) r3.next();
        r14 = r14 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:206:0x03bd, code lost:
    
        if (r32 != 0) goto L208;
     */
    /* JADX WARN: Code restructure failed: missing block: B:207:0x03bf, code lost:
    
        r31.playTogether(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:208:0x03c3, code lost:
    
        r31.playSequentially(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:209:0x03c6, code lost:
    
        return r0;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static android.animation.Animator a(android.content.Context r26, android.content.res.Resources r27, android.content.res.Resources.Theme r28, android.content.res.XmlResourceParser r29, android.util.AttributeSet r30, android.animation.AnimatorSet r31, int r32) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 967
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: z1.a.a(android.content.Context, android.content.res.Resources, android.content.res.Resources$Theme, android.content.res.XmlResourceParser, android.util.AttributeSet, android.animation.AnimatorSet, int):android.animation.Animator");
    }

    public static PropertyValuesHolder b(TypedArray typedArray, int i6, int i10, int i11, String str) {
        PropertyValuesHolder propertyValuesHolderOfFloat;
        PropertyValuesHolder propertyValuesHolderOfObject;
        int i12 = 3;
        TypedValue typedValuePeekValue = typedArray.peekValue(i10);
        boolean z7 = typedValuePeekValue != null;
        int i13 = z7 ? typedValuePeekValue.type : 0;
        TypedValue typedValuePeekValue2 = typedArray.peekValue(i11);
        boolean z10 = typedValuePeekValue2 != null;
        int i14 = z10 ? typedValuePeekValue2.type : 0;
        if (i6 == 4) {
            i6 = ((z7 && c(i13)) || (z10 && c(i14))) ? 3 : 0;
        }
        boolean z11 = i6 == 0;
        PropertyValuesHolder propertyValuesHolderOfInt = null;
        if (i6 != 2) {
            d dVar = i6 == 3 ? d.f11455a : null;
            if (z11) {
                if (z7) {
                    float dimension = i13 == 5 ? typedArray.getDimension(i10, 0.0f) : typedArray.getFloat(i10, 0.0f);
                    if (z10) {
                        propertyValuesHolderOfFloat = PropertyValuesHolder.ofFloat(str, dimension, i14 == 5 ? typedArray.getDimension(i11, 0.0f) : typedArray.getFloat(i11, 0.0f));
                    } else {
                        propertyValuesHolderOfFloat = PropertyValuesHolder.ofFloat(str, dimension);
                    }
                } else {
                    propertyValuesHolderOfFloat = PropertyValuesHolder.ofFloat(str, i14 == 5 ? typedArray.getDimension(i11, 0.0f) : typedArray.getFloat(i11, 0.0f));
                }
                propertyValuesHolderOfInt = propertyValuesHolderOfFloat;
            } else if (z7) {
                int dimension2 = i13 == 5 ? (int) typedArray.getDimension(i10, 0.0f) : c(i13) ? typedArray.getColor(i10, 0) : typedArray.getInt(i10, 0);
                if (z10) {
                    propertyValuesHolderOfInt = PropertyValuesHolder.ofInt(str, dimension2, i14 == 5 ? (int) typedArray.getDimension(i11, 0.0f) : c(i14) ? typedArray.getColor(i11, 0) : typedArray.getInt(i11, 0));
                } else {
                    propertyValuesHolderOfInt = PropertyValuesHolder.ofInt(str, dimension2);
                }
            } else if (z10) {
                propertyValuesHolderOfInt = PropertyValuesHolder.ofInt(str, i14 == 5 ? (int) typedArray.getDimension(i11, 0.0f) : c(i14) ? typedArray.getColor(i11, 0) : typedArray.getInt(i11, 0));
            }
            if (propertyValuesHolderOfInt == null || dVar == null) {
                return propertyValuesHolderOfInt;
            }
            propertyValuesHolderOfInt.setEvaluator(dVar);
            return propertyValuesHolderOfInt;
        }
        String string = typedArray.getString(i10);
        String string2 = typedArray.getString(i11);
        f0.f[] fVarArrF = com.bumptech.glide.d.f(string);
        f0.f[] fVarArrF2 = com.bumptech.glide.d.f(string2);
        if (fVarArrF == null && fVarArrF2 == null) {
            return null;
        }
        if (fVarArrF == null) {
            if (fVarArrF2 != null) {
                return PropertyValuesHolder.ofObject(str, new l6.m(i12), fVarArrF2);
            }
            return null;
        }
        l6.m mVar = new l6.m(i12);
        if (fVarArrF2 == null) {
            propertyValuesHolderOfObject = PropertyValuesHolder.ofObject(str, mVar, fVarArrF);
        } else {
            if (!com.bumptech.glide.d.a(fVarArrF, fVarArrF2)) {
                throw new InflateException(" Can't morph from " + string + " to " + string2);
            }
            propertyValuesHolderOfObject = PropertyValuesHolder.ofObject(str, mVar, fVarArrF, fVarArrF2);
        }
        return propertyValuesHolderOfObject;
    }

    public static boolean c(int i6) {
        return i6 >= 28 && i6 <= 31;
    }

    public static ValueAnimator d(Context context, Resources resources, Resources.Theme theme, AttributeSet attributeSet, ObjectAnimator objectAnimator, XmlResourceParser xmlResourceParser) {
        ValueAnimator valueAnimator;
        TypedArray typedArray;
        TypedArray typedArray2;
        ValueAnimator valueAnimator2;
        int resourceId = 0;
        int i6 = 1;
        TypedArray typedArrayH = e0.b.h(resources, theme, attributeSet, f11445g);
        TypedArray typedArrayH2 = e0.b.h(resources, theme, attributeSet, f11449k);
        ValueAnimator valueAnimator3 = objectAnimator == null ? new ValueAnimator() : objectAnimator;
        long jC = e0.b.c(typedArrayH, xmlResourceParser, "duration", 1, 300);
        long j10 = !e0.b.e(xmlResourceParser, "startOffset") ? 0 : typedArrayH.getInt(2, 0);
        int i10 = !e0.b.e(xmlResourceParser, "valueType") ? 4 : typedArrayH.getInt(7, 4);
        if (e0.b.e(xmlResourceParser, "valueFrom") && e0.b.e(xmlResourceParser, "valueTo")) {
            if (i10 == 4) {
                TypedValue typedValuePeekValue = typedArrayH.peekValue(5);
                boolean z7 = typedValuePeekValue != null;
                int i11 = z7 ? typedValuePeekValue.type : 0;
                TypedValue typedValuePeekValue2 = typedArrayH.peekValue(6);
                boolean z10 = typedValuePeekValue2 != null;
                i10 = ((z7 && c(i11)) || (z10 && c(z10 ? typedValuePeekValue2.type : 0))) ? 3 : 0;
            }
            PropertyValuesHolder propertyValuesHolderB = b(typedArrayH, i10, 5, 6, "");
            if (propertyValuesHolderB != null) {
                valueAnimator3.setValues(propertyValuesHolderB);
            }
        }
        valueAnimator3.setDuration(jC);
        valueAnimator3.setStartDelay(j10);
        valueAnimator3.setRepeatCount(!e0.b.e(xmlResourceParser, "repeatCount") ? 0 : typedArrayH.getInt(3, 0));
        valueAnimator3.setRepeatMode(!e0.b.e(xmlResourceParser, "repeatMode") ? 1 : typedArrayH.getInt(4, 1));
        if (typedArrayH2 != null) {
            ObjectAnimator objectAnimator2 = (ObjectAnimator) valueAnimator3;
            String strD = e0.b.d(typedArrayH2, xmlResourceParser, "pathData", 1);
            if (strD != null) {
                String strD2 = e0.b.d(typedArrayH2, xmlResourceParser, "propertyXName", 2);
                String strD3 = e0.b.d(typedArrayH2, xmlResourceParser, "propertyYName", 3);
                if (strD2 == null && strD3 == null) {
                    throw new InflateException(typedArrayH2.getPositionDescription() + " propertyXName or propertyYName is needed for PathData");
                }
                Path pathG = com.bumptech.glide.d.g(strD);
                PathMeasure pathMeasure = new PathMeasure(pathG, false);
                ArrayList arrayList = new ArrayList();
                arrayList.add(Float.valueOf(0.0f));
                float length = 0.0f;
                while (true) {
                    length += pathMeasure.getLength();
                    arrayList.add(Float.valueOf(length));
                    if (!pathMeasure.nextContour()) {
                        break;
                    }
                    valueAnimator3 = valueAnimator3;
                    i6 = 1;
                }
                PathMeasure pathMeasure2 = new PathMeasure(pathG, false);
                int iMin = Math.min(100, ((int) (length / 0.5f)) + i6);
                float[] fArr = new float[iMin];
                float[] fArr2 = new float[iMin];
                float[] fArr3 = new float[2];
                float f3 = length / (iMin - 1);
                valueAnimator = valueAnimator3;
                typedArray = typedArrayH;
                int i12 = 0;
                int i13 = 0;
                float f4 = 0.0f;
                while (true) {
                    if (i13 >= iMin) {
                        break;
                    }
                    int i14 = iMin;
                    pathMeasure2.getPosTan(f4 - ((Float) arrayList.get(i12)).floatValue(), fArr3, null);
                    fArr[i13] = fArr3[0];
                    fArr2[i13] = fArr3[1];
                    f4 += f3;
                    int i15 = i12 + 1;
                    if (i15 < arrayList.size() && f4 > ((Float) arrayList.get(i15)).floatValue()) {
                        pathMeasure2.nextContour();
                        i12 = i15;
                    }
                    i13++;
                    iMin = i14;
                }
                PropertyValuesHolder propertyValuesHolderOfFloat = strD2 != null ? PropertyValuesHolder.ofFloat(strD2, fArr) : null;
                PropertyValuesHolder propertyValuesHolderOfFloat2 = strD3 != null ? PropertyValuesHolder.ofFloat(strD3, fArr2) : null;
                if (propertyValuesHolderOfFloat == null) {
                    resourceId = 0;
                    objectAnimator2.setValues(propertyValuesHolderOfFloat2);
                } else {
                    resourceId = 0;
                    if (propertyValuesHolderOfFloat2 == null) {
                        objectAnimator2.setValues(propertyValuesHolderOfFloat);
                    } else {
                        objectAnimator2.setValues(propertyValuesHolderOfFloat, propertyValuesHolderOfFloat2);
                    }
                }
            } else {
                valueAnimator = valueAnimator3;
                typedArray = typedArrayH;
                objectAnimator2.setPropertyName(e0.b.d(typedArrayH2, xmlResourceParser, "propertyName", 0));
            }
        } else {
            valueAnimator = valueAnimator3;
            typedArray = typedArrayH;
        }
        if (e0.b.e(xmlResourceParser, "interpolator")) {
            typedArray2 = typedArray;
            resourceId = typedArray2.getResourceId(resourceId, resourceId);
        } else {
            typedArray2 = typedArray;
        }
        if (resourceId > 0) {
            valueAnimator2 = valueAnimator;
            valueAnimator2.setInterpolator(AnimationUtils.loadInterpolator(context, resourceId));
        } else {
            valueAnimator2 = valueAnimator;
        }
        typedArray2.recycle();
        if (typedArrayH2 != null) {
            typedArrayH2.recycle();
        }
        return valueAnimator2;
    }
}
