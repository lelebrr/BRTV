package androidx.mediarouter.app;

import android.content.Context;
import android.os.Bundle;
import android.os.SystemClock;
import android.view.ContextThemeWrapper;
import android.widget.ImageButton;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.p2elite.brtv2.R;
import java.util.ArrayList;
import java.util.Collections;
import q1.u0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c0 extends androidx.appcompat.app.i0 {

    /* renamed from: e, reason: collision with root package name */
    public final u0 f2559e;
    public final i0 f;

    /* renamed from: g, reason: collision with root package name */
    public final Context f2560g;

    /* renamed from: h, reason: collision with root package name */
    public q1.l0 f2561h;

    /* renamed from: i, reason: collision with root package name */
    public ArrayList f2562i;

    /* renamed from: j, reason: collision with root package name */
    public b0 f2563j;

    /* renamed from: k, reason: collision with root package name */
    public RecyclerView f2564k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f2565l;

    /* renamed from: m, reason: collision with root package name */
    public q1.s0 f2566m;

    /* renamed from: n, reason: collision with root package name */
    public final long f2567n;

    /* renamed from: o, reason: collision with root package name */
    public long f2568o;

    /* renamed from: p, reason: collision with root package name */
    public final c f2569p;

    /* JADX WARN: Illegal instructions before constructor call */
    public c0(Context context) {
        ContextThemeWrapper contextThemeWrapperG = o9.d.g(context, false);
        super(contextThemeWrapperG, o9.d.h(contextThemeWrapperG));
        this.f2561h = q1.l0.f9055c;
        this.f2569p = new c(1, this);
        Context context2 = getContext();
        this.f2559e = u0.d(context2);
        this.f = new i0(this, 4);
        this.f2560g = context2;
        this.f2567n = context2.getResources().getInteger(R.integer.mr_update_routes_delay_ms);
    }

    public final void i() {
        if (this.f2566m == null && this.f2565l) {
            this.f2559e.getClass();
            u0.b();
            ArrayList arrayList = new ArrayList(u0.c().f8992i);
            int size = arrayList.size();
            while (true) {
                int i6 = size - 1;
                if (size <= 0) {
                    break;
                }
                q1.s0 s0Var = (q1.s0) arrayList.get(i6);
                if (s0Var.d() || !s0Var.f9133g || !s0Var.h(this.f2561h)) {
                    arrayList.remove(i6);
                }
                size = i6;
            }
            Collections.sort(arrayList, e.f2577c);
            long jUptimeMillis = SystemClock.uptimeMillis() - this.f2568o;
            long j10 = this.f2567n;
            if (jUptimeMillis < j10) {
                c cVar = this.f2569p;
                cVar.removeMessages(1);
                cVar.sendMessageAtTime(cVar.obtainMessage(1, arrayList), this.f2568o + j10);
            } else {
                this.f2568o = SystemClock.uptimeMillis();
                this.f2562i.clear();
                this.f2562i.addAll(arrayList);
                this.f2563j.a();
            }
        }
    }

    public final void j(q1.l0 l0Var) {
        if (l0Var == null) {
            throw new IllegalArgumentException("selector must not be null");
        }
        if (this.f2561h.equals(l0Var)) {
            return;
        }
        this.f2561h = l0Var;
        if (this.f2565l) {
            u0 u0Var = this.f2559e;
            i0 i0Var = this.f;
            u0Var.h(i0Var);
            u0Var.a(l0Var, i0Var, 1);
        }
        i();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f2565l = true;
        this.f2559e.a(this.f2561h, this.f, 1);
        i();
    }

    @Override // androidx.appcompat.app.i0, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.mr_picker_dialog);
        Context context = this.f2560g;
        getWindow().getDecorView().setBackgroundColor(u7.d.i(context, o9.d.t(context) ? R.color.mr_dynamic_dialog_background_light : R.color.mr_dynamic_dialog_background_dark));
        this.f2562i = new ArrayList();
        ((ImageButton) findViewById(R.id.mr_picker_close_button)).setOnClickListener(new g0(2, this));
        this.f2563j = new b0(this);
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.mr_picker_list);
        this.f2564k = recyclerView;
        recyclerView.setAdapter(this.f2563j);
        this.f2564k.setLayoutManager(new LinearLayoutManager(1));
        Context context2 = this.f2560g;
        getWindow().setLayout(!context2.getResources().getBoolean(R.bool.is_tablet) ? -1 : n5.d.v(context2), context2.getResources().getBoolean(R.bool.is_tablet) ? -2 : -1);
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f2565l = false;
        this.f2559e.h(this.f);
        this.f2569p.removeMessages(1);
    }
}
