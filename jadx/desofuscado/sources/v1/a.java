package v1;

import android.os.Bundle;
import androidx.appcompat.widget.v;
import androidx.lifecycle.a1;
import androidx.lifecycle.n;
import androidx.lifecycle.o0;
import androidx.lifecycle.q0;
import androidx.lifecycle.u;
import androidx.lifecycle.v0;
import androidx.lifecycle.w;
import androidx.lifecycle.z0;
import com.lzy.okgo.cache.CacheEntity;
import ea.q;
import j9.i;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class a implements u {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10653a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f10654b;

    public /* synthetic */ a(int i6, Object obj) {
        this.f10653a = i6;
        this.f10654b = obj;
    }

    /* JADX WARN: Type inference failed for: r6v3, types: [androidx.lifecycle.w, java.lang.Object, v1.e] */
    @Override // androidx.lifecycle.u
    public final void onStateChanged(w wVar, n nVar) throws IllegalAccessException, NoSuchMethodException, InstantiationException, SecurityException, IllegalArgumentException, InvocationTargetException {
        switch (this.f10653a) {
            case 0:
                if (nVar != n.ON_CREATE) {
                    throw new AssertionError("Next event must be ON_CREATE");
                }
                wVar.f().c(this);
                ?? r62 = this.f10654b;
                Bundle bundleC = r62.a().c("androidx.savedstate.Restarter");
                if (bundleC == null) {
                    return;
                }
                ArrayList<String> stringArrayList = bundleC.getStringArrayList("classes_to_restore");
                if (stringArrayList == null) {
                    throw new IllegalStateException("Bundle with restored state for the component \"androidx.savedstate.Restarter\" must contain list of strings by the key \"classes_to_restore\"");
                }
                for (String str : stringArrayList) {
                    try {
                        Class<? extends U> clsAsSubclass = Class.forName(str, false, a.class.getClassLoader()).asSubclass(c.class);
                        i.e(clsAsSubclass, "{\n                Class.…class.java)\n            }");
                        try {
                            Constructor declaredConstructor = clsAsSubclass.getDeclaredConstructor(null);
                            declaredConstructor.setAccessible(true);
                            try {
                                Object objNewInstance = declaredConstructor.newInstance(null);
                                i.e(objNewInstance, "{\n                constr…wInstance()\n            }");
                                z0 z0VarE = ((a1) r62).e();
                                v vVarA = r62.a();
                                z0VarE.getClass();
                                LinkedHashMap linkedHashMap = z0VarE.f2025a;
                                Iterator it = new HashSet(linkedHashMap.keySet()).iterator();
                                while (it.hasNext()) {
                                    String str2 = (String) it.next();
                                    i.f(str2, CacheEntity.KEY);
                                    v0 v0Var = (v0) linkedHashMap.get(str2);
                                    i.c(v0Var);
                                    o0.a(v0Var, vVarA, r62.f());
                                }
                                if (!new HashSet(linkedHashMap.keySet()).isEmpty()) {
                                    vVarA.g();
                                }
                            } catch (Exception e5) {
                                throw new RuntimeException(q.p("Failed to instantiate ", str), e5);
                            }
                        } catch (NoSuchMethodException e10) {
                            throw new IllegalStateException("Class " + clsAsSubclass.getSimpleName() + " must have default constructor in order to be automatically recreated", e10);
                        }
                    } catch (ClassNotFoundException e11) {
                        throw new RuntimeException(a.e.r("Class ", str, " wasn't found"), e11);
                    }
                }
                return;
            case 1:
                new HashMap();
                androidx.lifecycle.i[] iVarArr = (androidx.lifecycle.i[]) this.f10654b;
                if (iVarArr.length > 0) {
                    androidx.lifecycle.i iVar = iVarArr[0];
                    throw null;
                }
                if (iVarArr.length <= 0) {
                    return;
                }
                androidx.lifecycle.i iVar2 = iVarArr[0];
                throw null;
            default:
                if (nVar != n.ON_CREATE) {
                    throw new IllegalStateException(("Next event must be ON_CREATE, it was " + nVar).toString());
                }
                wVar.f().c(this);
                ((q0) this.f10654b).a();
                return;
        }
    }
}
