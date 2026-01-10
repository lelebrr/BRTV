package com.tencent.bugly.proguard;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collection;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class bm extends m implements Cloneable {

    /* renamed from: c, reason: collision with root package name */
    static ArrayList<String> f5787c;

    /* renamed from: a, reason: collision with root package name */
    public String f5788a = "";

    /* renamed from: b, reason: collision with root package name */
    public ArrayList<String> f5789b = null;

    @Override // com.tencent.bugly.proguard.m
    public final void a(StringBuilder sb, int i6) {
    }

    @Override // com.tencent.bugly.proguard.m
    public final void a(l lVar) throws UnsupportedEncodingException {
        lVar.a(this.f5788a, 0);
        ArrayList<String> arrayList = this.f5789b;
        if (arrayList != null) {
            lVar.a((Collection) arrayList, 1);
        }
    }

    @Override // com.tencent.bugly.proguard.m
    public final void a(k kVar) {
        this.f5788a = kVar.b(0, true);
        if (f5787c == null) {
            ArrayList<String> arrayList = new ArrayList<>();
            f5787c = arrayList;
            arrayList.add("");
        }
        this.f5789b = (ArrayList) kVar.a((k) f5787c, 1, false);
    }
}
