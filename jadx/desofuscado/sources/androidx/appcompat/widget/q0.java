package androidx.appcompat.widget;

import android.graphics.Typeface;
import android.os.Build;
import android.widget.TextView;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class q0 extends e0.b {

    /* renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f805h;

    /* renamed from: i, reason: collision with root package name */
    public final /* synthetic */ int f806i;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ WeakReference f807j;

    /* renamed from: k, reason: collision with root package name */
    public final /* synthetic */ x0 f808k;

    public q0(x0 x0Var, int i6, int i10, WeakReference weakReference) {
        this.f808k = x0Var;
        this.f805h = i6;
        this.f806i = i10;
        this.f807j = weakReference;
    }

    @Override // e0.b
    public final void j(Typeface typeface) {
        int i6;
        if (Build.VERSION.SDK_INT >= 28 && (i6 = this.f805h) != -1) {
            typeface = w0.a(typeface, i6, (this.f806i & 2) != 0);
        }
        x0 x0Var = this.f808k;
        if (x0Var.f891m) {
            x0Var.f890l = typeface;
            TextView textView = (TextView) this.f807j.get();
            if (textView != null) {
                WeakHashMap weakHashMap = n0.s0.f8353a;
                if (textView.isAttachedToWindow()) {
                    textView.post(new r0(textView, typeface, x0Var.f888j, 0));
                } else {
                    textView.setTypeface(typeface, x0Var.f888j);
                }
            }
        }
    }

    @Override // e0.b
    public final void i(int i6) {
    }
}
