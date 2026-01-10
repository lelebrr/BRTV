package androidx.databinding;

import android.util.Log;
import android.view.View;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import w0.b;
import w0.e;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class MergedDataBinderMapper extends b {

    /* renamed from: a, reason: collision with root package name */
    public final HashSet f1321a = new HashSet();

    /* renamed from: b, reason: collision with root package name */
    public final CopyOnWriteArrayList f1322b = new CopyOnWriteArrayList();

    /* renamed from: c, reason: collision with root package name */
    public final CopyOnWriteArrayList f1323c = new CopyOnWriteArrayList();

    @Override // w0.b
    public final e b(int i6, View view) throws ClassNotFoundException {
        Iterator it = this.f1322b.iterator();
        while (it.hasNext()) {
            e eVarB = ((b) it.next()).b(i6, view);
            if (eVarB != null) {
                return eVarB;
            }
        }
        CopyOnWriteArrayList copyOnWriteArrayList = this.f1323c;
        Iterator it2 = copyOnWriteArrayList.iterator();
        boolean z7 = false;
        while (it2.hasNext()) {
            String str = (String) it2.next();
            try {
                Class<?> cls = Class.forName(str);
                if (b.class.isAssignableFrom(cls)) {
                    c((b) cls.newInstance());
                    copyOnWriteArrayList.remove(str);
                    z7 = true;
                }
            } catch (ClassNotFoundException unused) {
            } catch (IllegalAccessException e5) {
                Log.e("MergedDataBinderMapper", "unable to add feature mapper for " + str, e5);
            } catch (InstantiationException e10) {
                Log.e("MergedDataBinderMapper", "unable to add feature mapper for " + str, e10);
            }
        }
        if (z7) {
            return b(i6, view);
        }
        return null;
    }

    public final void c(b bVar) {
        if (this.f1321a.add(bVar.getClass())) {
            this.f1322b.add(bVar);
            Iterator it = bVar.a().iterator();
            while (it.hasNext()) {
                c((b) it.next());
            }
        }
    }
}
