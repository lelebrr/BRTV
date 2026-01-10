package q1;

import android.os.Handler;
import android.os.Message;
import androidx.media3.extractor.ts.TsExtractor;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b extends Handler {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f8934a = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f8935b = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ h f8936c;

    public b(h hVar) {
        this.f8936c = hVar;
    }

    public static void a(n0 n0Var, int i6, Object obj, int i10) {
        s0 s0Var;
        s0 s0Var2;
        u0 u0Var = n0Var.f9078a;
        int i11 = 65280 & i6;
        m0 m0Var = n0Var.f9079b;
        if (i11 != 256) {
            if (i11 != 512) {
                if (i11 == 768 && i6 == 769) {
                    m0Var.n((x0) obj);
                    return;
                }
                return;
            }
            switch (i6) {
                case 513:
                    m0Var.a();
                    return;
                case 514:
                    m0Var.c();
                    return;
                case 515:
                    m0Var.b();
                    return;
                default:
                    return;
            }
        }
        if (i6 == 264 || i6 == 262) {
            g gVar = (g) obj;
            s0 s0Var3 = gVar.f8978b;
            s0Var = gVar.f8977a;
            s0Var2 = s0Var3;
        } else {
            if (i6 == 265 || i6 == 266) {
                obj.getClass();
                throw new ClassCastException();
            }
            s0Var2 = (s0) obj;
            s0Var = null;
        }
        if (s0Var2 != null) {
            boolean zD = true;
            if ((n0Var.d & 2) == 0 && !s0Var2.h(n0Var.f9080c)) {
                x0 x0Var = u0.c().f9004u;
                zD = ((x0Var == null ? false : x0Var.f9178c) && s0Var2.d() && i6 == 262 && i10 == 3 && s0Var != null) ? true ^ s0Var.d() : false;
            }
            if (zD) {
                switch (i6) {
                    case TsExtractor.TS_STREAM_TYPE_AIT /* 257 */:
                        m0Var.d(u0Var, s0Var2);
                        return;
                    case 258:
                        m0Var.h(u0Var, s0Var2);
                        return;
                    case 259:
                        m0Var.e(u0Var, s0Var2);
                        return;
                    case 260:
                        m0Var.m(s0Var2);
                        return;
                    case 261:
                        m0Var.getClass();
                        return;
                    case 262:
                        m0Var.j(u0Var, s0Var2, i10, s0Var2);
                        return;
                    case 263:
                        m0Var.l(u0Var, s0Var2, i10);
                        return;
                    case 264:
                        m0Var.j(u0Var, s0Var2, i10, s0Var);
                        return;
                    case 265:
                        m0Var.f(s0Var, s0Var2);
                        return;
                    case 266:
                        m0Var.g(s0Var, s0Var2, i10);
                        return;
                    default:
                        return;
                }
            }
        }
    }

    public final void b(int i6, Object obj) {
        obtainMessage(i6, obj).sendToTarget();
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        int iK;
        ArrayList arrayList = this.f8934a;
        int i6 = message.what;
        Object obj = message.obj;
        int i10 = message.arg1;
        h hVar = this.f8936c;
        if (i6 == 259 && hVar.g().f9131c.equals(((s0) obj).f9131c)) {
            hVar.p(true);
        }
        ArrayList arrayList2 = this.f8935b;
        if (i6 == 262) {
            g gVar = (g) obj;
            s0 s0Var = gVar.f8978b;
            if (gVar.f8979c) {
                hVar.f9002s.q(s0Var);
            }
            if (hVar.f9005v != null && s0Var.d()) {
                Iterator it = arrayList2.iterator();
                while (it.hasNext()) {
                    hVar.f9002s.p((s0) it.next());
                }
                arrayList2.clear();
            }
        } else if (i6 != 264) {
            switch (i6) {
                case TsExtractor.TS_STREAM_TYPE_AIT /* 257 */:
                    hVar.f9002s.o((s0) obj);
                    break;
                case 258:
                    hVar.f9002s.p((s0) obj);
                    break;
                case 259:
                    e1 e1Var = hVar.f9002s;
                    s0 s0Var2 = (s0) obj;
                    e1Var.getClass();
                    if (s0Var2.c() != e1Var && (iK = e1Var.k(s0Var2)) >= 0) {
                        e1.t((d1) e1Var.f8973r.get(iK));
                        break;
                    }
                    break;
            }
        } else {
            g gVar2 = (g) obj;
            s0 s0Var3 = gVar2.f8978b;
            arrayList2.add(s0Var3);
            hVar.f9002s.o(s0Var3);
            if (gVar2.f8979c) {
                hVar.f9002s.q(s0Var3);
            }
        }
        try {
            int size = hVar.f8991h.size();
            while (true) {
                size--;
                if (size < 0) {
                    Iterator it2 = arrayList.iterator();
                    while (it2.hasNext()) {
                        a((n0) it2.next(), i6, obj, i10);
                    }
                    arrayList.clear();
                    return;
                }
                ArrayList arrayList3 = hVar.f8991h;
                u0 u0Var = (u0) ((WeakReference) arrayList3.get(size)).get();
                if (u0Var == null) {
                    arrayList3.remove(size);
                } else {
                    arrayList.addAll(u0Var.f9161b);
                }
            }
        } catch (Throwable th) {
            arrayList.clear();
            throw th;
        }
    }
}
