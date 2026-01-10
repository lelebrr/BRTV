package d7;

import java.util.Collection;
import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class t4 extends w4 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Map.Entry f6273a;

    public t4(Map.Entry entry) {
        this.f6273a = entry;
    }

    @Override // d7.w4
    public final int a() {
        return ((Collection) this.f6273a.getValue()).size();
    }

    @Override // d7.w4
    public final Object b() {
        return this.f6273a.getKey();
    }
}
