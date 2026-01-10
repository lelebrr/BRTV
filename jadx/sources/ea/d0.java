package ea;

import android.widget.PopupWindow;
import org.bitspark.android.Spark;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d0 implements PopupWindow.OnDismissListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ sa.g f6636a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Spark f6637b;

    public d0(Spark spark, sa.g gVar) {
        this.f6637b = spark;
        this.f6636a = gVar;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        ra.e eVar = this.f6636a.f9855a;
        if (eVar != null) {
            eVar.cancel();
        }
        this.f6637b.z0(5000);
    }
}
