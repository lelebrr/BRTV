package c3;

import b3.k;
import b3.r;
import b3.s;
import b3.t;
import b3.u;
import com.bumptech.glide.load.data.l;
import java.util.ArrayDeque;
import v2.g;
import v2.h;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a implements u {

    /* renamed from: b, reason: collision with root package name */
    public static final g f3373b = g.a(2500, "com.bumptech.glide.load.model.stream.HttpGlideUrlLoader.Timeout");

    /* renamed from: a, reason: collision with root package name */
    public final a0.b f3374a;

    public a(a0.b bVar) {
        this.f3374a = bVar;
    }

    @Override // b3.u
    public final t a(Object obj, int i6, int i10, h hVar) {
        k kVar = (k) obj;
        a0.b bVar = this.f3374a;
        if (bVar != null) {
            s sVarA = s.a(kVar);
            r rVar = (r) bVar.f32b;
            Object objA = rVar.a(sVarA);
            ArrayDeque arrayDeque = s.f3216b;
            synchronized (arrayDeque) {
                arrayDeque.offer(sVarA);
            }
            k kVar2 = (k) objA;
            if (kVar2 == null) {
                rVar.d(s.a(kVar), kVar);
            } else {
                kVar = kVar2;
            }
        }
        return new t(kVar, new l(kVar, ((Integer) hVar.c(f3373b)).intValue()));
    }

    @Override // b3.u
    public final /* bridge */ /* synthetic */ boolean b(Object obj) {
        return true;
    }
}
