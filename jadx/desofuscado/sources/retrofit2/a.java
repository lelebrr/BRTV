package retrofit2;

import retrofit2.DefaultCallAdapterFactory;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class a implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f9657a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ DefaultCallAdapterFactory.ExecutorCallbackCall.AnonymousClass1 f9658b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Callback f9659c;
    public final /* synthetic */ Object d;

    public /* synthetic */ a(DefaultCallAdapterFactory.ExecutorCallbackCall.AnonymousClass1 anonymousClass1, Callback callback, Object obj, int i6) {
        this.f9657a = i6;
        this.f9658b = anonymousClass1;
        this.f9659c = callback;
        this.d = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f9657a) {
            case 0:
                this.f9658b.lambda$onResponse$0(this.f9659c, (Response) this.d);
                break;
            default:
                this.f9658b.lambda$onFailure$1(this.f9659c, (Throwable) this.d);
                break;
        }
    }
}
