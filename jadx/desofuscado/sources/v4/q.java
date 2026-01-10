package v4;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.internal.cast.d0;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class q extends com.google.android.gms.internal.cast.s implements c {
    public final /* synthetic */ int d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ w5.d f10709e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q(int i6, w5.d dVar) {
        super("com.google.android.gms.cast.internal.IBundleCallback", 0);
        this.d = i6;
        this.f10709e = dVar;
    }

    @Override // v4.c
    public final void i(Bundle bundle) {
        switch (this.d) {
            case 0:
                this.f10709e.b(bundle);
                break;
            case 1:
                this.f10709e.b(bundle);
                break;
            default:
                this.f10709e.b(bundle);
                break;
        }
    }

    @Override // com.google.android.gms.internal.cast.s
    public final boolean w(int i6, Parcel parcel, Parcel parcel2) {
        if (i6 != 1) {
            return false;
        }
        Bundle bundle = (Bundle) d0.a(parcel, Bundle.CREATOR);
        d0.b(parcel);
        i(bundle);
        return true;
    }
}
