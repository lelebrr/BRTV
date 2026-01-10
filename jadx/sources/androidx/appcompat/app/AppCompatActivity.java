package androidx.appcompat.app;

import android.R;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.appcompat.widget.a4;
import androidx.fragment.app.FragmentActivity;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Objects;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class AppCompatActivity extends FragmentActivity implements m {

    /* renamed from: w, reason: collision with root package name */
    public g0 f216w;

    public AppCompatActivity() {
        ((androidx.appcompat.widget.v) this.f197e.d).f("androidx:appcompat", new k(this));
        i(new l(this));
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void addContentView(View view, ViewGroup.LayoutParams layoutParams) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        o();
        g0 g0Var = (g0) m();
        g0Var.w();
        ((ViewGroup) g0Var.B.findViewById(R.id.content)).addView(view, layoutParams);
        g0Var.f276m.a(g0Var.f275l.getCallback());
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    public void attachBaseContext(Context context) {
        g0 g0Var = (g0) m();
        g0Var.P = true;
        int i6 = g0Var.T;
        if (i6 == -100) {
            i6 = q.f342b;
        }
        int iD = g0Var.D(context, i6);
        if (q.c(context) && q.c(context)) {
            if (!j0.b.a()) {
                synchronized (q.f347i) {
                    try {
                        j0.i iVar = q.f343c;
                        if (iVar == null) {
                            if (q.d == null) {
                                q.d = j0.i.b(n5.d.L(context));
                            }
                            if (!q.d.f7420a.isEmpty()) {
                                q.f343c = q.d;
                            }
                        } else if (!iVar.equals(q.d)) {
                            j0.i iVar2 = q.f343c;
                            q.d = iVar2;
                            n5.d.E(context, iVar2.f7420a.a());
                        }
                    } finally {
                    }
                }
            } else if (!q.f) {
                q.f341a.execute(new n(context, 0));
            }
        }
        j0.i iVarP = g0.p(context);
        Configuration configuration = null;
        if (g0.f265m0 && (context instanceof ContextThemeWrapper)) {
            try {
                ((ContextThemeWrapper) context).applyOverrideConfiguration(g0.t(context, iD, iVarP, null, false));
            } catch (IllegalStateException unused) {
            }
        } else if (context instanceof j.d) {
            try {
                ((j.d) context).a(g0.t(context, iD, iVarP, null, false));
            } catch (IllegalStateException unused2) {
            }
        } else if (g0.f264l0) {
            int i10 = Build.VERSION.SDK_INT;
            Configuration configuration2 = new Configuration();
            configuration2.uiMode = -1;
            configuration2.fontScale = 0.0f;
            Configuration configuration3 = context.createConfigurationContext(configuration2).getResources().getConfiguration();
            Configuration configuration4 = context.getResources().getConfiguration();
            configuration3.uiMode = configuration4.uiMode;
            if (!configuration3.equals(configuration4)) {
                configuration = new Configuration();
                configuration.fontScale = 0.0f;
                if (configuration3.diff(configuration4) != 0) {
                    float f = configuration3.fontScale;
                    float f3 = configuration4.fontScale;
                    if (f != f3) {
                        configuration.fontScale = f3;
                    }
                    int i11 = configuration3.mcc;
                    int i12 = configuration4.mcc;
                    if (i11 != i12) {
                        configuration.mcc = i12;
                    }
                    int i13 = configuration3.mnc;
                    int i14 = configuration4.mnc;
                    if (i13 != i14) {
                        configuration.mnc = i14;
                    }
                    if (i10 >= 24) {
                        w.a(configuration3, configuration4, configuration);
                    } else if (!Objects.equals(configuration3.locale, configuration4.locale)) {
                        configuration.locale = configuration4.locale;
                    }
                    int i15 = configuration3.touchscreen;
                    int i16 = configuration4.touchscreen;
                    if (i15 != i16) {
                        configuration.touchscreen = i16;
                    }
                    int i17 = configuration3.keyboard;
                    int i18 = configuration4.keyboard;
                    if (i17 != i18) {
                        configuration.keyboard = i18;
                    }
                    int i19 = configuration3.keyboardHidden;
                    int i20 = configuration4.keyboardHidden;
                    if (i19 != i20) {
                        configuration.keyboardHidden = i20;
                    }
                    int i21 = configuration3.navigation;
                    int i22 = configuration4.navigation;
                    if (i21 != i22) {
                        configuration.navigation = i22;
                    }
                    int i23 = configuration3.navigationHidden;
                    int i24 = configuration4.navigationHidden;
                    if (i23 != i24) {
                        configuration.navigationHidden = i24;
                    }
                    int i25 = configuration3.orientation;
                    int i26 = configuration4.orientation;
                    if (i25 != i26) {
                        configuration.orientation = i26;
                    }
                    int i27 = configuration3.screenLayout & 15;
                    int i28 = configuration4.screenLayout & 15;
                    if (i27 != i28) {
                        configuration.screenLayout |= i28;
                    }
                    int i29 = configuration3.screenLayout & 192;
                    int i30 = configuration4.screenLayout & 192;
                    if (i29 != i30) {
                        configuration.screenLayout |= i30;
                    }
                    int i31 = configuration3.screenLayout & 48;
                    int i32 = configuration4.screenLayout & 48;
                    if (i31 != i32) {
                        configuration.screenLayout |= i32;
                    }
                    int i33 = configuration3.screenLayout & 768;
                    int i34 = configuration4.screenLayout & 768;
                    if (i33 != i34) {
                        configuration.screenLayout |= i34;
                    }
                    if (i10 >= 26) {
                        if ((configuration3.colorMode & 3) != (configuration4.colorMode & 3)) {
                            configuration.colorMode |= configuration4.colorMode & 3;
                        }
                        if ((configuration3.colorMode & 12) != (configuration4.colorMode & 12)) {
                            configuration.colorMode |= configuration4.colorMode & 12;
                        }
                    }
                    int i35 = configuration3.uiMode & 15;
                    int i36 = configuration4.uiMode & 15;
                    if (i35 != i36) {
                        configuration.uiMode |= i36;
                    }
                    int i37 = configuration3.uiMode & 48;
                    int i38 = configuration4.uiMode & 48;
                    if (i37 != i38) {
                        configuration.uiMode |= i38;
                    }
                    int i39 = configuration3.screenWidthDp;
                    int i40 = configuration4.screenWidthDp;
                    if (i39 != i40) {
                        configuration.screenWidthDp = i40;
                    }
                    int i41 = configuration3.screenHeightDp;
                    int i42 = configuration4.screenHeightDp;
                    if (i41 != i42) {
                        configuration.screenHeightDp = i42;
                    }
                    int i43 = configuration3.smallestScreenWidthDp;
                    int i44 = configuration4.smallestScreenWidthDp;
                    if (i43 != i44) {
                        configuration.smallestScreenWidthDp = i44;
                    }
                    int i45 = configuration3.densityDpi;
                    int i46 = configuration4.densityDpi;
                    if (i45 != i46) {
                        configuration.densityDpi = i46;
                    }
                }
            }
            Configuration configurationT = g0.t(context, iD, iVarP, configuration, true);
            j.d dVar = new j.d(context, com.p2elite.brtv2.R.style.Theme_AppCompat_Empty);
            dVar.a(configurationT);
            try {
                if (context.getTheme() != null) {
                    e0.b.m(dVar.getTheme());
                }
            } catch (NullPointerException unused3) {
            }
            context = dVar;
        }
        super.attachBaseContext(context);
    }

    @Override // android.app.Activity
    public final void closeOptionsMenu() throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        l5.a aVarN = n();
        if (getWindow().hasFeature(0)) {
            if (aVarN == null || !aVarN.h()) {
                super.closeOptionsMenu();
            }
        }
    }

    @Override // androidx.core.app.ComponentActivity, android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        int keyCode = keyEvent.getKeyCode();
        l5.a aVarN = n();
        if (keyCode == 82 && aVarN != null && aVarN.G(keyEvent)) {
            return true;
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Activity
    public final View findViewById(int i6) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        g0 g0Var = (g0) m();
        g0Var.w();
        return g0Var.f275l.findViewById(i6);
    }

    @Override // androidx.core.app.ComponentActivity
    public final void g() {
        m().b();
    }

    @Override // android.app.Activity
    public final MenuInflater getMenuInflater() throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        g0 g0Var = (g0) m();
        if (g0Var.f279p == null) {
            g0Var.B();
            l5.a aVar = g0Var.f278o;
            g0Var.f279p = new j.i(aVar != null ? aVar.v() : g0Var.f274k);
        }
        return g0Var.f279p;
    }

    @Override // android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        int i6 = a4.f667a;
        return super.getResources();
    }

    @Override // android.app.Activity
    public final void invalidateOptionsMenu() {
        m().b();
    }

    public final q m() {
        if (this.f216w == null) {
            n0 n0Var = q.f341a;
            this.f216w = new g0(this, null, this, this);
        }
        return this.f216w;
    }

    public final l5.a n() throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        g0 g0Var = (g0) m();
        g0Var.B();
        return g0Var.f278o;
    }

    public final void o() {
        View decorView = getWindow().getDecorView();
        j9.i.f(decorView, "<this>");
        decorView.setTag(com.p2elite.brtv2.R.id.view_tree_lifecycle_owner, this);
        View decorView2 = getWindow().getDecorView();
        j9.i.f(decorView2, "<this>");
        decorView2.setTag(com.p2elite.brtv2.R.id.view_tree_view_model_store_owner, this);
        View decorView3 = getWindow().getDecorView();
        j9.i.f(decorView3, "<this>");
        decorView3.setTag(com.p2elite.brtv2.R.id.view_tree_saved_state_registry_owner, this);
        View decorView4 = getWindow().getDecorView();
        j9.i.f(decorView4, "<this>");
        decorView4.setTag(com.p2elite.brtv2.R.id.view_tree_on_back_pressed_dispatcher_owner, this);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) throws IllegalAccessException, NoSuchFieldException, NoSuchMethodException, PackageManager.NameNotFoundException, SecurityException, IllegalArgumentException, InvocationTargetException {
        super.onConfigurationChanged(configuration);
        g0 g0Var = (g0) m();
        if (g0Var.G && g0Var.A) {
            g0Var.B();
            l5.a aVar = g0Var.f278o;
            if (aVar != null) {
                aVar.B();
            }
        }
        androidx.appcompat.widget.w wVarA = androidx.appcompat.widget.w.a();
        Context context = g0Var.f274k;
        synchronized (wVarA) {
            wVarA.f877a.l(context);
        }
        g0Var.S = new Configuration(g0Var.f274k.getResources().getConfiguration());
        g0Var.m(false, false);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        m().e();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i6, KeyEvent keyEvent) {
        Window window;
        if (Build.VERSION.SDK_INT >= 26 || keyEvent.isCtrlPressed() || KeyEvent.metaStateHasNoModifiers(keyEvent.getMetaState()) || keyEvent.getRepeatCount() != 0 || KeyEvent.isModifierKey(keyEvent.getKeyCode()) || (window = getWindow()) == null || window.getDecorView() == null || !window.getDecorView().dispatchKeyShortcutEvent(keyEvent)) {
            return super.onKeyDown(i6, keyEvent);
        }
        return true;
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity, android.view.Window.Callback
    public final boolean onMenuItemSelected(int i6, MenuItem menuItem) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        Intent intentA;
        if (super.onMenuItemSelected(i6, menuItem)) {
            return true;
        }
        l5.a aVarN = n();
        if (menuItem.getItemId() != 16908332 || aVarN == null || (aVarN.u() & 4) == 0 || (intentA = a2.a.A(this)) == null) {
            return false;
        }
        if (!shouldUpRecreateTask(intentA)) {
            navigateUpTo(intentA);
            return true;
        }
        ArrayList arrayList = new ArrayList();
        Intent intentA2 = a2.a.A(this);
        if (intentA2 == null) {
            intentA2 = a2.a.A(this);
        }
        if (intentA2 != null) {
            ComponentName component = intentA2.getComponent();
            if (component == null) {
                component = intentA2.resolveActivity(getPackageManager());
            }
            int size = arrayList.size();
            try {
                Intent intentZ = a2.a.z(this, component);
                while (intentZ != null) {
                    arrayList.add(size, intentZ);
                    intentZ = a2.a.z(this, intentZ.getComponent());
                }
                arrayList.add(intentA2);
            } catch (PackageManager.NameNotFoundException e5) {
                Log.e("TaskStackBuilder", "Bad ComponentName while traversing activity parent metadata");
                throw new IllegalArgumentException(e5);
            }
        }
        if (arrayList.isEmpty()) {
            throw new IllegalStateException("No intents added to TaskStackBuilder; cannot startActivities");
        }
        Intent[] intentArr = (Intent[]) arrayList.toArray(new Intent[0]);
        intentArr[0] = new Intent(intentArr[0]).addFlags(268484608);
        startActivities(intentArr, null);
        try {
            finishAffinity();
            return true;
        } catch (IllegalStateException unused) {
            finish();
            return true;
        }
    }

    @Override // android.app.Activity
    public final void onPostCreate(Bundle bundle) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        super.onPostCreate(bundle);
        ((g0) m()).w();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPostResume() throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        super.onPostResume();
        g0 g0Var = (g0) m();
        g0Var.B();
        l5.a aVar = g0Var.f278o;
        if (aVar != null) {
            aVar.N(true);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() throws IllegalAccessException, NoSuchFieldException, PackageManager.NameNotFoundException, SecurityException, IllegalArgumentException {
        super.onStart();
        ((g0) m()).m(true, false);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        super.onStop();
        g0 g0Var = (g0) m();
        g0Var.B();
        l5.a aVar = g0Var.f278o;
        if (aVar != null) {
            aVar.N(false);
        }
    }

    @Override // android.app.Activity
    public final void onTitleChanged(CharSequence charSequence, int i6) {
        super.onTitleChanged(charSequence, i6);
        m().l(charSequence);
    }

    @Override // android.app.Activity
    public final void openOptionsMenu() throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        l5.a aVarN = n();
        if (getWindow().hasFeature(0)) {
            if (aVarN == null || !aVarN.H()) {
                super.openOptionsMenu();
            }
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void setContentView(int i6) {
        o();
        m().h(i6);
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public final void setTheme(int i6) {
        super.setTheme(i6);
        ((g0) m()).U = i6;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        o();
        m().i(view);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        o();
        m().k(view, layoutParams);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final void onContentChanged() {
    }
}
