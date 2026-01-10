package m9;

import j9.i;
import java.util.Random;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c extends a {

    /* renamed from: c, reason: collision with root package name */
    public final b f8278c = new b(0);

    @Override // m9.a
    public final Random a() {
        Object obj = this.f8278c.get();
        i.e(obj, "get(...)");
        return (Random) obj;
    }
}
