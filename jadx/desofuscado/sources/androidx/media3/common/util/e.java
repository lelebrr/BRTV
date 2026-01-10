package androidx.media3.common.util;

import android.os.Handler;
import java.util.concurrent.Executor;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class e implements Executor {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Handler f2089a;

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f2089a.post(runnable);
    }
}
