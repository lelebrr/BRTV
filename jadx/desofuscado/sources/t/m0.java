package t;

import android.util.Log;
import android.view.View;
import java.text.DecimalFormat;
import java.util.Arrays;
import java.util.HashMap;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class m0 {

    /* renamed from: a, reason: collision with root package name */
    public r4.b f9946a;

    /* renamed from: b, reason: collision with root package name */
    public String f9947b;

    /* renamed from: c, reason: collision with root package name */
    public final float[] f9948c;
    public boolean d;

    /* renamed from: e, reason: collision with root package name */
    public long f9949e;
    public float f;

    public m0() {
        this.f9948c = new float[3];
        this.d = false;
        this.f = Float.NaN;
    }

    public final float a(float f, long j10, View view, u uVar) {
        float[] fArr = this.f9948c;
        this.f9946a.s(f, fArr);
        boolean z7 = true;
        float f3 = fArr[1];
        if (f3 == 0.0f) {
            this.d = false;
            return fArr[2];
        }
        if (Float.isNaN(this.f)) {
            String str = this.f9947b;
            HashMap map = (HashMap) uVar.f10032a;
            float f4 = Float.NaN;
            if (map.containsKey(view)) {
                HashMap map2 = (HashMap) map.get(view);
                if (map2.containsKey(str)) {
                    float[] fArr2 = (float[]) map2.get(str);
                    if (fArr2.length > 0) {
                        f4 = fArr2[0];
                    }
                }
            }
            this.f = f4;
            if (Float.isNaN(f4)) {
                this.f = 0.0f;
            }
        }
        float f5 = (float) (((((j10 - this.f9949e) * 1.0E-9d) * f3) + this.f) % 1.0d);
        this.f = f5;
        String str2 = this.f9947b;
        HashMap map3 = (HashMap) uVar.f10032a;
        if (map3.containsKey(view)) {
            HashMap map4 = (HashMap) map3.get(view);
            if (map4.containsKey(str2)) {
                float[] fArrCopyOf = (float[]) map4.get(str2);
                if (fArrCopyOf.length <= 0) {
                    fArrCopyOf = Arrays.copyOf(fArrCopyOf, 1);
                }
                fArrCopyOf[0] = f5;
                map4.put(str2, fArrCopyOf);
            } else {
                map4.put(str2, new float[]{f5});
                map3.put(view, map4);
            }
        } else {
            HashMap map5 = new HashMap();
            map5.put(str2, new float[]{f5});
            map3.put(view, map5);
        }
        this.f9949e = j10;
        float f10 = fArr[0];
        float fSin = (((float) Math.sin(this.f * 6.2831855f)) * f10) + fArr[2];
        if (f10 == 0.0f && f3 == 0.0f) {
            z7 = false;
        }
        this.d = z7;
        return fSin;
    }

    public abstract boolean b(float f, long j10, View view, u uVar);

    public void c(int i6) {
        Log.e("SplineSet", "Error no points added to " + this.f9947b);
    }

    public final String toString() {
        String str = this.f9947b;
        new DecimalFormat("##.##");
        return str;
    }
}
