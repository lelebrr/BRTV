package s;

import android.content.ClipDescription;
import android.net.Uri;
import android.util.Log;
import com.google.android.gms.common.Feature;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import x2.l;
import x2.p;
import z4.j;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class g implements s0.g {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f9687a;

    /* renamed from: b, reason: collision with root package name */
    public Object f9688b;

    /* renamed from: c, reason: collision with root package name */
    public Object f9689c;
    public Object d;

    @Override // s0.g
    public ClipDescription a() {
        return (ClipDescription) this.f9689c;
    }

    @Override // s0.g
    public Object b() {
        return null;
    }

    @Override // s0.g
    public Uri c() {
        return (Uri) this.f9688b;
    }

    @Override // s0.g
    public Uri e() {
        return (Uri) this.d;
    }

    public Object f() {
        Object objA = ((m0.d) this.d).a();
        if (objA == null) {
            objA = ((s3.a) this.f9688b).g();
            if (Log.isLoggable("FactoryPools", 2)) {
                Log.v("FactoryPools", "Created new " + objA.getClass());
            }
        }
        if (objA instanceof s3.b) {
            ((s3.b) objA).b().f9765a = false;
        }
        return objA;
    }

    public void g(double d, float f) {
        int length = ((float[]) this.f9688b).length + 1;
        int iBinarySearch = Arrays.binarySearch((double[]) this.f9689c, d);
        if (iBinarySearch < 0) {
            iBinarySearch = (-iBinarySearch) - 1;
        }
        this.f9689c = Arrays.copyOf((double[]) this.f9689c, length);
        this.f9688b = Arrays.copyOf((float[]) this.f9688b, length);
        this.d = new double[length];
        double[] dArr = (double[]) this.f9689c;
        System.arraycopy(dArr, iBinarySearch, dArr, iBinarySearch + 1, (length - iBinarySearch) - 1);
        ((double[]) this.f9689c)[iBinarySearch] = d;
        ((float[]) this.f9688b)[iBinarySearch] = f;
    }

    public double h(double d) {
        if (d < 0.0d) {
            d = 0.0d;
        } else if (d > 1.0d) {
            d = 1.0d;
        }
        int iBinarySearch = Arrays.binarySearch((double[]) this.f9689c, d);
        if (iBinarySearch > 0) {
            return 1.0d;
        }
        if (iBinarySearch == 0) {
            return 0.0d;
        }
        int i6 = -iBinarySearch;
        int i10 = i6 - 1;
        float[] fArr = (float[]) this.f9688b;
        float f = fArr[i10];
        int i11 = i6 - 2;
        float f3 = fArr[i11];
        double[] dArr = (double[]) this.f9689c;
        double d10 = dArr[i10];
        double d11 = dArr[i11];
        double d12 = (f - f3) / (d10 - d11);
        return ((((d * d) - (d11 * d11)) * d12) / 2.0d) + ((d - d11) * (f3 - (d12 * d11))) + ((double[]) this.d)[i11];
    }

    public double i(double d) {
        return Math.sin(h(d) * 6.283185307179586d);
    }

    public boolean j(w.c cVar, v.e eVar, boolean z7) {
        v.d[] dVarArr = eVar.J;
        v.d dVar = dVarArr[0];
        w.b bVar = (w.b) this.f9689c;
        bVar.f10751a = dVar;
        bVar.f10752b = dVarArr[1];
        bVar.f10753c = eVar.m();
        bVar.d = eVar.j();
        bVar.f10757i = false;
        bVar.f10758j = z7;
        v.d dVar2 = bVar.f10751a;
        v.d dVar3 = v.d.f10531c;
        boolean z10 = dVar2 == dVar3;
        boolean z11 = bVar.f10752b == dVar3;
        boolean z12 = z10 && eVar.N > 0.0f;
        boolean z13 = z11 && eVar.N > 0.0f;
        v.d dVar4 = v.d.f10529a;
        int[] iArr = eVar.f10548l;
        if (z12 && iArr[0] == 4) {
            bVar.f10751a = dVar4;
        }
        if (z13 && iArr[1] == 4) {
            bVar.f10752b = dVar4;
        }
        ((androidx.constraintlayout.widget.b) cVar).a(eVar, bVar);
        eVar.z(bVar.f10754e);
        eVar.w(bVar.f);
        eVar.f10559w = bVar.f10756h;
        int i6 = bVar.f10755g;
        eVar.R = i6;
        eVar.f10559w = i6 > 0;
        bVar.f10758j = false;
        return bVar.f10757i;
    }

    public boolean k(Object obj) {
        if (obj instanceof s3.b) {
            ((s3.b) obj).b().f9765a = true;
        }
        switch (((q.b) this.f9689c).f8932a) {
            case 1:
                break;
            default:
                ((List) obj).clear();
                break;
        }
        return ((m0.d) this.d).c(obj);
    }

    public void l(v.f fVar, int i6, int i10) {
        int i11 = fVar.S;
        int i12 = fVar.T;
        fVar.S = 0;
        fVar.T = 0;
        fVar.z(i6);
        fVar.w(i10);
        if (i11 < 0) {
            fVar.S = 0;
        } else {
            fVar.S = i11;
        }
        if (i12 < 0) {
            fVar.T = 0;
        } else {
            fVar.T = i12;
        }
        ((v.f) this.d).F();
    }

    public String toString() {
        switch (this.f9687a) {
            case 0:
                return "pos =" + Arrays.toString((double[]) this.f9689c) + " period=" + Arrays.toString((float[]) this.f9688b);
            default:
                return super.toString();
        }
    }

    public /* synthetic */ g(Object obj, Object obj2, Object obj3, int i6) {
        this.f9687a = i6;
        this.f9688b = obj;
        this.f9689c = obj2;
        this.d = obj3;
    }

    public g(j jVar, z4.h hVar, Feature[] featureArr, int i6) {
        this.f9687a = 7;
        this.d = jVar;
        this.f9688b = hVar;
        this.f9689c = featureArr;
    }

    public g(v.f fVar) {
        this.f9687a = 3;
        this.f9688b = new ArrayList();
        this.f9689c = new w.b();
        this.d = fVar;
    }

    public g(m0.d dVar, s3.a aVar, q.b bVar) {
        this.f9687a = 2;
        this.d = dVar;
        this.f9688b = aVar;
        this.f9689c = bVar;
    }

    public g(l lVar, n3.f fVar, p pVar) {
        this.f9687a = 6;
        this.d = lVar;
        this.f9689c = fVar;
        this.f9688b = pVar;
    }

    @Override // s0.g
    public void d() {
    }
}
