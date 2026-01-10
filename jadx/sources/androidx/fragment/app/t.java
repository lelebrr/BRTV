package androidx.fragment.app;

import android.os.Bundle;
import android.os.Parcelable;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class t implements v1.d {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ FragmentActivity f1548a;

    public t(FragmentActivity fragmentActivity) {
        this.f1548a = fragmentActivity;
    }

    @Override // v1.d
    public final Bundle saveState() {
        FragmentActivity fragmentActivity;
        Bundle bundle = new Bundle();
        do {
            fragmentActivity = this.f1548a;
        } while (FragmentActivity.l(fragmentActivity.k()));
        fragmentActivity.f1380s.f(androidx.lifecycle.n.ON_STOP);
        Parcelable parcelableQ = ((v) fragmentActivity.f1379r.f1438b).f1557i.Q();
        if (parcelableQ != null) {
            bundle.putParcelable("android:support:fragments", parcelableQ);
        }
        return bundle;
    }
}
