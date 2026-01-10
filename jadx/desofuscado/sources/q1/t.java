package q1;

import android.media.MediaRoute2Info;
import android.media.RouteDiscoveryPreference;
import java.util.ArrayList;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract /* synthetic */ class t {
    public static /* synthetic */ MediaRoute2Info.Builder f(String str, String str2) {
        return new MediaRoute2Info.Builder(str, str2);
    }

    public static /* synthetic */ RouteDiscoveryPreference.Builder h(ArrayList arrayList) {
        return new RouteDiscoveryPreference.Builder(arrayList, false);
    }

    public static /* synthetic */ RouteDiscoveryPreference.Builder i(ArrayList arrayList, boolean z7) {
        return new RouteDiscoveryPreference.Builder(arrayList, z7);
    }

    public static /* synthetic */ void l() {
    }
}
