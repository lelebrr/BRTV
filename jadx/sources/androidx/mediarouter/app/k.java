package androidx.mediarouter.app;

import android.app.PendingIntent;
import android.support.v4.media.session.MediaControllerCompat;
import android.util.Log;
import android.view.View;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class k implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2618a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ u f2619b;

    public /* synthetic */ k(u uVar, int i6) {
        this.f2618a = i6;
        this.f2619b = uVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws PendingIntent.CanceledException {
        PendingIntent sessionActivity;
        switch (this.f2618a) {
            case 0:
                u uVar = this.f2619b;
                boolean z7 = uVar.f2698e0;
                uVar.f2698e0 = !z7;
                if (!z7) {
                    uVar.D.setVisibility(0);
                }
                uVar.f2708k0 = uVar.f2698e0 ? uVar.f2710l0 : uVar.f2712m0;
                uVar.v(true);
                break;
            case 1:
                this.f2619b.dismiss();
                break;
            default:
                u uVar2 = this.f2619b;
                MediaControllerCompat mediaControllerCompat = uVar2.R;
                if (mediaControllerCompat != null && (sessionActivity = mediaControllerCompat.getSessionActivity()) != null) {
                    try {
                        sessionActivity.send();
                        uVar2.dismiss();
                        break;
                    } catch (PendingIntent.CanceledException unused) {
                        Log.e("MediaRouteCtrlDialog", sessionActivity + " was not sent, it had been canceled.");
                    }
                }
                break;
        }
    }
}
