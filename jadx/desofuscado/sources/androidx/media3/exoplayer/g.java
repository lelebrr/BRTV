package androidx.media3.exoplayer;

import androidx.media3.common.util.BackgroundThreadStateHandler;
import androidx.media3.exoplayer.DefaultSuitableOutputChecker;
import androidx.media3.exoplayer.SuitableOutputChecker;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class g implements BackgroundThreadStateHandler.StateChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2270a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SuitableOutputChecker.Callback f2271b;

    public /* synthetic */ g(SuitableOutputChecker.Callback callback, int i6) {
        this.f2270a = i6;
        this.f2271b = callback;
    }

    @Override // androidx.media3.common.util.BackgroundThreadStateHandler.StateChangeListener
    public final void onStateChanged(Object obj, Object obj2) {
        Boolean bool = (Boolean) obj;
        Boolean bool2 = (Boolean) obj2;
        switch (this.f2270a) {
            case 0:
                DefaultSuitableOutputChecker.ImplApi23.lambda$enable$0(this.f2271b, bool, bool2);
                break;
            default:
                DefaultSuitableOutputChecker.ImplApi35.lambda$enable$0(this.f2271b, bool, bool2);
                break;
        }
    }
}
