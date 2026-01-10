package l1;

import android.util.Log;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c extends FutureTask {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ a f7948a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(a aVar, b bVar) {
        super(bVar);
        this.f7948a = aVar;
    }

    @Override // java.util.concurrent.FutureTask
    public final void done() {
        a aVar = this.f7948a;
        try {
            Object obj = get();
            if (aVar.f7944b.get()) {
                return;
            }
            aVar.a(obj);
        } catch (InterruptedException e5) {
            Log.w("AsyncTask", e5);
        } catch (CancellationException unused) {
            if (aVar.f7944b.get()) {
                return;
            }
            aVar.a(null);
        } catch (ExecutionException e10) {
            throw new RuntimeException("An error occurred while executing doInBackground()", e10.getCause());
        } catch (Throwable th) {
            throw new RuntimeException("An error occurred while executing doInBackground()", th);
        }
    }
}
