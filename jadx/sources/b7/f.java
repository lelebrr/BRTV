package b7;

import java.io.Serializable;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class f extends h implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    public static final f f3300a = new f();

    @Override // b7.h
    public final boolean a(Object obj, Object obj2) {
        return obj.equals(obj2);
    }

    @Override // b7.h
    public final int b(Object obj) {
        return obj.hashCode();
    }
}
