package d7;

import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class e4 implements b7.i {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ a0.b f6133a;

    public e4(a0.b bVar) {
        this.f6133a = bVar;
    }

    @Override // b7.i
    public final Object apply(Object obj) {
        Map.Entry entry = (Map.Entry) obj;
        a0.b bVar = this.f6133a;
        bVar.getClass();
        entry.getClass();
        return new d4(entry, bVar);
    }
}
