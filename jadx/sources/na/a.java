package na;

import android.view.View;
import androidx.appcompat.widget.r0;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.bitspark.android.keyboard.custom.MyKeyBoardView;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ MyKeyBoardView f8507a;

    public /* synthetic */ a(MyKeyBoardView myKeyBoardView) {
        this.f8507a = myKeyBoardView;
    }

    public void a(View view, int i6, boolean z7) {
        MyKeyBoardView myKeyBoardView = this.f8507a;
        if (z7) {
            ScheduledExecutorService scheduledExecutorServiceNewSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor();
            myKeyBoardView.f8754m = scheduledExecutorServiceNewSingleThreadScheduledExecutor;
            scheduledExecutorServiceNewSingleThreadScheduledExecutor.scheduleWithFixedDelay(new r0(this, i6, view, 9), 0L, 50L, TimeUnit.MILLISECONDS);
        } else {
            ScheduledExecutorService scheduledExecutorService = myKeyBoardView.f8754m;
            if (scheduledExecutorService != null) {
                scheduledExecutorService.shutdownNow();
                myKeyBoardView.f8754m = null;
            }
        }
    }
}
