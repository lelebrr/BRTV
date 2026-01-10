package u2;

import b3.b0;
import b3.u;
import b3.v;
import okhttp3.OkHttpClient;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class b implements v {

    /* renamed from: b, reason: collision with root package name */
    public static volatile OkHttpClient f10327b;

    /* renamed from: a, reason: collision with root package name */
    public final OkHttpClient f10328a;

    public b(OkHttpClient okHttpClient) {
        this.f10328a = okHttpClient;
    }

    @Override // b3.v
    public final u a(b0 b0Var) {
        return new c(this.f10328a);
    }
}
