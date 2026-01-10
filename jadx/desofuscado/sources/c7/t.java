package c7;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class t extends g {

    /* renamed from: a, reason: collision with root package name */
    public final Object f3466a;

    /* renamed from: b, reason: collision with root package name */
    public final int f3467b;

    /* renamed from: c, reason: collision with root package name */
    public final c0 f3468c;
    public volatile v d = b0.f3400s;

    public t(Object obj, int i6, c0 c0Var) {
        this.f3466a = obj;
        this.f3467b = i6;
        this.f3468c = c0Var;
    }

    @Override // c7.g, c7.c0
    public final v a() {
        return this.d;
    }

    @Override // c7.g, c7.c0
    public final c0 b() {
        return this.f3468c;
    }

    @Override // c7.g, c7.c0
    public final int c() {
        return this.f3467b;
    }

    @Override // c7.g, c7.c0
    public final Object getKey() {
        return this.f3466a;
    }

    @Override // c7.g, c7.c0
    public final void j(v vVar) {
        this.d = vVar;
    }
}
