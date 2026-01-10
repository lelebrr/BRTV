package o7;

import java.io.IOException;
import java.io.Serializable;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.InetAddress;
import java.net.URI;
import java.net.URL;
import java.util.BitSet;
import java.util.Calendar;
import java.util.Currency;
import java.util.Iterator;
import java.util.Locale;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicIntegerArray;
import l7.q;
import l7.r;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class g extends r {

    /* renamed from: b, reason: collision with root package name */
    public static final f f8580b = new f(new g(0), 0);

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f8581a;

    public /* synthetic */ g(int i6) {
        this.f8581a = i6;
    }

    public static l7.m c(t7.a aVar) throws IOException {
        int iA = u.h.a(aVar.u());
        if (iA == 0) {
            l7.l lVar = new l7.l();
            aVar.a();
            while (aVar.h()) {
                lVar.f8073a.add(c(aVar));
            }
            aVar.e();
            return lVar;
        }
        if (iA == 2) {
            l7.p pVar = new l7.p();
            aVar.b();
            while (aVar.h()) {
                pVar.f8075a.put(aVar.o(), c(aVar));
            }
            aVar.f();
            return pVar;
        }
        if (iA == 5) {
            return new q(aVar.s());
        }
        if (iA == 6) {
            return new q(new n7.h(aVar.s()));
        }
        if (iA == 7) {
            return new q(Boolean.valueOf(aVar.k()));
        }
        if (iA != 8) {
            throw new IllegalArgumentException();
        }
        aVar.q();
        return l7.o.f8074a;
    }

    public static void d(l7.m mVar, t7.b bVar) {
        if (mVar == null || (mVar instanceof l7.o)) {
            bVar.i();
            return;
        }
        boolean z7 = mVar instanceof q;
        if (z7) {
            if (!z7) {
                throw new IllegalStateException("Not a JSON Primitive: " + mVar);
            }
            q qVar = (q) mVar;
            Serializable serializable = qVar.f8076a;
            if (serializable instanceof Number) {
                bVar.m(qVar.c());
                return;
            } else if (serializable instanceof Boolean) {
                bVar.o(serializable instanceof Boolean ? ((Boolean) serializable).booleanValue() : Boolean.parseBoolean(qVar.d()));
                return;
            } else {
                bVar.n(qVar.d());
                return;
            }
        }
        boolean z10 = mVar instanceof l7.l;
        if (z10) {
            bVar.b();
            if (!z10) {
                throw new IllegalStateException("Not a JSON Array: " + mVar);
            }
            Iterator it = ((l7.l) mVar).f8073a.iterator();
            while (it.hasNext()) {
                d((l7.m) it.next(), bVar);
            }
            bVar.e();
            return;
        }
        boolean z11 = mVar instanceof l7.p;
        if (!z11) {
            throw new IllegalArgumentException("Couldn't write " + mVar.getClass());
        }
        bVar.c();
        if (!z11) {
            throw new IllegalStateException("Not a JSON Object: " + mVar);
        }
        Iterator it2 = ((n7.j) ((l7.p) mVar).f8075a.entrySet()).iterator();
        while (((n7.i) it2).hasNext()) {
            n7.k kVarB = ((n7.i) it2).b();
            bVar.g((String) kVarB.getKey());
            d((l7.m) kVarB.getValue(), bVar);
        }
        bVar.f();
    }

    /* JADX WARN: Removed duplicated region for block: B:63:0x00f0  */
    @Override // l7.r
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(t7.a r10) throws java.io.IOException, java.lang.NumberFormatException {
        /*
            Method dump skipped, instructions count: 1046
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: o7.g.a(t7.a):java.lang.Object");
    }

    @Override // l7.r
    public final void b(t7.b bVar, Object obj) throws IOException {
        switch (this.f8581a) {
            case 0:
                bVar.m((Number) obj);
                return;
            case 1:
                bVar.b();
                int length = ((AtomicIntegerArray) obj).length();
                for (int i6 = 0; i6 < length; i6++) {
                    bVar.l(r6.get(i6));
                }
                bVar.e();
                return;
            case 2:
                bVar.m((Number) obj);
                return;
            case 3:
                bVar.m((Number) obj);
                return;
            case 4:
                bVar.m((Number) obj);
                return;
            case 5:
                Character ch = (Character) obj;
                bVar.n(ch == null ? null : String.valueOf(ch));
                return;
            case 6:
                bVar.n((String) obj);
                return;
            case 7:
                bVar.m((BigDecimal) obj);
                return;
            case 8:
                bVar.m((BigInteger) obj);
                return;
            case 9:
                StringBuilder sb = (StringBuilder) obj;
                bVar.n(sb == null ? null : sb.toString());
                return;
            case 10:
                StringBuffer stringBuffer = (StringBuffer) obj;
                bVar.n(stringBuffer == null ? null : stringBuffer.toString());
                return;
            case 11:
                throw new UnsupportedOperationException("Attempted to serialize java.lang.Class: " + ((Class) obj).getName() + ". Forgot to register a type adapter?");
            case 12:
                URL url = (URL) obj;
                bVar.n(url == null ? null : url.toExternalForm());
                return;
            case 13:
                URI uri = (URI) obj;
                bVar.n(uri == null ? null : uri.toASCIIString());
                return;
            case 14:
                InetAddress inetAddress = (InetAddress) obj;
                bVar.n(inetAddress == null ? null : inetAddress.getHostAddress());
                return;
            case 15:
                UUID uuid = (UUID) obj;
                bVar.n(uuid == null ? null : uuid.toString());
                return;
            case 16:
                bVar.n(((Currency) obj).getCurrencyCode());
                return;
            case 17:
                if (((Calendar) obj) == null) {
                    bVar.i();
                    return;
                }
                bVar.c();
                bVar.g("year");
                bVar.l(r6.get(1));
                bVar.g("month");
                bVar.l(r6.get(2));
                bVar.g("dayOfMonth");
                bVar.l(r6.get(5));
                bVar.g("hourOfDay");
                bVar.l(r6.get(11));
                bVar.g("minute");
                bVar.l(r6.get(12));
                bVar.g("second");
                bVar.l(r6.get(13));
                bVar.f();
                return;
            case 18:
                Locale locale = (Locale) obj;
                bVar.n(locale == null ? null : locale.toString());
                return;
            case 19:
                d((l7.m) obj, bVar);
                return;
            case 20:
                BitSet bitSet = (BitSet) obj;
                bVar.b();
                int length2 = bitSet.length();
                for (int i10 = 0; i10 < length2; i10++) {
                    bVar.l(bitSet.get(i10) ? 1L : 0L);
                }
                bVar.e();
                return;
            case 21:
                Boolean bool = (Boolean) obj;
                if (bool == null) {
                    bVar.i();
                    return;
                }
                bVar.p();
                bVar.a();
                bVar.f10170a.write(bool.booleanValue() ? "true" : "false");
                return;
            case 22:
                Boolean bool2 = (Boolean) obj;
                bVar.n(bool2 == null ? "null" : bool2.toString());
                return;
            case 23:
                bVar.m((Number) obj);
                return;
            case 24:
                bVar.m((Number) obj);
                return;
            case 25:
                bVar.m((Number) obj);
                return;
            case 26:
                bVar.l(((AtomicInteger) obj).get());
                return;
            default:
                bVar.o(((AtomicBoolean) obj).get());
                return;
        }
    }
}
