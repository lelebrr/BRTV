package u2;

import b3.k;
import b3.t;
import b3.u;
import okhttp3.OkHttpClient;
import v2.h;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class c implements u {

    /* renamed from: a, reason: collision with root package name */
    public final OkHttpClient f10329a;

    public c(OkHttpClient okHttpClient) {
        this.f10329a = okHttpClient;
    }

    @Override // b3.u
    public final t a(Object obj, int i6, int i10, h hVar) {
        k kVar = (k) obj;
        return new t(kVar, new a(this.f10329a, kVar));
    }

    @Override // b3.u
    public final /* bridge */ /* synthetic */ boolean b(Object obj) {
        return true;
    }
}
