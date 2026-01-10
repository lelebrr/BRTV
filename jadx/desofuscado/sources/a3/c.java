package a3;

import android.app.Application;
import android.content.Context;
import android.graphics.Typeface;
import android.os.Bundle;
import android.os.StrictMode;
import android.util.Log;
import android.view.View;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.leanback.widget.VerticalGridView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.gms.cast.framework.media.widget.ExpandedControllerActivity;
import com.google.android.gms.cast.internal.zza;
import com.google.android.gms.cast.internal.zzac;
import com.google.android.gms.cast.zzat;
import com.google.android.material.behavior.SwipeDismissBehavior;
import com.google.android.material.textfield.i;
import com.google.android.material.textfield.m;
import com.google.android.material.textfield.r;
import com.p2elite.brtv2.R;
import com.tencent.bugly.BuglyStrategy;
import com.tencent.bugly.crashreport.crash.anr.TraceFileHelper;
import com.tencent.bugly.proguard.ai;
import com.tencent.bugly.proguard.al;
import com.tencent.bugly.proguard.aq;
import com.tencent.bugly.proguard.ay;
import com.tencent.bugly.proguard.k0;
import com.tencent.bugly.proguard.s;
import e3.v;
import ea.k;
import ea.u;
import fa.j0;
import java.lang.reflect.Method;
import java.util.WeakHashMap;
import ka.f0;
import ka.i0;
import ka.m0;
import n0.s0;
import org.bitspark.android.Spark;
import org.bitspark.android.beans.ChannelBean;
import org.bitspark.android.beans.VodMenu;
import p4.o;
import p8.g;
import r3.n;
import sa.l;
import sa.p;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f91a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f92b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f93c;

    public /* synthetic */ c(int i6, Object obj, Object obj2, boolean z7) {
        this.f91a = i6;
        this.f92b = obj;
        this.f93c = obj2;
    }

    private final void a() {
        try {
            al.a(aq.d.getClass(), "Register broadcast receiver of Bugly.", new Object[0]);
            synchronized (((aq) this.f92b)) {
                ((aq) this.f93c).f5674b.registerReceiver(aq.d, ((aq) this.f93c).f5673a, "com.tencent.bugly.BuglyBroadcastReceiver.permission", null);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        Spark spark;
        boolean z7;
        boolean z10;
        boolean z11;
        boolean z12;
        int i6 = 0;
        switch (this.f91a) {
            case 0:
                d dVar = (d) this.f93c;
                if (dVar.d) {
                    StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder().detectNetwork().penaltyDeath().build());
                }
                try {
                    ((Runnable) this.f92b).run();
                    return;
                } catch (Throwable th) {
                    dVar.f96c.getClass();
                    if (Log.isLoggable("GlideExecutor", 6)) {
                        Log.e("GlideExecutor", "Request threw uncaught throwable", th);
                        return;
                    }
                    return;
                }
            case 1:
                v0.d dVar2 = ((SwipeDismissBehavior) this.f93c).f4641a;
                if (dVar2 == null || !dVar2.g()) {
                    return;
                }
                WeakHashMap weakHashMap = s0.f8353a;
                ((View) this.f92b).postOnAnimation(this);
                return;
            case 2:
                ((androidx.core.app.d) this.f92b).f1157a = this.f93c;
                return;
            case 3:
                ((Application) this.f92b).unregisterActivityLifecycleCallbacks((androidx.core.app.d) this.f93c);
                return;
            case 4:
                try {
                    Method method = androidx.core.app.e.d;
                    Object obj = this.f93c;
                    Object obj2 = this.f92b;
                    if (method != null) {
                        method.invoke(obj2, obj, Boolean.FALSE, "AppCompat recreation");
                    } else {
                        androidx.core.app.e.f1164e.invoke(obj2, obj, Boolean.FALSE);
                    }
                    return;
                } catch (RuntimeException e5) {
                    if (e5.getClass() == RuntimeException.class && e5.getMessage() != null && e5.getMessage().startsWith("Unable to stop")) {
                        throw e5;
                    }
                    return;
                } catch (Throwable th2) {
                    Log.e("ActivityRecreator", "Exception while invoking performStopActivity", th2);
                    return;
                }
            case 5:
                com.google.android.material.textfield.b bVar = (com.google.android.material.textfield.b) this.f93c;
                ((EditText) this.f92b).removeTextChangedListener(((com.google.android.material.textfield.e) bVar.f5308b).f5313e);
                ((com.google.android.material.textfield.e) bVar.f5308b).e(true);
                return;
            case 6:
                boolean zIsPopupShowing = ((AutoCompleteTextView) this.f92b).isPopupShowing();
                i iVar = (i) this.f93c;
                ((m) iVar.f5322b).i(zIsPopupShowing);
                ((m) iVar.f5322b).f5335l = zIsPopupShowing;
                return;
            case 7:
                ((AutoCompleteTextView) this.f92b).removeTextChangedListener(((m) ((com.google.android.material.textfield.b) this.f93c).f5308b).f5329e);
                return;
            case 8:
                ((EditText) this.f92b).removeTextChangedListener(((r) ((com.google.android.material.textfield.b) this.f93c).f5308b).f5371e);
                return;
            case 9:
                ((Runnable) this.f92b).run();
                synchronized (((ai) this.f93c).f5626j) {
                    ai.b((ai) this.f93c);
                }
                return;
            case 10:
                a();
                return;
            case 11:
                ay ayVar = ((k0) this.f93c).f5921b;
                String str = (String) this.f92b;
                if (ayVar.a(true)) {
                    try {
                        al.c("read trace first dump for create time!", new Object[0]);
                        TraceFileHelper.a firstDumpInfo = TraceFileHelper.readFirstDumpInfo(str, false);
                        long jCurrentTimeMillis = firstDumpInfo != null ? firstDumpInfo.f5546c : -1L;
                        if (jCurrentTimeMillis == -1) {
                            al.d("trace dump fail could not get time!", new Object[0]);
                            jCurrentTimeMillis = System.currentTimeMillis();
                        }
                        if (ayVar.a(jCurrentTimeMillis)) {
                            return;
                        }
                        ayVar.a(jCurrentTimeMillis, str);
                        return;
                    } catch (Throwable th3) {
                        if (!al.a(th3)) {
                            th3.printStackTrace();
                        }
                        al.e("handle anr error %s", th3.getClass().toString());
                        return;
                    }
                }
                return;
            case 12:
                s.c((Context) this.f92b, (BuglyStrategy) this.f93c);
                return;
            case 13:
                k kVar = (k) this.f93c;
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) kVar.f6705b.f8719s0.getLayoutParams();
                if (((String) this.f92b).equals(kVar.f6705b.getString(R.string.Top))) {
                    layoutParams.gravity = 48;
                } else {
                    layoutParams.gravity = 80;
                }
                kVar.f6705b.f8719s0.setLayoutParams(layoutParams);
                return;
            case 14:
                ChannelBean channelBean = ra.f.b().f9641e;
                Spark spark2 = (Spark) this.f93c;
                if (channelBean == null || channelBean.getLevel() < 18) {
                    spark2.f8718r1.setProgress((int) org.bitspark.android.utils.m.j((Long) this.f92b));
                } else {
                    spark2.f8718r1.setMax(100);
                    spark2.f8718r1.setProgress(100);
                }
                m0.E0.postDelayed(this, 1000L);
                return;
            case 15:
                break;
            case 16:
                u uVar = Spark.X1;
                ((Spark) this.f93c).e0((Bundle) this.f92b);
                return;
            case 17:
                e0.b bVar2 = (e0.b) ((a0.b) this.f92b).f32b;
                if (bVar2 != null) {
                    bVar2.j((Typeface) this.f93c);
                    return;
                }
                return;
            case 18:
                ((k0.d) this.f92b).accept(this.f93c);
                return;
            case 19:
                v vVarA = v.a();
                vVarA.getClass();
                n.a();
                vVarA.d.set(true);
                ((k3.d) this.f93c).f7711b.f7713b = true;
                ((k3.d) this.f93c).f7710a.getViewTreeObserver().removeOnDrawListener((k3.d) this.f92b);
                ((k3.d) this.f93c).f7711b.f7712a.clear();
                return;
            case 20:
                f0 f0Var = (f0) this.f93c;
                androidx.fragment.app.k0 k0VarK = f0Var.f7783a.h().k();
                String str2 = (String) this.f92b;
                if (((l) k0VarK.z(str2)) != null) {
                    f0Var.f7783a.R(str2);
                    return;
                }
                String strS = a2.a.s("b+oSom52aelVwwSHbG9t7k0=\n", "OYV25gsCCIA=\n");
                String strS2 = a2.a.s("ekFM9ZEU3r/urI0rCUaGjrI=\n", "CDQiz7H8YSc=\n");
                boolean z13 = org.bitspark.android.utils.m.f8784b;
                com.tencent.mars.xlog.Log.i(strS, strS2);
                return;
            case 21:
                i0 i0Var = (i0) this.f93c;
                if (i0Var.f7800g0 != null) {
                    int iE = i0Var.U.e(((fa.m0) this.f92b).d);
                    if (iE == -1) {
                        o9.d.z(i0Var.f7800g0, 0);
                        return;
                    } else {
                        o9.d.z(i0Var.f7800g0, iE);
                        return;
                    }
                }
                return;
            case 22:
                m0.Q((m0) this.f93c, (RecyclerView) this.f92b, 0, 0);
                return;
            case 23:
                j0 j0Var = (j0) this.f93c;
                ma.a aVar = (ma.a) j0Var.d;
                aVar.f8287l = true;
                na.a aVar2 = aVar.f;
                if (aVar2 != null) {
                    aVar2.a((View) this.f92b, j0Var.f6880b, true);
                    return;
                }
                return;
            case 24:
                o oVar = ((p4.n) this.f92b).d;
                v4.b bVar3 = o.F;
                zzac zzacVar = (zzac) this.f93c;
                ApplicationMetadata applicationMetadata = zzacVar.d;
                boolean zE = v4.a.e(applicationMetadata, oVar.f8900s);
                com.google.android.gms.internal.cast.j0 j0Var2 = oVar.C;
                if (!zE) {
                    oVar.f8900s = applicationMetadata;
                    j0Var2.e(applicationMetadata);
                }
                double d = zzacVar.f3893a;
                if (Double.isNaN(d) || Math.abs(d - oVar.f8902u) <= 1.0E-7d) {
                    z7 = false;
                } else {
                    oVar.f8902u = d;
                    z7 = true;
                }
                boolean z14 = oVar.f8903v;
                boolean z15 = zzacVar.f3894b;
                if (z15 != z14) {
                    oVar.f8903v = z15;
                    z7 = true;
                }
                Object[] objArr = {Boolean.valueOf(z7), Boolean.valueOf(oVar.f8893l)};
                v4.b bVar4 = o.F;
                bVar4.b("hasVolumeChanged=%b, mFirstDeviceStatusUpdate=%b", objArr);
                if (j0Var2 != null && (z7 || oVar.f8893l)) {
                    j0Var2.l();
                }
                Double.isNaN(zzacVar.f3897g);
                int i10 = oVar.f8904w;
                int i11 = zzacVar.f3895c;
                if (i11 != i10) {
                    oVar.f8904w = i11;
                    z10 = true;
                } else {
                    z10 = false;
                }
                bVar4.b("hasActiveInputChanged=%b, mFirstDeviceStatusUpdate=%b", Boolean.valueOf(z10), Boolean.valueOf(oVar.f8893l));
                if (j0Var2 != null && (z10 || oVar.f8893l)) {
                    j0Var2.a(oVar.f8904w);
                }
                int i12 = oVar.f8905x;
                int i13 = zzacVar.f3896e;
                if (i13 != i12) {
                    oVar.f8905x = i13;
                    z11 = true;
                } else {
                    z11 = false;
                }
                bVar4.b("hasStandbyStateChanged=%b, mFirstDeviceStatusUpdate=%b", Boolean.valueOf(z11), Boolean.valueOf(oVar.f8893l));
                if (j0Var2 != null && (z11 || oVar.f8893l)) {
                    j0Var2.j(oVar.f8905x);
                }
                zzat zzatVar = oVar.f8906y;
                zzat zzatVar2 = zzacVar.f;
                if (!v4.a.e(zzatVar, zzatVar2)) {
                    oVar.f8906y = zzatVar2;
                }
                oVar.f8893l = false;
                return;
            case 25:
                o oVar2 = ((p4.n) this.f92b).d;
                v4.b bVar5 = o.F;
                String str3 = ((zza) this.f93c).f3885a;
                if (v4.a.e(str3, oVar2.f8901t)) {
                    z12 = false;
                } else {
                    oVar2.f8901t = str3;
                    z12 = true;
                }
                o.F.b("hasChanged=%b, mFirstApplicationStatusUpdate=%b", Boolean.valueOf(z12), Boolean.valueOf(oVar2.f8894m));
                com.google.android.gms.internal.cast.j0 j0Var3 = oVar2.C;
                if (j0Var3 != null && (z12 || oVar2.f8894m)) {
                    j0Var3.g();
                }
                oVar2.f8894m = false;
                return;
            case 26:
                ((g) this.f93c).f8913j.F((p8.f) this.f92b);
                return;
            case 27:
                RecyclerView recyclerView = (RecyclerView) this.f92b;
                int width = recyclerView.getWidth();
                l lVar = (l) this.f93c;
                float fQ = width / n5.d.q(lVar.h(), 84);
                if (fQ >= 7.0f) {
                    lVar.W = 7;
                } else {
                    lVar.W = (int) fQ;
                }
                if (lVar.W != 0) {
                    if (lVar.V.h()) {
                        recyclerView.setLayoutManager(new GridLayoutManager(lVar.W));
                    } else {
                        ((VerticalGridView) recyclerView).setNumColumns(lVar.W);
                    }
                }
                lVar.U.setVisibility(0);
                return;
            case 28:
                TextView textView = ((p) this.f93c).f9884m0;
                if (textView != null) {
                    textView.setText((String) this.f92b);
                    return;
                }
                return;
            default:
                ExpandedControllerActivity expandedControllerActivity = ((u4.d) this.f93c).f10339b;
                int i14 = ExpandedControllerActivity.f3868n0;
                expandedControllerActivity.r((r4.f) this.f92b);
                return;
        }
        while (true) {
            spark = (Spark) this.f93c;
            if (i6 < spark.i0.E.size()) {
                if (((VodMenu) spark.i0.E.get(i6)).getName().equals((String) this.f92b)) {
                    spark.i0.f10268x = i6;
                } else {
                    i6++;
                }
            }
        }
        if (spark.W()) {
            o9.d.z(spark.f8734z0, spark.i0.f10268x);
        }
    }

    public /* synthetic */ c(Object obj, int i6, Object obj2) {
        this.f91a = i6;
        this.f93c = obj;
        this.f92b = obj2;
    }

    public c(SwipeDismissBehavior swipeDismissBehavior, View view, boolean z7) {
        this.f91a = 1;
        this.f93c = swipeDismissBehavior;
        this.f92b = view;
    }
}
