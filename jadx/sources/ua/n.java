package ua;

import org.bitspark.android.Spark;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class n {

    /* renamed from: a, reason: collision with root package name */
    public final Spark f10504a;

    /* renamed from: b, reason: collision with root package name */
    public final l f10505b;

    /* renamed from: c, reason: collision with root package name */
    public volatile boolean f10506c = true;

    public n(Spark spark, l lVar) {
        this.f10504a = spark;
        this.f10505b = lVar;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof n)) {
            return false;
        }
        n nVar = (n) obj;
        return this.f10504a == nVar.f10504a && this.f10505b.equals(nVar.f10505b);
    }

    public final int hashCode() {
        return this.f10505b.f.hashCode() + this.f10504a.hashCode();
    }
}
