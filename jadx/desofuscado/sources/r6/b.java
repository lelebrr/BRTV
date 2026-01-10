package r6;

import android.graphics.Typeface;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b extends e0.b {

    /* renamed from: h, reason: collision with root package name */
    public final /* synthetic */ l5.a f9586h;

    /* renamed from: i, reason: collision with root package name */
    public final /* synthetic */ d f9587i;

    public b(d dVar, l5.a aVar) {
        this.f9587i = dVar;
        this.f9586h = aVar;
    }

    @Override // e0.b
    public final void i(int i6) {
        this.f9587i.f9602m = true;
        this.f9586h.D(i6);
    }

    @Override // e0.b
    public final void j(Typeface typeface) {
        d dVar = this.f9587i;
        dVar.f9603n = Typeface.create(typeface, dVar.f9594c);
        dVar.f9602m = true;
        this.f9586h.E(dVar.f9603n, false);
    }
}
