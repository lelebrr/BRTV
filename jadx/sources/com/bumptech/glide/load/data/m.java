package com.bumptech.glide.load.data;

import java.io.InputStream;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class m implements f {

    /* renamed from: a, reason: collision with root package name */
    public final y2.f f3564a;

    public m(y2.f fVar) {
        this.f3564a = fVar;
    }

    @Override // com.bumptech.glide.load.data.f
    public final Class a() {
        return InputStream.class;
    }

    @Override // com.bumptech.glide.load.data.f
    public final g b(Object obj) {
        return new i((InputStream) obj, this.f3564a);
    }
}
