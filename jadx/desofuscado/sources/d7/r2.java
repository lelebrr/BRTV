package d7;

import java.util.Iterator;
import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class r2 extends r5 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f6253b = 1;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f6254c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r2(Iterator it, b7.i iVar) {
        super(it);
        this.f6254c = iVar;
    }

    @Override // d7.r5
    public final Object a(Object obj) {
        switch (this.f6253b) {
            case 0:
                return ((b7.i) this.f6254c).apply(obj);
            default:
                return new k4(this, (Map.Entry) obj);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r2(a1 a1Var, Iterator it) {
        super(it);
        this.f6254c = a1Var;
    }
}
