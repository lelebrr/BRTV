package retrofit2;

import i9.l;
import j9.j;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class KotlinExtensions$await$$inlined$suspendCancellableCoroutine$lambda$2 extends j implements l {
    final /* synthetic */ Call $this_await$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KotlinExtensions$await$$inlined$suspendCancellableCoroutine$lambda$2(Call call) {
        super(1);
        this.$this_await$inlined = call;
    }

    @Override // i9.l
    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
        invoke((Throwable) obj);
        return w8.l.f10832a;
    }

    public final void invoke(Throwable th) {
        this.$this_await$inlined.cancel();
    }
}
