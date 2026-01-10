package ja;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import org.bitspark.android.beans.SettingBean;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c extends w0.e {

    /* renamed from: l, reason: collision with root package name */
    public final ImageView f7482l;

    /* renamed from: m, reason: collision with root package name */
    public SettingBean f7483m;

    /* renamed from: n, reason: collision with root package name */
    public final TextView f7484n;

    /* renamed from: o, reason: collision with root package name */
    public long f7485o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(View view) {
        super(null, 0, view);
        Object[] objArrR = w0.e.R(view, 3, null);
        ImageView imageView = (ImageView) objArrR[1];
        this.f7482l = imageView;
        this.f7485o = -1L;
        this.f7482l.setTag(null);
        ((LinearLayout) objArrR[0]).setTag(null);
        TextView textView = (TextView) objArrR[2];
        this.f7484n = textView;
        textView.setTag(null);
        T(view);
        synchronized (this) {
            this.f7485o = 2L;
        }
        S();
    }

    @Override // w0.e
    public final void O() {
        long j10;
        String name;
        int icon;
        synchronized (this) {
            j10 = this.f7485o;
            this.f7485o = 0L;
        }
        SettingBean settingBean = this.f7483m;
        long j11 = j10 & 3;
        if (j11 == 0 || settingBean == null) {
            name = null;
            icon = 0;
        } else {
            name = settingBean.getName();
            icon = settingBean.getIcon();
        }
        if (j11 != 0) {
            ImageView imageView = this.f7482l;
            j9.i.f(imageView, a2.a.s("7TQqmwaSO6/z\n", "hFlL/GPEUso=\n"));
            if (icon != 0) {
                try {
                    imageView.setImageResource(icon);
                } catch (Exception e5) {
                    e5.printStackTrace();
                }
            }
            o9.e.H(this.f7484n, name);
        }
    }

    @Override // w0.e
    public final boolean P() {
        synchronized (this) {
            try {
                return this.f7485o != 0;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
