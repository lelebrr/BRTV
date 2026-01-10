package t9;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public class x extends a {
    public final /* synthetic */ int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ x(a9.i iVar, boolean z7, int i6) {
        super(iVar, z7);
        this.d = i6;
    }

    @Override // t9.y0
    public boolean v(Throwable th) {
        switch (this.d) {
            case 1:
                u.h(this.f10176c, th);
                return true;
            default:
                return super.v(th);
        }
    }
}
