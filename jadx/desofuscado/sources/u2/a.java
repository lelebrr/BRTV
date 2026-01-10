package u2;

import android.util.Log;
import b3.k;
import com.bumptech.glide.g;
import com.bumptech.glide.load.data.d;
import com.bumptech.glide.load.data.e;
import com.google.android.gms.internal.cast.y6;
import java.io.IOException;
import java.io.InputStream;
import java.util.Map;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import r3.f;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class a implements e, Callback {

    /* renamed from: a, reason: collision with root package name */
    public final OkHttpClient f10323a;

    /* renamed from: b, reason: collision with root package name */
    public final k f10324b;

    /* renamed from: c, reason: collision with root package name */
    public r3.c f10325c;
    public ResponseBody d;

    /* renamed from: e, reason: collision with root package name */
    public d f10326e;
    public volatile Call f;

    public a(OkHttpClient okHttpClient, k kVar) {
        this.f10323a = okHttpClient;
        this.f10324b = kVar;
    }

    @Override // com.bumptech.glide.load.data.e
    public final Class a() {
        return InputStream.class;
    }

    @Override // com.bumptech.glide.load.data.e
    public final void b() throws IOException {
        try {
            r3.c cVar = this.f10325c;
            if (cVar != null) {
                cVar.close();
            }
        } catch (IOException unused) {
        }
        ResponseBody responseBody = this.d;
        if (responseBody != null) {
            responseBody.close();
        }
        this.f10326e = null;
    }

    @Override // com.bumptech.glide.load.data.e
    public final void cancel() {
        Call call = this.f;
        if (call != null) {
            call.cancel();
        }
    }

    @Override // com.bumptech.glide.load.data.e
    public final int e() {
        return 2;
    }

    @Override // com.bumptech.glide.load.data.e
    public final void f(g gVar, d dVar) {
        Request.Builder builderUrl = new Request.Builder().url(this.f10324b.d());
        for (Map.Entry entry : this.f10324b.f3201b.b().entrySet()) {
            builderUrl.addHeader((String) entry.getKey(), (String) entry.getValue());
        }
        Request requestBuild = builderUrl.build();
        this.f10326e = dVar;
        this.f = this.f10323a.newCall(requestBuild);
        this.f.enqueue(this);
    }

    @Override // okhttp3.Callback
    public final void onFailure(Call call, IOException iOException) {
        if (Log.isLoggable("OkHttpFetcher", 3)) {
            Log.d("OkHttpFetcher", "OkHttp failed to obtain result", iOException);
        }
        this.f10326e.c(iOException);
    }

    @Override // okhttp3.Callback
    public final void onResponse(Call call, Response response) {
        this.d = response.body();
        if (!response.isSuccessful()) {
            this.f10326e.c(new y6(response.message(), response.code(), null));
            return;
        }
        ResponseBody responseBody = this.d;
        f.c(responseBody, "Argument must not be null");
        r3.c cVar = new r3.c(this.d.byteStream(), responseBody.contentLength());
        this.f10325c = cVar;
        this.f10326e.d(cVar);
    }
}
