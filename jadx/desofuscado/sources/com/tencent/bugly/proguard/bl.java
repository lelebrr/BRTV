package com.tencent.bugly.proguard;

import java.io.UnsupportedEncodingException;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class bl extends m implements Cloneable {

    /* renamed from: a, reason: collision with root package name */
    public String f5783a = "";

    /* renamed from: b, reason: collision with root package name */
    public String f5784b = "";

    /* renamed from: c, reason: collision with root package name */
    public String f5785c = "";
    public String d = "";

    /* renamed from: e, reason: collision with root package name */
    public String f5786e = "";

    @Override // com.tencent.bugly.proguard.m
    public final void a(StringBuilder sb, int i6) {
    }

    @Override // com.tencent.bugly.proguard.m
    public final void a(l lVar) throws UnsupportedEncodingException {
        lVar.a(this.f5783a, 0);
        String str = this.f5784b;
        if (str != null) {
            lVar.a(str, 1);
        }
        String str2 = this.f5785c;
        if (str2 != null) {
            lVar.a(str2, 2);
        }
        String str3 = this.d;
        if (str3 != null) {
            lVar.a(str3, 3);
        }
        String str4 = this.f5786e;
        if (str4 != null) {
            lVar.a(str4, 4);
        }
    }

    @Override // com.tencent.bugly.proguard.m
    public final void a(k kVar) {
        this.f5783a = kVar.b(0, true);
        this.f5784b = kVar.b(1, false);
        this.f5785c = kVar.b(2, false);
        this.d = kVar.b(3, false);
        this.f5786e = kVar.b(4, false);
    }
}
