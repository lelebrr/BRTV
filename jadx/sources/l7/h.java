package l7;

import java.io.IOException;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class h extends r {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f8065a;

    @Override // l7.r
    public final Object a(t7.a aVar) throws IOException {
        switch (this.f8065a) {
            case 0:
                if (aVar.u() != 9) {
                    return Double.valueOf(aVar.l());
                }
                aVar.q();
                return null;
            default:
                if (aVar.u() != 9) {
                    return Float.valueOf((float) aVar.l());
                }
                aVar.q();
                return null;
        }
    }

    @Override // l7.r
    public final void b(t7.b bVar, Object obj) throws IOException {
        switch (this.f8065a) {
            case 0:
                Number number = (Number) obj;
                if (number != null) {
                    k.a(number.doubleValue());
                    bVar.m(number);
                    break;
                } else {
                    bVar.i();
                    break;
                }
            default:
                Number number2 = (Number) obj;
                if (number2 != null) {
                    k.a(number2.floatValue());
                    bVar.m(number2);
                    break;
                } else {
                    bVar.i();
                    break;
                }
        }
    }
}
