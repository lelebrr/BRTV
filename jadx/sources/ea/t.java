package ea;

import android.content.DialogInterface;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class t implements DialogInterface.OnDismissListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6733a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f6734b;

    public /* synthetic */ t(int i6, Object obj) {
        this.f6733a = i6;
        this.f6734b = obj;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        switch (this.f6733a) {
            case 0:
                ((s) this.f6734b).cancel();
                break;
            case 1:
                ((ka.r) this.f6734b).f7861n0 = false;
                break;
            default:
                ((ka.n) this.f6734b).f7841b.f7861n0 = false;
                break;
        }
    }
}
