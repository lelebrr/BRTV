package androidx.profileinstaller;

import android.content.Context;
import android.os.Build;
import androidx.appcompat.app.m0;
import java.util.Collections;
import java.util.List;
import t1.f;
import w1.b;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class ProfileInstallerInitializer implements b {
    @Override // w1.b
    public final List a() {
        return Collections.emptyList();
    }

    @Override // w1.b
    public final Object b(Context context) {
        if (Build.VERSION.SDK_INT < 24) {
            return new q.b(4);
        }
        f.a(new m0(this, 17, context.getApplicationContext()));
        return new q.b(4);
    }
}
