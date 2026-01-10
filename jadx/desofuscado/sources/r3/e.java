package r3;

import java.util.concurrent.Executor;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class e implements Executor {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f9495a;

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        switch (this.f9495a) {
            case 0:
                n.f().post(runnable);
                break;
            default:
                runnable.run();
                break;
        }
    }
}
