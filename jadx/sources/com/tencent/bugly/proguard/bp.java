package com.tencent.bugly.proguard;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collection;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class bp extends m implements Cloneable {

    /* renamed from: b, reason: collision with root package name */
    static ArrayList<bo> f5817b;

    /* renamed from: a, reason: collision with root package name */
    public ArrayList<bo> f5818a = null;

    @Override // com.tencent.bugly.proguard.m
    public final void a(StringBuilder sb, int i6) {
    }

    @Override // com.tencent.bugly.proguard.m
    public final void a(l lVar) throws UnsupportedEncodingException {
        lVar.a((Collection) this.f5818a, 0);
    }

    @Override // com.tencent.bugly.proguard.m
    public final void a(k kVar) {
        if (f5817b == null) {
            f5817b = new ArrayList<>();
            f5817b.add(new bo());
        }
        this.f5818a = (ArrayList) kVar.a((k) f5817b, 0, true);
    }
}
