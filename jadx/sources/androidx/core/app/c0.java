package androidx.core.app;

import android.os.Build;
import android.widget.RemoteViews;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c0 extends k0 {
    @Override // androidx.core.app.k0
    public final void apply(n nVar) {
        if (Build.VERSION.SDK_INT >= 24) {
            ((t0) nVar).f1204b.setStyle(b0.a());
        }
    }

    @Override // androidx.core.app.k0
    public final boolean displayCustomViewInline() {
        return true;
    }

    @Override // androidx.core.app.k0
    public final String getClassName() {
        return "androidx.core.app.NotificationCompat$DecoratedCustomViewStyle";
    }

    @Override // androidx.core.app.k0
    public final RemoteViews makeBigContentView(n nVar) {
        if (Build.VERSION.SDK_INT >= 24) {
            return null;
        }
        this.mBuilder.getClass();
        this.mBuilder.getClass();
        return null;
    }

    @Override // androidx.core.app.k0
    public final RemoteViews makeContentView(n nVar) {
        if (Build.VERSION.SDK_INT >= 24) {
            return null;
        }
        this.mBuilder.getClass();
        return null;
    }

    @Override // androidx.core.app.k0
    public final RemoteViews makeHeadsUpContentView(n nVar) {
        if (Build.VERSION.SDK_INT >= 24) {
            return null;
        }
        this.mBuilder.getClass();
        this.mBuilder.getClass();
        return null;
    }
}
