package c3;

import android.content.Context;
import android.net.Uri;
import b3.b0;
import b3.u;
import b3.v;
import java.io.File;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b implements v {

    /* renamed from: a, reason: collision with root package name */
    public final Context f3375a;

    /* renamed from: b, reason: collision with root package name */
    public final Class f3376b;

    public b(Context context, Class cls) {
        this.f3375a = context;
        this.f3376b = cls;
    }

    @Override // b3.v
    public final u a(b0 b0Var) {
        Class cls = this.f3376b;
        return new d(this.f3375a, b0Var.b(File.class, cls), b0Var.b(Uri.class, cls), cls);
    }
}
