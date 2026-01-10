package k5;

import android.os.StrictMode;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class b {
    public static StrictMode.VmPolicy.Builder a(StrictMode.VmPolicy.Builder builder) {
        return builder.permitUnsafeIntentLaunch();
    }
}
