package d0;

import android.content.Context;
import java.util.concurrent.Executor;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class d {
    public static Executor a(Context context) {
        return context.getMainExecutor();
    }
}
