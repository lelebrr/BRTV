package j7;

import android.content.ClipData;
import android.content.ClipDescription;
import android.content.ComponentName;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.media.AudioAttributes;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.SystemClock;
import android.util.Log;
import android.view.ContentInfo;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.appcompat.widget.d2;
import androidx.media.AudioAttributesImpl;
import androidx.media.AudioAttributesImplApi21;
import coil.memory.MemoryCache$Key;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaQueueItem;
import com.google.android.gms.common.api.ApiMetadata;
import com.google.android.gms.common.api.ComplianceOptions;
import com.google.android.gms.common.api.Status;
import com.google.android.material.internal.d0;
import com.google.android.material.internal.e0;
import com.google.android.material.navigationrail.NavigationRailView;
import fa.n0;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import k.l;
import k.n;
import ka.w;
import ka.y;
import m2.i;
import m2.q;
import n0.g;
import n0.o1;
import n0.r1;
import n0.s0;
import n7.m;
import o0.h;
import o0.j;
import org.json.JSONObject;
import p4.o;
import q1.a0;
import q1.b0;
import q1.j0;
import q4.z;
import x8.s;
import x8.u;
import z4.k;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class c implements d2, k2.f, n0, n0.d, n0.f, m, p3.d, k, d0, a0, v4.m {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7443a;

    /* renamed from: b, reason: collision with root package name */
    public Object f7444b;

    public /* synthetic */ c(int i6, Object obj) {
        this.f7443a = i6;
        this.f7444b = obj;
    }

    public static q y(h2.k kVar, i iVar, MemoryCache$Key memoryCache$Key, k2.a aVar) {
        BitmapDrawable bitmapDrawable = new BitmapDrawable(iVar.f8203a.getResources(), aVar.f7697a);
        d2.f fVar = d2.f.f6025a;
        Map map = aVar.f7698b;
        Object obj = map.get("coil#disk_cache_key");
        String str = obj instanceof String ? (String) obj : null;
        Object obj2 = map.get("coil#is_sampled");
        Boolean bool = obj2 instanceof Boolean ? (Boolean) obj2 : null;
        boolean zBooleanValue = bool != null ? bool.booleanValue() : false;
        Bitmap.Config[] configArr = r2.f.f9467a;
        return new q(bitmapDrawable, iVar, fVar, memoryCache$Key, str, zBooleanValue, (kVar instanceof h2.k) && kVar.f7236g);
    }

    public static c z(int i6, int i10, int i11, boolean z7) {
        return new c(19, AccessibilityNodeInfo.CollectionInfo.obtain(i6, i10, z7, i11));
    }

    public void A(String str) {
        switch (this.f7443a) {
            case 6:
                w wVar = (w) this.f7444b;
                y yVar = wVar.f7873b;
                yVar.getClass();
                yVar.Q(str);
                wVar.f7873b.f7910r1.f9887p0.setEnabled(true);
                break;
            default:
                la.b bVar = (la.b) this.f7444b;
                la.d dVar = bVar.f8079b;
                dVar.getClass();
                dVar.T(str);
                bVar.f8079b.f8091k0.f9887p0.setEnabled(true);
                break;
        }
    }

    public boolean B(int i6, int i10, Bundle bundle) {
        return false;
    }

    @Override // k2.f
    public void b(MemoryCache$Key memoryCache$Key, Bitmap bitmap, Map map) {
        ((c6.b) this.f7444b).b(memoryCache$Key, bitmap, map, n5.d.s(bitmap));
    }

    @Override // q1.a0
    public void c(b0 b0Var, q1.w wVar, ArrayList arrayList) {
        ((j0) this.f7444b).g(b0Var, wVar, arrayList);
    }

    @Override // androidx.appcompat.widget.d2
    public void d(l lVar, n nVar) {
        k.f fVar = (k.f) this.f7444b;
        fVar.f.removeCallbacksAndMessages(null);
        ArrayList arrayList = fVar.f7579h;
        int size = arrayList.size();
        int i6 = 0;
        while (true) {
            if (i6 >= size) {
                i6 = -1;
                break;
            } else if (lVar == ((k.e) arrayList.get(i6)).f7572b) {
                break;
            } else {
                i6++;
            }
        }
        if (i6 == -1) {
            return;
        }
        int i10 = i6 + 1;
        fVar.f.postAtTime(new k.d(this, i10 < arrayList.size() ? (k.e) arrayList.get(i10) : null, nVar, lVar, 0), lVar, SystemClock.uptimeMillis() + 200);
    }

    @Override // n0.f
    public ClipData e() {
        return ((ContentInfo) this.f7444b).getClip();
    }

    @Override // n0.d
    public g f() {
        return new g(new c(((ContentInfo.Builder) this.f7444b).build()));
    }

    @Override // p3.d
    public p3.c g(int i6) {
        if (i6 == 5) {
            return p3.b.f8867a;
        }
        if (((p3.a) this.f7444b) == null) {
            this.f7444b = new p3.a();
        }
        return (p3.a) this.f7444b;
    }

    @Override // n0.f
    public int getFlags() {
        return ((ContentInfo) this.f7444b).getFlags();
    }

    @Override // k2.f
    public k2.a h(MemoryCache$Key memoryCache$Key) {
        return null;
    }

    @Override // n0.f
    public ContentInfo i() {
        return (ContentInfo) this.f7444b;
    }

    @Override // fa.n0
    public void j() {
        ((ka.a) this.f7444b).X.f10253i.h(4);
    }

    @Override // androidx.appcompat.widget.d2
    public void k(l lVar, n nVar) {
        ((k.f) this.f7444b).f.removeCallbacksAndMessages(lVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x003f A[LOOP:0: B:13:0x0039->B:15:0x003f, LOOP_END] */
    @Override // v4.m
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void l(java.lang.String r16, long r17, int r19, v4.k r20, long r21, long r23) {
        /*
            r15 = this;
            r1 = r15
            java.lang.Object r0 = r1.f7444b
            r2 = r0
            r4.m r2 = (r4.m) r2
            r0 = r20
            boolean r0 = r0 instanceof v4.k
            r4.k r0 = new r4.k     // Catch: java.lang.IllegalStateException -> L1e
            com.google.android.gms.common.api.Status r3 = new com.google.android.gms.common.api.Status     // Catch: java.lang.IllegalStateException -> L1e
            r4 = 0
            r14 = r19
            r3.<init>(r14, r4, r4, r4)     // Catch: java.lang.IllegalStateException -> L1c
            r4 = 2
            r0.<init>(r3, r4)     // Catch: java.lang.IllegalStateException -> L1c
            r2.g0(r0)     // Catch: java.lang.IllegalStateException -> L1c
            goto L31
        L1c:
            r0 = move-exception
            goto L21
        L1e:
            r0 = move-exception
            r14 = r19
        L21:
            v4.b r3 = r4.f.f9541k
            r4 = 0
            java.lang.Object[] r4 = new java.lang.Object[r4]
            java.lang.String r5 = r3.f10671a
            java.lang.String r6 = "Result already set when calling onRequestCompleted"
            java.lang.String r3 = r3.d(r6, r4)
            android.util.Log.e(r5, r3, r0)
        L31:
            r4.f r0 = r2.f9565t
            java.util.concurrent.CopyOnWriteArrayList r0 = r0.f9547h
            java.util.Iterator r0 = r0.iterator()
        L39:
            boolean r2 = r0.hasNext()
            if (r2 == 0) goto L54
            java.lang.Object r2 = r0.next()
            r5 = r2
            q4.z r5 = (q4.z) r5
            r6 = r16
            r7 = r17
            r9 = r19
            r10 = r21
            r12 = r23
            r5.e(r6, r7, r9, r10, r12)
            goto L39
        L54:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: j7.c.l(java.lang.String, long, int, v4.k, long, long):void");
    }

    @Override // n0.d
    public void m(Uri uri) {
        ((ContentInfo.Builder) this.f7444b).setLinkUri(uri);
    }

    @Override // n0.f
    public int n() {
        return ((ContentInfo) this.f7444b).getSource();
    }

    @Override // n7.m
    public Object o() {
        switch (this.f7443a) {
            case 17:
                Constructor constructor = (Constructor) this.f7444b;
                try {
                    return constructor.newInstance(null);
                } catch (IllegalAccessException e5) {
                    throw new AssertionError(e5);
                } catch (InstantiationException e10) {
                    throw new RuntimeException("Failed to invoke " + constructor + " with no args", e10);
                } catch (InvocationTargetException e11) {
                    throw new RuntimeException("Failed to invoke " + constructor + " with no args", e11.getTargetException());
                }
            default:
                Type type = (Type) this.f7444b;
                if (!(type instanceof ParameterizedType)) {
                    throw new l7.n("Invalid EnumSet type: " + type.toString());
                }
                Type type2 = ((ParameterizedType) type).getActualTypeArguments()[0];
                if (type2 instanceof Class) {
                    return EnumSet.noneOf((Class) type2);
                }
                throw new l7.n("Invalid EnumSet type: " + type.toString());
        }
    }

    @Override // com.google.android.material.internal.d0
    public r1 p(View view, r1 r1Var, e0 e0Var) {
        boolean fitsSystemWindows;
        boolean fitsSystemWindows2;
        NavigationRailView navigationRailView = (NavigationRailView) this.f7444b;
        Boolean bool = navigationRailView.f5161h;
        if (bool != null) {
            fitsSystemWindows = bool.booleanValue();
        } else {
            WeakHashMap weakHashMap = s0.f8353a;
            fitsSystemWindows = navigationRailView.getFitsSystemWindows();
        }
        o1 o1Var = r1Var.f8352a;
        if (fitsSystemWindows) {
            e0Var.f5032b += o1Var.g(7).f6755b;
        }
        Boolean bool2 = navigationRailView.f5162i;
        if (bool2 != null) {
            fitsSystemWindows2 = bool2.booleanValue();
        } else {
            WeakHashMap weakHashMap2 = s0.f8353a;
            fitsSystemWindows2 = navigationRailView.getFitsSystemWindows();
        }
        if (fitsSystemWindows2) {
            e0Var.d += o1Var.g(7).d;
        }
        WeakHashMap weakHashMap3 = s0.f8353a;
        boolean z7 = view.getLayoutDirection() == 1;
        int iB = r1Var.b();
        int iC = r1Var.c();
        int i6 = e0Var.f5031a;
        if (z7) {
            iB = iC;
        }
        int i10 = i6 + iB;
        e0Var.f5031a = i10;
        view.setPaddingRelative(i10, e0Var.f5032b, e0Var.f5033c, e0Var.d);
        return r1Var;
    }

    @Override // v4.m
    public void q(String str, long j10, long j11, long j12) {
        r4.m mVar = (r4.m) this.f7444b;
        try {
            mVar.g0(new r4.k(new Status(2103, null, null, null), 1));
        } catch (IllegalStateException e5) {
            v4.b bVar = r4.f.f9541k;
            Log.e(bVar.f10671a, bVar.d("Result already set when calling onRequestReplaced", new Object[0]), e5);
        }
        Iterator it = mVar.f9565t.f9547h.iterator();
        while (it.hasNext()) {
            ((z) it.next()).e(str, j10, 2103, j11, j12);
        }
    }

    @Override // z4.k
    public void r(Object obj, Object obj2) {
        v4.w wVar = (v4.w) obj;
        Context context = wVar.f3991c;
        ComplianceOptions complianceOptions = new ComplianceOptions(-1, -1, 0, true);
        v4.d dVar = (v4.d) wVar.p();
        ApiMetadata apiMetadata = new ApiMetadata(complianceOptions);
        o oVar = (o) this.f7444b;
        Parcel parcelL = dVar.l();
        com.google.android.gms.internal.cast.d0.d(parcelL, oVar.f8891j);
        com.google.android.gms.internal.cast.d0.c(parcelL, apiMetadata);
        dVar.y(parcelL, 18);
        v4.d dVar2 = (v4.d) wVar.p();
        ApiMetadata apiMetadata2 = new ApiMetadata(complianceOptions);
        Parcel parcelL2 = dVar2.l();
        com.google.android.gms.internal.cast.d0.c(parcelL2, apiMetadata2);
        dVar2.y(parcelL2, 17);
        ((w5.d) obj2).b(null);
    }

    public AudioAttributesImpl s() {
        return new AudioAttributesImplApi21(((AudioAttributes.Builder) this.f7444b).build());
    }

    @Override // n0.d
    public void setExtras(Bundle bundle) {
        ((ContentInfo.Builder) this.f7444b).setExtras(bundle);
    }

    @Override // n0.d
    public void setFlags(int i6) {
        ((ContentInfo.Builder) this.f7444b).setFlags(i6);
    }

    public MediaQueueItem t() {
        MediaQueueItem mediaQueueItem = (MediaQueueItem) this.f7444b;
        if (mediaQueueItem.f3731a == null) {
            throw new IllegalArgumentException("media cannot be null.");
        }
        if (!Double.isNaN(mediaQueueItem.d) && mediaQueueItem.d < 0.0d) {
            throw new IllegalArgumentException("startTime cannot be negative or NaN.");
        }
        if (Double.isNaN(mediaQueueItem.f3734e)) {
            throw new IllegalArgumentException("playbackDuration cannot be NaN.");
        }
        if (Double.isNaN(mediaQueueItem.f) || mediaQueueItem.f < 0.0d) {
            throw new IllegalArgumentException("preloadTime cannot be negative or Nan.");
        }
        return mediaQueueItem;
    }

    public String toString() {
        switch (this.f7443a) {
            case 15:
                return "ContentInfoCompat{" + ((ContentInfo) this.f7444b) + "}";
            case 25:
                return "ProviderMetadata{ componentName=" + ((ComponentName) this.f7444b).flattenToShortString() + " }";
            default:
                return super.toString();
        }
    }

    public h u(int i6) {
        return null;
    }

    public h v(int i6) {
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0141  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0154  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public k2.a w(m2.i r18, coil.memory.MemoryCache$Key r19, n2.h r20, n2.g r21) {
        /*
            Method dump skipped, instructions count: 344
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: j7.c.w(m2.i, coil.memory.MemoryCache$Key, n2.h, n2.g):k2.a");
    }

    public MemoryCache$Key x(i iVar, Object obj, m2.m mVar, c2.d dVar) {
        String strA;
        Map linkedHashMap;
        iVar.getClass();
        List list = ((c2.l) this.f7444b).f3371g.f3345c;
        int size = list.size();
        int i6 = 0;
        while (true) {
            if (i6 >= size) {
                strA = null;
                break;
            }
            w8.f fVar = (w8.f) list.get(i6);
            i2.b bVar = (i2.b) fVar.f10825a;
            if (((Class) fVar.f10826b).isAssignableFrom(obj.getClass())) {
                j9.i.d(bVar, "null cannot be cast to non-null type coil.key.Keyer<kotlin.Any>");
                strA = bVar.a(obj, mVar);
                if (strA != null) {
                    break;
                }
            }
            i6++;
        }
        if (strA == null) {
            return null;
        }
        Map map = iVar.f8224x.f8244a;
        boolean zIsEmpty = map.isEmpty();
        s sVar = s.f11099a;
        if (zIsEmpty) {
            linkedHashMap = sVar;
        } else {
            linkedHashMap = new LinkedHashMap();
            Iterator it = map.entrySet().iterator();
            if (it.hasNext()) {
                ((Map.Entry) it.next()).getValue().getClass();
                throw new ClassCastException();
            }
        }
        List list2 = iVar.f;
        if (list2.isEmpty() && linkedHashMap.isEmpty()) {
            return new MemoryCache$Key(strA, sVar);
        }
        LinkedHashMap linkedHashMapS = u.s(linkedHashMap);
        if (!list2.isEmpty()) {
            int size2 = list2.size();
            for (int i10 = 0; i10 < size2; i10++) {
                linkedHashMapS.put(a.e.n(i10, "coil#transformation_"), ((p2.a) list2.get(i10)).f8866e);
            }
            linkedHashMapS.put("coil#transformation_size", mVar.d.toString());
        }
        return new MemoryCache$Key(strA, linkedHashMapS);
    }

    public /* synthetic */ c(int i6, boolean z7) {
        this.f7443a = i6;
    }

    public c(MediaInfo mediaInfo) {
        this.f7443a = 22;
        MediaQueueItem mediaQueueItem = new MediaQueueItem(mediaInfo, 0, true, Double.NaN, Double.POSITIVE_INFINITY, 0.0d, null, null);
        if (mediaInfo != null) {
            this.f7444b = mediaQueueItem;
            return;
        }
        throw new IllegalArgumentException("media cannot be null.");
    }

    public c(JSONObject jSONObject) {
        this.f7443a = 22;
        this.f7444b = new MediaQueueItem(jSONObject);
    }

    public c(c2.l lVar, a1.b bVar) {
        this.f7443a = 4;
        this.f7444b = lVar;
    }

    public c(int i6) {
        this.f7443a = i6;
        switch (i6) {
            case 20:
                if (Build.VERSION.SDK_INT >= 26) {
                    this.f7444b = new j(this);
                    break;
                } else {
                    this.f7444b = new o0.i(this);
                    break;
                }
            default:
                this.f7444b = new AudioAttributes.Builder();
                break;
        }
    }

    public c(Uri uri, ClipDescription clipDescription, Uri uri2) {
        this.f7443a = 29;
        if (Build.VERSION.SDK_INT >= 25) {
            this.f7444b = new s0.f(uri, clipDescription, uri2);
        } else {
            this.f7444b = new s.g(uri, clipDescription, uri2, 1);
        }
    }

    public c(ContentInfo contentInfo) {
        this.f7443a = 15;
        contentInfo.getClass();
        this.f7444b = androidx.media3.exoplayer.analytics.b0.m(contentInfo);
    }

    @Override // k2.f
    public void a(int i6) {
    }

    public c(ClipData clipData, int i6) {
        this.f7443a = 14;
        this.f7444b = androidx.media3.exoplayer.analytics.b0.k(clipData, i6);
    }
}
