package q1;

import android.content.Intent;
import android.media.MediaRoute2Info;
import android.media.MediaRouter2;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
import android.util.SparseArray;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class l extends b0 {
    public final String f;

    /* renamed from: g, reason: collision with root package name */
    public final MediaRouter2.RoutingController f9045g;

    /* renamed from: h, reason: collision with root package name */
    public final Messenger f9046h;

    /* renamed from: i, reason: collision with root package name */
    public final Messenger f9047i;

    /* renamed from: k, reason: collision with root package name */
    public final Handler f9049k;

    /* renamed from: o, reason: collision with root package name */
    public w f9053o;

    /* renamed from: p, reason: collision with root package name */
    public final /* synthetic */ p f9054p;

    /* renamed from: j, reason: collision with root package name */
    public final SparseArray f9048j = new SparseArray();

    /* renamed from: l, reason: collision with root package name */
    public final AtomicInteger f9050l = new AtomicInteger(1);

    /* renamed from: m, reason: collision with root package name */
    public final a.b f9051m = new a.b(14, this);

    /* renamed from: n, reason: collision with root package name */
    public int f9052n = -1;

    public l(p pVar, MediaRouter2.RoutingController routingController, String str) {
        Bundle controlHints;
        this.f9054p = pVar;
        this.f9045g = routingController;
        this.f = str;
        int i6 = p.f9094s;
        Messenger messenger = (routingController == null || (controlHints = routingController.getControlHints()) == null) ? null : (Messenger) controlHints.getParcelable("androidx.mediarouter.media.KEY_MESSENGER");
        this.f9046h = messenger;
        this.f9047i = messenger != null ? new Messenger(new androidx.mediarouter.app.c(this)) : null;
        this.f9049k = new Handler(Looper.getMainLooper());
    }

    @Override // q1.c0
    public final boolean d(Intent intent, o0 o0Var) throws RemoteException {
        Messenger messenger;
        MediaRouter2.RoutingController routingController = this.f9045g;
        if (routingController != null && !routingController.isReleased() && (messenger = this.f9046h) != null) {
            int andIncrement = this.f9050l.getAndIncrement();
            Message messageObtain = Message.obtain();
            messageObtain.what = 9;
            messageObtain.arg1 = andIncrement;
            messageObtain.obj = intent;
            messageObtain.replyTo = this.f9047i;
            try {
                messenger.send(messageObtain);
                if (o0Var == null) {
                    return true;
                }
                this.f9048j.put(andIncrement, o0Var);
                return true;
            } catch (DeadObjectException unused) {
            } catch (RemoteException e5) {
                Log.e("MR2Provider", "Could not send control request to service.", e5);
            }
        }
        return false;
    }

    @Override // q1.c0
    public final void e() {
        this.f9045g.release();
    }

    @Override // q1.c0
    public final void g(int i6) {
        MediaRouter2.RoutingController routingController = this.f9045g;
        if (routingController == null) {
            return;
        }
        routingController.setVolume(i6);
        this.f9052n = i6;
        Handler handler = this.f9049k;
        a.b bVar = this.f9051m;
        handler.removeCallbacks(bVar);
        handler.postDelayed(bVar, 1000L);
    }

    @Override // q1.c0
    public final void j(int i6) {
        MediaRouter2.RoutingController routingController = this.f9045g;
        if (routingController == null) {
            return;
        }
        int volume = this.f9052n;
        if (volume < 0) {
            volume = routingController.getVolume();
        }
        int iMax = Math.max(0, Math.min(volume + i6, this.f9045g.getVolumeMax()));
        this.f9052n = iMax;
        this.f9045g.setVolume(iMax);
        Handler handler = this.f9049k;
        a.b bVar = this.f9051m;
        handler.removeCallbacks(bVar);
        handler.postDelayed(bVar, 1000L);
    }

    @Override // q1.b0
    public final void n(String str) {
        if (str == null || str.isEmpty()) {
            Log.w("MR2Provider", "onAddMemberRoute: Ignoring null or empty routeId.");
            return;
        }
        MediaRoute2Info mediaRoute2InfoH = this.f9054p.h(str);
        if (mediaRoute2InfoH == null) {
            Log.w("MR2Provider", "onAddMemberRoute: Specified route not found. routeId=".concat(str));
        } else {
            this.f9045g.selectRoute(mediaRoute2InfoH);
        }
    }

    @Override // q1.b0
    public final void o(String str) {
        if (str == null || str.isEmpty()) {
            Log.w("MR2Provider", "onRemoveMemberRoute: Ignoring null or empty routeId.");
            return;
        }
        MediaRoute2Info mediaRoute2InfoH = this.f9054p.h(str);
        if (mediaRoute2InfoH == null) {
            Log.w("MR2Provider", "onRemoveMemberRoute: Specified route not found. routeId=".concat(str));
        } else {
            this.f9045g.deselectRoute(mediaRoute2InfoH);
        }
    }

    @Override // q1.b0
    public final void p(List list) {
        if (list == null || list.isEmpty()) {
            Log.w("MR2Provider", "onUpdateMemberRoutes: Ignoring null or empty routeIds.");
            return;
        }
        String str = (String) list.get(0);
        p pVar = this.f9054p;
        MediaRoute2Info mediaRoute2InfoH = pVar.h(str);
        if (mediaRoute2InfoH != null) {
            pVar.f9095i.transferTo(mediaRoute2InfoH);
            return;
        }
        Log.w("MR2Provider", "onUpdateMemberRoutes: Specified route not found. routeId=" + str);
    }
}
