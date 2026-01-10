package androidx.appcompat.app;

import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import androidx.leanback.widget.VerticalGridView;
import androidx.recyclerview.widget.GridLayoutManager;
import com.google.android.gms.cast.CastDevice;
import com.tencent.mars.xlog.Log;
import com.youth.banner.indicator.RectangleIndicator;
import java.util.ArrayList;
import java.util.HashMap;
import org.bitspark.android.beans.ChannelBean;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f229a;

    /* renamed from: b, reason: collision with root package name */
    public Object f230b;

    /* renamed from: c, reason: collision with root package name */
    public Object f231c;
    public Object d;

    public /* synthetic */ c() {
        this.f229a = 2;
    }

    private final void a() {
        p4.b bVar;
        p4.n nVar = (p4.n) this.f230b;
        HashMap map = nVar.d.B;
        String str = (String) this.f231c;
        synchronized (map) {
            bVar = (p4.b) map.get(str);
        }
        if (bVar == null) {
            p4.o.F.b("Discarded message for unknown namespace '%s'", str);
            return;
        }
        String str2 = (String) this.d;
        CastDevice castDevice = nVar.d.f8907z;
        ((r4.f) bVar).p(str2);
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object objCall;
        p4.b bVar;
        boolean z7 = false;
        switch (this.f229a) {
            case 0:
                h.b(((h) this.d).f293e, (View) this.f230b, (View) this.f231c);
                return;
            case 1:
                ArrayList arrayList = (ArrayList) this.f230b;
                androidx.fragment.app.v0 v0Var = (androidx.fragment.app.v0) this.f231c;
                if (arrayList.contains(v0Var)) {
                    arrayList.remove(v0Var);
                    ((androidx.fragment.app.i) this.d).getClass();
                    a.e.a(v0Var.f1559a, v0Var.f1561c.F);
                    return;
                }
                return;
            case 2:
                try {
                    objCall = ((k0.c) this.f230b).call();
                } catch (Exception unused) {
                    objCall = null;
                }
                ((Handler) this.d).post(new a3.c(18, (k0.d) this.f231c, objCall, z7));
                return;
            case 3:
                int width = ((RectangleIndicator) this.f231c).getWidth();
                if (width > 0) {
                    View view = (View) this.f230b;
                    ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                    layoutParams.width = width + 24;
                    view.setLayoutParams(layoutParams);
                    ka.j jVar = (ka.j) this.d;
                    if (jVar.V.getItemCount() > 1) {
                        view.setVisibility(0);
                    } else {
                        view.setVisibility(4);
                    }
                    String strS = a2.a.s("nt400Byspk271DfB\n", "1rFZtVrexyo=\n");
                    String str = a2.a.s("wqvkaRqyWmrZ5fdpHadGP4s=\n", "q8WAAHnTLgU=\n") + width + a2.a.s("kvPKLxQylA==\n", "r873EikPqQI=\n") + jVar.V.getItemCount();
                    boolean z10 = org.bitspark.android.utils.m.f8784b;
                    Log.i(strS, str);
                    return;
                }
                return;
            case 4:
                int width2 = ((View) this.f230b).getWidth();
                ka.i0 i0Var = (ka.i0) this.d;
                float fQ = width2 / n5.d.q(i0Var.h(), 84);
                if (fQ >= 7.0f) {
                    i0Var.Y = 7;
                } else {
                    i0Var.Y = (int) fQ;
                }
                if (i0Var.Y != 0) {
                    if (i0Var.U.h()) {
                        i0Var.f7800g0.setLayoutManager(new GridLayoutManager(i0Var.Y));
                    } else {
                        ((VerticalGridView) i0Var.f7800g0).setNumColumns(i0Var.Y);
                    }
                }
                androidx.media3.exoplayer.hls.b bVar2 = (androidx.media3.exoplayer.hls.b) this.f231c;
                String str2 = ka.i0.i0;
                ((ka.i0) bVar2.f2281c).S((ChannelBean) bVar2.f2280b, (String) bVar2.d);
                return;
            case 5:
                a();
                return;
            default:
                v4.v vVar = (v4.v) this.f230b;
                synchronized (vVar.C) {
                    bVar = (p4.b) vVar.C.get((String) this.f231c);
                }
                if (bVar != null) {
                    ((r4.f) bVar).p((String) this.d);
                    return;
                } else {
                    v4.v.S.b("Discarded message for unknown namespace '%s'", (String) this.f231c);
                    return;
                }
        }
    }

    public /* synthetic */ c(Object obj, Object obj2, Object obj3, int i6) {
        this.f229a = i6;
        this.d = obj;
        this.f230b = obj2;
        this.f231c = obj3;
    }

    public /* synthetic */ c(Object obj, String str, String str2, int i6) {
        this.f229a = i6;
        this.f230b = obj;
        this.f231c = str;
        this.d = str2;
    }

    public c(ka.j jVar, RectangleIndicator rectangleIndicator, View view) {
        this.f229a = 3;
        this.d = jVar;
        this.f231c = rectangleIndicator;
        this.f230b = view;
    }
}
