package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.RectF;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.method.TransformationMethod;
import android.util.Log;
import android.util.TypedValue;
import android.widget.TextView;
import androidx.media3.exoplayer.source.ProgressiveMediaSource;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class g1 {

    /* renamed from: l, reason: collision with root package name */
    public static final RectF f717l = new RectF();

    /* renamed from: m, reason: collision with root package name */
    public static final ConcurrentHashMap f718m = new ConcurrentHashMap();

    /* renamed from: a, reason: collision with root package name */
    public int f719a = 0;

    /* renamed from: b, reason: collision with root package name */
    public boolean f720b = false;

    /* renamed from: c, reason: collision with root package name */
    public float f721c = -1.0f;
    public float d = -1.0f;

    /* renamed from: e, reason: collision with root package name */
    public float f722e = -1.0f;
    public int[] f = new int[0];

    /* renamed from: g, reason: collision with root package name */
    public boolean f723g = false;

    /* renamed from: h, reason: collision with root package name */
    public TextPaint f724h;

    /* renamed from: i, reason: collision with root package name */
    public final TextView f725i;

    /* renamed from: j, reason: collision with root package name */
    public final Context f726j;

    /* renamed from: k, reason: collision with root package name */
    public final f1 f727k;

    static {
        new ConcurrentHashMap();
    }

    public g1(TextView textView) {
        this.f725i = textView;
        this.f726j = textView.getContext();
        int i6 = Build.VERSION.SDK_INT;
        if (i6 >= 29) {
            this.f727k = new e1();
        } else if (i6 >= 23) {
            this.f727k = new d1();
        } else {
            this.f727k = new f1();
        }
    }

    public static int[] b(int[] iArr) {
        int length = iArr.length;
        if (length == 0) {
            return iArr;
        }
        Arrays.sort(iArr);
        ArrayList arrayList = new ArrayList();
        for (int i6 : iArr) {
            if (i6 > 0 && Collections.binarySearch(arrayList, Integer.valueOf(i6)) < 0) {
                arrayList.add(Integer.valueOf(i6));
            }
        }
        if (length == arrayList.size()) {
            return iArr;
        }
        int size = arrayList.size();
        int[] iArr2 = new int[size];
        for (int i10 = 0; i10 < size; i10++) {
            iArr2[i10] = ((Integer) arrayList.get(i10)).intValue();
        }
        return iArr2;
    }

    public static Method d(String str) throws SecurityException {
        try {
            ConcurrentHashMap concurrentHashMap = f718m;
            Method declaredMethod = (Method) concurrentHashMap.get(str);
            if (declaredMethod == null && (declaredMethod = TextView.class.getDeclaredMethod(str, null)) != null) {
                declaredMethod.setAccessible(true);
                concurrentHashMap.put(str, declaredMethod);
            }
            return declaredMethod;
        } catch (Exception e5) {
            Log.w("ACTVAutoSizeHelper", "Failed to retrieve TextView#" + str + "() method", e5);
            return null;
        }
    }

    public static Object e(Object obj, String str, Object obj2) {
        try {
            return d(str).invoke(obj, null);
        } catch (Exception e5) {
            Log.w("ACTVAutoSizeHelper", "Failed to invoke TextView#" + str + "() method", e5);
            return obj2;
        }
    }

    public final void a() {
        if (f()) {
            if (this.f720b) {
                if (this.f725i.getMeasuredHeight() <= 0 || this.f725i.getMeasuredWidth() <= 0) {
                    return;
                }
                int measuredWidth = this.f727k.b(this.f725i) ? ProgressiveMediaSource.DEFAULT_LOADING_CHECK_INTERVAL_BYTES : (this.f725i.getMeasuredWidth() - this.f725i.getTotalPaddingLeft()) - this.f725i.getTotalPaddingRight();
                int height = (this.f725i.getHeight() - this.f725i.getCompoundPaddingBottom()) - this.f725i.getCompoundPaddingTop();
                if (measuredWidth <= 0 || height <= 0) {
                    return;
                }
                RectF rectF = f717l;
                synchronized (rectF) {
                    try {
                        rectF.setEmpty();
                        rectF.right = measuredWidth;
                        rectF.bottom = height;
                        float fC = c(rectF);
                        if (fC != this.f725i.getTextSize()) {
                            g(0, fC);
                        }
                    } finally {
                    }
                }
            }
            this.f720b = true;
        }
    }

    public final int c(RectF rectF) {
        CharSequence transformation;
        int length = this.f.length;
        if (length == 0) {
            throw new IllegalStateException("No available text sizes to choose from.");
        }
        int i6 = length - 1;
        int i10 = 1;
        int i11 = 0;
        while (i10 <= i6) {
            int i12 = (i10 + i6) / 2;
            int i13 = this.f[i12];
            TextView textView = this.f725i;
            CharSequence text = textView.getText();
            TransformationMethod transformationMethod = textView.getTransformationMethod();
            CharSequence charSequence = (transformationMethod == null || (transformation = transformationMethod.getTransformation(text, textView)) == null) ? text : transformation;
            int i14 = Build.VERSION.SDK_INT;
            int iB = a1.b(textView);
            TextPaint textPaint = this.f724h;
            if (textPaint == null) {
                this.f724h = new TextPaint();
            } else {
                textPaint.reset();
            }
            this.f724h.set(textView.getPaint());
            this.f724h.setTextSize(i13);
            Layout.Alignment alignment = (Layout.Alignment) e(textView, "getLayoutAlignment", Layout.Alignment.ALIGN_NORMAL);
            int iRound = Math.round(rectF.right);
            StaticLayout staticLayoutA = i14 >= 23 ? c1.a(charSequence, alignment, iRound, iB, textView, this.f724h, this.f727k) : a1.a(charSequence, alignment, iRound, textView, this.f724h);
            if ((iB == -1 || (staticLayoutA.getLineCount() <= iB && staticLayoutA.getLineEnd(staticLayoutA.getLineCount() - 1) == charSequence.length())) && staticLayoutA.getHeight() <= rectF.bottom) {
                int i15 = i12 + 1;
                i11 = i10;
                i10 = i15;
            } else {
                i11 = i12 - 1;
                i6 = i11;
            }
        }
        return this.f[i11];
    }

    public final boolean f() {
        return j() && this.f719a != 0;
    }

    public final void g(int i6, float f) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Context context = this.f726j;
        float fApplyDimension = TypedValue.applyDimension(i6, f, (context == null ? Resources.getSystem() : context.getResources()).getDisplayMetrics());
        TextView textView = this.f725i;
        if (fApplyDimension != textView.getPaint().getTextSize()) {
            textView.getPaint().setTextSize(fApplyDimension);
            boolean zA = b1.a(textView);
            if (textView.getLayout() != null) {
                this.f720b = false;
                try {
                    Method methodD = d("nullLayouts");
                    if (methodD != null) {
                        methodD.invoke(textView, null);
                    }
                } catch (Exception e5) {
                    Log.w("ACTVAutoSizeHelper", "Failed to invoke TextView#nullLayouts() method", e5);
                }
                if (zA) {
                    textView.forceLayout();
                } else {
                    textView.requestLayout();
                }
                textView.invalidate();
            }
        }
    }

    public final boolean h() {
        if (j() && this.f719a == 1) {
            if (!this.f723g || this.f.length == 0) {
                int iFloor = ((int) Math.floor((this.f722e - this.d) / this.f721c)) + 1;
                int[] iArr = new int[iFloor];
                for (int i6 = 0; i6 < iFloor; i6++) {
                    iArr[i6] = Math.round((i6 * this.f721c) + this.d);
                }
                this.f = b(iArr);
            }
            this.f720b = true;
        } else {
            this.f720b = false;
        }
        return this.f720b;
    }

    public final boolean i() {
        boolean z7 = this.f.length > 0;
        this.f723g = z7;
        if (z7) {
            this.f719a = 1;
            this.d = r0[0];
            this.f722e = r0[r1 - 1];
            this.f721c = -1.0f;
        }
        return z7;
    }

    public final boolean j() {
        return !(this.f725i instanceof AppCompatEditText);
    }

    public final void k(float f, float f3, float f4) {
        if (f <= 0.0f) {
            throw new IllegalArgumentException("Minimum auto-size text size (" + f + "px) is less or equal to (0px)");
        }
        if (f3 <= f) {
            throw new IllegalArgumentException("Maximum auto-size text size (" + f3 + "px) is less or equal to minimum auto-size text size (" + f + "px)");
        }
        if (f4 <= 0.0f) {
            throw new IllegalArgumentException("The auto-size step granularity (" + f4 + "px) is less or equal to (0px)");
        }
        this.f719a = 1;
        this.d = f;
        this.f722e = f3;
        this.f721c = f4;
        this.f723g = false;
    }
}
