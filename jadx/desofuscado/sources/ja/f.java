package ja;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import org.bitspark.android.beans.Menu;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class f extends w0.e {

    /* renamed from: l, reason: collision with root package name */
    public final LinearLayout f7494l;

    /* renamed from: m, reason: collision with root package name */
    public Menu f7495m;

    /* renamed from: n, reason: collision with root package name */
    public final TextView f7496n;

    /* renamed from: o, reason: collision with root package name */
    public long f7497o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(View view) {
        super(null, 0, view);
        Object[] objArrR = w0.e.R(view, 2, null);
        LinearLayout linearLayout = (LinearLayout) objArrR[0];
        this.f7494l = linearLayout;
        this.f7497o = -1L;
        this.f7494l.setTag(null);
        TextView textView = (TextView) objArrR[1];
        this.f7496n = textView;
        textView.setTag(null);
        T(view);
        synchronized (this) {
            this.f7497o = 2L;
        }
        S();
    }

    @Override // w0.e
    public final void O() {
        long j10;
        synchronized (this) {
            j10 = this.f7497o;
            this.f7497o = 0L;
        }
        Menu menu = this.f7495m;
        long j11 = j10 & 3;
        String name = (j11 == 0 || menu == null) ? null : menu.getName();
        if (j11 != 0) {
            o9.e.H(this.f7496n, name);
        }
    }

    @Override // w0.e
    public final boolean P() {
        synchronized (this) {
            try {
                return this.f7497o != 0;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void U(Menu menu) {
        this.f7495m = menu;
        synchronized (this) {
            this.f7497o |= 1;
        }
        G();
        S();
    }
}
