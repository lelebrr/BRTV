package androidx.lifecycle;

import android.app.Application;
import android.content.Context;
import android.os.Handler;
import java.util.List;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class ProcessLifecycleInitializer implements w1.b {
    @Override // w1.b
    public final List a() {
        return x8.r.f11098a;
    }

    @Override // w1.b
    public final Object b(Context context) {
        j9.i.f(context, "context");
        w1.a aVarC = w1.a.c(context);
        j9.i.e(aVarC, "getInstance(context)");
        if (!aVarC.f10803b.contains(ProcessLifecycleInitializer.class)) {
            throw new IllegalStateException("ProcessLifecycleInitializer cannot be initialized lazily.\n               Please ensure that you have:\n               <meta-data\n                   android:name='androidx.lifecycle.ProcessLifecycleInitializer'\n                   android:value='androidx.startup' />\n               under InitializationProvider in your AndroidManifest.xml");
        }
        if (!t.f2001a.getAndSet(true)) {
            Context applicationContext = context.getApplicationContext();
            j9.i.d(applicationContext, "null cannot be cast to non-null type android.app.Application");
            ((Application) applicationContext).registerActivityLifecycleCallbacks(new s());
        }
        i0 i0Var = i0.f1963i;
        i0Var.getClass();
        i0Var.f1967e = new Handler();
        i0Var.f.f(n.ON_CREATE);
        Context applicationContext2 = context.getApplicationContext();
        j9.i.d(applicationContext2, "null cannot be cast to non-null type android.app.Application");
        ((Application) applicationContext2).registerActivityLifecycleCallbacks(new h0(i0Var));
        return i0Var;
    }
}
