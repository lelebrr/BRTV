package q1;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Messenger;
import android.util.SparseArray;
import androidx.mediarouter.media.MediaRouteProviderService;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class g0 extends j0 {

    /* renamed from: i, reason: collision with root package name */
    public final p.e f8980i;

    /* renamed from: j, reason: collision with root package name */
    public final Handler f8981j;

    /* renamed from: k, reason: collision with root package name */
    public final Map f8982k;

    /* renamed from: l, reason: collision with root package name */
    public final /* synthetic */ h0 f8983l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g0(h0 h0Var, Messenger messenger, int i6, String str) {
        super(h0Var, messenger, i6, str);
        this.f8983l = h0Var;
        this.f8980i = new p.e(0);
        this.f8981j = new Handler(Looper.getMainLooper());
        if (i6 < 4) {
            this.f8982k = new p.e(0);
        } else {
            this.f8982k = Collections.emptyMap();
        }
    }

    @Override // q1.j0
    public final Bundle a(androidx.appcompat.app.r0 r0Var) {
        Map map = this.f8982k;
        boolean zIsEmpty = map.isEmpty();
        int i6 = this.f9023b;
        if (zIsEmpty) {
            return MediaRouteProviderService.a(r0Var, i6);
        }
        ArrayList arrayList = new ArrayList();
        for (w wVar : (List) r0Var.f353c) {
            if (map.containsKey(wVar.f())) {
                new ArrayList();
                new ArrayList();
                new HashSet();
                Bundle bundle = new Bundle(wVar.f9170a);
                ArrayList arrayListD = wVar.d();
                ArrayList arrayListB = wVar.b();
                HashSet hashSetA = wVar.a();
                bundle.putBoolean("enabled", false);
                bundle.putParcelableArrayList("controlFilters", new ArrayList<>(arrayListB));
                bundle.putStringArrayList("groupMemberIds", new ArrayList<>(arrayListD));
                bundle.putStringArrayList("allowedPackages", new ArrayList<>(hashSetA));
                arrayList.add(new w(bundle));
            } else {
                arrayList.add(wVar);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        arrayList2.addAll((List) r0Var.f353c);
        arrayList2.clear();
        arrayList2.addAll(arrayList);
        return MediaRouteProviderService.a(new androidx.appcompat.app.r0(arrayList2, r0Var.f352b), i6);
    }

    @Override // q1.j0
    public final Bundle b(String str, d0 d0Var, int i6) {
        Bundle bundleB = super.b(str, d0Var, i6);
        if (bundleB != null && this.f9024c != null) {
            this.f8983l.f9010i.e(this, (c0) this.f.get(i6), i6, this.f9024c, str);
        }
        return bundleB;
    }

    @Override // q1.j0
    public final boolean c(String str, String str2, d0 d0Var, int i6) {
        p.e eVar = this.f8980i;
        c0 c0Var = (c0) eVar.get(str);
        SparseArray sparseArray = this.f;
        if (c0Var != null) {
            sparseArray.put(i6, c0Var);
            return true;
        }
        boolean zC = super.c(str, str2, d0Var, i6);
        if (str2 == null && zC && this.f9024c != null) {
            this.f8983l.f9010i.e(this, (c0) sparseArray.get(i6), i6, this.f9024c, str);
        }
        if (zC) {
            eVar.put(str, (c0) sparseArray.get(i6));
        }
        return zC;
    }

    @Override // q1.j0
    public final void d() {
        SparseArray sparseArray = this.f;
        int size = sparseArray.size();
        for (int i6 = 0; i6 < size; i6++) {
            this.f8983l.f9010i.f(sparseArray.keyAt(i6));
        }
        this.f8980i.clear();
        super.d();
    }

    @Override // q1.j0
    public final boolean f(int i6) {
        androidx.appcompat.app.r0 r0Var;
        h0 h0Var = this.f8983l;
        h0Var.f9010i.f(i6);
        c0 c0Var = (c0) this.f.get(i6);
        if (c0Var != null) {
            p.e eVar = this.f8980i;
            Iterator it = ((d7.g0) eVar.entrySet()).iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry entry = (Map.Entry) it.next();
                if (entry.getValue() == c0Var) {
                    eVar.remove(entry.getKey());
                    break;
                }
            }
        }
        Map map = this.f8982k;
        Iterator it2 = map.entrySet().iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            Map.Entry entry2 = (Map.Entry) it2.next();
            if (((Integer) entry2.getValue()).intValue() == i6) {
                if (map.remove((String) entry2.getKey()) != null && (r0Var = h0Var.f9030a.d.f8960g) != null) {
                    MediaRouteProviderService.e(this.f9022a, 5, 0, 0, a(r0Var), null);
                }
            }
        }
        return super.f(i6);
    }

    @Override // q1.j0
    public final void g(b0 b0Var, w wVar, ArrayList arrayList) {
        super.g(b0Var, wVar, arrayList);
        v vVar = this.f8983l.f9010i;
        if (vVar != null) {
            vVar.g(b0Var, wVar, arrayList);
        }
    }
}
