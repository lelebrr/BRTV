package ja;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import org.bitspark.android.beans.Source;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d extends w0.e {

    /* renamed from: l, reason: collision with root package name */
    public final LinearLayout f7486l;

    /* renamed from: m, reason: collision with root package name */
    public Source f7487m;

    /* renamed from: n, reason: collision with root package name */
    public final TextView f7488n;

    /* renamed from: o, reason: collision with root package name */
    public long f7489o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(View view) {
        super(null, 0, view);
        Object[] objArrR = w0.e.R(view, 2, null);
        LinearLayout linearLayout = (LinearLayout) objArrR[0];
        this.f7486l = linearLayout;
        this.f7489o = -1L;
        this.f7486l.setTag(null);
        TextView textView = (TextView) objArrR[1];
        this.f7488n = textView;
        textView.setTag(null);
        T(view);
        synchronized (this) {
            this.f7489o = 2L;
        }
        S();
    }

    @Override // w0.e
    public final void O() {
        long j10;
        synchronized (this) {
            j10 = this.f7489o;
            this.f7489o = 0L;
        }
        Source source = this.f7487m;
        long j11 = j10 & 3;
        String short_title = (j11 == 0 || source == null) ? null : source.getShort_title();
        if (j11 != 0) {
            o9.e.H(this.f7488n, short_title);
        }
    }

    @Override // w0.e
    public final boolean P() {
        synchronized (this) {
            try {
                return this.f7489o != 0;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
