package com.google.android.gms.internal.cast;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.concurrent.CountDownLatch;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class x0 extends Handler {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4460a;

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        CountDownLatch countDownLatch;
        switch (this.f4460a) {
            case 1:
                int i6 = message.what;
                super.handleMessage(message);
                return;
            case 2:
                l1.d dVar = (l1.d) message.obj;
                int i10 = message.what;
                if (i10 != 1) {
                    if (i10 != 2) {
                        return;
                    }
                    dVar.f7949a.getClass();
                    return;
                }
                l1.a aVar = dVar.f7949a;
                if (aVar.f7943a.get()) {
                    countDownLatch = aVar.f7945c;
                    try {
                        throw null;
                    } finally {
                        countDownLatch.countDown();
                    }
                } else {
                    try {
                        throw null;
                    } catch (Throwable th) {
                        countDownLatch = aVar.f7945c;
                        throw th;
                    }
                }
            default:
                super.handleMessage(message);
                return;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ x0(Looper looper, int i6, boolean z7) {
        super(looper);
        this.f4460a = i6;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ x0(Looper looper, Handler.Callback callback, int i6) {
        super(looper, callback);
        this.f4460a = i6;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x0(Looper looper, int i6) {
        super(looper);
        this.f4460a = i6;
        switch (i6) {
            case 4:
                super(looper);
                Looper.getMainLooper();
                break;
            case 5:
                super(looper);
                Looper.getMainLooper();
                break;
            default:
                Looper.getMainLooper();
                break;
        }
    }
}
