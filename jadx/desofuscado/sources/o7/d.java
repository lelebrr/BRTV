package o7;

import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.Locale;
import l7.r;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d extends r {

    /* renamed from: b, reason: collision with root package name */
    public static final a f8573b = new a(1);

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f8574a;

    public d() {
        ArrayList arrayList = new ArrayList();
        this.f8574a = arrayList;
        Locale locale = Locale.US;
        arrayList.add(DateFormat.getDateTimeInstance(2, 2, locale));
        if (!Locale.getDefault().equals(locale)) {
            arrayList.add(DateFormat.getDateTimeInstance(2, 2));
        }
        if (n7.g.f8479a >= 9) {
            arrayList.add(new SimpleDateFormat("MMM d, yyyy h:mm:ss a", locale));
        }
    }

    @Override // l7.r
    public final Object a(t7.a aVar) throws IOException {
        if (aVar.u() == 9) {
            aVar.q();
            return null;
        }
        String strS = aVar.s();
        synchronized (this) {
            Iterator it = this.f8574a.iterator();
            while (it.hasNext()) {
                try {
                    return ((DateFormat) it.next()).parse(strS);
                } catch (ParseException unused) {
                }
            }
            try {
                return p7.a.b(strS, new ParsePosition(0));
            } catch (ParseException e5) {
                throw new l7.n(strS, e5);
            }
        }
    }

    @Override // l7.r
    public final void b(t7.b bVar, Object obj) {
        Date date = (Date) obj;
        synchronized (this) {
            if (date == null) {
                bVar.i();
            } else {
                bVar.n(((DateFormat) this.f8574a.get(0)).format(date));
            }
        }
    }
}
