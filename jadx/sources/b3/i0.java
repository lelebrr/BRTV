package b3;

import android.net.Uri;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class i0 implements u {

    /* renamed from: b, reason: collision with root package name */
    public static final Set f3198b = Collections.unmodifiableSet(new HashSet(Arrays.asList("http", "https")));

    /* renamed from: a, reason: collision with root package name */
    public final u f3199a;

    public i0(u uVar) {
        this.f3199a = uVar;
    }

    @Override // b3.u
    public final t a(Object obj, int i6, int i10, v2.h hVar) {
        return this.f3199a.a(new k(((Uri) obj).toString()), i6, i10, hVar);
    }

    @Override // b3.u
    public final boolean b(Object obj) {
        return f3198b.contains(((Uri) obj).getScheme());
    }
}
