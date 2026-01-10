package j;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.os.Build;
import android.util.Log;
import android.view.InflateException;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import k.n;
import k.s;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class h {
    public CharSequence A;
    public CharSequence B;
    public final /* synthetic */ i E;

    /* renamed from: a, reason: collision with root package name */
    public final Menu f7382a;

    /* renamed from: h, reason: collision with root package name */
    public boolean f7387h;

    /* renamed from: i, reason: collision with root package name */
    public int f7388i;

    /* renamed from: j, reason: collision with root package name */
    public int f7389j;

    /* renamed from: k, reason: collision with root package name */
    public CharSequence f7390k;

    /* renamed from: l, reason: collision with root package name */
    public CharSequence f7391l;

    /* renamed from: m, reason: collision with root package name */
    public int f7392m;

    /* renamed from: n, reason: collision with root package name */
    public char f7393n;

    /* renamed from: o, reason: collision with root package name */
    public int f7394o;

    /* renamed from: p, reason: collision with root package name */
    public char f7395p;

    /* renamed from: q, reason: collision with root package name */
    public int f7396q;

    /* renamed from: r, reason: collision with root package name */
    public int f7397r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f7398s;

    /* renamed from: t, reason: collision with root package name */
    public boolean f7399t;

    /* renamed from: u, reason: collision with root package name */
    public boolean f7400u;

    /* renamed from: v, reason: collision with root package name */
    public int f7401v;

    /* renamed from: w, reason: collision with root package name */
    public int f7402w;

    /* renamed from: x, reason: collision with root package name */
    public String f7403x;

    /* renamed from: y, reason: collision with root package name */
    public String f7404y;

    /* renamed from: z, reason: collision with root package name */
    public n0.c f7405z;
    public ColorStateList C = null;
    public PorterDuff.Mode D = null;

    /* renamed from: b, reason: collision with root package name */
    public int f7383b = 0;

    /* renamed from: c, reason: collision with root package name */
    public int f7384c = 0;
    public int d = 0;

    /* renamed from: e, reason: collision with root package name */
    public int f7385e = 0;
    public boolean f = true;

    /* renamed from: g, reason: collision with root package name */
    public boolean f7386g = true;

    public h(i iVar, Menu menu) {
        this.E = iVar;
        this.f7382a = menu;
    }

    public final Object a(String str, Class[] clsArr, Object[] objArr) throws NoSuchMethodException, SecurityException {
        try {
            Constructor<?> constructor = Class.forName(str, false, this.E.f7409c.getClassLoader()).getConstructor(clsArr);
            constructor.setAccessible(true);
            return constructor.newInstance(objArr);
        } catch (Exception e5) {
            Log.w("SupportMenuInflater", "Cannot instantiate class: " + str, e5);
            return null;
        }
    }

    public final void b(MenuItem menuItem) {
        boolean z7 = false;
        menuItem.setChecked(this.f7398s).setVisible(this.f7399t).setEnabled(this.f7400u).setCheckable(this.f7397r >= 1).setTitleCondensed(this.f7391l).setIcon(this.f7392m);
        int i6 = this.f7401v;
        if (i6 >= 0) {
            menuItem.setShowAsAction(i6);
        }
        String str = this.f7404y;
        i iVar = this.E;
        if (str != null) {
            if (iVar.f7409c.isRestricted()) {
                throw new IllegalStateException("The android:onClick attribute cannot be used within a restricted context");
            }
            if (iVar.d == null) {
                iVar.d = i.a(iVar.f7409c);
            }
            Object obj = iVar.d;
            String str2 = this.f7404y;
            g gVar = new g();
            gVar.f7380a = obj;
            Class<?> cls = obj.getClass();
            try {
                gVar.f7381b = cls.getMethod(str2, g.f7379c);
                menuItem.setOnMenuItemClickListener(gVar);
            } catch (Exception e5) {
                StringBuilder sbX = a.e.x("Couldn't resolve menu item onClick handler ", str2, " in class ");
                sbX.append(cls.getName());
                InflateException inflateException = new InflateException(sbX.toString());
                inflateException.initCause(e5);
                throw inflateException;
            }
        }
        if (this.f7397r >= 2) {
            if (menuItem instanceof n) {
                ((n) menuItem).g(true);
            } else if (menuItem instanceof s) {
                s sVar = (s) menuItem;
                try {
                    Method method = sVar.d;
                    h0.a aVar = sVar.f7665c;
                    if (method == null) {
                        sVar.d = aVar.getClass().getDeclaredMethod("setExclusiveCheckable", Boolean.TYPE);
                    }
                    sVar.d.invoke(aVar, Boolean.TRUE);
                } catch (Exception e10) {
                    Log.w("MenuItemWrapper", "Error while calling setExclusiveCheckable", e10);
                }
            }
        }
        String str3 = this.f7403x;
        if (str3 != null) {
            menuItem.setActionView((View) a(str3, i.f7406e, iVar.f7407a));
            z7 = true;
        }
        int i10 = this.f7402w;
        if (i10 > 0) {
            if (z7) {
                Log.w("SupportMenuInflater", "Ignoring attribute 'itemActionViewLayout'. Action view already specified.");
            } else {
                menuItem.setActionView(i10);
            }
        }
        n0.c cVar = this.f7405z;
        if (cVar != null) {
            if (menuItem instanceof h0.a) {
                ((h0.a) menuItem).b(cVar);
            } else {
                Log.w("MenuItemCompat", "setActionProvider: item does not implement SupportMenuItem; ignoring");
            }
        }
        CharSequence charSequence = this.A;
        boolean z10 = menuItem instanceof h0.a;
        if (z10) {
            ((h0.a) menuItem).setContentDescription(charSequence);
        } else if (Build.VERSION.SDK_INT >= 26) {
            n0.m.h(menuItem, charSequence);
        }
        CharSequence charSequence2 = this.B;
        if (z10) {
            ((h0.a) menuItem).setTooltipText(charSequence2);
        } else if (Build.VERSION.SDK_INT >= 26) {
            n0.m.m(menuItem, charSequence2);
        }
        char c5 = this.f7393n;
        int i11 = this.f7394o;
        if (z10) {
            ((h0.a) menuItem).setAlphabeticShortcut(c5, i11);
        } else if (Build.VERSION.SDK_INT >= 26) {
            n0.m.g(menuItem, c5, i11);
        }
        char c8 = this.f7395p;
        int i12 = this.f7396q;
        if (z10) {
            ((h0.a) menuItem).setNumericShortcut(c8, i12);
        } else if (Build.VERSION.SDK_INT >= 26) {
            n0.m.k(menuItem, c8, i12);
        }
        PorterDuff.Mode mode = this.D;
        if (mode != null) {
            if (z10) {
                ((h0.a) menuItem).setIconTintMode(mode);
            } else if (Build.VERSION.SDK_INT >= 26) {
                n0.m.j(menuItem, mode);
            }
        }
        ColorStateList colorStateList = this.C;
        if (colorStateList != null) {
            if (z10) {
                ((h0.a) menuItem).setIconTintList(colorStateList);
            } else if (Build.VERSION.SDK_INT >= 26) {
                n0.m.i(menuItem, colorStateList);
            }
        }
    }
}
