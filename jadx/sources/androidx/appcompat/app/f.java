package androidx.appcompat.app;

import android.os.Handler;
import androidx.mediarouter.media.MediaRouteProviderService;
import java.lang.ref.WeakReference;
import q1.h1;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class f extends Handler {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f246a = 0;

    /* renamed from: b, reason: collision with root package name */
    public WeakReference f247b;

    public /* synthetic */ f() {
    }

    /* JADX WARN: Removed duplicated region for block: B:186:0x0329  */
    @Override // android.os.Handler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void handleMessage(android.os.Message r20) throws android.os.RemoteException {
        /*
            Method dump skipped, instructions count: 1300
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.f.handleMessage(android.os.Message):void");
    }

    public f(MediaRouteProviderService mediaRouteProviderService) {
        this.f247b = new WeakReference(mediaRouteProviderService);
    }

    public f(h1 h1Var) {
        this.f247b = new WeakReference(h1Var);
    }
}
