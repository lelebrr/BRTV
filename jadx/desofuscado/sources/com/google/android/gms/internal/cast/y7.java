package com.google.android.gms.internal.cast;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class y7 {

    /* renamed from: e, reason: collision with root package name */
    public static final y7 f4496e = new y7(new int[0], new Object[0], false);

    /* renamed from: a, reason: collision with root package name */
    public final int[] f4497a;

    /* renamed from: b, reason: collision with root package name */
    public final Object[] f4498b;

    /* renamed from: c, reason: collision with root package name */
    public int f4499c = -1;
    public boolean d;

    public y7(int[] iArr, Object[] objArr, boolean z7) {
        this.f4497a = iArr;
        this.f4498b = objArr;
        this.d = z7;
    }

    public final int a() {
        int i6 = this.f4499c;
        if (i6 != -1) {
            return i6;
        }
        this.f4499c = 0;
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof y7)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return 506991;
    }
}
