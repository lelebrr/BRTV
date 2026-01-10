package j8;

import com.bumptech.glide.d;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import p.g;
import q8.m;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a implements b {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7456a;

    /* renamed from: b, reason: collision with root package name */
    public volatile boolean f7457b;

    /* renamed from: c, reason: collision with root package name */
    public Object f7458c;

    public /* synthetic */ a(int i6) {
        this.f7456a = i6;
    }

    private final boolean c(b bVar) {
        if (!this.f7457b) {
            synchronized (this) {
                try {
                    if (!this.f7457b) {
                        g gVar = (g) this.f7458c;
                        if (gVar == null) {
                            gVar = new g();
                            int iNumberOfLeadingZeros = 1 << (32 - Integer.numberOfLeadingZeros(15));
                            gVar.f8841a = iNumberOfLeadingZeros - 1;
                            gVar.f8843c = (int) (0.75f * iNumberOfLeadingZeros);
                            gVar.d = new Object[iNumberOfLeadingZeros];
                            this.f7458c = gVar;
                        }
                        gVar.a(bVar);
                        return true;
                    }
                } finally {
                }
            }
        }
        bVar.a();
        return false;
    }

    private final boolean f(b bVar) {
        Object obj;
        if (this.f7457b) {
            return false;
        }
        synchronized (this) {
            try {
                if (this.f7457b) {
                    return false;
                }
                g gVar = (g) this.f7458c;
                if (gVar != null) {
                    Object[] objArr = gVar.d;
                    int i6 = gVar.f8841a;
                    int iHashCode = bVar.hashCode() * (-1640531527);
                    int i10 = (iHashCode ^ (iHashCode >>> 16)) & i6;
                    Object obj2 = objArr[i10];
                    if (obj2 != null) {
                        if (obj2.equals(bVar)) {
                            gVar.c(objArr, i10, i6);
                        } else {
                            do {
                                i10 = (i10 + 1) & i6;
                                obj = objArr[i10];
                                if (obj == null) {
                                }
                            } while (!obj.equals(bVar));
                            gVar.c(objArr, i10, i6);
                        }
                        return true;
                    }
                }
                return false;
            } finally {
            }
        }
    }

    private final void g() {
        if (this.f7457b) {
            return;
        }
        synchronized (this) {
            try {
                if (this.f7457b) {
                    return;
                }
                this.f7457b = true;
                g gVar = (g) this.f7458c;
                ArrayList arrayList = null;
                this.f7458c = null;
                if (gVar == null) {
                    return;
                }
                for (Object obj : gVar.d) {
                    if (obj instanceof b) {
                        try {
                            ((b) obj).a();
                        } catch (Throwable th) {
                            d.G(th);
                            if (arrayList == null) {
                                arrayList = new ArrayList();
                            }
                            arrayList.add(th);
                        }
                    }
                }
                if (arrayList != null) {
                    if (arrayList.size() != 1) {
                        throw new k8.b(arrayList);
                    }
                    throw r8.a.b((Throwable) arrayList.get(0));
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // j8.b
    public final void a() {
        switch (this.f7456a) {
            case 0:
                g();
                return;
            default:
                if (this.f7457b) {
                    return;
                }
                synchronized (this) {
                    try {
                        if (!this.f7457b) {
                            this.f7457b = true;
                            LinkedList linkedList = (LinkedList) this.f7458c;
                            ArrayList arrayList = null;
                            this.f7458c = null;
                            if (linkedList != null) {
                                Iterator it = linkedList.iterator();
                                while (it.hasNext()) {
                                    try {
                                        ((b) it.next()).a();
                                    } catch (Throwable th) {
                                        d.G(th);
                                        if (arrayList == null) {
                                            arrayList = new ArrayList();
                                        }
                                        arrayList.add(th);
                                    }
                                }
                                if (arrayList != null) {
                                    if (arrayList.size() != 1) {
                                        throw new k8.b(arrayList);
                                    }
                                    throw r8.a.b((Throwable) arrayList.get(0));
                                }
                            }
                        }
                    } finally {
                    }
                }
                return;
        }
    }

    public final boolean b(b bVar) {
        switch (this.f7456a) {
            case 0:
                return c(bVar);
            default:
                if (!this.f7457b) {
                    synchronized (this) {
                        try {
                            if (!this.f7457b) {
                                LinkedList linkedList = (LinkedList) this.f7458c;
                                if (linkedList == null) {
                                    linkedList = new LinkedList();
                                    this.f7458c = linkedList;
                                }
                                linkedList.add(bVar);
                                return true;
                            }
                        } finally {
                        }
                    }
                }
                bVar.a();
                return false;
        }
    }

    public final boolean d(b bVar) {
        switch (this.f7456a) {
            case 0:
                return f(bVar);
            default:
                boolean z7 = false;
                if (!this.f7457b) {
                    synchronized (this) {
                        try {
                            if (!this.f7457b) {
                                LinkedList linkedList = (LinkedList) this.f7458c;
                                if (linkedList != null && linkedList.remove(bVar)) {
                                    z7 = true;
                                }
                            }
                        } finally {
                        }
                    }
                }
                return z7;
        }
    }

    public final boolean h(b bVar) {
        switch (this.f7456a) {
            case 0:
                if (d(bVar)) {
                    bVar.a();
                    break;
                }
                break;
            default:
                if (d(bVar)) {
                    ((m) bVar).a();
                    break;
                }
                break;
        }
        return true;
    }
}
