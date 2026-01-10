package n7;

import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import l7.r;
import l7.s;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class f implements s, Cloneable {

    /* renamed from: c, reason: collision with root package name */
    public static final f f8476c;

    /* renamed from: a, reason: collision with root package name */
    public List f8477a;

    /* renamed from: b, reason: collision with root package name */
    public List f8478b;

    static {
        f fVar = new f();
        fVar.f8477a = Collections.emptyList();
        fVar.f8478b = Collections.emptyList();
        f8476c = fVar;
    }

    public static boolean c(Class cls) {
        return !Enum.class.isAssignableFrom(cls) && (cls.getModifiers() & 8) == 0 && (cls.isAnonymousClass() || cls.isLocalClass());
    }

    @Override // l7.s
    public final r a(l7.k kVar, s7.a aVar) {
        boolean z7;
        boolean z10;
        boolean zC = c(aVar.f9827a);
        if (zC) {
            z7 = true;
        } else {
            b(true);
            z7 = false;
        }
        if (zC) {
            z10 = true;
        } else {
            b(false);
            z10 = false;
        }
        if (z7 || z10) {
            return new e(this, z10, z7, kVar, aVar);
        }
        return null;
    }

    public final void b(boolean z7) {
        Iterator it = (z7 ? this.f8477a : this.f8478b).iterator();
        if (it.hasNext()) {
            throw a.e.l(it);
        }
    }

    public final Object clone() {
        try {
            return (f) super.clone();
        } catch (CloneNotSupportedException e5) {
            throw new AssertionError(e5);
        }
    }
}
