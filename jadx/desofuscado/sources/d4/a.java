package d4;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a implements v8.a, c4.a {

    /* renamed from: c, reason: collision with root package name */
    public static final Object f6055c = new Object();

    /* renamed from: a, reason: collision with root package name */
    public volatile b f6056a;

    /* renamed from: b, reason: collision with root package name */
    public volatile Object f6057b = f6055c;

    public a(b bVar) {
        this.f6056a = bVar;
    }

    public static v8.a a(b bVar) {
        return bVar instanceof a ? bVar : new a(bVar);
    }

    @Override // v8.a
    public final Object get() {
        Object obj = this.f6057b;
        Object obj2 = f6055c;
        if (obj == obj2) {
            synchronized (this) {
                try {
                    obj = this.f6057b;
                    if (obj == obj2) {
                        obj = this.f6056a.get();
                        Object obj3 = this.f6057b;
                        if (obj3 != obj2 && obj3 != obj) {
                            throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj3 + " & " + obj + ". This is likely due to a circular dependency.");
                        }
                        this.f6057b = obj;
                        this.f6056a = null;
                    }
                } finally {
                }
            }
        }
        return obj;
    }
}
