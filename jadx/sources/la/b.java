package la;

import org.bitspark.android.utils.k;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f8078a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ d f8079b;

    public /* synthetic */ b(d dVar, int i6) {
        this.f8078a = i6;
        this.f8079b = dVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f8078a) {
            case 0:
                k.c(this.f8079b.h());
                break;
            default:
                k.f(new j7.c(10, this));
                break;
        }
    }
}
