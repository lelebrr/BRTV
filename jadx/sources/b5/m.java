package b5;

import com.google.android.gms.common.ConnectionResult;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class m extends Exception {

    /* renamed from: a, reason: collision with root package name */
    public final ConnectionResult f3260a;

    public m(ConnectionResult connectionResult) {
        if (!((connectionResult.f3906b == 0 || connectionResult.f3907c == null) ? false : true)) {
            throw new IllegalArgumentException("ResolvableConnectionException can only be created with a connection result containing a resolution.");
        }
        this.f3260a = connectionResult;
    }
}
