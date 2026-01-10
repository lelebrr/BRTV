package a4;

import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.internal.cast.x0;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class r implements Executor {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f144a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f145b;

    public /* synthetic */ r(int i6, Object obj) {
        this.f144a = i6;
        this.f145b = obj;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        switch (this.f144a) {
            case 0:
                ((ExecutorService) this.f145b).execute(new q(runnable, 0));
                return;
            case 1:
                runnable.getClass();
                Handler handler = (Handler) this.f145b;
                if (handler.post(runnable)) {
                    return;
                }
                throw new RejectedExecutionException(handler + " is shutting down");
            case 2:
                ((x0) this.f145b).post(runnable);
                return;
            default:
                ((x0) this.f145b).post(runnable);
                return;
        }
    }

    public r() {
        this.f144a = 2;
        x0 x0Var = new x0(Looper.getMainLooper(), 6, false);
        Looper.getMainLooper();
        this.f145b = x0Var;
    }
}
