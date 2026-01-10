package d7;

import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d4 extends t {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Map.Entry f6121a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ a0.b f6122b;

    public d4(Map.Entry entry, a0.b bVar) {
        this.f6121a = entry;
        this.f6122b = bVar;
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.f6121a.getKey();
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        Map.Entry entry = this.f6121a;
        entry.getKey();
        return ((b7.i) this.f6122b.f32b).apply(entry.getValue());
    }
}
