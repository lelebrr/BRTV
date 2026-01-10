package com.tencent.bugly.proguard;

import java.io.UnsupportedEncodingException;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class bs extends m implements Cloneable {

    /* renamed from: a, reason: collision with root package name */
    public String f5851a = "";

    /* renamed from: b, reason: collision with root package name */
    public String f5852b = "";

    @Override // com.tencent.bugly.proguard.m
    public final void a(StringBuilder sb, int i6) {
    }

    @Override // com.tencent.bugly.proguard.m
    public final void a(l lVar) throws UnsupportedEncodingException {
        lVar.a(this.f5851a, 0);
        lVar.a(this.f5852b, 1);
    }

    @Override // com.tencent.bugly.proguard.m
    public final void a(k kVar) {
        this.f5851a = kVar.b(0, true);
        this.f5852b = kVar.b(1, true);
    }
}
