package androidx.media3.exoplayer.mediacodec;

import androidx.media3.exoplayer.mediacodec.AsynchronousMediaCodecAdapter;
import b7.e0;
import com.google.common.util.concurrent.Striped;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class b implements e0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2311a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f2312b;

    public /* synthetic */ b(int i6, int i10) {
        this.f2311a = i10;
        this.f2312b = i6;
    }

    @Override // b7.e0
    public final Object get() {
        switch (this.f2311a) {
            case 0:
                return AsynchronousMediaCodecAdapter.Factory.lambda$new$0(this.f2312b);
            case 1:
                return AsynchronousMediaCodecAdapter.Factory.lambda$new$1(this.f2312b);
            case 2:
                return Striped.lambda$semaphore$1(this.f2312b);
            default:
                return Striped.lambda$lazyWeakSemaphore$2(this.f2312b);
        }
    }
}
