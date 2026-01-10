package ja;

import android.view.View;
import android.widget.TextView;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class g extends w0.e {

    /* renamed from: l, reason: collision with root package name */
    public final TextView f7498l;

    /* renamed from: m, reason: collision with root package name */
    public String f7499m;

    /* renamed from: n, reason: collision with root package name */
    public long f7500n;

    public g(View view, TextView textView) {
        super(null, 0, view);
        this.f7498l = textView;
    }

    @Override // w0.e
    public final void O() {
        long j10;
        synchronized (this) {
            j10 = this.f7500n;
            this.f7500n = 0L;
        }
        String str = this.f7499m;
        if ((j10 & 3) != 0) {
            o9.e.H(this.f7498l, str);
        }
    }

    @Override // w0.e
    public final boolean P() {
        synchronized (this) {
            try {
                return this.f7500n != 0;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
