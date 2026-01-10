package p4;

import com.google.android.gms.common.Feature;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class j {

    /* renamed from: a, reason: collision with root package name */
    public static final Feature f8878a;

    /* renamed from: b, reason: collision with root package name */
    public static final Feature f8879b;

    /* renamed from: c, reason: collision with root package name */
    public static final Feature f8880c;
    public static final Feature d;

    /* renamed from: e, reason: collision with root package name */
    public static final Feature[] f8881e;

    static {
        Feature feature = new Feature("client_side_logging");
        Feature feature2 = new Feature("cxless_client_minimal");
        f8878a = feature2;
        Feature feature3 = new Feature("cxless_caf_control");
        Feature feature4 = new Feature("module_flag_control");
        f8879b = feature4;
        Feature feature5 = new Feature("discovery_hint_supply");
        Feature feature6 = new Feature("relay_casting_set_active_account");
        Feature feature7 = new Feature("analytics_proto_enum_translation");
        f8880c = feature7;
        Feature feature8 = new Feature("integer_to_integer_map");
        d = feature8;
        f8881e = new Feature[]{feature, feature2, feature3, feature4, feature5, feature6, feature7, feature8, new Feature("relay_casting_set_remote_casting_mode"), new Feature("get_relay_access_token"), new Feature("get_cast_settings"), new Feature("set_bundle_setting"), new Feature("get_client_updated_info"), new Feature("device_suggestions")};
    }

    public static String a(String str) {
        if (str != null) {
            return l6.h.u(new l6.h(str, null));
        }
        throw new IllegalArgumentException("applicationId cannot be null");
    }
}
