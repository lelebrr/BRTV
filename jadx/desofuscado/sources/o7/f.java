package o7;

import java.util.Calendar;
import java.util.GregorianCalendar;
import l7.r;
import l7.s;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class f implements s {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f8578a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ r f8579b;

    public /* synthetic */ f(r rVar, int i6) {
        this.f8578a = i6;
        this.f8579b = rVar;
    }

    @Override // l7.s
    public final r a(l7.k kVar, s7.a aVar) {
        switch (this.f8578a) {
            case 0:
                if (aVar.f9827a == Number.class) {
                    break;
                }
                break;
            default:
                Class cls = aVar.f9827a;
                if (cls == Calendar.class || cls == GregorianCalendar.class) {
                    break;
                }
                break;
        }
        return (g) this.f8579b;
    }

    public String toString() {
        switch (this.f8578a) {
            case 1:
                return "Factory[type=" + Calendar.class.getName() + "+" + GregorianCalendar.class.getName() + ",adapter=" + ((g) this.f8579b) + "]";
            default:
                return super.toString();
        }
    }
}
