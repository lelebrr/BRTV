package a4;

import android.content.Context;
import android.net.ConnectivityManager;
import androidx.appcompat.widget.z3;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class k implements b1.h, r3.g {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f132a;

    /* renamed from: b, reason: collision with root package name */
    public Context f133b;

    public /* synthetic */ k() {
        this.f132a = 0;
    }

    @Override // b1.h
    public void a(a2.a aVar) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 15L, TimeUnit.SECONDS, new LinkedBlockingDeque(), new b1.a("EmojiCompatInitializer"));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        threadPoolExecutor.execute(new androidx.media3.common.util.i(this, aVar, threadPoolExecutor, 5));
    }

    public l b() {
        Context context = this.f133b;
        if (context == null) {
            throw new IllegalStateException(Context.class.getCanonicalName() + " must be set");
        }
        l lVar = new l();
        lVar.f134a = d4.a.a(o.f140a);
        d4.c cVar = new d4.c(context);
        lVar.f135b = cVar;
        lVar.f136c = d4.a.a(new a7.f(8, cVar, new b4.e(cVar, 0), false));
        d4.c cVar2 = lVar.f135b;
        v8.a aVarA = d4.a.a(new a7.f(23, new b4.e(cVar2, 2), new b4.e(cVar2, 1), false));
        lVar.d = aVarA;
        x4.e eVar = new x4.e(13);
        d4.c cVar3 = lVar.f135b;
        a1.b bVar = new a1.b(cVar3, aVarA, eVar, 19);
        v8.a aVar = lVar.f134a;
        v8.a aVar2 = lVar.f136c;
        c2.b bVar2 = new c2.b(aVar, aVar2, bVar, aVarA, aVarA);
        z3 z3Var = new z3();
        z3Var.f912a = cVar3;
        z3Var.f913b = aVar2;
        z3Var.f914c = aVarA;
        z3Var.d = bVar;
        z3Var.f915e = aVar;
        z3Var.f = aVarA;
        z3Var.f916g = aVarA;
        lVar.f137e = d4.a.a(new a1.b(bVar2, z3Var, new a0.f(aVar, aVarA, bVar, aVarA), 3));
        return lVar;
    }

    @Override // r3.g
    public Object get() {
        return (ConnectivityManager) this.f133b.getSystemService("connectivity");
    }

    public /* synthetic */ k(Context context, int i6) {
        this.f132a = i6;
        this.f133b = context;
    }

    public k(Context context) {
        this.f132a = 1;
        this.f133b = context.getApplicationContext();
    }
}
