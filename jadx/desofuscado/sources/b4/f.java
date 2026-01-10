package b4;

import android.content.Context;
import com.google.android.datatransport.cct.CctBackendFactory;
import java.util.HashMap;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    public final a7.f f3240a;

    /* renamed from: b, reason: collision with root package name */
    public final d f3241b;

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f3242c;

    public f(Context context, d dVar) {
        a7.f fVar = new a7.f(7, context);
        this.f3242c = new HashMap();
        this.f3240a = fVar;
        this.f3241b = dVar;
    }

    public final synchronized g a(String str) {
        if (this.f3242c.containsKey(str)) {
            return (g) this.f3242c.get(str);
        }
        CctBackendFactory cctBackendFactoryA = this.f3240a.A(str);
        if (cctBackendFactoryA == null) {
            return null;
        }
        d dVar = this.f3241b;
        g gVarCreate = cctBackendFactoryA.create(new b(dVar.f3235a, dVar.f3236b, dVar.f3237c, str));
        this.f3242c.put(str, gVarCreate);
        return gVarCreate;
    }
}
