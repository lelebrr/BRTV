package ua;

import java.util.ArrayList;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class i {
    public static final ArrayList d = new ArrayList();

    /* renamed from: a, reason: collision with root package name */
    public Object f10492a;

    /* renamed from: b, reason: collision with root package name */
    public n f10493b;

    /* renamed from: c, reason: collision with root package name */
    public i f10494c;

    public static i a(n nVar, Object obj) {
        ArrayList arrayList = d;
        synchronized (arrayList) {
            try {
                int size = arrayList.size();
                if (size <= 0) {
                    i iVar = new i();
                    iVar.f10492a = obj;
                    iVar.f10493b = nVar;
                    return iVar;
                }
                i iVar2 = (i) arrayList.remove(size - 1);
                iVar2.f10492a = obj;
                iVar2.f10493b = nVar;
                iVar2.f10494c = null;
                return iVar2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
