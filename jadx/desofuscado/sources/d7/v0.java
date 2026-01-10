package d7;

import java.util.Collection;
import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class v0 implements b7.n {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Object f6281a;

    /* JADX WARN: Type inference failed for: r3v5, types: [b7.n, java.lang.Object] */
    @Override // b7.n
    public final boolean apply(Object obj) {
        Map.Entry entry = (Map.Entry) obj;
        return this.f6281a.apply(new z4(((Collection) entry.getValue()).size(), entry.getKey()));
    }
}
