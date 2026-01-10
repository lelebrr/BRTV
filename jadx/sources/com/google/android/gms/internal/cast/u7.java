package com.google.android.gms.internal.cast;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class u7 {

    /* renamed from: a, reason: collision with root package name */
    public final r6 f4437a;

    /* renamed from: b, reason: collision with root package name */
    public final String f4438b;

    /* renamed from: c, reason: collision with root package name */
    public final Object[] f4439c;
    public final int d;

    public u7(r6 r6Var, String str, Object[] objArr) {
        this.f4437a = r6Var;
        this.f4438b = str;
        this.f4439c = objArr;
        char cCharAt = str.charAt(0);
        if (cCharAt < 55296) {
            this.d = cCharAt;
            return;
        }
        int i6 = cCharAt & 8191;
        int i10 = 13;
        int i11 = 1;
        while (true) {
            int i12 = i11 + 1;
            char cCharAt2 = str.charAt(i11);
            if (cCharAt2 < 55296) {
                this.d = i6 | (cCharAt2 << i10);
                return;
            } else {
                i6 |= (cCharAt2 & 8191) << i10;
                i10 += 13;
                i11 = i12;
            }
        }
    }

    public final r6 a() {
        return this.f4437a;
    }

    public final int b() {
        int i6 = this.d;
        if ((i6 & 1) != 0) {
            return 1;
        }
        return (i6 & 4) == 4 ? 3 : 2;
    }

    public final String c() {
        return this.f4438b;
    }

    public final Object[] d() {
        return this.f4439c;
    }
}
