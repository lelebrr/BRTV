package j3;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Iterator;
import q1.l0;
import v2.k;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public ArrayList f7432a;

    public c(int i6) {
        switch (i6) {
            case 1:
                this.f7432a = new ArrayList();
                break;
            case 2:
                this.f7432a = new ArrayList();
                break;
            case 3:
                this.f7432a = new ArrayList();
                break;
            default:
                this.f7432a = new ArrayList();
                break;
        }
    }

    public void a(ArrayList arrayList) {
        if (arrayList.isEmpty()) {
            return;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            if (str == null) {
                throw new IllegalArgumentException("category must not be null");
            }
            if (this.f7432a == null) {
                this.f7432a = new ArrayList();
            }
            if (!this.f7432a.contains(str)) {
                this.f7432a.add(str);
            }
        }
    }

    public l0 b() {
        if (this.f7432a == null) {
            return l0.f9055c;
        }
        Bundle bundle = new Bundle();
        bundle.putStringArrayList("controlCategories", this.f7432a);
        return new l0(bundle, this.f7432a);
    }

    public synchronized a c(Class cls, Class cls2) {
        if (cls2.isAssignableFrom(cls)) {
            return d.f7433b;
        }
        Iterator it = this.f7432a.iterator();
        while (it.hasNext()) {
            b bVar = (b) it.next();
            if (bVar.f7429a.isAssignableFrom(cls) && cls2.isAssignableFrom(bVar.f7430b)) {
                return bVar.f7431c;
            }
        }
        throw new IllegalArgumentException("No transcoder registered to transcode from " + cls + " to " + cls2);
    }

    public synchronized k d(Class cls) {
        int size = this.f7432a.size();
        for (int i6 = 0; i6 < size; i6++) {
            m3.d dVar = (m3.d) this.f7432a.get(i6);
            if (dVar.f8269a.isAssignableFrom(cls)) {
                return dVar.f8270b;
            }
        }
        return null;
    }

    public synchronized ArrayList e(Class cls, Class cls2) {
        ArrayList arrayList = new ArrayList();
        if (cls2.isAssignableFrom(cls)) {
            arrayList.add(cls2);
            return arrayList;
        }
        Iterator it = this.f7432a.iterator();
        while (it.hasNext()) {
            b bVar = (b) it.next();
            if ((bVar.f7429a.isAssignableFrom(cls) && cls2.isAssignableFrom(bVar.f7430b)) && !arrayList.contains(bVar.f7430b)) {
                arrayList.add(bVar.f7430b);
            }
        }
        return arrayList;
    }

    public c(l0 l0Var) {
        if (l0Var != null) {
            l0Var.a();
            if (l0Var.f9057b.isEmpty()) {
                return;
            }
            this.f7432a = new ArrayList(l0Var.f9057b);
            return;
        }
        throw new IllegalArgumentException("selector must not be null");
    }
}
