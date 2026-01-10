package r6;

import android.graphics.Typeface;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a extends l5.a {

    /* renamed from: r, reason: collision with root package name */
    public final Typeface f9583r;

    /* renamed from: s, reason: collision with root package name */
    public final com.google.android.material.internal.c f9584s;

    /* renamed from: t, reason: collision with root package name */
    public boolean f9585t;

    public a(com.google.android.material.internal.c cVar, Typeface typeface) {
        this.f9583r = typeface;
        this.f9584s = cVar;
    }

    @Override // l5.a
    public final void D(int i6) {
        if (this.f9585t) {
            return;
        }
        this.f9584s.a(this.f9583r);
    }

    @Override // l5.a
    public final void E(Typeface typeface, boolean z7) {
        if (this.f9585t) {
            return;
        }
        this.f9584s.a(typeface);
    }
}
