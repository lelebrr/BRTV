package com.tencent.bugly.proguard;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class ar implements Comparable<ar> {

    /* renamed from: a, reason: collision with root package name */
    public long f5677a = -1;

    /* renamed from: b, reason: collision with root package name */
    public long f5678b = -1;

    /* renamed from: c, reason: collision with root package name */
    public String f5679c = null;
    public boolean d = false;

    /* renamed from: e, reason: collision with root package name */
    public boolean f5680e = false;
    public int f = 0;

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(ar arVar) {
        ar arVar2 = arVar;
        if (arVar2 == null) {
            return 1;
        }
        long j10 = this.f5678b - arVar2.f5678b;
        if (j10 <= 0) {
            return j10 < 0 ? -1 : 0;
        }
        return 1;
    }
}
