package s4;

import android.content.Intent;
import android.support.v4.media.session.MediaSessionCompat;
import android.view.KeyEvent;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class j extends MediaSessionCompat.Callback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ k f9797a;

    public j(k kVar) {
        this.f9797a = kVar;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:17:0x003f  */
    @Override // android.support.v4.media.session.MediaSessionCompat.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onCustomAction(java.lang.String r8, android.os.Bundle r9) {
        /*
            r7 = this;
            r9 = 0
            r0 = 1
            v4.b r1 = s4.k.f9798v
            java.lang.Object[] r2 = new java.lang.Object[r0]
            r2[r9] = r8
            java.lang.String r3 = "onCustomAction with action = %s"
            r1.b(r3, r2)
            int r1 = r8.hashCode()
            r2 = 2
            r3 = 3
            switch(r1) {
                case -1699820260: goto L35;
                case -668151673: goto L2b;
                case -124479363: goto L21;
                case 1362116196: goto L17;
                default: goto L16;
            }
        L16:
            goto L3f
        L17:
            java.lang.String r1 = "com.google.android.gms.cast.framework.action.FORWARD"
            boolean r1 = r8.equals(r1)
            if (r1 == 0) goto L3f
            r1 = 0
            goto L40
        L21:
            java.lang.String r1 = "com.google.android.gms.cast.framework.action.DISCONNECT"
            boolean r1 = r8.equals(r1)
            if (r1 == 0) goto L3f
            r1 = 3
            goto L40
        L2b:
            java.lang.String r1 = "com.google.android.gms.cast.framework.action.STOP_CASTING"
            boolean r1 = r8.equals(r1)
            if (r1 == 0) goto L3f
            r1 = 2
            goto L40
        L35:
            java.lang.String r1 = "com.google.android.gms.cast.framework.action.REWIND"
            boolean r1 = r8.equals(r1)
            if (r1 == 0) goto L3f
            r1 = 1
            goto L40
        L3f:
            r1 = -1
        L40:
            r4 = 0
            s4.k r6 = r7.f9797a
            if (r1 == 0) goto Lab
            if (r1 == r0) goto L82
            if (r1 == r2) goto L7a
            if (r1 == r3) goto L72
            android.content.Intent r9 = new android.content.Intent
            r9.<init>(r8)
            android.content.ComponentName r8 = r6.f9803g
            r9.setComponent(r8)
            int r8 = android.os.Build.VERSION.SDK_INT
            r0 = 34
            android.content.Context r1 = r6.f9799a
            if (r8 >= r0) goto L62
            r1.sendBroadcast(r9)
            return
        L62:
            android.app.BroadcastOptions r8 = androidx.media3.ui.m.a()
            android.app.BroadcastOptions r8 = androidx.media3.ui.m.b(r8)
            android.os.Bundle r8 = androidx.media3.ui.m.c(r8)
            androidx.media3.ui.m.e(r1, r9, r8)
            return
        L72:
            q4.f r8 = r6.d
            if (r8 == 0) goto L81
            r8.b(r9)
            return
        L7a:
            q4.f r8 = r6.d
            if (r8 == 0) goto L81
            r8.b(r0)
        L81:
            return
        L82:
            com.google.android.gms.cast.framework.media.NotificationOptions r8 = r6.f9802e
            long r0 = r8.f3827c
            long r0 = -r0
            r4.f r8 = r6.f9810n
            if (r8 != 0) goto L8c
            goto Laa
        L8c:
            long r2 = r8.c()
            long r2 = r2 + r0
            long r0 = java.lang.Math.max(r4, r2)
            long r2 = r8.h()
            long r0 = java.lang.Math.min(r2, r0)
            r4.f r8 = r6.f9810n
            if (r8 != 0) goto La2
            goto Laa
        La2:
            p4.g r2 = new p4.g
            r2.<init>(r0, r9)
            r8.t(r2)
        Laa:
            return
        Lab:
            com.google.android.gms.cast.framework.media.NotificationOptions r8 = r6.f9802e
            long r0 = r8.f3827c
            r4.f r8 = r6.f9810n
            if (r8 != 0) goto Lb4
            goto Ld2
        Lb4:
            long r2 = r8.c()
            long r2 = r2 + r0
            long r0 = java.lang.Math.max(r4, r2)
            long r2 = r8.h()
            long r0 = java.lang.Math.min(r2, r0)
            r4.f r8 = r6.f9810n
            if (r8 != 0) goto Lca
            goto Ld2
        Lca:
            p4.g r2 = new p4.g
            r2.<init>(r0, r9)
            r8.t(r2)
        Ld2:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: s4.j.onCustomAction(java.lang.String, android.os.Bundle):void");
    }

    @Override // android.support.v4.media.session.MediaSessionCompat.Callback
    public final boolean onMediaButtonEvent(Intent intent) {
        r4.f fVar;
        k.f9798v.b("onMediaButtonEvent", new Object[0]);
        KeyEvent keyEvent = (KeyEvent) intent.getParcelableExtra("android.intent.extra.KEY_EVENT");
        if (keyEvent == null) {
            return true;
        }
        if ((keyEvent.getKeyCode() != 127 && keyEvent.getKeyCode() != 126) || (fVar = this.f9797a.f9810n) == null) {
            return true;
        }
        fVar.v();
        return true;
    }

    @Override // android.support.v4.media.session.MediaSessionCompat.Callback
    public final void onPause() {
        k.f9798v.b("onPause", new Object[0]);
        r4.f fVar = this.f9797a.f9810n;
        if (fVar != null) {
            fVar.v();
        }
    }

    @Override // android.support.v4.media.session.MediaSessionCompat.Callback
    public final void onPlay() {
        k.f9798v.b("onPlay", new Object[0]);
        r4.f fVar = this.f9797a.f9810n;
        if (fVar != null) {
            fVar.v();
        }
    }

    @Override // android.support.v4.media.session.MediaSessionCompat.Callback
    public final void onSeekTo(long j10) {
        k.f9798v.b("onSeekTo %d", Long.valueOf(j10));
        r4.f fVar = this.f9797a.f9810n;
        if (fVar == null) {
            return;
        }
        fVar.t(new p4.g(j10, false));
    }

    @Override // android.support.v4.media.session.MediaSessionCompat.Callback
    public final void onSkipToNext() {
        k.f9798v.b("onSkipToNext", new Object[0]);
        r4.f fVar = this.f9797a.f9810n;
        if (fVar != null) {
            fVar.q();
        }
    }

    @Override // android.support.v4.media.session.MediaSessionCompat.Callback
    public final void onSkipToPrevious() {
        k.f9798v.b("onSkipToPrevious", new Object[0]);
        r4.f fVar = this.f9797a.f9810n;
        if (fVar != null) {
            fVar.r();
        }
    }
}
