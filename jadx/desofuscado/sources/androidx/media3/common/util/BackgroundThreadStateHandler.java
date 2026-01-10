package androidx.media3.common.util;

import android.os.Looper;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public final class BackgroundThreadStateHandler<T> {
    private final HandlerWrapper backgroundHandler;
    private T backgroundState;
    private final HandlerWrapper foregroundHandler;
    private T foregroundState;
    private final StateChangeListener<T> onStateChanged;
    private int pendingOperations;

    /* compiled from: MyApplication */
    public interface StateChangeListener<T> {
        void onStateChanged(T t5, T t8);
    }

    public BackgroundThreadStateHandler(T t5, Looper looper, Looper looper2, Clock clock, StateChangeListener<T> stateChangeListener) {
        this.backgroundHandler = clock.createHandler(looper, null);
        this.foregroundHandler = clock.createHandler(looper2, null);
        this.foregroundState = t5;
        this.backgroundState = t5;
        this.onStateChanged = stateChangeListener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ void lambda$setStateInBackground$2(Object obj) {
        if (this.pendingOperations == 0) {
            updateStateInForeground(obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ void lambda$updateStateAsync$0(Object obj) {
        int i6 = this.pendingOperations - 1;
        this.pendingOperations = i6;
        if (i6 == 0) {
            updateStateInForeground(obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateStateAsync$1(b7.i iVar) {
        T t5 = (T) iVar.apply(this.backgroundState);
        this.backgroundState = t5;
        this.foregroundHandler.post(new a(this, t5, 1));
    }

    private void updateStateInForeground(T t5) {
        T t8 = this.foregroundState;
        this.foregroundState = t5;
        if (t8.equals(t5)) {
            return;
        }
        this.onStateChanged.onStateChanged(t8, t5);
    }

    public T get() {
        Looper looperMyLooper = Looper.myLooper();
        if (looperMyLooper == this.foregroundHandler.getLooper()) {
            return this.foregroundState;
        }
        Assertions.checkState(looperMyLooper == this.backgroundHandler.getLooper());
        return this.backgroundState;
    }

    public void runInBackground(Runnable runnable) {
        this.backgroundHandler.post(runnable);
    }

    public void setStateInBackground(T t5) {
        this.backgroundState = t5;
        this.foregroundHandler.post(new a(this, t5, 0));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void updateStateAsync(b7.i iVar, b7.i iVar2) {
        Assertions.checkState(Looper.myLooper() == this.foregroundHandler.getLooper());
        this.pendingOperations++;
        this.backgroundHandler.post(new g(this, 1, iVar2));
        updateStateInForeground(iVar.apply(this.foregroundState));
    }
}
