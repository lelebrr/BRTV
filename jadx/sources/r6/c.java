package r6;

import android.content.Context;
import android.graphics.Typeface;
import android.text.TextPaint;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c extends l5.a {

    /* renamed from: r, reason: collision with root package name */
    public final /* synthetic */ Context f9588r;

    /* renamed from: s, reason: collision with root package name */
    public final /* synthetic */ TextPaint f9589s;

    /* renamed from: t, reason: collision with root package name */
    public final /* synthetic */ l5.a f9590t;

    /* renamed from: u, reason: collision with root package name */
    public final /* synthetic */ d f9591u;

    public c(d dVar, Context context, TextPaint textPaint, l5.a aVar) {
        this.f9591u = dVar;
        this.f9588r = context;
        this.f9589s = textPaint;
        this.f9590t = aVar;
    }

    @Override // l5.a
    public final void D(int i6) {
        this.f9590t.D(i6);
    }

    @Override // l5.a
    public final void E(Typeface typeface, boolean z7) {
        this.f9591u.g(this.f9588r, this.f9589s, typeface);
        this.f9590t.E(typeface, z7);
    }
}
