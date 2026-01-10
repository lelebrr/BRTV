package j7;

import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class a implements h7.d {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7441a;

    @Override // h7.a
    public final void a(Object obj, Object obj2) {
        switch (this.f7441a) {
            case 0:
                throw new h7.b("Couldn't find encoder for type " + obj.getClass().getCanonicalName());
            case 1:
                Map.Entry entry = (Map.Entry) obj;
                h7.e eVar = (h7.e) obj2;
                eVar.d(k7.e.f7742g, entry.getKey());
                eVar.d(k7.e.f7743h, entry.getValue());
                return;
            default:
                throw new h7.b("Couldn't find encoder for type " + obj.getClass().getCanonicalName());
        }
    }
}
