package r7;

import java.sql.Time;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import l7.n;
import l7.r;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a extends r {

    /* renamed from: c, reason: collision with root package name */
    public static final o7.a f9604c = new o7.a(4);
    public static final o7.a d = new o7.a(5);

    /* renamed from: e, reason: collision with root package name */
    public static final o7.a f9605e = new o7.a(6);

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f9606a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f9607b;

    public a(int i6) {
        this.f9606a = i6;
        switch (i6) {
            case 1:
                this.f9607b = new SimpleDateFormat("hh:mm:ss a");
                break;
            default:
                this.f9607b = new SimpleDateFormat("MMM d, yyyy");
                break;
        }
    }

    private final Object c(t7.a aVar) {
        synchronized (this) {
            if (aVar.u() == 9) {
                aVar.q();
                return null;
            }
            try {
                return new Time(((SimpleDateFormat) this.f9607b).parse(aVar.s()).getTime());
            } catch (ParseException e5) {
                throw new n(e5);
            }
        }
    }

    private final void d(t7.b bVar, Object obj) {
        Time time = (Time) obj;
        synchronized (this) {
            bVar.n(time == null ? null : ((SimpleDateFormat) this.f9607b).format((Date) time));
        }
    }

    @Override // l7.r
    public final Object a(t7.a aVar) {
        switch (this.f9606a) {
            case 0:
                synchronized (this) {
                    if (aVar.u() == 9) {
                        aVar.q();
                        return null;
                    }
                    try {
                        return new java.sql.Date(((SimpleDateFormat) this.f9607b).parse(aVar.s()).getTime());
                    } catch (ParseException e5) {
                        throw new n(e5);
                    }
                }
            case 1:
                return c(aVar);
            default:
                Date date = (Date) ((r) this.f9607b).a(aVar);
                if (date != null) {
                    return new Timestamp(date.getTime());
                }
                return null;
        }
    }

    @Override // l7.r
    public final void b(t7.b bVar, Object obj) {
        switch (this.f9606a) {
            case 0:
                java.sql.Date date = (java.sql.Date) obj;
                synchronized (this) {
                    bVar.n(date == null ? null : ((SimpleDateFormat) this.f9607b).format((Date) date));
                }
                return;
            case 1:
                d(bVar, obj);
                return;
            default:
                ((r) this.f9607b).b(bVar, (Timestamp) obj);
                return;
        }
    }

    public a(r rVar) {
        this.f9606a = 2;
        this.f9607b = rVar;
    }
}
