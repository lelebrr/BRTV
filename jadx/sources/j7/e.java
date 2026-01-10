package j7;

import h7.g;
import java.util.Date;
import java.util.HashMap;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class e implements i7.a {
    public static final b f;

    /* renamed from: g, reason: collision with root package name */
    public static final b f7447g;

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f7449a;

    /* renamed from: b, reason: collision with root package name */
    public final HashMap f7450b;

    /* renamed from: c, reason: collision with root package name */
    public final a f7451c;
    public boolean d;

    /* renamed from: e, reason: collision with root package name */
    public static final a f7446e = new a(0);

    /* renamed from: h, reason: collision with root package name */
    public static final d f7448h = new d();

    /* JADX WARN: Type inference failed for: r0v1, types: [j7.b] */
    /* JADX WARN: Type inference failed for: r0v2, types: [j7.b] */
    static {
        final int i6 = 0;
        f = new h7.f() { // from class: j7.b
            @Override // h7.a
            public final void a(Object obj, Object obj2) {
                switch (i6) {
                    case 0:
                        ((g) obj2).b((String) obj);
                        break;
                    default:
                        ((g) obj2).c(((Boolean) obj).booleanValue());
                        break;
                }
            }
        };
        final int i10 = 1;
        f7447g = new h7.f() { // from class: j7.b
            @Override // h7.a
            public final void a(Object obj, Object obj2) {
                switch (i10) {
                    case 0:
                        ((g) obj2).b((String) obj);
                        break;
                    default:
                        ((g) obj2).c(((Boolean) obj).booleanValue());
                        break;
                }
            }
        };
    }

    public e() {
        HashMap map = new HashMap();
        this.f7449a = map;
        HashMap map2 = new HashMap();
        this.f7450b = map2;
        this.f7451c = f7446e;
        this.d = false;
        map2.put(String.class, f);
        map.remove(String.class);
        map2.put(Boolean.class, f7447g);
        map.remove(Boolean.class);
        map2.put(Date.class, f7448h);
        map.remove(Date.class);
    }

    public final i7.a a(Class cls, h7.d dVar) {
        this.f7449a.put(cls, dVar);
        this.f7450b.remove(cls);
        return this;
    }
}
