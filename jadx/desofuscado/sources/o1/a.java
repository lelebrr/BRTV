package o1;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.support.v4.media.MediaBrowserCompat;
import android.support.v4.media.session.MediaControllerCompat;
import android.view.KeyEvent;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a extends MediaBrowserCompat.ConnectionCallback {

    /* renamed from: a, reason: collision with root package name */
    public final Context f8544a;

    /* renamed from: b, reason: collision with root package name */
    public final Intent f8545b;

    /* renamed from: c, reason: collision with root package name */
    public final BroadcastReceiver.PendingResult f8546c;
    public MediaBrowserCompat d;

    public a(Context context, Intent intent, BroadcastReceiver.PendingResult pendingResult) {
        this.f8544a = context;
        this.f8545b = intent;
        this.f8546c = pendingResult;
    }

    @Override // android.support.v4.media.MediaBrowserCompat.ConnectionCallback
    public final void onConnected() {
        new MediaControllerCompat(this.f8544a, this.d.getSessionToken()).dispatchMediaButtonEvent((KeyEvent) this.f8545b.getParcelableExtra("android.intent.extra.KEY_EVENT"));
        this.d.disconnect();
        this.f8546c.finish();
    }

    @Override // android.support.v4.media.MediaBrowserCompat.ConnectionCallback
    public final void onConnectionFailed() {
        this.d.disconnect();
        this.f8546c.finish();
    }

    @Override // android.support.v4.media.MediaBrowserCompat.ConnectionCallback
    public final void onConnectionSuspended() {
        this.d.disconnect();
        this.f8546c.finish();
    }
}
