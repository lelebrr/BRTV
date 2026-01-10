package r4;

import android.os.Looper;
import android.text.TextUtils;
import com.google.android.gms.cast.AdBreakStatus;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaQueueItem;
import com.google.android.gms.cast.MediaStatus;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BasePendingResult;
import com.google.android.gms.internal.cast.x0;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class f implements p4.b {

    /* renamed from: k, reason: collision with root package name */
    public static final v4.b f9541k = new v4.b("RemoteMediaClient", null);

    /* renamed from: c, reason: collision with root package name */
    public final v4.l f9544c;
    public final a1.b d;

    /* renamed from: e, reason: collision with root package name */
    public final a f9545e;
    public p4.o f;

    /* renamed from: g, reason: collision with root package name */
    public final CopyOnWriteArrayList f9546g = new CopyOnWriteArrayList();

    /* renamed from: h, reason: collision with root package name */
    public final CopyOnWriteArrayList f9547h = new CopyOnWriteArrayList();

    /* renamed from: i, reason: collision with root package name */
    public final ConcurrentHashMap f9548i = new ConcurrentHashMap();

    /* renamed from: j, reason: collision with root package name */
    public final ConcurrentHashMap f9549j = new ConcurrentHashMap();

    /* renamed from: a, reason: collision with root package name */
    public final Object f9542a = new Object();

    /* renamed from: b, reason: collision with root package name */
    public final x0 f9543b = new x0(Looper.getMainLooper(), 0);

    static {
        String str = v4.l.f10679w;
    }

    public f(v4.l lVar) {
        a1.b bVar = new a1.b(this);
        this.d = bVar;
        this.f9544c = lVar;
        n nVar = new n();
        nVar.f9566a = this;
        lVar.f10682h = nVar;
        lVar.f10706c = bVar;
        this.f9545e = new a(this);
    }

    public static final void G(m mVar) {
        try {
            mVar.m0();
        } catch (IllegalArgumentException e5) {
            throw e5;
        } catch (Throwable unused) {
            mVar.g0(new k(new Status(2100, null, null, null), 1));
        }
    }

    public static l x() {
        l lVar = new l();
        lVar.g0(new k(new Status(17, null, null, null), 0));
        return lVar;
    }

    public final boolean A() {
        if (!i()) {
            return false;
        }
        MediaStatus mediaStatusF = f();
        b5.l.e(mediaStatusF);
        if (!((mediaStatusF.f3743h & 64) != 0) && mediaStatusF.f3751p == 0) {
            Integer num = (Integer) mediaStatusF.f3759x.get(mediaStatusF.f3740c);
            if (num == null || num.intValue() >= mediaStatusF.f3752q.size() - 1) {
                return false;
            }
        }
        return true;
    }

    public final boolean B() {
        if (!i()) {
            return false;
        }
        MediaStatus mediaStatusF = f();
        b5.l.e(mediaStatusF);
        if (!((mediaStatusF.f3743h & 128) != 0) && mediaStatusF.f3751p == 0) {
            Integer num = (Integer) mediaStatusF.f3759x.get(mediaStatusF.f3740c);
            if (num == null || num.intValue() <= 0) {
                return false;
            }
        }
        return true;
    }

    public final boolean C() {
        b5.l.b("Must be called from the main thread.");
        MediaStatus mediaStatusF = f();
        return mediaStatusF != null && mediaStatusF.f3741e == 5;
    }

    public final boolean D() {
        b5.l.b("Must be called from the main thread.");
        if (!k()) {
            return true;
        }
        MediaStatus mediaStatusF = f();
        return (mediaStatusF == null || (mediaStatusF.f3743h & 2) == 0 || mediaStatusF.f3756u == null) ? false : true;
    }

    public final void E(HashSet hashSet) {
        HashSet hashSet2 = new HashSet(hashSet);
        if (n() || m() || j() || C()) {
            Iterator it = hashSet2.iterator();
            while (it.hasNext()) {
                e eVar = (e) it.next();
                c();
                h();
                eVar.a();
            }
            return;
        }
        if (!l()) {
            Iterator it2 = hashSet2.iterator();
            while (it2.hasNext()) {
                ((e) it2.next()).a();
            }
            return;
        }
        MediaQueueItem mediaQueueItemD = d();
        if (mediaQueueItemD == null || mediaQueueItemD.f3731a == null) {
            return;
        }
        Iterator it3 = hashSet2.iterator();
        while (it3.hasNext()) {
            ((e) it3.next()).a();
        }
    }

    public final boolean F() {
        return this.f != null;
    }

    public final void a(e eVar) {
        b5.l.b("Must be called from the main thread.");
        ConcurrentHashMap concurrentHashMap = this.f9548i;
        if (concurrentHashMap.containsKey(eVar)) {
            return;
        }
        ConcurrentHashMap concurrentHashMap2 = this.f9549j;
        p pVar = (p) concurrentHashMap2.get(1000L);
        if (pVar == null) {
            pVar = new p(this);
            concurrentHashMap2.put(1000L, pVar);
        }
        pVar.f9569a.add(eVar);
        concurrentHashMap.put(eVar, pVar);
        if (i()) {
            f fVar = pVar.f9572e;
            x0 x0Var = fVar.f9543b;
            o oVar = pVar.f9571c;
            x0Var.removeCallbacks(oVar);
            pVar.d = true;
            fVar.f9543b.postDelayed(oVar, pVar.f9570b);
        }
    }

    public final long b() {
        long jE;
        MediaStatus mediaStatus;
        AdBreakStatus adBreakStatus;
        synchronized (this.f9542a) {
            b5.l.b("Must be called from the main thread.");
            v4.l lVar = this.f9544c;
            jE = 0;
            if (lVar.f10680e != 0 && (mediaStatus = lVar.f) != null && (adBreakStatus = mediaStatus.f3754s) != null) {
                double d = mediaStatus.d;
                if (d == 0.0d) {
                    d = 1.0d;
                }
                jE = lVar.e(adBreakStatus.f3641b, mediaStatus.f3741e != 2 ? 0.0d : d, 0L);
            }
        }
        return jE;
    }

    public final long c() {
        long jO;
        synchronized (this.f9542a) {
            b5.l.b("Must be called from the main thread.");
            jO = this.f9544c.o();
        }
        return jO;
    }

    public final MediaQueueItem d() {
        b5.l.b("Must be called from the main thread.");
        MediaStatus mediaStatusF = f();
        if (mediaStatusF == null) {
            return null;
        }
        Integer num = (Integer) mediaStatusF.f3759x.get(mediaStatusF.f3747l);
        if (num == null) {
            return null;
        }
        return (MediaQueueItem) mediaStatusF.f3752q.get(num.intValue());
    }

    public final MediaInfo e() {
        MediaInfo mediaInfo;
        synchronized (this.f9542a) {
            b5.l.b("Must be called from the main thread.");
            MediaStatus mediaStatus = this.f9544c.f;
            mediaInfo = mediaStatus == null ? null : mediaStatus.f3738a;
        }
        return mediaInfo;
    }

    public final MediaStatus f() {
        MediaStatus mediaStatus;
        synchronized (this.f9542a) {
            b5.l.b("Must be called from the main thread.");
            mediaStatus = this.f9544c.f;
        }
        return mediaStatus;
    }

    public final int g() {
        int i6;
        synchronized (this.f9542a) {
            b5.l.b("Must be called from the main thread.");
            MediaStatus mediaStatusF = f();
            i6 = mediaStatusF != null ? mediaStatusF.f3741e : 1;
        }
        return i6;
    }

    public final long h() {
        long j10;
        synchronized (this.f9542a) {
            b5.l.b("Must be called from the main thread.");
            MediaStatus mediaStatus = this.f9544c.f;
            MediaInfo mediaInfo = mediaStatus == null ? null : mediaStatus.f3738a;
            j10 = mediaInfo != null ? mediaInfo.f3687e : 0L;
        }
        return j10;
    }

    public final boolean i() {
        b5.l.b("Must be called from the main thread.");
        return j() || C() || n() || m() || l();
    }

    public final boolean j() {
        b5.l.b("Must be called from the main thread.");
        MediaStatus mediaStatusF = f();
        return mediaStatusF != null && mediaStatusF.f3741e == 4;
    }

    public final boolean k() {
        b5.l.b("Must be called from the main thread.");
        MediaInfo mediaInfoE = e();
        return mediaInfoE != null && mediaInfoE.f3685b == 2;
    }

    public final boolean l() {
        b5.l.b("Must be called from the main thread.");
        MediaStatus mediaStatusF = f();
        return (mediaStatusF == null || mediaStatusF.f3747l == 0) ? false : true;
    }

    public final boolean m() {
        int i6;
        b5.l.b("Must be called from the main thread.");
        MediaStatus mediaStatusF = f();
        if (mediaStatusF == null) {
            return false;
        }
        if (mediaStatusF.f3741e == 3) {
            return true;
        }
        if (!k()) {
            return false;
        }
        synchronized (this.f9542a) {
            b5.l.b("Must be called from the main thread.");
            MediaStatus mediaStatusF2 = f();
            i6 = mediaStatusF2 != null ? mediaStatusF2.f : 0;
        }
        return i6 == 2;
    }

    public final boolean n() {
        b5.l.b("Must be called from the main thread.");
        MediaStatus mediaStatusF = f();
        return mediaStatusF != null && mediaStatusF.f3741e == 2;
    }

    public final boolean o() {
        b5.l.b("Must be called from the main thread.");
        MediaStatus mediaStatusF = f();
        return mediaStatusF != null && mediaStatusF.f3753r;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:144:0x02fc A[Catch: JSONException -> 0x00ce, TryCatch #0 {JSONException -> 0x00ce, blocks: (B:3:0x0017, B:38:0x009a, B:41:0x00a9, B:42:0x00b6, B:44:0x00bc, B:47:0x00d1, B:48:0x00db, B:50:0x00e1, B:51:0x00eb, B:53:0x00f8, B:55:0x010d, B:79:0x014b, B:81:0x0160, B:82:0x017e, B:84:0x0184, B:85:0x018e, B:86:0x0198, B:88:0x019e, B:89:0x01a8, B:90:0x01b2, B:92:0x01b8, B:93:0x01c2, B:94:0x01cc, B:96:0x01d2, B:97:0x01dc, B:98:0x01e6, B:100:0x01ec, B:101:0x01f6, B:103:0x0203, B:105:0x020d, B:106:0x0217, B:108:0x021d, B:109:0x0227, B:110:0x022b, B:112:0x0231, B:113:0x0241, B:115:0x0245, B:116:0x0252, B:118:0x0258, B:119:0x0262, B:120:0x0272, B:122:0x0278, B:123:0x0288, B:124:0x0293, B:125:0x029e, B:126:0x02ae, B:128:0x02b4, B:129:0x02c4, B:131:0x02d0, B:133:0x02e1, B:144:0x02fc, B:147:0x0301, B:150:0x0347, B:152:0x034b, B:155:0x0359, B:157:0x035d, B:158:0x0364, B:160:0x0368, B:161:0x036e, B:163:0x0372, B:164:0x0375, B:166:0x037a, B:167:0x037d, B:169:0x0381, B:170:0x0384, B:172:0x0388, B:174:0x0392, B:175:0x039a, B:177:0x03a0, B:178:0x03aa, B:179:0x03b0, B:181:0x03b6, B:182:0x03be, B:184:0x03c2, B:185:0x03ca, B:187:0x03ce, B:189:0x03d7, B:191:0x03e9, B:192:0x03ed, B:194:0x03f3, B:149:0x0307, B:137:0x02ea, B:139:0x02f2, B:190:0x03db), top: B:198:0x0017 }] */
    /* JADX WARN: Removed duplicated region for block: B:149:0x0307 A[Catch: JSONException -> 0x00ce, TryCatch #0 {JSONException -> 0x00ce, blocks: (B:3:0x0017, B:38:0x009a, B:41:0x00a9, B:42:0x00b6, B:44:0x00bc, B:47:0x00d1, B:48:0x00db, B:50:0x00e1, B:51:0x00eb, B:53:0x00f8, B:55:0x010d, B:79:0x014b, B:81:0x0160, B:82:0x017e, B:84:0x0184, B:85:0x018e, B:86:0x0198, B:88:0x019e, B:89:0x01a8, B:90:0x01b2, B:92:0x01b8, B:93:0x01c2, B:94:0x01cc, B:96:0x01d2, B:97:0x01dc, B:98:0x01e6, B:100:0x01ec, B:101:0x01f6, B:103:0x0203, B:105:0x020d, B:106:0x0217, B:108:0x021d, B:109:0x0227, B:110:0x022b, B:112:0x0231, B:113:0x0241, B:115:0x0245, B:116:0x0252, B:118:0x0258, B:119:0x0262, B:120:0x0272, B:122:0x0278, B:123:0x0288, B:124:0x0293, B:125:0x029e, B:126:0x02ae, B:128:0x02b4, B:129:0x02c4, B:131:0x02d0, B:133:0x02e1, B:144:0x02fc, B:147:0x0301, B:150:0x0347, B:152:0x034b, B:155:0x0359, B:157:0x035d, B:158:0x0364, B:160:0x0368, B:161:0x036e, B:163:0x0372, B:164:0x0375, B:166:0x037a, B:167:0x037d, B:169:0x0381, B:170:0x0384, B:172:0x0388, B:174:0x0392, B:175:0x039a, B:177:0x03a0, B:178:0x03aa, B:179:0x03b0, B:181:0x03b6, B:182:0x03be, B:184:0x03c2, B:185:0x03ca, B:187:0x03ce, B:189:0x03d7, B:191:0x03e9, B:192:0x03ed, B:194:0x03f3, B:149:0x0307, B:137:0x02ea, B:139:0x02f2, B:190:0x03db), top: B:198:0x0017 }] */
    /* JADX WARN: Removed duplicated region for block: B:152:0x034b A[Catch: JSONException -> 0x00ce, TryCatch #0 {JSONException -> 0x00ce, blocks: (B:3:0x0017, B:38:0x009a, B:41:0x00a9, B:42:0x00b6, B:44:0x00bc, B:47:0x00d1, B:48:0x00db, B:50:0x00e1, B:51:0x00eb, B:53:0x00f8, B:55:0x010d, B:79:0x014b, B:81:0x0160, B:82:0x017e, B:84:0x0184, B:85:0x018e, B:86:0x0198, B:88:0x019e, B:89:0x01a8, B:90:0x01b2, B:92:0x01b8, B:93:0x01c2, B:94:0x01cc, B:96:0x01d2, B:97:0x01dc, B:98:0x01e6, B:100:0x01ec, B:101:0x01f6, B:103:0x0203, B:105:0x020d, B:106:0x0217, B:108:0x021d, B:109:0x0227, B:110:0x022b, B:112:0x0231, B:113:0x0241, B:115:0x0245, B:116:0x0252, B:118:0x0258, B:119:0x0262, B:120:0x0272, B:122:0x0278, B:123:0x0288, B:124:0x0293, B:125:0x029e, B:126:0x02ae, B:128:0x02b4, B:129:0x02c4, B:131:0x02d0, B:133:0x02e1, B:144:0x02fc, B:147:0x0301, B:150:0x0347, B:152:0x034b, B:155:0x0359, B:157:0x035d, B:158:0x0364, B:160:0x0368, B:161:0x036e, B:163:0x0372, B:164:0x0375, B:166:0x037a, B:167:0x037d, B:169:0x0381, B:170:0x0384, B:172:0x0388, B:174:0x0392, B:175:0x039a, B:177:0x03a0, B:178:0x03aa, B:179:0x03b0, B:181:0x03b6, B:182:0x03be, B:184:0x03c2, B:185:0x03ca, B:187:0x03ce, B:189:0x03d7, B:191:0x03e9, B:192:0x03ed, B:194:0x03f3, B:149:0x0307, B:137:0x02ea, B:139:0x02f2, B:190:0x03db), top: B:198:0x0017 }] */
    /* JADX WARN: Removed duplicated region for block: B:154:0x0357  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x035d A[Catch: JSONException -> 0x00ce, TryCatch #0 {JSONException -> 0x00ce, blocks: (B:3:0x0017, B:38:0x009a, B:41:0x00a9, B:42:0x00b6, B:44:0x00bc, B:47:0x00d1, B:48:0x00db, B:50:0x00e1, B:51:0x00eb, B:53:0x00f8, B:55:0x010d, B:79:0x014b, B:81:0x0160, B:82:0x017e, B:84:0x0184, B:85:0x018e, B:86:0x0198, B:88:0x019e, B:89:0x01a8, B:90:0x01b2, B:92:0x01b8, B:93:0x01c2, B:94:0x01cc, B:96:0x01d2, B:97:0x01dc, B:98:0x01e6, B:100:0x01ec, B:101:0x01f6, B:103:0x0203, B:105:0x020d, B:106:0x0217, B:108:0x021d, B:109:0x0227, B:110:0x022b, B:112:0x0231, B:113:0x0241, B:115:0x0245, B:116:0x0252, B:118:0x0258, B:119:0x0262, B:120:0x0272, B:122:0x0278, B:123:0x0288, B:124:0x0293, B:125:0x029e, B:126:0x02ae, B:128:0x02b4, B:129:0x02c4, B:131:0x02d0, B:133:0x02e1, B:144:0x02fc, B:147:0x0301, B:150:0x0347, B:152:0x034b, B:155:0x0359, B:157:0x035d, B:158:0x0364, B:160:0x0368, B:161:0x036e, B:163:0x0372, B:164:0x0375, B:166:0x037a, B:167:0x037d, B:169:0x0381, B:170:0x0384, B:172:0x0388, B:174:0x0392, B:175:0x039a, B:177:0x03a0, B:178:0x03aa, B:179:0x03b0, B:181:0x03b6, B:182:0x03be, B:184:0x03c2, B:185:0x03ca, B:187:0x03ce, B:189:0x03d7, B:191:0x03e9, B:192:0x03ed, B:194:0x03f3, B:149:0x0307, B:137:0x02ea, B:139:0x02f2, B:190:0x03db), top: B:198:0x0017 }] */
    /* JADX WARN: Removed duplicated region for block: B:160:0x0368 A[Catch: JSONException -> 0x00ce, TryCatch #0 {JSONException -> 0x00ce, blocks: (B:3:0x0017, B:38:0x009a, B:41:0x00a9, B:42:0x00b6, B:44:0x00bc, B:47:0x00d1, B:48:0x00db, B:50:0x00e1, B:51:0x00eb, B:53:0x00f8, B:55:0x010d, B:79:0x014b, B:81:0x0160, B:82:0x017e, B:84:0x0184, B:85:0x018e, B:86:0x0198, B:88:0x019e, B:89:0x01a8, B:90:0x01b2, B:92:0x01b8, B:93:0x01c2, B:94:0x01cc, B:96:0x01d2, B:97:0x01dc, B:98:0x01e6, B:100:0x01ec, B:101:0x01f6, B:103:0x0203, B:105:0x020d, B:106:0x0217, B:108:0x021d, B:109:0x0227, B:110:0x022b, B:112:0x0231, B:113:0x0241, B:115:0x0245, B:116:0x0252, B:118:0x0258, B:119:0x0262, B:120:0x0272, B:122:0x0278, B:123:0x0288, B:124:0x0293, B:125:0x029e, B:126:0x02ae, B:128:0x02b4, B:129:0x02c4, B:131:0x02d0, B:133:0x02e1, B:144:0x02fc, B:147:0x0301, B:150:0x0347, B:152:0x034b, B:155:0x0359, B:157:0x035d, B:158:0x0364, B:160:0x0368, B:161:0x036e, B:163:0x0372, B:164:0x0375, B:166:0x037a, B:167:0x037d, B:169:0x0381, B:170:0x0384, B:172:0x0388, B:174:0x0392, B:175:0x039a, B:177:0x03a0, B:178:0x03aa, B:179:0x03b0, B:181:0x03b6, B:182:0x03be, B:184:0x03c2, B:185:0x03ca, B:187:0x03ce, B:189:0x03d7, B:191:0x03e9, B:192:0x03ed, B:194:0x03f3, B:149:0x0307, B:137:0x02ea, B:139:0x02f2, B:190:0x03db), top: B:198:0x0017 }] */
    /* JADX WARN: Removed duplicated region for block: B:163:0x0372 A[Catch: JSONException -> 0x00ce, TryCatch #0 {JSONException -> 0x00ce, blocks: (B:3:0x0017, B:38:0x009a, B:41:0x00a9, B:42:0x00b6, B:44:0x00bc, B:47:0x00d1, B:48:0x00db, B:50:0x00e1, B:51:0x00eb, B:53:0x00f8, B:55:0x010d, B:79:0x014b, B:81:0x0160, B:82:0x017e, B:84:0x0184, B:85:0x018e, B:86:0x0198, B:88:0x019e, B:89:0x01a8, B:90:0x01b2, B:92:0x01b8, B:93:0x01c2, B:94:0x01cc, B:96:0x01d2, B:97:0x01dc, B:98:0x01e6, B:100:0x01ec, B:101:0x01f6, B:103:0x0203, B:105:0x020d, B:106:0x0217, B:108:0x021d, B:109:0x0227, B:110:0x022b, B:112:0x0231, B:113:0x0241, B:115:0x0245, B:116:0x0252, B:118:0x0258, B:119:0x0262, B:120:0x0272, B:122:0x0278, B:123:0x0288, B:124:0x0293, B:125:0x029e, B:126:0x02ae, B:128:0x02b4, B:129:0x02c4, B:131:0x02d0, B:133:0x02e1, B:144:0x02fc, B:147:0x0301, B:150:0x0347, B:152:0x034b, B:155:0x0359, B:157:0x035d, B:158:0x0364, B:160:0x0368, B:161:0x036e, B:163:0x0372, B:164:0x0375, B:166:0x037a, B:167:0x037d, B:169:0x0381, B:170:0x0384, B:172:0x0388, B:174:0x0392, B:175:0x039a, B:177:0x03a0, B:178:0x03aa, B:179:0x03b0, B:181:0x03b6, B:182:0x03be, B:184:0x03c2, B:185:0x03ca, B:187:0x03ce, B:189:0x03d7, B:191:0x03e9, B:192:0x03ed, B:194:0x03f3, B:149:0x0307, B:137:0x02ea, B:139:0x02f2, B:190:0x03db), top: B:198:0x0017 }] */
    /* JADX WARN: Removed duplicated region for block: B:166:0x037a A[Catch: JSONException -> 0x00ce, TryCatch #0 {JSONException -> 0x00ce, blocks: (B:3:0x0017, B:38:0x009a, B:41:0x00a9, B:42:0x00b6, B:44:0x00bc, B:47:0x00d1, B:48:0x00db, B:50:0x00e1, B:51:0x00eb, B:53:0x00f8, B:55:0x010d, B:79:0x014b, B:81:0x0160, B:82:0x017e, B:84:0x0184, B:85:0x018e, B:86:0x0198, B:88:0x019e, B:89:0x01a8, B:90:0x01b2, B:92:0x01b8, B:93:0x01c2, B:94:0x01cc, B:96:0x01d2, B:97:0x01dc, B:98:0x01e6, B:100:0x01ec, B:101:0x01f6, B:103:0x0203, B:105:0x020d, B:106:0x0217, B:108:0x021d, B:109:0x0227, B:110:0x022b, B:112:0x0231, B:113:0x0241, B:115:0x0245, B:116:0x0252, B:118:0x0258, B:119:0x0262, B:120:0x0272, B:122:0x0278, B:123:0x0288, B:124:0x0293, B:125:0x029e, B:126:0x02ae, B:128:0x02b4, B:129:0x02c4, B:131:0x02d0, B:133:0x02e1, B:144:0x02fc, B:147:0x0301, B:150:0x0347, B:152:0x034b, B:155:0x0359, B:157:0x035d, B:158:0x0364, B:160:0x0368, B:161:0x036e, B:163:0x0372, B:164:0x0375, B:166:0x037a, B:167:0x037d, B:169:0x0381, B:170:0x0384, B:172:0x0388, B:174:0x0392, B:175:0x039a, B:177:0x03a0, B:178:0x03aa, B:179:0x03b0, B:181:0x03b6, B:182:0x03be, B:184:0x03c2, B:185:0x03ca, B:187:0x03ce, B:189:0x03d7, B:191:0x03e9, B:192:0x03ed, B:194:0x03f3, B:149:0x0307, B:137:0x02ea, B:139:0x02f2, B:190:0x03db), top: B:198:0x0017 }] */
    /* JADX WARN: Removed duplicated region for block: B:169:0x0381 A[Catch: JSONException -> 0x00ce, TryCatch #0 {JSONException -> 0x00ce, blocks: (B:3:0x0017, B:38:0x009a, B:41:0x00a9, B:42:0x00b6, B:44:0x00bc, B:47:0x00d1, B:48:0x00db, B:50:0x00e1, B:51:0x00eb, B:53:0x00f8, B:55:0x010d, B:79:0x014b, B:81:0x0160, B:82:0x017e, B:84:0x0184, B:85:0x018e, B:86:0x0198, B:88:0x019e, B:89:0x01a8, B:90:0x01b2, B:92:0x01b8, B:93:0x01c2, B:94:0x01cc, B:96:0x01d2, B:97:0x01dc, B:98:0x01e6, B:100:0x01ec, B:101:0x01f6, B:103:0x0203, B:105:0x020d, B:106:0x0217, B:108:0x021d, B:109:0x0227, B:110:0x022b, B:112:0x0231, B:113:0x0241, B:115:0x0245, B:116:0x0252, B:118:0x0258, B:119:0x0262, B:120:0x0272, B:122:0x0278, B:123:0x0288, B:124:0x0293, B:125:0x029e, B:126:0x02ae, B:128:0x02b4, B:129:0x02c4, B:131:0x02d0, B:133:0x02e1, B:144:0x02fc, B:147:0x0301, B:150:0x0347, B:152:0x034b, B:155:0x0359, B:157:0x035d, B:158:0x0364, B:160:0x0368, B:161:0x036e, B:163:0x0372, B:164:0x0375, B:166:0x037a, B:167:0x037d, B:169:0x0381, B:170:0x0384, B:172:0x0388, B:174:0x0392, B:175:0x039a, B:177:0x03a0, B:178:0x03aa, B:179:0x03b0, B:181:0x03b6, B:182:0x03be, B:184:0x03c2, B:185:0x03ca, B:187:0x03ce, B:189:0x03d7, B:191:0x03e9, B:192:0x03ed, B:194:0x03f3, B:149:0x0307, B:137:0x02ea, B:139:0x02f2, B:190:0x03db), top: B:198:0x0017 }] */
    /* JADX WARN: Removed duplicated region for block: B:172:0x0388 A[Catch: JSONException -> 0x00ce, TryCatch #0 {JSONException -> 0x00ce, blocks: (B:3:0x0017, B:38:0x009a, B:41:0x00a9, B:42:0x00b6, B:44:0x00bc, B:47:0x00d1, B:48:0x00db, B:50:0x00e1, B:51:0x00eb, B:53:0x00f8, B:55:0x010d, B:79:0x014b, B:81:0x0160, B:82:0x017e, B:84:0x0184, B:85:0x018e, B:86:0x0198, B:88:0x019e, B:89:0x01a8, B:90:0x01b2, B:92:0x01b8, B:93:0x01c2, B:94:0x01cc, B:96:0x01d2, B:97:0x01dc, B:98:0x01e6, B:100:0x01ec, B:101:0x01f6, B:103:0x0203, B:105:0x020d, B:106:0x0217, B:108:0x021d, B:109:0x0227, B:110:0x022b, B:112:0x0231, B:113:0x0241, B:115:0x0245, B:116:0x0252, B:118:0x0258, B:119:0x0262, B:120:0x0272, B:122:0x0278, B:123:0x0288, B:124:0x0293, B:125:0x029e, B:126:0x02ae, B:128:0x02b4, B:129:0x02c4, B:131:0x02d0, B:133:0x02e1, B:144:0x02fc, B:147:0x0301, B:150:0x0347, B:152:0x034b, B:155:0x0359, B:157:0x035d, B:158:0x0364, B:160:0x0368, B:161:0x036e, B:163:0x0372, B:164:0x0375, B:166:0x037a, B:167:0x037d, B:169:0x0381, B:170:0x0384, B:172:0x0388, B:174:0x0392, B:175:0x039a, B:177:0x03a0, B:178:0x03aa, B:179:0x03b0, B:181:0x03b6, B:182:0x03be, B:184:0x03c2, B:185:0x03ca, B:187:0x03ce, B:189:0x03d7, B:191:0x03e9, B:192:0x03ed, B:194:0x03f3, B:149:0x0307, B:137:0x02ea, B:139:0x02f2, B:190:0x03db), top: B:198:0x0017 }] */
    /* JADX WARN: Removed duplicated region for block: B:187:0x03ce A[Catch: JSONException -> 0x00ce, TryCatch #0 {JSONException -> 0x00ce, blocks: (B:3:0x0017, B:38:0x009a, B:41:0x00a9, B:42:0x00b6, B:44:0x00bc, B:47:0x00d1, B:48:0x00db, B:50:0x00e1, B:51:0x00eb, B:53:0x00f8, B:55:0x010d, B:79:0x014b, B:81:0x0160, B:82:0x017e, B:84:0x0184, B:85:0x018e, B:86:0x0198, B:88:0x019e, B:89:0x01a8, B:90:0x01b2, B:92:0x01b8, B:93:0x01c2, B:94:0x01cc, B:96:0x01d2, B:97:0x01dc, B:98:0x01e6, B:100:0x01ec, B:101:0x01f6, B:103:0x0203, B:105:0x020d, B:106:0x0217, B:108:0x021d, B:109:0x0227, B:110:0x022b, B:112:0x0231, B:113:0x0241, B:115:0x0245, B:116:0x0252, B:118:0x0258, B:119:0x0262, B:120:0x0272, B:122:0x0278, B:123:0x0288, B:124:0x0293, B:125:0x029e, B:126:0x02ae, B:128:0x02b4, B:129:0x02c4, B:131:0x02d0, B:133:0x02e1, B:144:0x02fc, B:147:0x0301, B:150:0x0347, B:152:0x034b, B:155:0x0359, B:157:0x035d, B:158:0x0364, B:160:0x0368, B:161:0x036e, B:163:0x0372, B:164:0x0375, B:166:0x037a, B:167:0x037d, B:169:0x0381, B:170:0x0384, B:172:0x0388, B:174:0x0392, B:175:0x039a, B:177:0x03a0, B:178:0x03aa, B:179:0x03b0, B:181:0x03b6, B:182:0x03be, B:184:0x03c2, B:185:0x03ca, B:187:0x03ce, B:189:0x03d7, B:191:0x03e9, B:192:0x03ed, B:194:0x03f3, B:149:0x0307, B:137:0x02ea, B:139:0x02f2, B:190:0x03db), top: B:198:0x0017 }] */
    /* JADX WARN: Removed duplicated region for block: B:188:0x03d5  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x013d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void p(java.lang.String r44) {
        /*
            Method dump skipped, instructions count: 1130
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: r4.f.p(java.lang.String):void");
    }

    public final void q() {
        b5.l.b("Must be called from the main thread.");
        if (F()) {
            G(new h(this, 1));
        } else {
            x();
        }
    }

    public final void r() {
        b5.l.b("Must be called from the main thread.");
        if (F()) {
            G(new h(this, 0));
        } else {
            x();
        }
    }

    public final void s(e eVar) {
        b5.l.b("Must be called from the main thread.");
        p pVar = (p) this.f9548i.remove(eVar);
        if (pVar != null) {
            HashSet hashSet = pVar.f9569a;
            hashSet.remove(eVar);
            if (hashSet.isEmpty()) {
                this.f9549j.remove(Long.valueOf(pVar.f9570b));
                pVar.f9572e.f9543b.removeCallbacks(pVar.f9571c);
                pVar.d = false;
            }
        }
    }

    public final BasePendingResult t(p4.g gVar) {
        b5.l.b("Must be called from the main thread.");
        if (!F()) {
            return x();
        }
        i iVar = new i(this, gVar, 1);
        G(iVar);
        return iVar;
    }

    public final void u(long j10) {
        t(new p4.g(j10, false));
    }

    public final void v() {
        b5.l.b("Must be called from the main thread.");
        int iG = g();
        if (iG == 4 || iG == 2) {
            b5.l.b("Must be called from the main thread.");
            if (F()) {
                G(new h(this, 3));
                return;
            } else {
                x();
                return;
            }
        }
        b5.l.b("Must be called from the main thread.");
        if (F()) {
            G(new h(this, 4));
        } else {
            x();
        }
    }

    public final int w() {
        MediaQueueItem mediaQueueItemD;
        if (e() != null && i()) {
            if (j()) {
                return 6;
            }
            if (n()) {
                return 3;
            }
            if (m()) {
                return 2;
            }
            if (l() && (mediaQueueItemD = d()) != null && mediaQueueItemD.f3731a != null) {
                return 6;
            }
        }
        return 0;
    }

    public final void y() {
        p4.o oVar = this.f;
        if (oVar == null) {
            return;
        }
        b5.l.b("Must be called from the main thread.");
        String str = this.f9544c.f10705b;
        v4.a.c(str);
        HashMap map = oVar.B;
        synchronized (map) {
            map.put(str, this);
        }
        c6.c cVarC = c6.c.c();
        cVarC.f3394c = new p4.l(oVar, str, this);
        cVarC.f3392a = 8413;
        oVar.c(1, cVarC.b());
        b5.l.b("Must be called from the main thread.");
        if (F()) {
            G(new h(this, 6));
        } else {
            x();
        }
    }

    public final void z(p4.o oVar) {
        p4.b bVar;
        p4.o oVar2 = this.f;
        if (oVar2 == oVar) {
            return;
        }
        if (oVar2 != null) {
            this.f9544c.n();
            this.f9545e.c();
            b5.l.b("Must be called from the main thread.");
            String str = this.f9544c.f10705b;
            if (TextUtils.isEmpty(str)) {
                throw new IllegalArgumentException("Channel namespace cannot be null or empty");
            }
            HashMap map = oVar2.B;
            synchronized (map) {
                bVar = (p4.b) map.remove(str);
            }
            c6.c cVarC = c6.c.c();
            cVarC.f3394c = new a1.b(oVar2, bVar, str, 27);
            cVarC.f3392a = 8414;
            oVar2.c(1, cVarC.b());
            this.d.f47b = null;
            this.f9543b.removeCallbacksAndMessages(null);
        }
        this.f = oVar;
        if (oVar != null) {
            this.d.f47b = oVar;
        }
    }
}
