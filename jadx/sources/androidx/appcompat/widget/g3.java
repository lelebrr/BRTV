package androidx.appcompat.widget;

import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Property;
import android.view.View;
import android.widget.ImageView;
import com.google.android.material.progressindicator.CircularProgressIndicatorSpec;
import java.util.Arrays;
import java.util.WeakHashMap;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class g3 extends Property {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f728a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ g3(String str, Class cls, int i6) {
        super(cls, str);
        this.f728a = i6;
    }

    @Override // android.util.Property
    public final Object get(Object obj) {
        switch (this.f728a) {
            case 0:
                return Float.valueOf(((SwitchCompat) obj).f629z);
            case 1:
                return Float.valueOf(((View) obj).getLayoutParams().width);
            case 2:
                return Float.valueOf(((View) obj).getLayoutParams().height);
            case 3:
                WeakHashMap weakHashMap = n0.s0.f8353a;
                return Float.valueOf(((View) obj).getPaddingStart());
            case 4:
                WeakHashMap weakHashMap2 = n0.s0.f8353a;
                return Float.valueOf(((View) obj).getPaddingEnd());
            case 5:
                return Float.valueOf(((q6.h) obj).f9269i);
            case 6:
                return Float.valueOf(((q6.h) obj).f9270j);
            case 7:
                return Float.valueOf(((q6.l) obj).b());
            case 8:
                return Float.valueOf(((q6.q) obj).f9302i);
            case 9:
                return Float.valueOf(((q6.s) obj).f9312j);
            case 10:
                return null;
            case 11:
                return null;
            case 12:
                return null;
            case 13:
                return null;
            case 14:
                return null;
            case 15:
                return null;
            case 16:
                return null;
            case 17:
                return null;
            case 18:
                return Float.valueOf(y1.g0.f11276a.k((View) obj));
            default:
                WeakHashMap weakHashMap3 = n0.s0.f8353a;
                return ((View) obj).getClipBounds();
        }
    }

    @Override // android.util.Property
    public final void set(Object obj, Object obj2) {
        switch (this.f728a) {
            case 0:
                ((SwitchCompat) obj).setThumbPosition(((Float) obj2).floatValue());
                break;
            case 1:
                View view = (View) obj;
                view.getLayoutParams().width = ((Float) obj2).intValue();
                view.requestLayout();
                break;
            case 2:
                View view2 = (View) obj;
                view2.getLayoutParams().height = ((Float) obj2).intValue();
                view2.requestLayout();
                break;
            case 3:
                View view3 = (View) obj;
                int iIntValue = ((Float) obj2).intValue();
                int paddingTop = view3.getPaddingTop();
                WeakHashMap weakHashMap = n0.s0.f8353a;
                view3.setPaddingRelative(iIntValue, paddingTop, view3.getPaddingEnd(), view3.getPaddingBottom());
                break;
            case 4:
                View view4 = (View) obj;
                WeakHashMap weakHashMap2 = n0.s0.f8353a;
                view4.setPaddingRelative(view4.getPaddingStart(), view4.getPaddingTop(), ((Float) obj2).intValue(), view4.getPaddingBottom());
                break;
            case 5:
                q6.h hVar = (q6.h) obj;
                float fFloatValue = ((Float) obj2).floatValue();
                hVar.f9269i = fFloatValue;
                int i6 = (int) (5400.0f * fFloatValue);
                float f = fFloatValue * 1520.0f;
                float[] fArr = hVar.f9292b;
                fArr[0] = (-20.0f) + f;
                fArr[1] = f;
                int i10 = 0;
                while (true) {
                    g1.a aVar = hVar.f;
                    if (i10 >= 4) {
                        float f3 = fArr[0];
                        float f4 = fArr[1];
                        float f5 = ((f4 - f3) * hVar.f9270j) + f3;
                        fArr[0] = f5;
                        fArr[0] = f5 / 360.0f;
                        fArr[1] = f4 / 360.0f;
                        int i11 = 0;
                        while (true) {
                            if (i11 < 4) {
                                float f10 = (i6 - q6.h.f9263n[i11]) / 333;
                                if (f10 < 0.0f || f10 > 1.0f) {
                                    i11++;
                                } else {
                                    int i12 = i11 + hVar.f9268h;
                                    CircularProgressIndicatorSpec circularProgressIndicatorSpec = hVar.f9267g;
                                    int[] iArr = circularProgressIndicatorSpec.f9255c;
                                    int length = i12 % iArr.length;
                                    hVar.f9293c[0] = y5.b.a(aVar.getInterpolation(f10), Integer.valueOf(o9.e.j(iArr[length], hVar.f9291a.f9288j)), Integer.valueOf(o9.e.j(circularProgressIndicatorSpec.f9255c[(1 + length) % iArr.length], hVar.f9291a.f9288j))).intValue();
                                }
                            }
                        }
                        hVar.f9291a.invalidateSelf();
                        break;
                    } else {
                        float f11 = 667;
                        fArr[1] = (aVar.getInterpolation((i6 - q6.h.f9261l[i10]) / f11) * 250.0f) + fArr[1];
                        fArr[0] = (aVar.getInterpolation((i6 - q6.h.f9262m[i10]) / f11) * 250.0f) + fArr[0];
                        i10++;
                    }
                }
                break;
            case 6:
                ((q6.h) obj).f9270j = ((Float) obj2).floatValue();
                break;
            case 7:
                q6.l lVar = (q6.l) obj;
                float fFloatValue2 = ((Float) obj2).floatValue();
                if (lVar.f9286h != fFloatValue2) {
                    lVar.f9286h = fFloatValue2;
                    lVar.invalidateSelf();
                    break;
                }
                break;
            case 8:
                q6.q qVar = (q6.q) obj;
                qVar.f9302i = ((Float) obj2).floatValue();
                float[] fArr2 = qVar.f9292b;
                fArr2[0] = 0.0f;
                float f12 = ((int) (r15 * 333.0f)) / 667;
                g1.a aVar2 = qVar.f9299e;
                float interpolation = aVar2.getInterpolation(f12);
                fArr2[2] = interpolation;
                fArr2[1] = interpolation;
                float interpolation2 = aVar2.getInterpolation(f12 + 0.49925038f);
                fArr2[4] = interpolation2;
                fArr2[3] = interpolation2;
                fArr2[5] = 1.0f;
                if (qVar.f9301h && interpolation2 < 1.0f) {
                    int[] iArr2 = qVar.f9293c;
                    iArr2[2] = iArr2[1];
                    iArr2[1] = iArr2[0];
                    iArr2[0] = o9.e.j(qVar.f.f9255c[qVar.f9300g], qVar.f9291a.f9288j);
                    qVar.f9301h = false;
                }
                qVar.f9291a.invalidateSelf();
                break;
            case 9:
                q6.s sVar = (q6.s) obj;
                float fFloatValue3 = ((Float) obj2).floatValue();
                sVar.f9312j = fFloatValue3;
                int i13 = (int) (fFloatValue3 * 1800.0f);
                for (int i14 = 0; i14 < 4; i14++) {
                    sVar.f9292b[i14] = Math.max(0.0f, Math.min(1.0f, sVar.f[i14].getInterpolation((i13 - q6.s.f9306m[i14]) / q6.s.f9305l[i14])));
                }
                if (sVar.f9311i) {
                    Arrays.fill(sVar.f9293c, o9.e.j(sVar.f9309g.f9255c[sVar.f9310h], sVar.f9291a.f9288j));
                    sVar.f9311i = false;
                }
                sVar.f9291a.invalidateSelf();
                break;
            case 10:
                y1.d dVar = (y1.d) obj;
                PointF pointF = (PointF) obj2;
                dVar.getClass();
                dVar.f11251a = Math.round(pointF.x);
                int iRound = Math.round(pointF.y);
                dVar.f11252b = iRound;
                int i15 = dVar.f + 1;
                dVar.f = i15;
                if (i15 == dVar.f11255g) {
                    y1.g0.a(dVar.f11254e, dVar.f11251a, iRound, dVar.f11253c, dVar.d);
                    dVar.f = 0;
                    dVar.f11255g = 0;
                    break;
                }
                break;
            case 11:
                y1.d dVar2 = (y1.d) obj;
                PointF pointF2 = (PointF) obj2;
                dVar2.getClass();
                dVar2.f11253c = Math.round(pointF2.x);
                int iRound2 = Math.round(pointF2.y);
                dVar2.d = iRound2;
                int i16 = dVar2.f11255g + 1;
                dVar2.f11255g = i16;
                if (dVar2.f == i16) {
                    y1.g0.a(dVar2.f11254e, dVar2.f11251a, dVar2.f11252b, dVar2.f11253c, iRound2);
                    dVar2.f = 0;
                    dVar2.f11255g = 0;
                    break;
                }
                break;
            case 12:
                View view5 = (View) obj;
                PointF pointF3 = (PointF) obj2;
                y1.g0.a(view5, view5.getLeft(), view5.getTop(), Math.round(pointF3.x), Math.round(pointF3.y));
                break;
            case 13:
                View view6 = (View) obj;
                PointF pointF4 = (PointF) obj2;
                y1.g0.a(view6, Math.round(pointF4.x), Math.round(pointF4.y), view6.getRight(), view6.getBottom());
                break;
            case 14:
                View view7 = (View) obj;
                PointF pointF5 = (PointF) obj2;
                int iRound3 = Math.round(pointF5.x);
                int iRound4 = Math.round(pointF5.y);
                y1.g0.a(view7, iRound3, iRound4, view7.getWidth() + iRound3, view7.getHeight() + iRound4);
                break;
            case 15:
                ImageView imageView = (ImageView) obj;
                Matrix matrix = (Matrix) obj2;
                if (Build.VERSION.SDK_INT >= 29) {
                    imageView.animateTransform(matrix);
                    break;
                } else if (matrix == null) {
                    Drawable drawable = imageView.getDrawable();
                    if (drawable != null) {
                        drawable.setBounds(0, 0, (imageView.getWidth() - imageView.getPaddingLeft()) - imageView.getPaddingRight(), (imageView.getHeight() - imageView.getPaddingTop()) - imageView.getPaddingBottom());
                        imageView.invalidate();
                        break;
                    }
                } else if (y1.v.f11334n) {
                    try {
                        imageView.animateTransform(matrix);
                        break;
                    } catch (NoSuchMethodError unused) {
                        y1.v.f11334n = false;
                        return;
                    }
                }
                break;
            case 16:
                y1.i iVar = (y1.i) obj;
                float[] fArr3 = (float[]) obj2;
                iVar.getClass();
                System.arraycopy(fArr3, 0, iVar.f11288c, 0, fArr3.length);
                iVar.a();
                break;
            case 17:
                y1.i iVar2 = (y1.i) obj;
                PointF pointF6 = (PointF) obj2;
                iVar2.getClass();
                iVar2.d = pointF6.x;
                iVar2.f11289e = pointF6.y;
                iVar2.a();
                break;
            case 18:
                y1.g0.b((View) obj, ((Float) obj2).floatValue());
                break;
            default:
                WeakHashMap weakHashMap3 = n0.s0.f8353a;
                ((View) obj).setClipBounds((Rect) obj2);
                break;
        }
    }
}
