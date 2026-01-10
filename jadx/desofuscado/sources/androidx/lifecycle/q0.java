package androidx.lifecycle;

import android.os.Bundle;
import androidx.activity.ComponentActivity;
import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class q0 implements v1.d {

    /* renamed from: a, reason: collision with root package name */
    public final androidx.appcompat.widget.v f1992a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f1993b;

    /* renamed from: c, reason: collision with root package name */
    public Bundle f1994c;
    public final w8.i d;

    public q0(androidx.appcompat.widget.v vVar, ComponentActivity componentActivity) {
        j9.i.f(vVar, "savedStateRegistry");
        this.f1992a = vVar;
        this.d = new w8.i(new p0(0, componentActivity));
    }

    public final void a() {
        if (this.f1993b) {
            return;
        }
        Bundle bundleC = this.f1992a.c("androidx.lifecycle.internal.SavedStateHandlesProvider");
        Bundle bundle = new Bundle();
        Bundle bundle2 = this.f1994c;
        if (bundle2 != null) {
            bundle.putAll(bundle2);
        }
        if (bundleC != null) {
            bundle.putAll(bundleC);
        }
        this.f1994c = bundle;
        this.f1993b = true;
    }

    @Override // v1.d
    public final Bundle saveState() {
        Bundle bundle = new Bundle();
        Bundle bundle2 = this.f1994c;
        if (bundle2 != null) {
            bundle.putAll(bundle2);
        }
        for (Map.Entry entry : ((r0) this.d.getValue()).d.entrySet()) {
            String str = (String) entry.getKey();
            Bundle bundleSaveState = ((m0) entry.getValue()).f1976e.saveState();
            if (!j9.i.a(bundleSaveState, Bundle.EMPTY)) {
                bundle.putBundle(str, bundleSaveState);
            }
        }
        this.f1993b = false;
        return bundle;
    }
}
