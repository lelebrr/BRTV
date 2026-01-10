package c2;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Looper;
import java.io.File;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import okhttp3.HttpUrl;
import t9.b0;
import t9.d1;
import t9.q;
import t9.t0;
import t9.u;
import t9.x;
import x9.n;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class l {

    /* renamed from: a, reason: collision with root package name */
    public final Context f3367a;

    /* renamed from: b, reason: collision with root package name */
    public final m2.c f3368b;

    /* renamed from: c, reason: collision with root package name */
    public final w8.i f3369c;
    public final r2.j d;

    /* renamed from: e, reason: collision with root package name */
    public final x9.d f3370e;
    public final a1.b f;

    /* renamed from: g, reason: collision with root package name */
    public final c f3371g;

    /* renamed from: h, reason: collision with root package name */
    public final ArrayList f3372h;

    public l(Context context, m2.c cVar, w8.i iVar, w8.i iVar2, w8.i iVar3, c cVar2, r2.j jVar) {
        int i6 = 3;
        int i10 = 4;
        int i11 = 1;
        int i12 = 5;
        int i13 = 2;
        int i14 = 0;
        this.f3367a = context;
        this.f3368b = cVar;
        this.f3369c = iVar;
        this.d = jVar;
        d1 d1Var = new d1(null);
        z9.d dVar = b0.f10180a;
        a9.i iVarF = com.bumptech.glide.d.A(d1Var, n.f11128a.f).f(new k(this));
        this.f3370e = new x9.d(iVarF.e(q.f10225b) == null ? iVarF.f(new t0(null)) : iVarF);
        r2.l lVar = new r2.l(this);
        a1.b bVar = new a1.b(this, lVar);
        this.f = bVar;
        b bVar2 = new b(cVar2);
        bVar2.b(new j2.a(i13), HttpUrl.class);
        bVar2.b(new j2.a(i12), String.class);
        bVar2.b(new j2.a(i11), Uri.class);
        bVar2.b(new j2.a(i10), Uri.class);
        bVar2.b(new j2.a(i6), Integer.class);
        bVar2.b(new j2.a(i14), byte[].class);
        i2.c cVar3 = new i2.c();
        ArrayList arrayList = (ArrayList) bVar2.d;
        arrayList.add(new w8.f(cVar3, Uri.class));
        arrayList.add(new w8.f(new i2.a(jVar.f9476a), File.class));
        bVar2.a(new g2.i(iVar3, iVar2, jVar.f9478c), Uri.class);
        bVar2.a(new g2.a(i12), File.class);
        bVar2.a(new g2.a(i14), Uri.class);
        bVar2.a(new g2.a(i6), Uri.class);
        bVar2.a(new g2.a(6), Uri.class);
        bVar2.a(new g2.a(i10), Drawable.class);
        bVar2.a(new g2.a(1), Bitmap.class);
        bVar2.a(new g2.a(2), ByteBuffer.class);
        d2.c cVar4 = new d2.c(jVar.d, jVar.f9479e);
        ArrayList arrayList2 = (ArrayList) bVar2.f;
        arrayList2.add(cVar4);
        List listJ = o9.d.J((ArrayList) bVar2.f3340b);
        this.f3371g = new c(listJ, o9.d.J((ArrayList) bVar2.f3341c), o9.d.J(arrayList), o9.d.J((ArrayList) bVar2.f3342e), o9.d.J(arrayList2));
        this.f3372h = x8.j.a0(listJ, new h2.i(this, lVar, bVar));
        new AtomicBoolean(false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00de A[Catch: all -> 0x0170, TryCatch #0 {all -> 0x0170, blocks: (B:50:0x0138, B:52:0x013f, B:55:0x0151, B:60:0x0169, B:56:0x0155, B:58:0x015f, B:59:0x0163, B:63:0x0172, B:65:0x0176, B:47:0x010f, B:37:0x00d4, B:39:0x00de, B:40:0x00e1, B:42:0x00f1, B:43:0x00f4, B:32:0x00b7, B:34:0x00bd, B:67:0x0185, B:68:0x018c), top: B:79:0x00b7 }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00f1 A[Catch: all -> 0x0170, TryCatch #0 {all -> 0x0170, blocks: (B:50:0x0138, B:52:0x013f, B:55:0x0151, B:60:0x0169, B:56:0x0155, B:58:0x015f, B:59:0x0163, B:63:0x0172, B:65:0x0176, B:47:0x010f, B:37:0x00d4, B:39:0x00de, B:40:0x00e1, B:42:0x00f1, B:43:0x00f4, B:32:0x00b7, B:34:0x00bd, B:67:0x0185, B:68:0x018c), top: B:79:0x00b7 }] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x010b  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0137  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x013f A[Catch: all -> 0x0170, TryCatch #0 {all -> 0x0170, blocks: (B:50:0x0138, B:52:0x013f, B:55:0x0151, B:60:0x0169, B:56:0x0155, B:58:0x015f, B:59:0x0163, B:63:0x0172, B:65:0x0176, B:47:0x010f, B:37:0x00d4, B:39:0x00de, B:40:0x00e1, B:42:0x00f1, B:43:0x00f4, B:32:0x00b7, B:34:0x00bd, B:67:0x0185, B:68:0x018c), top: B:79:0x00b7 }] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0172 A[Catch: all -> 0x0170, TryCatch #0 {all -> 0x0170, blocks: (B:50:0x0138, B:52:0x013f, B:55:0x0151, B:60:0x0169, B:56:0x0155, B:58:0x015f, B:59:0x0163, B:63:0x0172, B:65:0x0176, B:47:0x010f, B:37:0x00d4, B:39:0x00de, B:40:0x00e1, B:42:0x00f1, B:43:0x00f4, B:32:0x00b7, B:34:0x00bd, B:67:0x0185, B:68:0x018c), top: B:79:0x00b7 }] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0191 A[Catch: all -> 0x01a1, TryCatch #1 {all -> 0x01a1, blocks: (B:69:0x018d, B:71:0x0191, B:75:0x01a3, B:76:0x01ac), top: B:80:0x018d }] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x01a3 A[Catch: all -> 0x01a1, TryCatch #1 {all -> 0x01a1, blocks: (B:69:0x018d, B:71:0x0191, B:75:0x01a3, B:76:0x01ac), top: B:80:0x018d }] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object a(c2.l r21, m2.i r22, c9.c r23) {
        /*
            Method dump skipped, instructions count: 433
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: c2.l.a(c2.l, m2.i, c9.c):java.lang.Object");
    }

    public static void c(m2.e eVar, o2.a aVar, d dVar) {
        m2.i iVar = eVar.f8180b;
        boolean z7 = aVar instanceof o2.a;
        Drawable drawable = eVar.f8179a;
        if (z7) {
            q2.e eVarA = iVar.f8207g.a(aVar, eVar);
            if (eVarA instanceof q2.c) {
                aVar.g(drawable);
            } else {
                dVar.getClass();
                eVarA.a();
            }
        } else if (aVar != null) {
            aVar.g(drawable);
        }
        dVar.getClass();
        iVar.getClass();
    }

    public final m2.k b(m2.i iVar) {
        x9.d dVar = this.f3370e;
        h hVar = new h(this, iVar, null);
        boolean z7 = true;
        a9.i iVarE = u.e(dVar.d(), a9.j.f179a, true);
        z9.d dVar2 = b0.f10180a;
        if (iVarE != dVar2 && iVarE.e(a9.e.f178a) == null) {
            iVarE = iVarE.f(dVar2);
        }
        t9.a xVar = new x(iVarE, z7, 0);
        xVar.I(1, xVar, hVar);
        o2.a aVar = iVar.f8205c;
        if (!(aVar instanceof o2.a)) {
            return new m2.k(1);
        }
        m2.u uVarC = r2.f.c(aVar.f8548b);
        synchronized (uVarC) {
            m2.k kVar = uVarC.f8258b;
            if (kVar != null && j9.i.a(Looper.myLooper(), Looper.getMainLooper()) && uVarC.f8260e) {
                uVarC.f8260e = false;
                return kVar;
            }
            x xVar2 = uVarC.f8259c;
            if (xVar2 != null) {
                u.c(xVar2);
            }
            uVarC.f8259c = null;
            m2.k kVar2 = new m2.k(uVarC.f8257a);
            uVarC.f8258b = kVar2;
            return kVar2;
        }
    }
}
