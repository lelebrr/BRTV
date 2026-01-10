package com.tencent.bugly.proguard;

import java.io.File;
import java.io.FilenameFilter;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d0 implements FilenameFilter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f5881a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f5882b;

    public d0(String str, String str2) {
        this.f5881a = str;
        this.f5882b = str2;
    }

    @Override // java.io.FilenameFilter
    public final boolean accept(File file, String str) {
        return str != null && str.startsWith(this.f5881a) && str.endsWith(this.f5882b);
    }
}
