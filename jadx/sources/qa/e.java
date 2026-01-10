package qa;

import i9.p;
import org.bitspark.android.beans.ChannelBean;
import org.bitspark.android.beans.SubtitleMenu;
import t9.s;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class e extends c9.i implements p {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ChannelBean f9386b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SubtitleMenu f9387c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(ChannelBean channelBean, SubtitleMenu subtitleMenu, a9.d dVar) {
        super(dVar);
        this.f9386b = channelBean;
        this.f9387c = subtitleMenu;
    }

    @Override // c9.a
    public final a9.d create(Object obj, a9.d dVar) {
        return new e(this.f9386b, this.f9387c, dVar);
    }

    @Override // i9.p
    public final Object invoke(Object obj, Object obj2) {
        e eVar = (e) create((s) obj, (a9.d) obj2);
        w8.l lVar = w8.l.f10832a;
        eVar.invokeSuspend(lVar);
        return lVar;
    }

    @Override // c9.a
    public final Object invokeSuspend(Object obj) {
        o9.d.I(obj);
        ra.f fVarB = ra.f.b();
        int chid = this.f9386b.getChid();
        fVarB.d.put(String.valueOf(chid), this.f9387c.getLanguage());
        return w8.l.f10832a;
    }
}
