package b3;

import android.net.Uri;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class h0 implements u {

    /* renamed from: b, reason: collision with root package name */
    public static final Set f3192b = Collections.unmodifiableSet(new HashSet(Arrays.asList("file", "content", "android.resource")));

    /* renamed from: a, reason: collision with root package name */
    public final Object f3193a;

    public h0(g0 g0Var) {
        this.f3193a = g0Var;
    }

    @Override // b3.u
    public final t a(Object obj, int i6, int i10, v2.h hVar) {
        com.bumptech.glide.load.data.e aVar;
        Uri uri = (Uri) obj;
        q3.d dVar = new q3.d(uri);
        g0 g0Var = (g0) this.f3193a;
        switch (g0Var.f3188a) {
            case 0:
                aVar = new com.bumptech.glide.load.data.a(g0Var.f3189b, uri, 0);
                break;
            case 1:
                aVar = new com.bumptech.glide.load.data.a(g0Var.f3189b, uri, 1);
                break;
            default:
                aVar = new com.bumptech.glide.load.data.n(1, uri, g0Var.f3189b);
                break;
        }
        return new t(dVar, aVar);
    }

    @Override // b3.u
    public final boolean b(Object obj) {
        return f3192b.contains(((Uri) obj).getScheme());
    }
}
