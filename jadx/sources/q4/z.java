package q4;

import android.util.Log;
import android.util.SparseIntArray;
import com.google.android.gms.cast.MediaQueueItem;
import com.google.android.gms.internal.cast.c0;
import com.google.android.gms.internal.cast.u4;
import com.google.android.gms.internal.cast.x7;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class z {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f9234a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f9235b;

    public /* synthetic */ z(int i6, Object obj) {
        this.f9234a = i6;
        this.f9235b = obj;
    }

    public void e(String str, long j10, int i6, long j11, long j12) {
        switch (this.f9234a) {
            case 0:
                u4 u4Var = ((b) this.f9235b).f9220l;
                if (u4Var != null) {
                    x7 x7VarL = u4Var.f4433a.l();
                    com.google.android.gms.internal.cast.b0 b0Var = new com.google.android.gms.internal.cast.b0(str);
                    b0Var.f4113b = j10;
                    b0Var.f4114c = i6;
                    b0Var.d = j11;
                    b0Var.f4115e = j12;
                    c0 c0Var = new c0(b0Var);
                    c0Var.f = x7VarL.f4475h;
                    x7VarL.d.add(c0Var);
                    break;
                }
                break;
        }
    }

    public void g(int[] iArr) {
        switch (this.f9234a) {
            case 1:
                ArrayList arrayListD = v4.a.d(iArr);
                r4.a aVar = (r4.a) this.f9235b;
                if (!aVar.d.equals(arrayListD)) {
                    aVar.h();
                    aVar.f.evictAll();
                    aVar.f9517g.clear();
                    aVar.d = arrayListD;
                    r4.a.b(aVar);
                    aVar.g();
                    aVar.f();
                    break;
                }
                break;
        }
    }

    public void i(int[] iArr, int i6) {
        int size;
        switch (this.f9234a) {
            case 1:
                if (i6 == 0) {
                    size = ((r4.a) this.f9235b).d.size();
                } else {
                    r4.a aVar = (r4.a) this.f9235b;
                    size = aVar.f9516e.get(i6, -1);
                    if (size == -1) {
                        aVar.d();
                        return;
                    }
                }
                r4.a aVar2 = (r4.a) this.f9235b;
                aVar2.h();
                aVar2.d.addAll(size, v4.a.d(iArr));
                r4.a.b(aVar2);
                Set set = aVar2.f9523m;
                synchronized (set) {
                    Iterator it = set.iterator();
                    if (it.hasNext()) {
                        if (it.next() != null) {
                            throw new ClassCastException();
                        }
                        throw null;
                    }
                }
                aVar2.f();
                return;
            default:
                return;
        }
    }

    public void k(MediaQueueItem[] mediaQueueItemArr) {
        switch (this.f9234a) {
            case 1:
                HashSet hashSet = new HashSet();
                r4.a aVar = (r4.a) this.f9235b;
                ArrayList arrayList = aVar.f9517g;
                arrayList.clear();
                int i6 = 0;
                while (true) {
                    int length = mediaQueueItemArr.length;
                    SparseIntArray sparseIntArray = aVar.f9516e;
                    if (i6 >= length) {
                        Iterator it = arrayList.iterator();
                        while (it.hasNext()) {
                            int i10 = sparseIntArray.get(((Integer) it.next()).intValue(), -1);
                            if (i10 != -1) {
                                hashSet.add(Integer.valueOf(i10));
                            }
                        }
                        arrayList.clear();
                        ArrayList arrayList2 = new ArrayList(hashSet);
                        Collections.sort(arrayList2);
                        aVar.h();
                        v4.a.f(arrayList2);
                        r4.a.a(aVar);
                        aVar.f();
                        break;
                    } else {
                        MediaQueueItem mediaQueueItem = mediaQueueItemArr[i6];
                        int i11 = mediaQueueItem.f3732b;
                        aVar.f.put(Integer.valueOf(i11), mediaQueueItem);
                        int i12 = sparseIntArray.get(i11, -1);
                        if (i12 == -1) {
                            aVar.d();
                            break;
                        } else {
                            hashSet.add(Integer.valueOf(i12));
                            i6++;
                        }
                    }
                }
        }
    }

    public void m(int[] iArr) {
        switch (this.f9234a) {
            case 1:
                ArrayList arrayList = new ArrayList();
                for (int i6 : iArr) {
                    r4.a aVar = (r4.a) this.f9235b;
                    aVar.f.remove(Integer.valueOf(i6));
                    SparseIntArray sparseIntArray = aVar.f9516e;
                    int i10 = sparseIntArray.get(i6, -1);
                    if (i10 == -1) {
                        aVar.d();
                        return;
                    } else {
                        sparseIntArray.delete(i6);
                        arrayList.add(Integer.valueOf(i10));
                    }
                }
                if (arrayList.isEmpty()) {
                    return;
                }
                Collections.sort(arrayList);
                r4.a aVar2 = (r4.a) this.f9235b;
                aVar2.h();
                aVar2.d.removeAll(v4.a.d(iArr));
                r4.a.b(aVar2);
                v4.a.f(arrayList);
                Set set = aVar2.f9523m;
                synchronized (set) {
                    Iterator it = set.iterator();
                    if (it.hasNext()) {
                        if (it.next() != null) {
                            throw new ClassCastException();
                        }
                        throw null;
                    }
                }
                aVar2.f();
                return;
            default:
                return;
        }
    }

    public void o(ArrayList arrayList, ArrayList arrayList2, int i6) {
        switch (this.f9234a) {
            case 1:
                ArrayList arrayList3 = new ArrayList();
                if (i6 == 0) {
                    ((r4.a) this.f9235b).d.size();
                } else if (arrayList2.isEmpty()) {
                    v4.b bVar = ((r4.a) this.f9235b).f9513a;
                    Log.w(bVar.f10671a, bVar.d("Received a Queue Reordered message with an empty reordered items IDs list.", new Object[0]));
                } else {
                    SparseIntArray sparseIntArray = ((r4.a) this.f9235b).f9516e;
                    if (sparseIntArray.get(i6, -1) == -1) {
                        sparseIntArray.get(((Integer) arrayList2.get(0)).intValue(), -1);
                    }
                }
                Iterator it = arrayList2.iterator();
                while (it.hasNext()) {
                    int iIntValue = ((Integer) it.next()).intValue();
                    r4.a aVar = (r4.a) this.f9235b;
                    int i10 = aVar.f9516e.get(iIntValue, -1);
                    if (i10 == -1) {
                        aVar.d();
                        return;
                    }
                    arrayList3.add(Integer.valueOf(i10));
                }
                r4.a aVar2 = (r4.a) this.f9235b;
                aVar2.h();
                aVar2.d = arrayList;
                r4.a.b(aVar2);
                Set set = aVar2.f9523m;
                synchronized (set) {
                    Iterator it2 = set.iterator();
                    if (it2.hasNext()) {
                        if (it2.next() != null) {
                            throw new ClassCastException();
                        }
                        throw null;
                    }
                }
                aVar2.f();
                return;
            default:
                return;
        }
    }

    public void q(int[] iArr) {
        switch (this.f9234a) {
            case 1:
                ArrayList arrayList = new ArrayList();
                int i6 = 0;
                while (true) {
                    int length = iArr.length;
                    r4.a aVar = (r4.a) this.f9235b;
                    if (i6 >= length) {
                        Collections.sort(arrayList);
                        aVar.h();
                        v4.a.f(arrayList);
                        r4.a.a(aVar);
                        aVar.f();
                        break;
                    } else {
                        int i10 = iArr[i6];
                        aVar.f.remove(Integer.valueOf(i10));
                        int i11 = aVar.f9516e.get(i10, -1);
                        if (i11 == -1) {
                            aVar.d();
                            break;
                        } else {
                            arrayList.add(Integer.valueOf(i11));
                            i6++;
                        }
                    }
                }
        }
    }

    public final void a() {
    }

    public final void b() {
    }

    public final void c() {
    }

    public final void d() {
    }

    public final void s() {
    }

    public final void h(int[] iArr) {
    }

    public final void l(MediaQueueItem[] mediaQueueItemArr) {
    }

    public final void n(int[] iArr) {
    }

    public final void r(int[] iArr) {
    }

    public final void j(int[] iArr, int i6) {
    }

    public final void p(ArrayList arrayList, ArrayList arrayList2, int i6) {
    }

    public final void f(String str, long j10, int i6, long j11, long j12) {
    }
}
