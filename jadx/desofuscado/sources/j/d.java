package j;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.view.LayoutInflater;
import com.p2elite.brtv2.R;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d extends ContextWrapper {
    public static Configuration f;

    /* renamed from: a, reason: collision with root package name */
    public int f7369a;

    /* renamed from: b, reason: collision with root package name */
    public Resources.Theme f7370b;

    /* renamed from: c, reason: collision with root package name */
    public LayoutInflater f7371c;
    public Configuration d;

    /* renamed from: e, reason: collision with root package name */
    public Resources f7372e;

    public d(Context context, int i6) {
        super(context);
        this.f7369a = i6;
    }

    public final void a(Configuration configuration) {
        if (this.f7372e != null) {
            throw new IllegalStateException("getResources() or getAssets() has already been called");
        }
        if (this.d != null) {
            throw new IllegalStateException("Override configuration has already been set");
        }
        this.d = new Configuration(configuration);
    }

    @Override // android.content.ContextWrapper
    public final void attachBaseContext(Context context) {
        super.attachBaseContext(context);
    }

    public final void b() {
        if (this.f7370b == null) {
            this.f7370b = getResources().newTheme();
            Resources.Theme theme = getBaseContext().getTheme();
            if (theme != null) {
                this.f7370b.setTo(theme);
            }
        }
        this.f7370b.applyStyle(this.f7369a, true);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final AssetManager getAssets() {
        return getResources().getAssets();
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0032  */
    @Override // android.content.ContextWrapper, android.content.Context
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final android.content.res.Resources getResources() {
        /*
            r3 = this;
            android.content.res.Resources r0 = r3.f7372e
            if (r0 != 0) goto L38
            android.content.res.Configuration r0 = r3.d
            if (r0 == 0) goto L32
            int r1 = android.os.Build.VERSION.SDK_INT
            r2 = 26
            if (r1 < r2) goto L25
            android.content.res.Configuration r1 = j.d.f
            if (r1 != 0) goto L1c
            android.content.res.Configuration r1 = new android.content.res.Configuration
            r1.<init>()
            r2 = 0
            r1.fontScale = r2
            j.d.f = r1
        L1c:
            android.content.res.Configuration r1 = j.d.f
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L25
            goto L32
        L25:
            android.content.res.Configuration r0 = r3.d
            android.content.Context r0 = j.c.a(r3, r0)
            android.content.res.Resources r0 = r0.getResources()
            r3.f7372e = r0
            goto L38
        L32:
            android.content.res.Resources r0 = super.getResources()
            r3.f7372e = r0
        L38:
            android.content.res.Resources r0 = r3.f7372e
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: j.d.getResources():android.content.res.Resources");
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Object getSystemService(String str) {
        if (!"layout_inflater".equals(str)) {
            return getBaseContext().getSystemService(str);
        }
        if (this.f7371c == null) {
            this.f7371c = LayoutInflater.from(getBaseContext()).cloneInContext(this);
        }
        return this.f7371c;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Resources.Theme getTheme() {
        Resources.Theme theme = this.f7370b;
        if (theme != null) {
            return theme;
        }
        if (this.f7369a == 0) {
            this.f7369a = R.style.Theme_AppCompat_Light;
        }
        b();
        return this.f7370b;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final void setTheme(int i6) {
        if (this.f7369a != i6) {
            this.f7369a = i6;
            b();
        }
    }
}
