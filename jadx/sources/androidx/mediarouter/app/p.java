package androidx.mediarouter.app;

import android.support.v4.media.session.PlaybackStateCompat;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import com.p2elite.brtv2.R;
import q1.u0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class p implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ u f2652a;

    public p(u uVar) {
        this.f2652a = uVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i6;
        PlaybackStateCompat playbackStateCompat;
        int id = view.getId();
        u uVar = this.f2652a;
        if (id == 16908313 || id == 16908314) {
            if (uVar.f2702h.g()) {
                i6 = id == 16908313 ? 2 : 1;
                uVar.f.getClass();
                u0.i(i6);
            }
            uVar.dismiss();
            return;
        }
        if (id != R.id.mr_control_playback_ctrl) {
            if (id == R.id.mr_close) {
                uVar.dismiss();
                return;
            }
            return;
        }
        if (uVar.R == null || (playbackStateCompat = uVar.T) == null) {
            return;
        }
        int i10 = 0;
        i6 = playbackStateCompat.getState() != 3 ? 0 : 1;
        if (i6 != 0 && (uVar.T.getActions() & 514) != 0) {
            uVar.R.getTransportControls().pause();
            i10 = R.string.mr_controller_pause;
        } else if (i6 != 0 && (uVar.T.getActions() & 1) != 0) {
            uVar.R.getTransportControls().stop();
            i10 = R.string.mr_controller_stop;
        } else if (i6 == 0 && (uVar.T.getActions() & 516) != 0) {
            uVar.R.getTransportControls().play();
            i10 = R.string.mr_controller_play;
        }
        AccessibilityManager accessibilityManager = uVar.f2714n0;
        if (accessibilityManager == null || !accessibilityManager.isEnabled() || i10 == 0) {
            return;
        }
        AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain(16384);
        accessibilityEventObtain.setPackageName(uVar.f2704i.getPackageName());
        accessibilityEventObtain.setClassName(p.class.getName());
        accessibilityEventObtain.getText().add(uVar.f2704i.getString(i10));
        accessibilityManager.sendAccessibilityEvent(accessibilityEventObtain);
    }
}
