package b7;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b0 {

    /* renamed from: b, reason: collision with root package name */
    public final a0.b f3292b;

    /* renamed from: a, reason: collision with root package name */
    public final e f3291a = e.f3299a;

    /* renamed from: c, reason: collision with root package name */
    public final int f3293c = Integer.MAX_VALUE;

    public b0(a0.b bVar) {
        this.f3292b = bVar;
    }

    public final List a(CharSequence charSequence) {
        charSequence.getClass();
        a0.b bVar = this.f3292b;
        bVar.getClass();
        a0 a0Var = new a0(bVar, this, charSequence);
        ArrayList arrayList = new ArrayList();
        while (a0Var.hasNext()) {
            arrayList.add((String) a0Var.next());
        }
        return Collections.unmodifiableList(arrayList);
    }
}
