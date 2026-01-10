package com.tencent.bugly.proguard;

import android.os.Handler;
import android.os.SystemClock;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class bf implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final Handler f5771a;
    long d;

    /* renamed from: e, reason: collision with root package name */
    private final String f5774e;
    private final List<ba> f = new LinkedList();

    /* renamed from: b, reason: collision with root package name */
    long f5772b = 5000;

    /* renamed from: g, reason: collision with root package name */
    private final long f5775g = 5000;

    /* renamed from: c, reason: collision with root package name */
    boolean f5773c = true;

    public bf(Handler handler, String str) {
        this.f5771a = handler;
        this.f5774e = str;
    }

    private Thread e() {
        return this.f5771a.getLooper().getThread();
    }

    public final boolean a() {
        return !this.f5773c && SystemClock.uptimeMillis() >= this.d + this.f5772b;
    }

    public final long b() {
        return SystemClock.uptimeMillis() - this.d;
    }

    public final List<ba> c() {
        ArrayList arrayList;
        long jCurrentTimeMillis = System.currentTimeMillis();
        synchronized (this.f) {
            try {
                arrayList = new ArrayList(this.f.size());
                for (int i6 = 0; i6 < this.f.size(); i6++) {
                    ba baVar = this.f.get(i6);
                    if (!baVar.f5755e && jCurrentTimeMillis - baVar.f5753b < 200000) {
                        arrayList.add(baVar);
                        baVar.f5755e = true;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return arrayList;
    }

    public final void d() {
        StringBuilder sb = new StringBuilder(1024);
        long jNanoTime = System.nanoTime();
        try {
            StackTraceElement[] stackTrace = e().getStackTrace();
            if (stackTrace.length == 0) {
                sb.append("Thread does not have stack trace.\n");
            } else {
                for (StackTraceElement stackTraceElement : stackTrace) {
                    sb.append(stackTraceElement);
                    sb.append("\n");
                }
            }
        } catch (SecurityException e5) {
            sb.append("getStackTrace() encountered:\n");
            sb.append(e5.getMessage());
            sb.append("\n");
            al.a(e5);
        }
        long jNanoTime2 = System.nanoTime();
        ba baVar = new ba(sb.toString(), System.currentTimeMillis());
        baVar.d = jNanoTime2 - jNanoTime;
        String name = e().getName();
        if (name == null) {
            name = "";
        }
        baVar.f5752a = name;
        synchronized (this.f) {
            while (this.f.size() >= 32) {
                try {
                    this.f.remove(0);
                } catch (Throwable th) {
                    throw th;
                }
            }
            this.f.add(baVar);
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f5773c = true;
        this.f5772b = this.f5775g;
    }
}
