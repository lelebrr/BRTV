package r2;

import java.io.IOException;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.Response;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class g implements Callback, i9.l {

    /* renamed from: a, reason: collision with root package name */
    public final Call f9470a;

    /* renamed from: b, reason: collision with root package name */
    public final t9.e f9471b;

    public g(Call call, t9.e eVar) {
        this.f9470a = call;
        this.f9471b = eVar;
    }

    @Override // i9.l
    public final Object invoke(Object obj) {
        try {
            this.f9470a.cancel();
        } catch (Throwable unused) {
        }
        return w8.l.f10832a;
    }

    @Override // okhttp3.Callback
    public final void onFailure(Call call, IOException iOException) {
        if (call.isCanceled()) {
            return;
        }
        this.f9471b.resumeWith(o9.d.f(iOException));
    }

    @Override // okhttp3.Callback
    public final void onResponse(Call call, Response response) {
        this.f9471b.resumeWith(response);
    }
}
