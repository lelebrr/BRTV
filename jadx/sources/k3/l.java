package k3;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.fragment.app.FragmentActivity;
import e3.v;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class l implements Handler.Callback {
    public static final u6.e d = new u6.e(18);

    /* renamed from: a, reason: collision with root package name */
    public volatile com.bumptech.glide.o f7718a;

    /* renamed from: b, reason: collision with root package name */
    public final f f7719b;

    /* renamed from: c, reason: collision with root package name */
    public final a7.f f7720c = new a7.f(d);

    public l() {
        this.f7719b = (v.f && v.f6532e) ? new e() : new x4.e(16);
    }

    public static Activity a(Context context) {
        if (context instanceof Activity) {
            return (Activity) context;
        }
        if (context instanceof ContextWrapper) {
            return a(((ContextWrapper) context).getBaseContext());
        }
        return null;
    }

    public final com.bumptech.glide.o b(Context context) {
        if (context == null) {
            throw new IllegalArgumentException("You cannot start a load on a null Context");
        }
        char[] cArr = r3.n.f9510a;
        if (Looper.myLooper() == Looper.getMainLooper() && !(context instanceof Application)) {
            if (context instanceof FragmentActivity) {
                return c((FragmentActivity) context);
            }
            if (context instanceof ContextWrapper) {
                ContextWrapper contextWrapper = (ContextWrapper) context;
                if (contextWrapper.getBaseContext().getApplicationContext() != null) {
                    return b(contextWrapper.getBaseContext());
                }
            }
        }
        if (this.f7718a == null) {
            synchronized (this) {
                try {
                    if (this.f7718a == null) {
                        this.f7718a = new com.bumptech.glide.o(com.bumptech.glide.b.a(context.getApplicationContext()), new x4.e(15), new u6.e(17), context.getApplicationContext());
                    }
                } finally {
                }
            }
        }
        return this.f7718a;
    }

    public final com.bumptech.glide.o c(FragmentActivity fragmentActivity) {
        char[] cArr = r3.n.f9510a;
        if (!(Looper.myLooper() == Looper.getMainLooper())) {
            return b(fragmentActivity.getApplicationContext());
        }
        if (fragmentActivity.isDestroyed()) {
            throw new IllegalArgumentException("You cannot start a load for a destroyed activity");
        }
        this.f7719b.a(fragmentActivity);
        Activity activityA = a(fragmentActivity);
        return this.f7720c.C(fragmentActivity, com.bumptech.glide.b.a(fragmentActivity.getApplicationContext()), fragmentActivity.d, fragmentActivity.k(), activityA == null || !activityA.isFinishing());
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        return false;
    }
}
