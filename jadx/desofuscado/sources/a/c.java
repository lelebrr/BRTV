package a;

import android.os.Bundle;
import androidx.activity.ComponentActivity;
import androidx.lifecycle.m0;
import java.util.ArrayList;
import java.util.HashMap;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class c implements v1.d {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f4b;

    public /* synthetic */ c(int i6, Object obj) {
        this.f3a = i6;
        this.f4b = obj;
    }

    @Override // v1.d
    public final Bundle saveState() {
        Object obj = this.f4b;
        switch (this.f3a) {
            case 0:
                int i6 = ComponentActivity.f194q;
                ComponentActivity componentActivity = (ComponentActivity) obj;
                componentActivity.getClass();
                Bundle bundle = new Bundle();
                g gVar = componentActivity.f200i;
                gVar.getClass();
                HashMap map = gVar.f10c;
                bundle.putIntegerArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_RCS", new ArrayList<>(map.values()));
                bundle.putStringArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS", new ArrayList<>(map.keySet()));
                bundle.putStringArrayList("KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS", new ArrayList<>(gVar.f11e));
                bundle.putBundle("KEY_COMPONENT_ACTIVITY_PENDING_RESULT", (Bundle) gVar.f13h.clone());
                bundle.putSerializable("KEY_COMPONENT_ACTIVITY_RANDOM_OBJECT", gVar.f8a);
                return bundle;
            default:
                return m0.a((m0) obj);
        }
    }
}
