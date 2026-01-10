package s4;

import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import androidx.drawerlayout.widget.DrawerLayout;
import com.google.android.gms.cast.framework.media.widget.CastSeekBar;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.material.internal.c0;
import java.lang.ref.ReferenceQueue;
import java.net.DatagramSocket;
import v4.n;
import z4.w;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class h implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f9793a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f9794b;

    public /* synthetic */ h(int i6, Object obj) {
        this.f9793a = i6;
        this.f9794b = obj;
    }

    private final void a() {
        synchronized (this) {
            ((w0.e) this.f9794b).f10797c = false;
        }
        while (w0.e.f10794j.poll() != null) {
        }
        if (!((w0.e) this.f9794b).d.isAttachedToWindow()) {
            View view = ((w0.e) this.f9794b).d;
            c0 c0Var = w0.e.f10795k;
            view.removeOnAttachStateChangeListener(c0Var);
            ((w0.e) this.f9794b).d.addOnAttachStateChangeListener(c0Var);
            return;
        }
        w0.e eVar = (w0.e) this.f9794b;
        if (eVar.f10798e) {
            eVar.S();
        } else if (eVar.P()) {
            eVar.f10798e = true;
            eVar.O();
            eVar.f10798e = false;
        }
    }

    /* JADX INFO: Infinite loop detected, blocks: 8, insns: 0 */
    @Override // java.lang.Runnable
    public final void run() {
        View viewD;
        int width;
        switch (this.f9793a) {
            case 0:
                ((k) this.f9794b).g(false);
                return;
            case 1:
                ((CastSeekBar) this.f9794b).sendAccessibilityEvent(4);
                return;
            case 2:
                ((v0.d) this.f9794b).p(0);
                return;
            case 3:
                n nVar = (n) this.f9794b;
                synchronized (n.f10697i) {
                    try {
                        if (nVar.d()) {
                            nVar.f(15);
                            return;
                        }
                        return;
                    } finally {
                    }
                }
            case 4:
                DatagramSocket datagramSocket = (DatagramSocket) this.f9794b;
                try {
                    datagramSocket.disconnect();
                } catch (Exception e5) {
                    e5.printStackTrace();
                }
                try {
                    datagramSocket.close();
                    return;
                } catch (Exception e10) {
                    e10.printStackTrace();
                    return;
                }
            case 5:
                a();
                return;
            case 6:
                a0.f fVar = (a0.f) this.f9794b;
                fVar.getClass();
                while (true) {
                    try {
                        fVar.d((x2.a) ((ReferenceQueue) fVar.d).remove());
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                    }
                }
            case 7:
                androidx.drawerlayout.widget.b bVar = (androidx.drawerlayout.widget.b) this.f9794b;
                int i6 = bVar.d.f10644o;
                int i10 = bVar.f1364c;
                boolean z7 = i10 == 3;
                DrawerLayout drawerLayout = bVar.f;
                if (z7) {
                    viewD = drawerLayout.d(3);
                    width = (viewD != null ? -viewD.getWidth() : 0) + i6;
                } else {
                    viewD = drawerLayout.d(5);
                    width = drawerLayout.getWidth() - i6;
                }
                if (viewD != null) {
                    if (((!z7 || viewD.getLeft() >= width) && (z7 || viewD.getLeft() <= width)) || drawerLayout.g(viewD) != 0) {
                        return;
                    }
                    DrawerLayout.LayoutParams layoutParams = (DrawerLayout.LayoutParams) viewD.getLayoutParams();
                    bVar.d.s(viewD, width, viewD.getTop());
                    layoutParams.f1360c = true;
                    drawerLayout.invalidate();
                    View viewD2 = drawerLayout.d(i10 == 3 ? 5 : 3);
                    if (viewD2 != null) {
                        drawerLayout.b(viewD2);
                    }
                    if (drawerLayout.f1349r) {
                        return;
                    }
                    long jUptimeMillis = SystemClock.uptimeMillis();
                    MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                    int childCount = drawerLayout.getChildCount();
                    for (int i11 = 0; i11 < childCount; i11++) {
                        drawerLayout.getChildAt(i11).dispatchTouchEvent(motionEventObtain);
                    }
                    motionEventObtain.recycle();
                    drawerLayout.f1349r = true;
                    return;
                }
                return;
            case 8:
                ((z4.n) this.f9794b).f();
                return;
            case 9:
                y4.c cVar = ((z4.n) ((s2.c) this.f9794b).f9745b).d;
                cVar.c(cVar.getClass().getName().concat(" disconnecting because it was signed out."));
                return;
            case 10:
                ((w) this.f9794b).f11649j.e(new ConnectionResult(4));
                return;
            default:
                throw null;
        }
    }

    public h(z4.l lVar, c6.b bVar) {
        this.f9793a = 11;
        this.f9794b = bVar;
    }
}
