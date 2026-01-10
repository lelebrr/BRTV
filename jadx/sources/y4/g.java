package y4;

import android.content.Context;
import android.os.Build;
import android.os.Looper;
import com.google.android.gms.internal.cast.x0;
import java.util.Collections;
import java.util.Set;
import z4.t;
import z4.y;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class g {

    /* renamed from: a, reason: collision with root package name */
    public final Context f11396a;

    /* renamed from: b, reason: collision with root package name */
    public final String f11397b;

    /* renamed from: c, reason: collision with root package name */
    public final l6.h f11398c;
    public final b d;

    /* renamed from: e, reason: collision with root package name */
    public final z4.b f11399e;
    public final Looper f;

    /* renamed from: g, reason: collision with root package name */
    public final int f11400g;

    /* renamed from: h, reason: collision with root package name */
    public final z4.a f11401h;

    /* renamed from: i, reason: collision with root package name */
    public final z4.e f11402i;

    public g(Context context, l6.h hVar, b bVar, f fVar) {
        b5.l.f(context, "Null context is not permitted.");
        b5.l.f(hVar, "Api must not be null.");
        b5.l.f(fVar, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead.");
        Context applicationContext = context.getApplicationContext();
        b5.l.f(applicationContext, "The provided context did not have an application context.");
        this.f11396a = applicationContext;
        String attributionTag = Build.VERSION.SDK_INT >= 30 ? context.getAttributionTag() : null;
        this.f11397b = attributionTag;
        this.f11398c = hVar;
        this.d = bVar;
        this.f = fVar.f11395b;
        this.f11399e = new z4.b(hVar, bVar, attributionTag);
        z4.e eVarF = z4.e.f(applicationContext);
        this.f11402i = eVarF;
        this.f11400g = eVarF.f11603h.getAndIncrement();
        this.f11401h = fVar.f11394a;
        x0 x0Var = eVarF.f11608m;
        x0Var.sendMessage(x0Var.obtainMessage(7, this));
    }

    public final a1.b a() {
        a1.b bVar = new a1.b(12, false);
        Set setEmptySet = Collections.emptySet();
        if (((p.f) bVar.f47b) == null) {
            bVar.f47b = new p.f(0);
        }
        ((p.f) bVar.f47b).addAll(setEmptySet);
        Context context = this.f11396a;
        bVar.d = context.getClass().getName();
        bVar.f48c = context.getPackageName();
        return bVar;
    }

    public final z4.h b(v4.f fVar) {
        Looper looper = this.f;
        b5.l.f(fVar, "Listener must not be null");
        b5.l.f(looper, "Looper must not be null");
        z4.h hVar = new z4.h();
        new x0(looper, 5);
        b5.l.c("castDeviceControllerListenerKey");
        hVar.f11611a = new z4.g(fVar);
        return hVar;
    }

    public final w5.g c(int i6, c6.c cVar) {
        w5.d dVar = new w5.d();
        z4.e eVar = this.f11402i;
        eVar.getClass();
        eVar.e(dVar, cVar.f3392a, this);
        t tVar = new t(new y(i6, cVar, dVar, this.f11401h), eVar.f11604i.get(), this);
        x0 x0Var = eVar.f11608m;
        x0Var.sendMessage(x0Var.obtainMessage(4, tVar));
        return dVar.f10815a;
    }
}
