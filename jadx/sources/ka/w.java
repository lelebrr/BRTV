package ka;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class w implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7872a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ y f7873b;

    public /* synthetic */ w(y yVar, int i6) {
        this.f7872a = i6;
        this.f7873b = yVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f7872a) {
            case 0:
                org.bitspark.android.utils.k.c(this.f7873b.h());
                break;
            default:
                org.bitspark.android.utils.k.f(new j7.c(6, this));
                break;
        }
    }
}
