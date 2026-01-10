package com.bumptech.glide.load;

import v2.c;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public enum ImageHeaderParser$ImageType {
    GIF(0),
    JPEG(1),
    RAW(2),
    PNG_A(3),
    PNG(4),
    WEBP_A(5),
    WEBP(6),
    ANIMATED_WEBP(7),
    AVIF(8),
    ANIMATED_AVIF(9),
    UNKNOWN(10);


    /* renamed from: a, reason: collision with root package name */
    public final boolean f3543a;

    ImageHeaderParser$ImageType(int i6) {
        this.f3543a = z;
    }

    public boolean hasAlpha() {
        return this.f3543a;
    }

    public boolean isWebp() {
        int i6 = c.f10659a[ordinal()];
        return i6 == 1 || i6 == 2 || i6 == 3;
    }
}
