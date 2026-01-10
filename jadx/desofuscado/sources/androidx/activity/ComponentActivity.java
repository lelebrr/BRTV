package androidx.activity;

import a.c;
import a.f;
import a.g;
import a.q;
import a.r;
import android.annotation.SuppressLint;
import android.app.Application;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.os.Trace;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.activity.ComponentActivity;
import androidx.appcompat.widget.v;
import androidx.lifecycle.a1;
import androidx.lifecycle.j;
import androidx.lifecycle.j0;
import androidx.lifecycle.l0;
import androidx.lifecycle.o;
import androidx.lifecycle.o0;
import androidx.lifecycle.p;
import androidx.lifecycle.q0;
import androidx.lifecycle.s0;
import androidx.lifecycle.w0;
import androidx.lifecycle.y;
import androidx.lifecycle.y0;
import androidx.lifecycle.z0;
import b.a;
import c.b;
import com.p2elite.brtv2.R;
import d7.c2;
import j9.i;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Random;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicInteger;
import k3.t;
import l6.h;
import v1.e;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class ComponentActivity extends androidx.core.app.ComponentActivity implements a1, j, e, r, b {

    /* renamed from: q, reason: collision with root package name */
    public static final /* synthetic */ int f194q = 0;

    /* renamed from: b, reason: collision with root package name */
    public final a f195b = new a();

    /* renamed from: c, reason: collision with root package name */
    public final h f196c = new h(new a.b(0, this));
    public final y d;

    /* renamed from: e, reason: collision with root package name */
    public final t f197e;
    public z0 f;

    /* renamed from: g, reason: collision with root package name */
    public s0 f198g;

    /* renamed from: h, reason: collision with root package name */
    public final q f199h;

    /* renamed from: i, reason: collision with root package name */
    public final g f200i;

    /* renamed from: j, reason: collision with root package name */
    public final CopyOnWriteArrayList f201j;

    /* renamed from: k, reason: collision with root package name */
    public final CopyOnWriteArrayList f202k;

    /* renamed from: l, reason: collision with root package name */
    public final CopyOnWriteArrayList f203l;

    /* renamed from: m, reason: collision with root package name */
    public final CopyOnWriteArrayList f204m;

    /* renamed from: n, reason: collision with root package name */
    public final CopyOnWriteArrayList f205n;

    /* renamed from: o, reason: collision with root package name */
    public boolean f206o;

    /* renamed from: p, reason: collision with root package name */
    public boolean f207p;

    public ComponentActivity() {
        y yVar = new y(this);
        this.d = yVar;
        t tVar = new t((e) this);
        this.f197e = tVar;
        this.f199h = new q(new f(0, this));
        new AtomicInteger();
        this.f200i = new g(this);
        this.f201j = new CopyOnWriteArrayList();
        this.f202k = new CopyOnWriteArrayList();
        this.f203l = new CopyOnWriteArrayList();
        this.f204m = new CopyOnWriteArrayList();
        this.f205n = new CopyOnWriteArrayList();
        this.f206o = false;
        this.f207p = false;
        int i6 = Build.VERSION.SDK_INT;
        yVar.a(new a.h(this, 0));
        yVar.a(new a.h(this, 1));
        yVar.a(new a.h(this, 2));
        tVar.d();
        o oVar = yVar.d;
        if (oVar != o.f1981b && oVar != o.f1982c) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        v vVar = (v) tVar.d;
        if (vVar.d() == null) {
            q0 q0Var = new q0(vVar, this);
            vVar.f("androidx.lifecycle.internal.SavedStateHandlesProvider", q0Var);
            yVar.a(new v1.a(2, q0Var));
        }
        if (i6 <= 23) {
            a.h hVar = new a.h();
            hVar.f17b = this;
            yVar.a(hVar);
        }
        vVar.f("android:support:activity-result", new c(0, this));
        i(new b.b() { // from class: a.d
            @Override // b.b
            public final void a() {
                ComponentActivity componentActivity = this.f5a;
                Bundle bundleC = ((v) componentActivity.f197e.d).c("android:support:activity-result");
                if (bundleC != null) {
                    g gVar = componentActivity.f200i;
                    gVar.getClass();
                    ArrayList<Integer> integerArrayList = bundleC.getIntegerArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_RCS");
                    ArrayList<String> stringArrayList = bundleC.getStringArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS");
                    if (stringArrayList == null || integerArrayList == null) {
                        return;
                    }
                    gVar.f11e = bundleC.getStringArrayList("KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS");
                    gVar.f8a = (Random) bundleC.getSerializable("KEY_COMPONENT_ACTIVITY_RANDOM_OBJECT");
                    Bundle bundle = bundleC.getBundle("KEY_COMPONENT_ACTIVITY_PENDING_RESULT");
                    Bundle bundle2 = gVar.f13h;
                    bundle2.putAll(bundle);
                    for (int i10 = 0; i10 < stringArrayList.size(); i10++) {
                        String str = stringArrayList.get(i10);
                        HashMap map = gVar.f10c;
                        boolean zContainsKey = map.containsKey(str);
                        HashMap map2 = gVar.f9b;
                        if (zContainsKey) {
                            Integer num = (Integer) map.remove(str);
                            if (!bundle2.containsKey(str)) {
                                map2.remove(num);
                            }
                        }
                        Integer num2 = integerArrayList.get(i10);
                        num2.intValue();
                        String str2 = stringArrayList.get(i10);
                        map2.put(num2, str2);
                        map.put(str2, num2);
                    }
                }
            }
        });
    }

    @Override // v1.e
    public final v a() {
        return (v) this.f197e.d;
    }

    @Override // android.app.Activity
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        j();
        super.addContentView(view, layoutParams);
    }

    @Override // androidx.lifecycle.j
    public final y0 c() {
        if (this.f198g == null) {
            this.f198g = new s0(getApplication(), this, getIntent() != null ? getIntent().getExtras() : null);
        }
        return this.f198g;
    }

    @Override // androidx.lifecycle.j
    public final c2 d() {
        j1.b bVar = new j1.b(j1.a.f7427b);
        Application application = getApplication();
        LinkedHashMap linkedHashMap = (LinkedHashMap) bVar.f6105a;
        if (application != null) {
            linkedHashMap.put(w0.f2010b, getApplication());
        }
        linkedHashMap.put(o0.f1984a, this);
        linkedHashMap.put(o0.f1985b, this);
        if (getIntent() != null && getIntent().getExtras() != null) {
            linkedHashMap.put(o0.f1986c, getIntent().getExtras());
        }
        return bVar;
    }

    @Override // androidx.lifecycle.a1
    public final z0 e() {
        if (getApplication() == null) {
            throw new IllegalStateException("Your activity is not yet attached to the Application instance. You can't request ViewModel before onCreate call.");
        }
        if (this.f == null) {
            a.j jVar = (a.j) getLastNonConfigurationInstance();
            if (jVar != null) {
                this.f = jVar.f18a;
            }
            if (this.f == null) {
                this.f = new z0();
            }
        }
        return this.f;
    }

    @Override // androidx.core.app.ComponentActivity, androidx.lifecycle.w
    public final p f() {
        return this.d;
    }

    public final void i(b.b bVar) {
        a aVar = this.f195b;
        if (((ComponentActivity) aVar.f3092a) != null) {
            bVar.a();
        }
        ((CopyOnWriteArraySet) aVar.f3093b).add(bVar);
    }

    public final void j() {
        View decorView = getWindow().getDecorView();
        i.f(decorView, "<this>");
        decorView.setTag(R.id.view_tree_lifecycle_owner, this);
        View decorView2 = getWindow().getDecorView();
        i.f(decorView2, "<this>");
        decorView2.setTag(R.id.view_tree_view_model_store_owner, this);
        View decorView3 = getWindow().getDecorView();
        i.f(decorView3, "<this>");
        decorView3.setTag(R.id.view_tree_saved_state_registry_owner, this);
        View decorView4 = getWindow().getDecorView();
        i.f(decorView4, "<this>");
        decorView4.setTag(R.id.view_tree_on_back_pressed_dispatcher_owner, this);
    }

    @Override // android.app.Activity
    public void onActivityResult(int i6, int i10, Intent intent) {
        if (this.f200i.a(i6, i10, intent)) {
            return;
        }
        super.onActivityResult(i6, i10, intent);
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        this.f199h.c();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        Iterator it = this.f201j.iterator();
        while (it.hasNext()) {
            ((m0.a) it.next()).accept(configuration);
        }
    }

    @Override // androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        this.f197e.e(bundle);
        a aVar = this.f195b;
        aVar.f3092a = this;
        Iterator it = ((CopyOnWriteArraySet) aVar.f3093b).iterator();
        while (it.hasNext()) {
            ((b.b) it.next()).a();
        }
        super.onCreate(bundle);
        int i6 = l0.f1970b;
        j0.b(this);
        if (j0.b.a()) {
            q qVar = this.f199h;
            qVar.f = a.i.a(this);
            qVar.d();
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onCreatePanelMenu(int i6, Menu menu) {
        if (i6 != 0) {
            return true;
        }
        super.onCreatePanelMenu(i6, menu);
        getMenuInflater();
        Iterator it = ((CopyOnWriteArrayList) this.f196c.f8017c).iterator();
        if (it.hasNext()) {
            throw a.e.l(it);
        }
        return true;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuItemSelected(int i6, MenuItem menuItem) {
        if (super.onMenuItemSelected(i6, menuItem)) {
            return true;
        }
        if (i6 != 0) {
            return false;
        }
        Iterator it = ((CopyOnWriteArrayList) this.f196c.f8017c).iterator();
        if (it.hasNext()) {
            throw a.e.l(it);
        }
        return false;
    }

    @Override // android.app.Activity
    public void onMultiWindowModeChanged(boolean z7) {
        if (this.f206o) {
            return;
        }
        Iterator it = this.f204m.iterator();
        while (it.hasNext()) {
            ((m0.a) it.next()).accept(new x4.e(1));
        }
    }

    @Override // android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        Iterator it = this.f203l.iterator();
        while (it.hasNext()) {
            ((m0.a) it.next()).accept(intent);
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onPanelClosed(int i6, Menu menu) {
        Iterator it = ((CopyOnWriteArrayList) this.f196c.f8017c).iterator();
        if (it.hasNext()) {
            throw a.e.l(it);
        }
        super.onPanelClosed(i6, menu);
    }

    @Override // android.app.Activity
    public void onPictureInPictureModeChanged(boolean z7) {
        if (this.f207p) {
            return;
        }
        Iterator it = this.f205n.iterator();
        while (it.hasNext()) {
            ((m0.a) it.next()).accept(new u6.e(2));
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onPreparePanel(int i6, View view, Menu menu) {
        if (i6 != 0) {
            return true;
        }
        super.onPreparePanel(i6, view, menu);
        Iterator it = ((CopyOnWriteArrayList) this.f196c.f8017c).iterator();
        if (it.hasNext()) {
            throw a.e.l(it);
        }
        return true;
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i6, String[] strArr, int[] iArr) {
        if (this.f200i.a(i6, -1, new Intent().putExtra("androidx.activity.result.contract.extra.PERMISSIONS", strArr).putExtra("androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS", iArr)) || Build.VERSION.SDK_INT < 23) {
            return;
        }
        super.onRequestPermissionsResult(i6, strArr, iArr);
    }

    @Override // android.app.Activity
    public final Object onRetainNonConfigurationInstance() {
        a.j jVar;
        z0 z0Var = this.f;
        if (z0Var == null && (jVar = (a.j) getLastNonConfigurationInstance()) != null) {
            z0Var = jVar.f18a;
        }
        if (z0Var == null) {
            return null;
        }
        a.j jVar2 = new a.j();
        jVar2.f18a = z0Var;
        return jVar2;
    }

    @Override // androidx.core.app.ComponentActivity, android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        y yVar = this.d;
        if (yVar instanceof y) {
            yVar.h();
        }
        super.onSaveInstanceState(bundle);
        this.f197e.f(bundle);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks2
    public final void onTrimMemory(int i6) {
        super.onTrimMemory(i6);
        Iterator it = this.f202k.iterator();
        while (it.hasNext()) {
            ((m0.a) it.next()).accept(Integer.valueOf(i6));
        }
    }

    @Override // android.app.Activity
    public final void reportFullyDrawn() {
        try {
            if (r4.b.B()) {
                Trace.beginSection("reportFullyDrawn() for ComponentActivity");
            }
            super.reportFullyDrawn();
            Trace.endSection();
        } catch (Throwable th) {
            Trace.endSection();
            throw th;
        }
    }

    @Override // android.app.Activity
    public void setContentView(int i6) {
        j();
        super.setContentView(i6);
    }

    @Override // android.app.Activity
    public void setContentView(@SuppressLint({"UnknownNullness", "MissingNullability"}) View view) {
        j();
        super.setContentView(view);
    }

    @Override // android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        j();
        super.setContentView(view, layoutParams);
    }

    @Override // android.app.Activity
    public final void onMultiWindowModeChanged(boolean z7, Configuration configuration) {
        this.f206o = true;
        try {
            super.onMultiWindowModeChanged(z7, configuration);
            this.f206o = false;
            Iterator it = this.f204m.iterator();
            while (it.hasNext()) {
                m0.a aVar = (m0.a) it.next();
                i.f(configuration, "newConfig");
                aVar.accept(new x4.e(1));
            }
        } catch (Throwable th) {
            this.f206o = false;
            throw th;
        }
    }

    @Override // android.app.Activity
    public final void onPictureInPictureModeChanged(boolean z7, Configuration configuration) {
        this.f207p = true;
        try {
            super.onPictureInPictureModeChanged(z7, configuration);
            this.f207p = false;
            Iterator it = this.f205n.iterator();
            while (it.hasNext()) {
                m0.a aVar = (m0.a) it.next();
                i.f(configuration, "newConfig");
                aVar.accept(new u6.e(2));
            }
        } catch (Throwable th) {
            this.f207p = false;
            throw th;
        }
    }
}
