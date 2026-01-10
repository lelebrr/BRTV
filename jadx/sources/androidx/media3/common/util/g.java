package androidx.media3.common.util;

import android.content.Context;
import androidx.media3.common.util.NetworkTypeObserver;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.SettableFuture;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class g implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2091a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f2092b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f2093c;

    public /* synthetic */ g(Object obj, int i6, Object obj2) {
        this.f2091a = i6;
        this.f2092b = obj;
        this.f2093c = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f2091a) {
            case 0:
                ((NetworkTypeObserver.Receiver) this.f2092b).lambda$onReceive$0((Context) this.f2093c);
                break;
            case 1:
                ((BackgroundThreadStateHandler) this.f2092b).lambda$updateStateAsync$1((b7.i) this.f2093c);
                break;
            case 2:
                ((NetworkTypeObserver) this.f2092b).lambda$new$0((Context) this.f2093c);
                break;
            default:
                Util.lambda$transformFutureAsync$1((SettableFuture) this.f2092b, (ListenableFuture) this.f2093c);
                break;
        }
    }
}
