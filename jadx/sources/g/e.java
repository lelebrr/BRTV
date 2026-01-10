package g;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import g0.h;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class e extends g implements h {

    /* renamed from: n, reason: collision with root package name */
    public b f7021n;

    /* renamed from: o, reason: collision with root package name */
    public boolean f7022o;

    /* renamed from: p, reason: collision with root package name */
    public b f7023p;

    /* renamed from: q, reason: collision with root package name */
    public l5.a f7024q;

    /* renamed from: r, reason: collision with root package name */
    public int f7025r;

    /* renamed from: s, reason: collision with root package name */
    public int f7026s;

    /* renamed from: t, reason: collision with root package name */
    public boolean f7027t;

    public e(b bVar, Resources resources) {
        this.f7034e = 255;
        this.f7035g = -1;
        this.f7025r = -1;
        this.f7026s = -1;
        d(new b(bVar, this, resources));
        onStateChange(getState());
        jumpToCurrentState();
    }

    /* JADX WARN: Code restructure failed: missing block: B:98:0x026f, code lost:
    
        r5.onStateChange(r5.getState());
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x0276, code lost:
    
        return r5;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static g.e e(android.content.Context r20, android.content.res.Resources r21, android.content.res.XmlResourceParser r22, android.util.AttributeSet r23, android.content.res.Resources.Theme r24) throws org.xmlpull.v1.XmlPullParserException, android.content.res.Resources.NotFoundException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 661
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: g.e.e(android.content.Context, android.content.res.Resources, android.content.res.XmlResourceParser, android.util.AttributeSet, android.content.res.Resources$Theme):g.e");
    }

    @Override // g.g, android.graphics.drawable.Drawable
    public final void applyTheme(Resources.Theme theme) {
        super.applyTheme(theme);
        onStateChange(getState());
    }

    @Override // g.g
    public final void d(b bVar) {
        this.f7031a = bVar;
        int i6 = this.f7035g;
        if (i6 >= 0) {
            Drawable drawableD = bVar.d(i6);
            this.f7033c = drawableD;
            if (drawableD != null) {
                b(drawableD);
            }
        }
        this.d = null;
        this.f7021n = bVar;
        this.f7023p = bVar;
    }

    public final Drawable f() {
        if (!this.f7022o) {
            super.mutate();
            b bVar = this.f7021n;
            bVar.I = bVar.I.clone();
            bVar.J = bVar.J.clone();
            this.f7022o = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        return true;
    }

    @Override // g.g, android.graphics.drawable.Drawable
    public final void jumpToCurrentState() {
        super.jumpToCurrentState();
        l5.a aVar = this.f7024q;
        if (aVar != null) {
            aVar.U();
            this.f7024q = null;
            c(this.f7025r);
            this.f7025r = -1;
            this.f7026s = -1;
        }
    }

    @Override // g.g, android.graphics.drawable.Drawable
    public final Drawable mutate() {
        if (!this.f7027t) {
            f();
            b bVar = this.f7023p;
            bVar.I = bVar.I.clone();
            bVar.J = bVar.J.clone();
            this.f7027t = true;
        }
        return this;
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00d3  */
    @Override // android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean onStateChange(int[] r14) {
        /*
            Method dump skipped, instructions count: 222
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: g.e.onStateChange(int[]):boolean");
    }

    @Override // g.g, android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z7, boolean z10) {
        boolean visible = super.setVisible(z7, z10);
        l5.a aVar = this.f7024q;
        if (aVar != null && (visible || z10)) {
            if (z7) {
                aVar.S();
            } else {
                jumpToCurrentState();
            }
        }
        return visible;
    }
}
