package androidx.lifecycle;

import java.io.Closeable;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class z0 {

    /* renamed from: a, reason: collision with root package name */
    public final LinkedHashMap f2025a = new LinkedHashMap();

    public final void a() {
        for (v0 v0Var : this.f2025a.values()) {
            v0Var.f2009c = true;
            HashMap map = v0Var.f2007a;
            if (map != null) {
                synchronized (map) {
                    try {
                        Iterator it = v0Var.f2007a.values().iterator();
                        while (it.hasNext()) {
                            v0.a(it.next());
                        }
                    } finally {
                    }
                }
            }
            LinkedHashSet linkedHashSet = v0Var.f2008b;
            if (linkedHashSet != null) {
                synchronized (linkedHashSet) {
                    try {
                        Iterator it2 = v0Var.f2008b.iterator();
                        while (it2.hasNext()) {
                            v0.a((Closeable) it2.next());
                        }
                    } finally {
                    }
                }
                v0Var.f2008b.clear();
            }
            v0Var.b();
        }
        this.f2025a.clear();
    }
}
