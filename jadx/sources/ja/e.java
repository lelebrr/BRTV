package ja;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import org.bitspark.android.beans.SubtitleMenu;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class e extends w0.e {

    /* renamed from: l, reason: collision with root package name */
    public final LinearLayout f7490l;

    /* renamed from: m, reason: collision with root package name */
    public SubtitleMenu f7491m;

    /* renamed from: n, reason: collision with root package name */
    public final TextView f7492n;

    /* renamed from: o, reason: collision with root package name */
    public long f7493o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(View view) {
        super(null, 0, view);
        Object[] objArrR = w0.e.R(view, 2, null);
        LinearLayout linearLayout = (LinearLayout) objArrR[0];
        this.f7490l = linearLayout;
        this.f7493o = -1L;
        this.f7490l.setTag(null);
        TextView textView = (TextView) objArrR[1];
        this.f7492n = textView;
        textView.setTag(null);
        T(view);
        synchronized (this) {
            this.f7493o = 2L;
        }
        S();
    }

    @Override // w0.e
    public final void O() {
        long j10;
        synchronized (this) {
            j10 = this.f7493o;
            this.f7493o = 0L;
        }
        SubtitleMenu subtitleMenu = this.f7491m;
        long j11 = j10 & 3;
        String language = (j11 == 0 || subtitleMenu == null) ? null : subtitleMenu.getLanguage();
        if (j11 != 0) {
            o9.e.H(this.f7492n, language);
        }
    }

    @Override // w0.e
    public final boolean P() {
        synchronized (this) {
            try {
                return this.f7493o != 0;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
