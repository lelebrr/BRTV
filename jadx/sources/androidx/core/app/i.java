package androidx.core.app;

import android.content.ComponentName;
import android.os.PowerManager;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class i {

    /* renamed from: a, reason: collision with root package name */
    public final PowerManager.WakeLock f1168a;

    /* renamed from: b, reason: collision with root package name */
    public final PowerManager.WakeLock f1169b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f1170c;

    public i(JobIntentService jobIntentService, ComponentName componentName) {
        jobIntentService.getApplicationContext();
        PowerManager powerManager = (PowerManager) jobIntentService.getSystemService("power");
        PowerManager.WakeLock wakeLockNewWakeLock = powerManager.newWakeLock(1, componentName.getClassName() + ":launch");
        this.f1168a = wakeLockNewWakeLock;
        wakeLockNewWakeLock.setReferenceCounted(false);
        PowerManager.WakeLock wakeLockNewWakeLock2 = powerManager.newWakeLock(1, componentName.getClassName() + ":run");
        this.f1169b = wakeLockNewWakeLock2;
        wakeLockNewWakeLock2.setReferenceCounted(false);
    }

    public final void a() {
        synchronized (this) {
            try {
                if (this.f1170c) {
                    this.f1170c = false;
                    this.f1169b.release();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void b() {
        synchronized (this) {
        }
    }
}
