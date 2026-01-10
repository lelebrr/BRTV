package a1;

import android.os.Looper;
import android.util.AndroidRuntimeException;
import java.util.ArrayList;
import q6.i;
import q6.j;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class f {

    /* renamed from: n, reason: collision with root package name */
    public static final d f55n = new d();

    /* renamed from: o, reason: collision with root package name */
    public static final d f56o = new d();

    /* renamed from: p, reason: collision with root package name */
    public static final d f57p = new d();

    /* renamed from: q, reason: collision with root package name */
    public static final d f58q = new d();

    /* renamed from: r, reason: collision with root package name */
    public static final d f59r = new d();

    /* renamed from: s, reason: collision with root package name */
    public static final d f60s = new d();

    /* renamed from: a, reason: collision with root package name */
    public float f61a;

    /* renamed from: b, reason: collision with root package name */
    public float f62b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f63c;
    public final j d;

    /* renamed from: e, reason: collision with root package name */
    public final i f64e;
    public boolean f;

    /* renamed from: g, reason: collision with root package name */
    public long f65g;

    /* renamed from: h, reason: collision with root package name */
    public final float f66h;

    /* renamed from: i, reason: collision with root package name */
    public final ArrayList f67i;

    /* renamed from: j, reason: collision with root package name */
    public final ArrayList f68j;

    /* renamed from: k, reason: collision with root package name */
    public g f69k;

    /* renamed from: l, reason: collision with root package name */
    public float f70l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f71m;

    public f(j jVar) {
        i iVar = j.f9272q;
        this.f61a = 0.0f;
        this.f62b = Float.MAX_VALUE;
        this.f63c = false;
        this.f = false;
        this.f65g = 0L;
        this.f67i = new ArrayList();
        this.f68j = new ArrayList();
        this.d = jVar;
        this.f64e = iVar;
        if (iVar == f57p || iVar == f58q || iVar == f59r) {
            this.f66h = 0.1f;
        } else if (iVar == f60s || iVar == f55n || iVar == f56o) {
            this.f66h = 0.00390625f;
        } else {
            this.f66h = 1.0f;
        }
        this.f69k = null;
        this.f70l = Float.MAX_VALUE;
        this.f71m = false;
    }

    public final void a(float f) {
        this.f64e.getClass();
        j jVar = this.d;
        jVar.f9276o = f / 10000.0f;
        jVar.invalidateSelf();
        int i6 = 0;
        while (true) {
            ArrayList arrayList = this.f68j;
            if (i6 >= arrayList.size()) {
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    if (arrayList.get(size) == null) {
                        arrayList.remove(size);
                    }
                }
                return;
            }
            if (arrayList.get(i6) != null) {
                throw a.e.k(i6, arrayList);
            }
            i6++;
        }
    }

    public final void b() {
        if (this.f69k.f73b <= 0.0d) {
            throw new UnsupportedOperationException("Spring animations can only come to an end when there is damping");
        }
        if (Looper.myLooper() != Looper.getMainLooper()) {
            throw new AndroidRuntimeException("Animations may only be started on the main thread");
        }
        if (this.f) {
            this.f71m = true;
        }
    }
}
