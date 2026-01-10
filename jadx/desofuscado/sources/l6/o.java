package l6;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class o extends p {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f8035e;
    public final /* synthetic */ s f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ o(s sVar, int i6) {
        super(sVar);
        this.f8035e = i6;
        this.f = sVar;
    }

    @Override // l6.p
    public final float a() {
        switch (this.f8035e) {
            case 0:
                s sVar = this.f;
                return sVar.f8044h + sVar.f8045i;
            case 1:
                s sVar2 = this.f;
                return sVar2.f8044h + sVar2.f8046j;
            default:
                return this.f.f8044h;
        }
    }
}
