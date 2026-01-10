package com.google.android.gms.internal.cast;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class h7 {

    /* renamed from: a, reason: collision with root package name */
    public static final Charset f4214a;

    /* renamed from: b, reason: collision with root package name */
    public static final byte[] f4215b;

    static {
        Charset.forName("US-ASCII");
        f4214a = Charset.forName("UTF-8");
        Charset.forName("ISO-8859-1");
        byte[] bArr = new byte[0];
        f4215b = bArr;
        ByteBuffer.wrap(bArr);
    }
}
