package com.bumptech.glide;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class p implements Cloneable {

    /* renamed from: a, reason: collision with root package name */
    public p3.d f3579a = p3.b.f8868b;

    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final p clone() {
        try {
            return (p) super.clone();
        } catch (CloneNotSupportedException e5) {
            throw new RuntimeException(e5);
        }
    }

    public boolean equals(Object obj) {
        if (obj instanceof p) {
            return r3.n.b(this.f3579a, ((p) obj).f3579a);
        }
        return false;
    }

    public int hashCode() {
        p3.d dVar = this.f3579a;
        if (dVar != null) {
            return dVar.hashCode();
        }
        return 0;
    }
}
