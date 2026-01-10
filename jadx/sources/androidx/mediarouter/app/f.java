package androidx.mediarouter.app;

import android.content.Context;
import android.os.SystemClock;
import android.view.ContextThemeWrapper;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.p2elite.brtv2.R;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import q1.u0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class f extends androidx.appcompat.app.i0 {

    /* renamed from: e, reason: collision with root package name */
    public final u0 f2582e;
    public final i0 f;

    /* renamed from: g, reason: collision with root package name */
    public q1.l0 f2583g;

    /* renamed from: h, reason: collision with root package name */
    public ArrayList f2584h;

    /* renamed from: i, reason: collision with root package name */
    public TextView f2585i;

    /* renamed from: j, reason: collision with root package name */
    public TextView f2586j;

    /* renamed from: k, reason: collision with root package name */
    public RelativeLayout f2587k;

    /* renamed from: l, reason: collision with root package name */
    public TextView f2588l;

    /* renamed from: m, reason: collision with root package name */
    public TextView f2589m;

    /* renamed from: n, reason: collision with root package name */
    public LinearLayout f2590n;

    /* renamed from: o, reason: collision with root package name */
    public Button f2591o;

    /* renamed from: p, reason: collision with root package name */
    public ProgressBar f2592p;

    /* renamed from: q, reason: collision with root package name */
    public ListView f2593q;

    /* renamed from: r, reason: collision with root package name */
    public d f2594r;

    /* renamed from: s, reason: collision with root package name */
    public final androidx.appcompat.app.b0 f2595s;

    /* renamed from: t, reason: collision with root package name */
    public boolean f2596t;

    /* renamed from: u, reason: collision with root package name */
    public long f2597u;

    /* renamed from: v, reason: collision with root package name */
    public final c f2598v;

    /* JADX WARN: Illegal instructions before constructor call */
    public f(Context context) {
        ContextThemeWrapper contextThemeWrapperG = o9.d.g(context, false);
        super(contextThemeWrapperG, o9.d.h(contextThemeWrapperG));
        this.f2583g = q1.l0.f9055c;
        this.f2598v = new c(0, this);
        this.f2582e = u0.d(getContext());
        this.f = new i0(this, 2);
        this.f2595s = new androidx.appcompat.app.b0(1, this);
    }

    @Override // androidx.appcompat.app.i0, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        try {
            getContext().unregisterReceiver(this.f2595s);
        } catch (IllegalArgumentException unused) {
        }
        super.dismiss();
    }

    public final void i(List list) {
        this.f2597u = SystemClock.uptimeMillis();
        this.f2584h.clear();
        this.f2584h.addAll(list);
        this.f2594r.notifyDataSetChanged();
        c cVar = this.f2598v;
        cVar.removeMessages(3);
        cVar.removeMessages(2);
        if (!list.isEmpty()) {
            l(1);
        } else {
            l(0);
            cVar.sendMessageDelayed(cVar.obtainMessage(2), 5000L);
        }
    }

    public final void j() {
        if (this.f2596t) {
            this.f2582e.getClass();
            u0.b();
            ArrayList arrayList = new ArrayList(u0.c().f8992i);
            int size = arrayList.size();
            while (true) {
                int i6 = size - 1;
                if (size <= 0) {
                    break;
                }
                q1.s0 s0Var = (q1.s0) arrayList.get(i6);
                if (s0Var.d() || !s0Var.f9133g || !s0Var.h(this.f2583g)) {
                    arrayList.remove(i6);
                }
                size = i6;
            }
            Collections.sort(arrayList, e.f2576b);
            if (SystemClock.uptimeMillis() - this.f2597u >= 300) {
                i(arrayList);
                return;
            }
            c cVar = this.f2598v;
            cVar.removeMessages(1);
            cVar.sendMessageAtTime(cVar.obtainMessage(1, arrayList), this.f2597u + 300);
        }
    }

    public final void k(q1.l0 l0Var) {
        if (l0Var == null) {
            throw new IllegalArgumentException("selector must not be null");
        }
        if (this.f2583g.equals(l0Var)) {
            return;
        }
        this.f2583g = l0Var;
        if (this.f2596t) {
            u0 u0Var = this.f2582e;
            i0 i0Var = this.f;
            u0Var.h(i0Var);
            u0Var.a(l0Var, i0Var, 1);
        }
        j();
    }

    public final void l(int i6) {
        if (i6 == 0) {
            setTitle(R.string.mr_chooser_title);
            this.f2593q.setVisibility(8);
            this.f2586j.setVisibility(0);
            this.f2592p.setVisibility(0);
            this.f2590n.setVisibility(8);
            this.f2591o.setVisibility(8);
            this.f2589m.setVisibility(8);
            this.f2587k.setVisibility(8);
            return;
        }
        if (i6 == 1) {
            setTitle(R.string.mr_chooser_title);
            this.f2593q.setVisibility(0);
            this.f2586j.setVisibility(8);
            this.f2592p.setVisibility(8);
            this.f2590n.setVisibility(8);
            this.f2591o.setVisibility(8);
            this.f2589m.setVisibility(8);
            this.f2587k.setVisibility(8);
            return;
        }
        if (i6 == 2) {
            setTitle(R.string.mr_chooser_title);
            this.f2593q.setVisibility(8);
            this.f2586j.setVisibility(8);
            this.f2592p.setVisibility(0);
            this.f2590n.setVisibility(8);
            this.f2591o.setVisibility(8);
            this.f2589m.setVisibility(4);
            this.f2587k.setVisibility(0);
            return;
        }
        if (i6 != 3) {
            return;
        }
        setTitle(R.string.mr_chooser_zero_routes_found_title);
        this.f2593q.setVisibility(8);
        this.f2586j.setVisibility(8);
        this.f2592p.setVisibility(8);
        this.f2590n.setVisibility(0);
        this.f2591o.setVisibility(0);
        this.f2589m.setVisibility(0);
        this.f2587k.setVisibility(0);
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f2596t = true;
        this.f2582e.a(this.f2583g, this.f, 1);
        j();
        c cVar = this.f2598v;
        cVar.removeMessages(2);
        cVar.removeMessages(3);
        cVar.removeMessages(1);
        cVar.sendMessageDelayed(cVar.obtainMessage(2), 5000L);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0149  */
    @Override // androidx.appcompat.app.i0, android.app.Dialog
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onCreate(android.os.Bundle r7) {
        /*
            Method dump skipped, instructions count: 429
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.mediarouter.app.f.onCreate(android.os.Bundle):void");
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public final void onDetachedFromWindow() {
        this.f2596t = false;
        this.f2582e.h(this.f);
        c cVar = this.f2598v;
        cVar.removeMessages(1);
        cVar.removeMessages(2);
        cVar.removeMessages(3);
        super.onDetachedFromWindow();
    }

    @Override // androidx.appcompat.app.i0, android.app.Dialog
    public final void setTitle(CharSequence charSequence) {
        this.f2585i.setText(charSequence);
    }

    @Override // androidx.appcompat.app.i0, android.app.Dialog
    public final void setTitle(int i6) {
        this.f2585i.setText(i6);
    }
}
