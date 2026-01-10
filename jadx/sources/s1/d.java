package s1;

import android.graphics.Color;
import java.util.Arrays;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    public final int f9717a;

    /* renamed from: b, reason: collision with root package name */
    public final int f9718b;

    /* renamed from: c, reason: collision with root package name */
    public final int f9719c;
    public final int d;

    /* renamed from: e, reason: collision with root package name */
    public final int f9720e;
    public boolean f;

    /* renamed from: g, reason: collision with root package name */
    public int f9721g;

    /* renamed from: h, reason: collision with root package name */
    public int f9722h;

    /* renamed from: i, reason: collision with root package name */
    public float[] f9723i;

    public d(int i6, int i10) {
        this.f9717a = Color.red(i6);
        this.f9718b = Color.green(i6);
        this.f9719c = Color.blue(i6);
        this.d = i6;
        this.f9720e = i10;
    }

    public final void a() {
        if (this.f) {
            return;
        }
        int i6 = this.d;
        int iE = f0.a.e(4.5f, -1, i6);
        int iE2 = f0.a.e(3.0f, -1, i6);
        if (iE != -1 && iE2 != -1) {
            this.f9722h = f0.a.h(-1, iE);
            this.f9721g = f0.a.h(-1, iE2);
            this.f = true;
            return;
        }
        int iE3 = f0.a.e(4.5f, -16777216, i6);
        int iE4 = f0.a.e(3.0f, -16777216, i6);
        if (iE3 == -1 || iE4 == -1) {
            this.f9722h = iE != -1 ? f0.a.h(-1, iE) : f0.a.h(-16777216, iE3);
            this.f9721g = iE2 != -1 ? f0.a.h(-1, iE2) : f0.a.h(-16777216, iE4);
            this.f = true;
        } else {
            this.f9722h = f0.a.h(-16777216, iE3);
            this.f9721g = f0.a.h(-16777216, iE4);
            this.f = true;
        }
    }

    public final float[] b() {
        if (this.f9723i == null) {
            this.f9723i = new float[3];
        }
        f0.a.a(this.f9717a, this.f9718b, this.f9719c, this.f9723i);
        return this.f9723i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || d.class != obj.getClass()) {
            return false;
        }
        d dVar = (d) obj;
        return this.f9720e == dVar.f9720e && this.d == dVar.d;
    }

    public final int hashCode() {
        return (this.d * 31) + this.f9720e;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(d.class.getSimpleName());
        sb.append(" [RGB: #");
        sb.append(Integer.toHexString(this.d));
        sb.append("] [HSL: ");
        sb.append(Arrays.toString(b()));
        sb.append("] [Population: ");
        sb.append(this.f9720e);
        sb.append("] [Title Text: #");
        a();
        sb.append(Integer.toHexString(this.f9721g));
        sb.append("] [Body Text: #");
        a();
        sb.append(Integer.toHexString(this.f9722h));
        sb.append(']');
        return sb.toString();
    }
}
