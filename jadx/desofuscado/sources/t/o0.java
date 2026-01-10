package t;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.RectF;
import android.util.Xml;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.motion.widget.MotionLayout;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class o0 {

    /* renamed from: v, reason: collision with root package name */
    public static final float[][] f9989v = {new float[]{0.5f, 0.0f}, new float[]{0.0f, 0.5f}, new float[]{1.0f, 0.5f}, new float[]{0.5f, 1.0f}, new float[]{0.5f, 0.5f}, new float[]{0.0f, 0.5f}, new float[]{1.0f, 0.5f}};

    /* renamed from: w, reason: collision with root package name */
    public static final float[][] f9990w = {new float[]{0.0f, -1.0f}, new float[]{0.0f, 1.0f}, new float[]{-1.0f, 0.0f}, new float[]{1.0f, 0.0f}, new float[]{-1.0f, 0.0f}, new float[]{1.0f, 0.0f}};

    /* renamed from: a, reason: collision with root package name */
    public final int f9991a;

    /* renamed from: b, reason: collision with root package name */
    public final int f9992b;

    /* renamed from: c, reason: collision with root package name */
    public final int f9993c;
    public final int d;

    /* renamed from: e, reason: collision with root package name */
    public final int f9994e;
    public final int f;

    /* renamed from: g, reason: collision with root package name */
    public float f9995g;

    /* renamed from: h, reason: collision with root package name */
    public float f9996h;

    /* renamed from: i, reason: collision with root package name */
    public float f9997i;

    /* renamed from: j, reason: collision with root package name */
    public float f9998j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f9999k = false;

    /* renamed from: l, reason: collision with root package name */
    public final float[] f10000l = new float[2];

    /* renamed from: m, reason: collision with root package name */
    public float f10001m;

    /* renamed from: n, reason: collision with root package name */
    public float f10002n;

    /* renamed from: o, reason: collision with root package name */
    public final MotionLayout f10003o;

    /* renamed from: p, reason: collision with root package name */
    public final float f10004p;

    /* renamed from: q, reason: collision with root package name */
    public final float f10005q;

    /* renamed from: r, reason: collision with root package name */
    public final boolean f10006r;

    /* renamed from: s, reason: collision with root package name */
    public final float f10007s;

    /* renamed from: t, reason: collision with root package name */
    public final int f10008t;

    /* renamed from: u, reason: collision with root package name */
    public final float f10009u;

    public o0(Context context, MotionLayout motionLayout, XmlResourceParser xmlResourceParser) {
        this.f9991a = 0;
        this.f9992b = 0;
        this.f9993c = 0;
        this.d = -1;
        this.f9994e = -1;
        this.f = -1;
        this.f9995g = 0.5f;
        this.f9996h = 0.5f;
        this.f9997i = 0.0f;
        this.f9998j = 1.0f;
        this.f10004p = 4.0f;
        this.f10005q = 1.2f;
        this.f10006r = true;
        this.f10007s = 1.0f;
        this.f10008t = 0;
        this.f10009u = 10.0f;
        this.f10003o = motionLayout;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlResourceParser), y.j.f11221o);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i6 = 0; i6 < indexCount; i6++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i6);
            if (index == 9) {
                this.d = typedArrayObtainStyledAttributes.getResourceId(index, this.d);
            } else if (index == 10) {
                int i10 = typedArrayObtainStyledAttributes.getInt(index, this.f9991a);
                this.f9991a = i10;
                float[] fArr = f9989v[i10];
                this.f9996h = fArr[0];
                this.f9995g = fArr[1];
            } else if (index == 0) {
                int i11 = typedArrayObtainStyledAttributes.getInt(index, this.f9992b);
                this.f9992b = i11;
                float[] fArr2 = f9990w[i11];
                this.f9997i = fArr2[0];
                this.f9998j = fArr2[1];
            } else if (index == 5) {
                this.f10004p = typedArrayObtainStyledAttributes.getFloat(index, this.f10004p);
            } else if (index == 4) {
                this.f10005q = typedArrayObtainStyledAttributes.getFloat(index, this.f10005q);
            } else if (index == 6) {
                this.f10006r = typedArrayObtainStyledAttributes.getBoolean(index, this.f10006r);
            } else if (index == 1) {
                this.f10007s = typedArrayObtainStyledAttributes.getFloat(index, this.f10007s);
            } else if (index == 2) {
                this.f10009u = typedArrayObtainStyledAttributes.getFloat(index, this.f10009u);
            } else if (index == 11) {
                this.f9994e = typedArrayObtainStyledAttributes.getResourceId(index, this.f9994e);
            } else if (index == 8) {
                this.f9993c = typedArrayObtainStyledAttributes.getInt(index, this.f9993c);
            } else if (index == 7) {
                this.f10008t = typedArrayObtainStyledAttributes.getInteger(index, 0);
            } else if (index == 3) {
                this.f = typedArrayObtainStyledAttributes.getResourceId(index, 0);
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public final RectF a(ViewGroup viewGroup, RectF rectF) {
        View viewFindViewById;
        int i6 = this.f9994e;
        if (i6 == -1 || (viewFindViewById = viewGroup.findViewById(i6)) == null) {
            return null;
        }
        rectF.set(viewFindViewById.getLeft(), viewFindViewById.getTop(), viewFindViewById.getRight(), viewFindViewById.getBottom());
        return rectF;
    }

    public final void b(boolean z7) {
        float[][] fArr = f9989v;
        float[][] fArr2 = f9990w;
        if (z7) {
            fArr2[4] = fArr2[3];
            fArr2[5] = fArr2[2];
            fArr[5] = fArr[2];
            fArr[6] = fArr[1];
        } else {
            fArr2[4] = fArr2[2];
            fArr2[5] = fArr2[3];
            fArr[5] = fArr[1];
            fArr[6] = fArr[2];
        }
        float[] fArr3 = fArr[this.f9991a];
        this.f9996h = fArr3[0];
        this.f9995g = fArr3[1];
        float[] fArr4 = fArr2[this.f9992b];
        this.f9997i = fArr4[0];
        this.f9998j = fArr4[1];
    }

    public final String toString() {
        return this.f9997i + " , " + this.f9998j;
    }
}
