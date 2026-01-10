package y4;

import com.google.android.gms.common.Feature;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class m extends UnsupportedOperationException {

    /* renamed from: a, reason: collision with root package name */
    public final Feature f11403a;

    public m(Feature feature) {
        this.f11403a = feature;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        return "Missing ".concat(String.valueOf(this.f11403a));
    }
}
