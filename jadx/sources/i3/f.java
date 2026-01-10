package i3;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Handler;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class f extends o3.b {
    public final Handler d;

    /* renamed from: e, reason: collision with root package name */
    public final int f7317e;
    public final long f;

    /* renamed from: g, reason: collision with root package name */
    public Bitmap f7318g;

    public f(Handler handler, int i6, long j10) {
        this.d = handler;
        this.f7317e = i6;
        this.f = j10;
    }

    @Override // o3.h
    public final void d(Object obj, p3.c cVar) {
        this.f7318g = (Bitmap) obj;
        Handler handler = this.d;
        handler.sendMessageAtTime(handler.obtainMessage(1, this), this.f);
    }

    @Override // o3.h
    public final void h(Drawable drawable) {
        this.f7318g = null;
    }
}
