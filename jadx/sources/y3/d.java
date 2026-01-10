package y3;

import android.content.Context;
import android.net.ConnectivityManager;
import androidx.media3.extractor.MpegAudioUtil;
import b4.g;
import j7.e;
import java.net.MalformedURLException;
import java.net.URL;
import z3.f;
import z3.h;
import z3.i;
import z3.j;
import z3.k;
import z3.l;
import z3.n;
import z3.o;
import z3.q;
import z3.r;
import z3.s;
import z3.v;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class d implements g {

    /* renamed from: a, reason: collision with root package name */
    public final j7.c f11386a;

    /* renamed from: b, reason: collision with root package name */
    public final ConnectivityManager f11387b;

    /* renamed from: c, reason: collision with root package name */
    public final Context f11388c;
    public final URL d;

    /* renamed from: e, reason: collision with root package name */
    public final k4.a f11389e;
    public final k4.a f;

    /* renamed from: g, reason: collision with root package name */
    public final int f11390g;

    public d(Context context, k4.a aVar, k4.a aVar2) {
        e eVar = new e();
        z3.c cVar = z3.c.f11535a;
        eVar.a(o.class, cVar);
        eVar.a(i.class, cVar);
        f fVar = f.f11546a;
        eVar.a(s.class, fVar);
        eVar.a(l.class, fVar);
        z3.d dVar = z3.d.f11537a;
        eVar.a(q.class, dVar);
        eVar.a(j.class, dVar);
        z3.b bVar = z3.b.f11524a;
        eVar.a(z3.a.class, bVar);
        eVar.a(h.class, bVar);
        z3.e eVar2 = z3.e.f11540a;
        eVar.a(r.class, eVar2);
        eVar.a(k.class, eVar2);
        z3.g gVar = z3.g.f11552a;
        eVar.a(v.class, gVar);
        eVar.a(n.class, gVar);
        eVar.d = true;
        this.f11386a = new j7.c(0, eVar);
        this.f11388c = context;
        this.f11387b = (ConnectivityManager) context.getSystemService("connectivity");
        this.d = b(a.f11376c);
        this.f11389e = aVar2;
        this.f = aVar;
        this.f11390g = MpegAudioUtil.MAX_RATE_BYTES_PER_SECOND;
    }

    public static URL b(String str) {
        try {
            return new URL(str);
        } catch (MalformedURLException e5) {
            throw new IllegalArgumentException(ea.q.p("Invalid url: ", str), e5);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0110  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final a4.i a(a4.i r7) {
        /*
            Method dump skipped, instructions count: 296
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: y3.d.a(a4.i):a4.i");
    }
}
