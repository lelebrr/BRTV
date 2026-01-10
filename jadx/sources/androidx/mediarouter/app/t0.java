package androidx.mediarouter.app;

import android.media.MediaRoute2Info;
import android.media.MediaRouter2;
import android.media.RouteListingPreference;
import java.util.ArrayList;
import java.util.Set;
import q1.q1;
import q1.r1;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class t0 {
    public static void a(MediaRoute2Info.Builder builder, q1.w wVar) {
        if (wVar.f9170a.getBoolean("isVisibilityPublic", true)) {
            builder.setVisibilityPublic();
        } else {
            builder.setVisibilityRestricted(wVar.a());
        }
    }

    public static Set b(MediaRoute2Info mediaRoute2Info) {
        return mediaRoute2Info.getDeduplicationIds();
    }

    public static int c(MediaRoute2Info mediaRoute2Info) {
        return mediaRoute2Info.getType();
    }

    public static void d(MediaRoute2Info.Builder builder, Set set) {
        builder.setDeduplicationIds(set);
    }

    public static void e(MediaRoute2Info.Builder builder, int i6) {
        builder.setType(i6);
    }

    public static void f(MediaRouter2 mediaRouter2, RouteListingPreference routeListingPreference) {
        mediaRouter2.setRouteListingPreference(routeListingPreference);
    }

    public static boolean g(MediaRouter2 mediaRouter2) {
        return mediaRouter2.showSystemOutputSwitcher();
    }

    public static RouteListingPreference h(r1 r1Var) {
        ArrayList arrayList = new ArrayList();
        for (q1 q1Var : r1Var.f9126a) {
            arrayList.add(new RouteListingPreference.Item.Builder(q1Var.f9119a).setFlags(0).setSubText(0).setCustomSubtextMessage(null).setSelectionBehavior(q1Var.f9120b).build());
        }
        return new RouteListingPreference.Builder().setItems(arrayList).setLinkedItemComponentName(null).setUseSystemOrdering(true).build();
    }
}
