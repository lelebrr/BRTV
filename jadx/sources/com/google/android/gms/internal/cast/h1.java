package com.google.android.gms.internal.cast;

import com.google.android.gms.common.api.Status;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class h1 implements y4.l {

    /* renamed from: a, reason: collision with root package name */
    public final zzfk f4173a;

    public h1(zzfk zzfkVar) {
        this.f4173a = zzfkVar;
    }

    @Override // y4.l
    public final Status h() {
        return Status.f3923e;
    }

    public final String toString() {
        zzfk zzfkVar = this.f4173a;
        b5.l.e(zzfkVar);
        return "OptInOptionsResultImpl[" + (zzfkVar.f4522a == 1) + "]";
    }
}
