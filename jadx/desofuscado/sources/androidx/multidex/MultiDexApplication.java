package androidx.multidex;

import android.app.Application;
import android.content.Context;
import r1.a;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class MultiDexApplication extends Application {
    @Override // android.content.ContextWrapper
    public final void attachBaseContext(Context context) {
        super.attachBaseContext(context);
        a.d(this);
    }
}
