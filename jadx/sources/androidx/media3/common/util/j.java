package androidx.media3.common.util;

import java.util.concurrent.ThreadFactory;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class j implements ThreadFactory {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2097a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f2098b;

    public /* synthetic */ j(String str, int i6) {
        this.f2097a = i6;
        this.f2098b = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        switch (this.f2097a) {
            case 0:
                return Util.lambda$newSingleThreadExecutor$3(this.f2098b, runnable);
            default:
                return Util.lambda$newSingleThreadScheduledExecutor$4(this.f2098b, runnable);
        }
    }
}
