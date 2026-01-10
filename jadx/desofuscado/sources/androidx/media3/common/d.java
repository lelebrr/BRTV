package androidx.media3.common;

import android.media.MediaRoute2Info;
import android.media.MediaRouter2;
import android.media.RouteDiscoveryPreference;
import d7.u1;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract /* synthetic */ class d {
    public static /* bridge */ /* synthetic */ MediaRoute2Info f(Object obj) {
        return (MediaRoute2Info) obj;
    }

    public static /* bridge */ /* synthetic */ MediaRouter2.ControllerCallback g(Object obj) {
        return (MediaRouter2.ControllerCallback) obj;
    }

    public static /* bridge */ /* synthetic */ MediaRouter2.RouteCallback h(Object obj) {
        return (MediaRouter2.RouteCallback) obj;
    }

    public static /* bridge */ /* synthetic */ MediaRouter2 k(Object obj) {
        return (MediaRouter2) obj;
    }

    public static /* synthetic */ RouteDiscoveryPreference.Builder l(u1 u1Var) {
        return new RouteDiscoveryPreference.Builder(u1Var, false);
    }

    public static /* synthetic */ void p() {
    }
}
