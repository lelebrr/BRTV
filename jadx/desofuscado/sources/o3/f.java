package o3;

import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import com.bumptech.glide.o;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class f extends b {

    /* renamed from: e, reason: collision with root package name */
    public static final Handler f8561e = new Handler(Looper.getMainLooper(), new e(0));
    public final o d;

    public f(o oVar) {
        this.d = oVar;
    }

    @Override // o3.h
    public final void d(Object obj, p3.c cVar) {
        n3.c cVar2 = this.f8554c;
        if (cVar2 == null || !cVar2.i()) {
            return;
        }
        f8561e.obtainMessage(1, this).sendToTarget();
    }

    @Override // o3.h
    public final void h(Drawable drawable) {
    }
}
