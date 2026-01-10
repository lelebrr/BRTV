package i3;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import com.bumptech.glide.l;
import com.bumptech.glide.o;
import java.util.ArrayList;
import r3.n;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class i {

    /* renamed from: a, reason: collision with root package name */
    public final t2.d f7321a;

    /* renamed from: b, reason: collision with root package name */
    public final Handler f7322b;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f7323c;
    public final o d;

    /* renamed from: e, reason: collision with root package name */
    public final y2.a f7324e;
    public boolean f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f7325g;

    /* renamed from: h, reason: collision with root package name */
    public l f7326h;

    /* renamed from: i, reason: collision with root package name */
    public f f7327i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f7328j;

    /* renamed from: k, reason: collision with root package name */
    public f f7329k;

    /* renamed from: l, reason: collision with root package name */
    public Bitmap f7330l;

    /* renamed from: m, reason: collision with root package name */
    public f f7331m;

    /* renamed from: n, reason: collision with root package name */
    public int f7332n;

    /* renamed from: o, reason: collision with root package name */
    public int f7333o;

    /* renamed from: p, reason: collision with root package name */
    public int f7334p;

    public i(com.bumptech.glide.b bVar, t2.d dVar, int i6, int i10, Bitmap bitmap) {
        d3.c cVar = d3.c.f6054b;
        y2.a aVar = bVar.f3494a;
        com.bumptech.glide.f fVar = bVar.f3496c;
        o oVarE = com.bumptech.glide.b.e(fVar.getBaseContext());
        o oVarE2 = com.bumptech.glide.b.e(fVar.getBaseContext());
        oVarE2.getClass();
        l lVarY = new l(oVarE2.f3571a, oVarE2, Bitmap.class, oVarE2.f3572b).a(o.f3570k).a(((n3.e) ((n3.e) ((n3.e) new n3.e().d(x2.k.f10911b)).w()).r(true)).j(i6, i10));
        this.f7323c = new ArrayList();
        this.d = oVarE;
        Handler handler = new Handler(Looper.getMainLooper(), new h(0, this));
        this.f7324e = aVar;
        this.f7322b = handler;
        this.f7326h = lVarY;
        this.f7321a = dVar;
        c(cVar, bitmap);
    }

    public final void a() {
        int i6;
        if (!this.f || this.f7325g) {
            return;
        }
        f fVar = this.f7331m;
        if (fVar != null) {
            this.f7331m = null;
            b(fVar);
            return;
        }
        this.f7325g = true;
        t2.d dVar = this.f7321a;
        int i10 = dVar.f10121l.f10102c;
        long jUptimeMillis = SystemClock.uptimeMillis() + ((i10 <= 0 || (i6 = dVar.f10120k) < 0) ? 0 : (i6 < 0 || i6 >= i10) ? -1 : ((t2.a) r2.f10103e.get(i6)).f10097i);
        int i11 = (dVar.f10120k + 1) % dVar.f10121l.f10102c;
        dVar.f10120k = i11;
        this.f7329k = new f(this.f7322b, i11, jUptimeMillis);
        l lVarD = this.f7326h.a((n3.e) new n3.e().q(new q3.d(Double.valueOf(Math.random())))).D(dVar);
        lVarD.C(this.f7329k, lVarD);
    }

    public final void b(f fVar) {
        this.f7325g = false;
        boolean z7 = this.f7328j;
        Handler handler = this.f7322b;
        if (z7) {
            handler.obtainMessage(2, fVar).sendToTarget();
            return;
        }
        if (!this.f) {
            this.f7331m = fVar;
            return;
        }
        if (fVar.f7318g != null) {
            Bitmap bitmap = this.f7330l;
            if (bitmap != null) {
                this.f7324e.e(bitmap);
                this.f7330l = null;
            }
            f fVar2 = this.f7327i;
            this.f7327i = fVar;
            ArrayList arrayList = this.f7323c;
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                d dVar = (d) ((g) arrayList.get(size));
                Object callback = dVar.getCallback();
                while (callback instanceof Drawable) {
                    callback = ((Drawable) callback).getCallback();
                }
                if (callback == null) {
                    dVar.stop();
                    dVar.invalidateSelf();
                } else {
                    dVar.invalidateSelf();
                    f fVar3 = ((i) dVar.f7308a.f7307b).f7327i;
                    if ((fVar3 != null ? fVar3.f7317e : -1) == r5.f7321a.f10121l.f10102c - 1) {
                        dVar.f++;
                    }
                    int i6 = dVar.f7312g;
                    if (i6 != -1 && dVar.f >= i6) {
                        dVar.stop();
                    }
                }
            }
            if (fVar2 != null) {
                handler.obtainMessage(2, fVar2).sendToTarget();
            }
        }
        a();
    }

    public final void c(v2.l lVar, Bitmap bitmap) {
        r3.f.c(lVar, "Argument must not be null");
        r3.f.c(bitmap, "Argument must not be null");
        this.f7330l = bitmap;
        this.f7326h = this.f7326h.a(new n3.e().v(lVar, true));
        this.f7332n = n.c(bitmap);
        this.f7333o = bitmap.getWidth();
        this.f7334p = bitmap.getHeight();
    }
}
