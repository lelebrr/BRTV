package com.tencent.bugly.proguard;

import java.io.UnsupportedEncodingException;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class bn extends m implements Cloneable {
    static byte[] d;

    /* renamed from: a, reason: collision with root package name */
    public byte f5790a;

    /* renamed from: b, reason: collision with root package name */
    public String f5791b;

    /* renamed from: c, reason: collision with root package name */
    public byte[] f5792c;

    public bn() {
        this.f5790a = (byte) 0;
        this.f5791b = "";
        this.f5792c = null;
    }

    @Override // com.tencent.bugly.proguard.m
    public final void a(StringBuilder sb, int i6) {
    }

    @Override // com.tencent.bugly.proguard.m
    public final void a(l lVar) throws UnsupportedEncodingException {
        lVar.a(this.f5790a, 0);
        lVar.a(this.f5791b, 1);
        byte[] bArr = this.f5792c;
        if (bArr != null) {
            lVar.a(bArr, 2);
        }
    }

    public bn(byte b8, String str, byte[] bArr) {
        this.f5790a = b8;
        this.f5791b = str;
        this.f5792c = bArr;
    }

    @Override // com.tencent.bugly.proguard.m
    public final void a(k kVar) {
        this.f5790a = kVar.a(this.f5790a, 0, true);
        this.f5791b = kVar.b(1, true);
        if (d == null) {
            d = new byte[]{0};
        }
        this.f5792c = kVar.c(2, false);
    }
}
