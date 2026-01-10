package t1;

import android.os.Handler;
import android.os.Looper;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class g {
    public static Handler a(Looper looper) {
        return Handler.createAsync(looper);
    }
}
