package o5;

import android.os.IBinder;
import android.os.IInterface;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a implements c, IInterface {

    /* renamed from: c, reason: collision with root package name */
    public final IBinder f8566c;

    public a(IBinder iBinder) {
        this.f8566c = iBinder;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f8566c;
    }
}
