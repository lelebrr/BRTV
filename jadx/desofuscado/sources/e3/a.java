package e3;

import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import java.io.InputStream;
import java.util.ArrayDeque;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a implements v2.j {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6482a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f6483b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f6484c;

    public /* synthetic */ a(Object obj, int i6, Object obj2) {
        this.f6482a = i6;
        this.f6483b = obj;
        this.f6484c = obj2;
    }

    @Override // v2.j
    public final x2.x a(Object obj, int i6, int i10, v2.h hVar) throws PackageManager.NameNotFoundException, NumberFormatException {
        w wVar;
        boolean z7;
        r3.d dVar;
        switch (this.f6482a) {
            case 0:
                x2.x xVarA = ((v2.j) this.f6483b).a(obj, i6, i10, hVar);
                if (xVarA == null) {
                    return null;
                }
                return new d((Resources) this.f6484c, xVarA);
            case 1:
                x2.x xVarC = ((g3.d) this.f6483b).c((Uri) obj, hVar);
                if (xVarC == null) {
                    return null;
                }
                return r.a((y2.a) this.f6484c, (Drawable) ((g3.c) xVarC).get(), i6, i10);
            default:
                InputStream inputStream = (InputStream) obj;
                if (inputStream instanceof w) {
                    wVar = (w) inputStream;
                    z7 = false;
                } else {
                    wVar = new w(inputStream, (y2.f) this.f6484c);
                    z7 = true;
                }
                ArrayDeque arrayDeque = r3.d.f9492c;
                synchronized (arrayDeque) {
                    dVar = (r3.d) arrayDeque.poll();
                }
                if (dVar == null) {
                    dVar = new r3.d();
                }
                dVar.f9493a = wVar;
                r3.k kVar = new r3.k(dVar);
                a7.f fVar = new a7.f(18, wVar, dVar, false);
                try {
                    p pVar = (p) this.f6483b;
                    return pVar.a(new a1.b(kVar, pVar.d, pVar.f6526c), i6, i10, hVar, fVar);
                } finally {
                    dVar.a();
                    if (z7) {
                        wVar.b();
                    }
                }
        }
    }

    @Override // v2.j
    public final boolean b(Object obj, v2.h hVar) {
        switch (this.f6482a) {
            case 0:
                return ((v2.j) this.f6483b).b(obj, hVar);
            case 1:
                return "android.resource".equals(((Uri) obj).getScheme());
            default:
                ((p) this.f6483b).getClass();
                return true;
        }
    }

    public a(Resources resources, v2.j jVar) {
        this.f6482a = 0;
        this.f6484c = resources;
        this.f6483b = jVar;
    }
}
