package q1;

import android.content.Intent;
import android.os.Bundle;
import android.os.Messenger;
import androidx.mediarouter.media.MediaRouteProviderService;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class i0 extends o0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Messenger f9019a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f9020b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ k0 f9021c;

    public i0(k0 k0Var, j0 j0Var, int i6, Intent intent, Messenger messenger, int i10) {
        this.f9021c = k0Var;
        this.f9019a = messenger;
        this.f9020b = i10;
    }

    @Override // q1.o0
    public final void a(String str, Bundle bundle) {
        int i6 = MediaRouteProviderService.f;
        if (this.f9021c.c(this.f9019a) >= 0) {
            if (str == null) {
                MediaRouteProviderService.e(this.f9019a, 4, this.f9020b, 0, bundle, null);
            } else {
                Bundle bundle2 = new Bundle();
                bundle2.putString("error", str);
                MediaRouteProviderService.e(this.f9019a, 4, this.f9020b, 0, bundle, bundle2);
            }
        }
    }

    @Override // q1.o0
    public final void b(Bundle bundle) {
        int i6 = MediaRouteProviderService.f;
        if (this.f9021c.c(this.f9019a) >= 0) {
            MediaRouteProviderService.e(this.f9019a, 3, this.f9020b, 0, bundle, null);
        }
    }
}
