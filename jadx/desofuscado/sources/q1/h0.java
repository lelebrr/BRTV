package q1;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.Messenger;
import androidx.mediarouter.media.MediaRouteProviderService;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class h0 extends k0 {

    /* renamed from: i, reason: collision with root package name */
    public v f9010i;

    /* renamed from: j, reason: collision with root package name */
    public final androidx.media3.common.x f9011j;

    public h0(MediaRouteProviderService mediaRouteProviderService) {
        super(mediaRouteProviderService);
        this.f9011j = new androidx.media3.common.x(18, this);
    }

    @Override // q1.k0
    public final void a(Context context) {
        v vVar = this.f9010i;
        if (vVar != null) {
            vVar.attachBaseContext(context);
        }
    }

    @Override // q1.k0
    public final j0 b(Messenger messenger, int i6, String str) {
        return new g0(this, messenger, i6, str);
    }

    @Override // q1.k0
    public final IBinder f(Intent intent) {
        MediaRouteProviderService mediaRouteProviderService = this.f9030a;
        mediaRouteProviderService.b();
        if (this.f9010i == null) {
            this.f9010i = new v(this);
            if (mediaRouteProviderService.getBaseContext() != null) {
                this.f9010i.attachBaseContext(mediaRouteProviderService);
            }
        }
        IBinder iBinderF = super.f(intent);
        return iBinderF != null ? iBinderF : this.f9010i.onBind(intent);
    }

    /* JADX WARN: Removed duplicated region for block: B:121:0x022f  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x027e  */
    @Override // q1.k0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void g(androidx.appcompat.app.r0 r19) {
        /*
            Method dump skipped, instructions count: 750
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: q1.h0.g(androidx.appcompat.app.r0):void");
    }
}
