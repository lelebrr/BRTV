package g;

import android.graphics.drawable.Drawable;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class f implements Drawable.Callback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7028a = 0;

    /* renamed from: b, reason: collision with root package name */
    public Object f7029b;

    public /* synthetic */ f() {
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void invalidateDrawable(Drawable drawable) {
        switch (this.f7028a) {
            case 0:
                break;
            default:
                ((z1.c) this.f7029b).invalidateSelf();
                break;
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j10) {
        switch (this.f7028a) {
            case 0:
                Drawable.Callback callback = (Drawable.Callback) this.f7029b;
                if (callback != null) {
                    callback.scheduleDrawable(drawable, runnable, j10);
                    break;
                }
                break;
            default:
                ((z1.c) this.f7029b).scheduleSelf(runnable, j10);
                break;
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        switch (this.f7028a) {
            case 0:
                Drawable.Callback callback = (Drawable.Callback) this.f7029b;
                if (callback != null) {
                    callback.unscheduleDrawable(drawable, runnable);
                    break;
                }
                break;
            default:
                ((z1.c) this.f7029b).unscheduleSelf(runnable);
                break;
        }
    }

    public f(z1.c cVar) {
        this.f7029b = cVar;
    }

    private final void a(Drawable drawable) {
    }
}
