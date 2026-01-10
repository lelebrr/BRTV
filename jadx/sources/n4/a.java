package n4;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: c, reason: collision with root package name */
    public static final ReentrantLock f8444c = new ReentrantLock();
    public static a d;

    /* renamed from: a, reason: collision with root package name */
    public final ReentrantLock f8445a = new ReentrantLock();

    /* renamed from: b, reason: collision with root package name */
    public final SharedPreferences f8446b;

    public a(Context context) {
        this.f8446b = context.getSharedPreferences("com.google.android.gms.signin", 0);
    }

    public final String a(String str) {
        ReentrantLock reentrantLock = this.f8445a;
        reentrantLock.lock();
        try {
            return this.f8446b.getString(str, null);
        } finally {
            reentrantLock.unlock();
        }
    }
}
