package z3;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class e implements h7.d {

    /* renamed from: a, reason: collision with root package name */
    public static final e f11540a = new e();

    /* renamed from: b, reason: collision with root package name */
    public static final h7.c f11541b = h7.c.a("eventTimeMs");

    /* renamed from: c, reason: collision with root package name */
    public static final h7.c f11542c = h7.c.a("eventCode");
    public static final h7.c d = h7.c.a("eventUptimeMs");

    /* renamed from: e, reason: collision with root package name */
    public static final h7.c f11543e = h7.c.a("sourceExtension");
    public static final h7.c f = h7.c.a("sourceExtensionJsonProto3");

    /* renamed from: g, reason: collision with root package name */
    public static final h7.c f11544g = h7.c.a("timezoneOffsetSeconds");

    /* renamed from: h, reason: collision with root package name */
    public static final h7.c f11545h = h7.c.a("networkConnectionInfo");

    @Override // h7.a
    public final void a(Object obj, Object obj2) {
        h7.e eVar = (h7.e) obj2;
        k kVar = (k) ((r) obj);
        eVar.a(f11541b, kVar.f11567a);
        eVar.d(f11542c, kVar.f11568b);
        eVar.a(d, kVar.f11569c);
        eVar.d(f11543e, kVar.d);
        eVar.d(f, kVar.f11570e);
        eVar.a(f11544g, kVar.f);
        eVar.d(f11545h, kVar.f11571g);
    }
}
