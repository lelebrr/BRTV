package u4;

import android.os.Looper;
import com.google.android.gms.cast.framework.media.widget.ExpandedControllerActivity;
import com.google.android.gms.internal.cast.x0;
import java.util.TimerTask;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class d extends TimerTask {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ r4.f f10338a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ExpandedControllerActivity f10339b;

    public d(ExpandedControllerActivity expandedControllerActivity, r4.f fVar) {
        this.f10338a = fVar;
        this.f10339b = expandedControllerActivity;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public final void run() {
        new x0(Looper.getMainLooper(), 0).post(new a3.c(this, 29, this.f10338a));
    }
}
