package androidx.constraintlayout.utils.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.ViewParent;
import android.view.animation.Interpolator;
import androidx.constraintlayout.motion.widget.MotionLayout;
import e0.a;
import java.util.HashMap;
import s.b;
import t.h0;
import t.i;
import t.o;
import t.p;
import t.y;
import y.j;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class MotionTelltales extends MockView {

    /* renamed from: l, reason: collision with root package name */
    public final Paint f1003l;

    /* renamed from: m, reason: collision with root package name */
    public MotionLayout f1004m;

    /* renamed from: n, reason: collision with root package name */
    public final float[] f1005n;

    /* renamed from: o, reason: collision with root package name */
    public final Matrix f1006o;

    /* renamed from: p, reason: collision with root package name */
    public int f1007p;

    /* renamed from: q, reason: collision with root package name */
    public int f1008q;

    /* renamed from: r, reason: collision with root package name */
    public float f1009r;

    public MotionTelltales(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1003l = new Paint();
        this.f1005n = new float[2];
        this.f1006o = new Matrix();
        this.f1007p = 0;
        this.f1008q = -65281;
        this.f1009r = 0.25f;
        b(context, attributeSet);
    }

    public final void b(Context context, AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, j.f11219m);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i6 = 0; i6 < indexCount; i6++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i6);
                if (index == 0) {
                    this.f1008q = typedArrayObtainStyledAttributes.getColor(index, this.f1008q);
                } else if (index == 2) {
                    this.f1007p = typedArrayObtainStyledAttributes.getInt(index, this.f1007p);
                } else if (index == 1) {
                    this.f1009r = typedArrayObtainStyledAttributes.getFloat(index, this.f1009r);
                }
            }
        }
        int i10 = this.f1008q;
        Paint paint = this.f1003l;
        paint.setColor(i10);
        paint.setStrokeWidth(5.0f);
    }

    @Override // android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override // androidx.constraintlayout.utils.widget.MockView, android.view.View
    public final void onDraw(Canvas canvas) {
        float f;
        int i6;
        Matrix matrix;
        int i10;
        float[] fArr;
        int i11;
        float[] fArr2;
        int i12;
        float f3;
        int i13;
        float f4;
        h0 h0Var;
        float[] fArr3;
        h0 h0Var2;
        int i14;
        h0 h0Var3;
        h0 h0Var4;
        h0 h0Var5;
        i iVar;
        o oVar;
        h0 h0Var6;
        float[] fArr4;
        double[] dArr;
        a aVar;
        float f5;
        int i15;
        MotionTelltales motionTelltales = this;
        int i16 = 5;
        super.onDraw(canvas);
        Matrix matrix2 = getMatrix();
        Matrix matrix3 = motionTelltales.f1006o;
        matrix2.invert(matrix3);
        if (motionTelltales.f1004m == null) {
            ViewParent parent = getParent();
            if (parent instanceof MotionLayout) {
                motionTelltales.f1004m = (MotionLayout) parent;
                return;
            }
            return;
        }
        int width = getWidth();
        int height = getHeight();
        float[] fArr5 = {0.1f, 0.25f, 0.5f, 0.75f, 0.9f};
        int i17 = 0;
        while (i17 < i16) {
            float f10 = fArr5[i17];
            int i18 = 0;
            while (i18 < i16) {
                float f11 = fArr5[i18];
                MotionLayout motionLayout = motionTelltales.f1004m;
                int i19 = motionTelltales.f1007p;
                float fA = motionLayout.f963s;
                float interpolation = motionLayout.D;
                if (motionLayout.f961r != null) {
                    float fSignum = Math.signum(motionLayout.F - interpolation);
                    float interpolation2 = motionLayout.f961r.getInterpolation(motionLayout.D + 1.0E-5f);
                    interpolation = motionLayout.f961r.getInterpolation(motionLayout.D);
                    fA = (((interpolation2 - interpolation) / 1.0E-5f) * fSignum) / motionLayout.B;
                }
                Interpolator interpolator = motionLayout.f961r;
                if (interpolator instanceof p) {
                    fA = ((p) interpolator).a();
                }
                float f12 = fA;
                o oVar2 = (o) motionLayout.f976z.get(motionTelltales);
                int i20 = i19 & 1;
                float[] fArr6 = motionTelltales.f1005n;
                if (i20 == 0) {
                    int width2 = getWidth();
                    int height2 = getHeight();
                    float[] fArr7 = oVar2.f9983t;
                    float fA2 = oVar2.a(fArr7, interpolation);
                    HashMap map = oVar2.f9986w;
                    fArr = fArr5;
                    if (map == null) {
                        fArr3 = fArr6;
                        h0Var = null;
                    } else {
                        h0Var = (h0) map.get("translationX");
                        fArr3 = fArr6;
                    }
                    HashMap map2 = oVar2.f9986w;
                    if (map2 == null) {
                        i14 = i18;
                        h0Var2 = null;
                    } else {
                        h0Var2 = (h0) map2.get("translationY");
                        i14 = i18;
                    }
                    HashMap map3 = oVar2.f9986w;
                    i11 = i17;
                    if (map3 == null) {
                        i10 = height;
                        h0Var3 = null;
                    } else {
                        h0Var3 = (h0) map3.get("rotation");
                        i10 = height;
                    }
                    HashMap map4 = oVar2.f9986w;
                    i6 = width;
                    if (map4 == null) {
                        matrix = matrix3;
                        h0Var4 = null;
                    } else {
                        h0Var4 = (h0) map4.get("scaleX");
                        matrix = matrix3;
                    }
                    HashMap map5 = oVar2.f9986w;
                    if (map5 == null) {
                        f = f12;
                        h0Var5 = null;
                    } else {
                        h0Var5 = (h0) map5.get("scaleY");
                        f = f12;
                    }
                    HashMap map6 = oVar2.f9987x;
                    i iVar2 = map6 == null ? null : (i) map6.get("translationX");
                    HashMap map7 = oVar2.f9987x;
                    i iVar3 = map7 == null ? null : (i) map7.get("translationY");
                    HashMap map8 = oVar2.f9987x;
                    i iVar4 = map8 == null ? null : (i) map8.get("rotation");
                    HashMap map9 = oVar2.f9987x;
                    i iVar5 = map9 == null ? null : (i) map9.get("scaleX");
                    HashMap map10 = oVar2.f9987x;
                    i iVar6 = map10 != null ? (i) map10.get("scaleY") : null;
                    a aVar2 = new a();
                    aVar2.f6374e = 0.0f;
                    aVar2.d = 0.0f;
                    aVar2.f6373c = 0.0f;
                    aVar2.f6372b = 0.0f;
                    aVar2.f6371a = 0.0f;
                    if (h0Var3 != null) {
                        iVar = iVar3;
                        oVar = oVar2;
                        aVar2.f6374e = (float) h0Var3.f9931a.u(fA2);
                        aVar2.f = h0Var3.a(fA2);
                    } else {
                        iVar = iVar3;
                        oVar = oVar2;
                    }
                    if (h0Var != null) {
                        h0Var6 = h0Var3;
                        f4 = f10;
                        aVar2.f6373c = (float) h0Var.f9931a.u(fA2);
                    } else {
                        h0Var6 = h0Var3;
                        f4 = f10;
                    }
                    if (h0Var2 != null) {
                        aVar2.d = (float) h0Var2.f9931a.u(fA2);
                    }
                    if (h0Var4 != null) {
                        aVar2.f6371a = (float) h0Var4.f9931a.u(fA2);
                    }
                    if (h0Var5 != null) {
                        aVar2.f6372b = (float) h0Var5.f9931a.u(fA2);
                    }
                    if (iVar4 != null) {
                        aVar2.f6374e = iVar4.b(fA2);
                    }
                    if (iVar2 != null) {
                        aVar2.f6373c = iVar2.b(fA2);
                    }
                    i iVar7 = iVar;
                    if (iVar != null) {
                        aVar2.d = iVar7.b(fA2);
                    }
                    if (iVar5 != null || iVar6 != null) {
                        if (iVar5 == null) {
                            aVar2.f6371a = iVar5.b(fA2);
                        }
                        if (iVar6 == null) {
                            aVar2.f6372b = iVar6.b(fA2);
                        }
                    }
                    o oVar3 = oVar;
                    b bVar = oVar3.f9972i;
                    if (bVar != null) {
                        double[] dArr2 = oVar3.f9977n;
                        if (dArr2.length > 0) {
                            double d = fA2;
                            bVar.r(d, dArr2);
                            oVar3.f9972i.v(d, oVar3.f9978o);
                            int[] iArr = oVar3.f9976m;
                            double[] dArr3 = oVar3.f9978o;
                            double[] dArr4 = oVar3.f9977n;
                            oVar3.d.getClass();
                            fArr4 = fArr3;
                            aVar = aVar2;
                            i15 = i19;
                            f5 = f11;
                            i13 = i14;
                            y.d(f11, f4, fArr4, iArr, dArr3, dArr4);
                        } else {
                            aVar = aVar2;
                            f5 = f11;
                            fArr4 = fArr3;
                            i15 = i19;
                            i13 = i14;
                        }
                        aVar.a(f5, f4, width2, height2, fArr4);
                        f3 = f5;
                        i12 = i15;
                    } else {
                        fArr4 = fArr3;
                        i13 = i14;
                        if (oVar3.f9971h != null) {
                            double dA = oVar3.a(fArr7, fA2);
                            oVar3.f9971h[0].v(dA, oVar3.f9978o);
                            oVar3.f9971h[0].r(dA, oVar3.f9977n);
                            float f13 = fArr7[0];
                            int i21 = 0;
                            while (true) {
                                dArr = oVar3.f9978o;
                                if (i21 >= dArr.length) {
                                    break;
                                }
                                dArr[i21] = dArr[i21] * f13;
                                i21++;
                            }
                            int[] iArr2 = oVar3.f9976m;
                            double[] dArr5 = oVar3.f9977n;
                            oVar3.d.getClass();
                            y.d(f11, f4, fArr4, iArr2, dArr, dArr5);
                            aVar2.a(f11, f4, width2, height2, fArr4);
                            i12 = i19;
                            f3 = f11;
                        } else {
                            y yVar = oVar3.f9969e;
                            float f14 = yVar.f10045e;
                            y yVar2 = oVar3.d;
                            i iVar8 = iVar5;
                            float f15 = f14 - yVar2.f10045e;
                            float f16 = yVar.f - yVar2.f;
                            i iVar9 = iVar2;
                            float f17 = yVar.f10046g - yVar2.f10046g;
                            float f18 = (yVar.f10047h - yVar2.f10047h) + f16;
                            fArr4[0] = ((f17 + f15) * f11) + ((1.0f - f11) * f15);
                            fArr4[1] = (f18 * f4) + ((1.0f - f4) * f16);
                            aVar2.f6374e = 0.0f;
                            aVar2.d = 0.0f;
                            aVar2.f6373c = 0.0f;
                            aVar2.f6372b = 0.0f;
                            aVar2.f6371a = 0.0f;
                            if (h0Var6 != null) {
                                fArr2 = fArr4;
                                aVar2.f6374e = (float) h0Var6.f9931a.u(fA2);
                                aVar2.f = h0Var6.a(fA2);
                            } else {
                                fArr2 = fArr4;
                            }
                            if (h0Var != null) {
                                aVar2.f6373c = (float) h0Var.f9931a.u(fA2);
                            }
                            if (h0Var2 != null) {
                                aVar2.d = (float) h0Var2.f9931a.u(fA2);
                            }
                            if (h0Var4 != null) {
                                aVar2.f6371a = (float) h0Var4.f9931a.u(fA2);
                            }
                            if (h0Var5 != null) {
                                aVar2.f6372b = (float) h0Var5.f9931a.u(fA2);
                            }
                            if (iVar4 != null) {
                                aVar2.f6374e = iVar4.b(fA2);
                            }
                            if (iVar9 != null) {
                                aVar2.f6373c = iVar9.b(fA2);
                            }
                            if (iVar7 != null) {
                                aVar2.d = iVar7.b(fA2);
                            }
                            if (iVar8 != null || iVar6 != null) {
                                if (iVar8 == null) {
                                    aVar2.f6371a = iVar8.b(fA2);
                                }
                                if (iVar6 == null) {
                                    aVar2.f6372b = iVar6.b(fA2);
                                }
                            }
                            i12 = i19;
                            f3 = f11;
                            aVar2.a(f11, f4, width2, height2, fArr2);
                        }
                    }
                    fArr2 = fArr4;
                } else {
                    f = f12;
                    i6 = width;
                    matrix = matrix3;
                    i10 = height;
                    fArr = fArr5;
                    i11 = i17;
                    fArr2 = fArr6;
                    i12 = i19;
                    f3 = f11;
                    i13 = i18;
                    f4 = f10;
                    oVar2.b(interpolation, f3, f4, fArr2);
                }
                if (i12 < 2) {
                    fArr2[0] = fArr2[0] * f;
                    fArr2[1] = fArr2[1] * f;
                }
                motionTelltales = this;
                float[] fArr8 = motionTelltales.f1005n;
                Matrix matrix4 = matrix;
                matrix4.mapVectors(fArr8);
                int i22 = i6;
                float f19 = i22 * f3;
                int i23 = i10;
                float f20 = i23 * f4;
                float f21 = fArr8[0];
                float f22 = motionTelltales.f1009r;
                float f23 = f20 - (fArr8[1] * f22);
                matrix4.mapVectors(fArr8);
                canvas.drawLine(f19, f20, f19 - (f21 * f22), f23, motionTelltales.f1003l);
                i18 = i13 + 1;
                height = i23;
                f10 = f4;
                fArr5 = fArr;
                i17 = i11;
                i16 = 5;
                matrix3 = matrix4;
                width = i22;
            }
            i17++;
            height = height;
            i16 = 5;
            matrix3 = matrix3;
            width = width;
        }
    }

    @Override // android.view.View
    public final void onLayout(boolean z7, int i6, int i10, int i11, int i12) {
        super.onLayout(z7, i6, i10, i11, i12);
        postInvalidate();
    }

    public void setText(CharSequence charSequence) {
        this.f = charSequence.toString();
        requestLayout();
    }

    public MotionTelltales(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
        this.f1003l = new Paint();
        this.f1005n = new float[2];
        this.f1006o = new Matrix();
        this.f1007p = 0;
        this.f1008q = -65281;
        this.f1009r = 0.25f;
        b(context, attributeSet);
    }
}
