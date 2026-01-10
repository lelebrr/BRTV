package com.google.android.gms.internal.cast;

import java.util.Iterator;
import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class w1 extends s1 {
    public final transient z1 d;

    /* renamed from: e, reason: collision with root package name */
    public final transient Object[] f4449e;
    public final transient int f;

    public w1(z1 z1Var, Object[] objArr, int i6) {
        this.d = z1Var;
        this.f4449e = objArr;
        this.f = i6;
    }

    @Override // com.google.android.gms.internal.cast.n1
    public final int c(Object[] objArr) {
        q1 q1VarI = this.f4410b;
        if (q1VarI == null) {
            q1VarI = i();
            this.f4410b = q1VarI;
        }
        return q1VarI.c(objArr);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            if (value != null && value.equals(this.d.get(key))) {
                return true;
            }
        }
        return false;
    }

    public final q1 i() {
        return new v1(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        q1 q1VarI = this.f4410b;
        if (q1VarI == null) {
            q1VarI = i();
            this.f4410b = q1VarI;
        }
        return q1VarI.listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f;
    }
}
