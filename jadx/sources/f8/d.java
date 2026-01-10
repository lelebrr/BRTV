package f8;

import android.content.ComponentCallbacks;
import android.content.res.Configuration;
import j9.i;
import org.json.JSONException;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d implements ComponentCallbacks {

    /* renamed from: a, reason: collision with root package name */
    public final a f6804a;

    public d(a aVar) {
        this.f6804a = aVar;
    }

    @Override // android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) throws JSONException {
        i.g(configuration, "newConfig");
        this.f6804a.invoke(configuration);
    }

    @Override // android.content.ComponentCallbacks
    public final void onLowMemory() {
    }
}
