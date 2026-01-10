package t;

import android.view.View;
import java.text.DecimalFormat;
import java.util.Arrays;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class h0 {

    /* renamed from: a, reason: collision with root package name */
    public r4.b f9931a;

    /* renamed from: b, reason: collision with root package name */
    public int[] f9932b = new int[10];

    /* renamed from: c, reason: collision with root package name */
    public float[] f9933c = new float[10];
    public int d;

    /* renamed from: e, reason: collision with root package name */
    public String f9934e;

    public final float a(float f) {
        return (float) this.f9931a.q(f);
    }

    public void b(int i6, float f) {
        int[] iArr = this.f9932b;
        if (iArr.length < this.d + 1) {
            this.f9932b = Arrays.copyOf(iArr, iArr.length * 2);
            float[] fArr = this.f9933c;
            this.f9933c = Arrays.copyOf(fArr, fArr.length * 2);
        }
        int[] iArr2 = this.f9932b;
        int i10 = this.d;
        iArr2[i10] = i6;
        this.f9933c[i10] = f;
        this.d = i10 + 1;
    }

    public abstract void c(View view, float f);

    /* JADX WARN: Removed duplicated region for block: B:31:0x009d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void d(int r18) {
        /*
            Method dump skipped, instructions count: 194
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: t.h0.d(int):void");
    }

    public final String toString() {
        String string = this.f9934e;
        DecimalFormat decimalFormat = new DecimalFormat("##.##");
        for (int i6 = 0; i6 < this.d; i6++) {
            StringBuilder sbW = a.e.w(string, "[");
            sbW.append(this.f9932b[i6]);
            sbW.append(" , ");
            sbW.append(decimalFormat.format(this.f9933c[i6]));
            sbW.append("] ");
            string = sbW.toString();
        }
        return string;
    }
}
