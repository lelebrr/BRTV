package androidx.fragment.app;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import androidx.activity.ComponentActivity;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class FragmentActivity extends ComponentActivity implements androidx.core.app.b, androidx.core.app.c {

    /* renamed from: t, reason: collision with root package name */
    public boolean f1381t;

    /* renamed from: u, reason: collision with root package name */
    public boolean f1382u;

    /* renamed from: r, reason: collision with root package name */
    public final d f1379r = new d(2, new v(this));

    /* renamed from: s, reason: collision with root package name */
    public final androidx.lifecycle.y f1380s = new androidx.lifecycle.y(this);

    /* renamed from: v, reason: collision with root package name */
    public boolean f1383v = true;

    public FragmentActivity() {
        ((androidx.appcompat.widget.v) this.f197e.d).f("android:support:fragments", new t(this));
        i(new u(this));
    }

    public static boolean l(j0 j0Var) {
        boolean zL = false;
        for (s sVar : j0Var.f1459c.w()) {
            if (sVar != null) {
                v vVar = sVar.f1537t;
                if ((vVar == null ? null : vVar.f1558j) != null) {
                    zL |= l(sVar.i());
                }
                s0 s0Var = sVar.N;
                androidx.lifecycle.o oVar = androidx.lifecycle.o.d;
                if (s0Var != null) {
                    s0Var.g();
                    if (s0Var.d.d.compareTo(oVar) >= 0) {
                        sVar.N.d.h();
                        zL = true;
                    }
                }
                if (sVar.M.d.compareTo(oVar) >= 0) {
                    sVar.M.h();
                    zL = true;
                }
            }
        }
        return zL;
    }

    @Override // android.app.Activity
    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        printWriter.print(str);
        printWriter.print("Local FragmentActivity ");
        printWriter.print(Integer.toHexString(System.identityHashCode(this)));
        printWriter.println(" State:");
        String str2 = str + "  ";
        printWriter.print(str2);
        printWriter.print("mCreated=");
        printWriter.print(this.f1381t);
        printWriter.print(" mResumed=");
        printWriter.print(this.f1382u);
        printWriter.print(" mStopped=");
        printWriter.print(this.f1383v);
        if (getApplication() != null) {
            new a7.f(this, e()).z(str2, printWriter);
        }
        ((v) this.f1379r.f1438b).f1557i.r(str, fileDescriptor, printWriter, strArr);
    }

    public final k0 k() {
        return ((v) this.f1379r.f1438b).f1557i;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void onActivityResult(int i6, int i10, Intent intent) {
        this.f1379r.b();
        super.onActivityResult(i6, i10, intent);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        d dVar = this.f1379r;
        dVar.b();
        super.onConfigurationChanged(configuration);
        ((v) dVar.f1438b).f1557i.h(configuration);
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f1380s.f(androidx.lifecycle.n.ON_CREATE);
        k0 k0Var = ((v) this.f1379r.f1438b).f1557i;
        k0Var.f1479y = false;
        k0Var.f1480z = false;
        k0Var.F.f1487i = false;
        k0Var.p(1);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity, android.view.Window.Callback
    public final boolean onCreatePanelMenu(int i6, Menu menu) {
        if (i6 != 0) {
            super.onCreatePanelMenu(i6, menu);
            return true;
        }
        super.onCreatePanelMenu(i6, menu);
        getMenuInflater();
        ((v) this.f1379r.f1438b).f1557i.j();
        return true;
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory2
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        View viewOnCreateView = ((v) this.f1379r.f1438b).f1557i.f.onCreateView(view, str, context, attributeSet);
        return viewOnCreateView == null ? super.onCreateView(view, str, context, attributeSet) : viewOnCreateView;
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        ((v) this.f1379r.f1438b).f1557i.k();
        this.f1380s.f(androidx.lifecycle.n.ON_DESTROY);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public final void onLowMemory() {
        super.onLowMemory();
        for (s sVar : ((v) this.f1379r.f1438b).f1557i.f1459c.w()) {
            if (sVar != null) {
                sVar.G();
            }
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity, android.view.Window.Callback
    public boolean onMenuItemSelected(int i6, MenuItem menuItem) {
        if (super.onMenuItemSelected(i6, menuItem)) {
            return true;
        }
        d dVar = this.f1379r;
        if (i6 == 0) {
            return ((v) dVar.f1438b).f1557i.l();
        }
        if (i6 != 6) {
            return false;
        }
        return ((v) dVar.f1438b).f1557i.i();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void onMultiWindowModeChanged(boolean z7) {
        for (s sVar : ((v) this.f1379r.f1438b).f1557i.f1459c.w()) {
            if (sVar != null) {
                sVar.H(z7);
            }
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void onNewIntent(Intent intent) {
        this.f1379r.b();
        super.onNewIntent(intent);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity, android.view.Window.Callback
    public void onPanelClosed(int i6, Menu menu) {
        if (i6 == 0) {
            ((v) this.f1379r.f1438b).f1557i.m();
        }
        super.onPanelClosed(i6, menu);
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        this.f1382u = false;
        ((v) this.f1379r.f1438b).f1557i.p(5);
        this.f1380s.f(androidx.lifecycle.n.ON_PAUSE);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void onPictureInPictureModeChanged(boolean z7) {
        for (s sVar : ((v) this.f1379r.f1438b).f1557i.f1459c.w()) {
            if (sVar != null) {
                sVar.I(z7);
            }
        }
    }

    @Override // android.app.Activity
    public void onPostResume() {
        super.onPostResume();
        this.f1380s.f(androidx.lifecycle.n.ON_RESUME);
        k0 k0Var = ((v) this.f1379r.f1438b).f1557i;
        k0Var.f1479y = false;
        k0Var.f1480z = false;
        k0Var.F.f1487i = false;
        k0Var.p(7);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity, android.view.Window.Callback
    public final boolean onPreparePanel(int i6, View view, Menu menu) {
        if (i6 != 0) {
            super.onPreparePanel(i6, view, menu);
            return true;
        }
        super.onPreparePanel(0, view, menu);
        ((v) this.f1379r.f1438b).f1557i.o();
        return true;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void onRequestPermissionsResult(int i6, String[] strArr, int[] iArr) {
        this.f1379r.b();
        super.onRequestPermissionsResult(i6, strArr, iArr);
    }

    @Override // android.app.Activity
    public void onResume() {
        d dVar = this.f1379r;
        dVar.b();
        super.onResume();
        this.f1382u = true;
        ((v) dVar.f1438b).f1557i.u(true);
    }

    @Override // android.app.Activity
    public void onStart() {
        d dVar = this.f1379r;
        dVar.b();
        super.onStart();
        this.f1383v = false;
        boolean z7 = this.f1381t;
        v vVar = (v) dVar.f1438b;
        if (!z7) {
            this.f1381t = true;
            k0 k0Var = vVar.f1557i;
            k0Var.f1479y = false;
            k0Var.f1480z = false;
            k0Var.F.f1487i = false;
            k0Var.p(4);
        }
        vVar.f1557i.u(true);
        this.f1380s.f(androidx.lifecycle.n.ON_START);
        k0 k0Var2 = vVar.f1557i;
        k0Var2.f1479y = false;
        k0Var2.f1480z = false;
        k0Var2.F.f1487i = false;
        k0Var2.p(5);
    }

    @Override // android.app.Activity
    public final void onStateNotSaved() {
        this.f1379r.b();
    }

    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        this.f1383v = true;
        while (l(k())) {
        }
        k0 k0Var = ((v) this.f1379r.f1438b).f1557i;
        k0Var.f1480z = true;
        k0Var.F.f1487i = true;
        k0Var.p(4);
        this.f1380s.f(androidx.lifecycle.n.ON_STOP);
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory
    public final View onCreateView(String str, Context context, AttributeSet attributeSet) {
        View viewOnCreateView = ((v) this.f1379r.f1438b).f1557i.f.onCreateView(null, str, context, attributeSet);
        return viewOnCreateView == null ? super.onCreateView(str, context, attributeSet) : viewOnCreateView;
    }
}
