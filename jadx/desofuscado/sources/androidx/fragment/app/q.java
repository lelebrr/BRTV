package androidx.fragment.app;

import android.os.Parcel;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class q extends RuntimeException {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1513a;

    private final synchronized Throwable a() {
        return this;
    }

    @Override // java.lang.Throwable
    public synchronized Throwable fillInStackTrace() {
        switch (this.f1513a) {
            case 5:
                a();
                return this;
            default:
                return super.fillInStackTrace();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ q(String str, int i6) {
        super(str);
        this.f1513a = i6;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ q(String str, Throwable th, int i6) {
        super(str, th);
        this.f1513a = i6;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ q(Throwable th, int i6) {
        super(th);
        this.f1513a = i6;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q(String str, Parcel parcel) {
        super(str + " Parcel: pos=" + parcel.dataPosition() + " size=" + parcel.dataSize());
        this.f1513a = 2;
    }
}
