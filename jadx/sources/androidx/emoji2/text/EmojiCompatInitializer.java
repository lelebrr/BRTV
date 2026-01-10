package androidx.emoji2.text;

import a4.k;
import android.content.Context;
import androidx.lifecycle.ProcessLifecycleInitializer;
import androidx.lifecycle.w;
import b1.i;
import b1.j;
import b1.p;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import w1.a;
import w1.b;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class EmojiCompatInitializer implements b {
    @Override // w1.b
    public final List a() {
        return Collections.singletonList(ProcessLifecycleInitializer.class);
    }

    @Override // w1.b
    public final Object b(Context context) {
        p pVar = new p(new k(context));
        pVar.f3132b = 1;
        if (i.f3106j == null) {
            synchronized (i.f3105i) {
                try {
                    if (i.f3106j == null) {
                        i.f3106j = new i(pVar);
                    }
                } finally {
                }
            }
        }
        c(context);
        return Boolean.TRUE;
    }

    public final void c(Context context) {
        Object objB;
        a aVarC = a.c(context);
        aVarC.getClass();
        synchronized (a.f10801e) {
            try {
                objB = aVarC.f10802a.get(ProcessLifecycleInitializer.class);
                if (objB == null) {
                    objB = aVarC.b(ProcessLifecycleInitializer.class, new HashSet());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        androidx.lifecycle.p pVarF = ((w) objB).f();
        pVarF.a(new j(this, pVarF));
    }
}
