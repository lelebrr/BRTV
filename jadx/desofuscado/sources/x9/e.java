package x9;

import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.ServiceConfigurationError;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public abstract class e {

    /* renamed from: a, reason: collision with root package name */
    public static final List f11109a;

    static {
        try {
            Iterator it = Arrays.asList(new u9.b()).iterator();
            j9.i.f(it, "<this>");
            f11109a = q9.f.p(new q9.a(new q9.g(1, it)));
        } catch (Throwable th) {
            throw new ServiceConfigurationError(th.getMessage(), th);
        }
    }
}
