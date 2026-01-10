package org.bitspark.android.utils;

import com.nmmedit.protect.NativeUtil;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
import okhttp3.Dns;

/* loaded from: classes.dex */
public final class c implements Dns {

    /* renamed from: b, reason: collision with root package name */
    public static final String f8760b;

    /* renamed from: c, reason: collision with root package name */
    public static final AtomicReference f8761c;
    public static final String[][] d;

    /* renamed from: a, reason: collision with root package name */
    public final u7.a f8762a;

    public c() {
        boolean z7 = ea.h.Q;
        String[][] strArr = d;
        this.f8762a = new u7.a(z7 ? new u7.c[]{new v7.h(strArr[0]), new v7.g(strArr[1])} : new u7.c[]{new v7.h(strArr[2])});
    }

    @Override // okhttp3.Dns
    public final native List lookup(String str);

    static {
        NativeUtil.classesInit0(15);
        f8760b = a2.a.s("hzfvSRYMZw==\n", "z0ObOVJiFI8=\n");
        f8761c = new AtomicReference(null);
        d = new String[][]{new String[]{a2.a.s("wR0EIy4Nc3+YR0F9bBltf80HA34sQjki0A==\n", "qWlwU103XFA=\n"), a2.a.s("XPE3W/xl9nRQ6zAF6DC2PFjgbE/hLPQqQeAxUg==\n", "NIVDK49f2Vs=\n"), a2.a.s("jkiG2RdiVJDfEsuHXXZCkIJSgYQVLR7Nnw==\n", "5jzyqWRYe78=\n"), a2.a.s("msEz3iQHqGSW2zSANlngPpPHI4MzU/RlkdoqgTNT9GaDwCLcLg==\n", "8rVHrlc9h0s=\n")}, new String[]{a2.a.s("qlEBkDTINQ==\n", "m38wvgXmBD8=\n"), a2.a.s("HiJwxMyM5Q==\n", "JgxI6vSi3S8=\n"), a2.a.s("Zud6687nNQ==\n", "X8lDxffJDAA=\n")}, new String[]{a2.a.s("ZHjeaDuCQyloYtk2KdQFYmJ/hHsn1UNiYn+HaT3dHn8=\n", "DAyqGEi4bAY=\n")}};
    }
}
