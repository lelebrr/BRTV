package l2;

import j9.j;
import okhttp3.MediaType;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b extends j implements i9.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ c f7952a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(c cVar) {
        super(0);
        this.f7952a = cVar;
    }

    @Override // i9.a
    public final Object invoke() {
        String str = this.f7952a.f.get("Content-Type");
        if (str != null) {
            return MediaType.Companion.parse(str);
        }
        return null;
    }
}
