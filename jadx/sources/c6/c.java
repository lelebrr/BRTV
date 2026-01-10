package c6;

import a.f;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.google.android.gms.common.Feature;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
import m2.j;
import m2.q;
import n0.s0;
import q2.e;
import z4.k;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c implements e {

    /* renamed from: a, reason: collision with root package name */
    public int f3392a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f3393b;

    /* renamed from: c, reason: collision with root package name */
    public Object f3394c = new f(7, this);
    public Object d;

    public c(BottomSheetBehavior bottomSheetBehavior) {
        this.d = bottomSheetBehavior;
    }

    public static c c() {
        c cVar = new c();
        cVar.f3393b = true;
        cVar.f3392a = 0;
        return cVar;
    }

    @Override // q2.e
    public void a() {
        o2.a aVar = (o2.a) this.f3394c;
        Drawable drawable = aVar.f8548b.getDrawable();
        j jVar = (j) this.d;
        boolean z7 = jVar instanceof q;
        f2.a aVar2 = new f2.a(drawable, jVar.a(), jVar.b().f8223w, this.f3392a, (z7 && ((q) jVar).f8249g) ? false : true, this.f3393b);
        if (z7) {
            aVar.g(aVar2);
        } else if (jVar instanceof m2.e) {
            aVar.g(aVar2);
        }
    }

    public c b() {
        if (!(((k) this.f3394c) != null)) {
            throw new IllegalArgumentException("execute parameter required");
        }
        Feature[] featureArr = (Feature[]) this.d;
        boolean z7 = this.f3393b;
        int i6 = this.f3392a;
        c cVar = new c();
        cVar.d = this;
        cVar.f3394c = featureArr;
        boolean z10 = false;
        if (featureArr != null && z7) {
            z10 = true;
        }
        cVar.f3393b = z10;
        cVar.f3392a = i6;
        return cVar;
    }

    public void d(int i6) {
        BottomSheetBehavior bottomSheetBehavior = (BottomSheetBehavior) this.d;
        WeakReference weakReference = bottomSheetBehavior.R;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.f3392a = i6;
        if (this.f3393b) {
            return;
        }
        View view = (View) bottomSheetBehavior.R.get();
        f fVar = (f) this.f3394c;
        WeakHashMap weakHashMap = s0.f8353a;
        view.postOnAnimation(fVar);
        this.f3393b = true;
    }
}
