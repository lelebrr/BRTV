package l2;

import j9.j;
import okhttp3.CacheControl;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a extends j implements i9.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ c f7951a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(c cVar) {
        super(0);
        this.f7951a = cVar;
    }

    @Override // i9.a
    public final Object invoke() {
        return CacheControl.Companion.parse(this.f7951a.f);
    }
}
