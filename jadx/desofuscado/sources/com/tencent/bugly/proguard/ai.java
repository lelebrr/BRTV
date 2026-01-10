package com.tencent.bugly.proguard;

import android.content.Context;
import android.os.Process;
import androidx.media3.exoplayer.smoothstreaming.SsMediaSource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.LinkedBlockingQueue;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class ai {

    /* renamed from: b, reason: collision with root package name */
    private static ai f5619b;

    /* renamed from: a, reason: collision with root package name */
    public ah f5620a;
    private final Context d;
    private long f;

    /* renamed from: g, reason: collision with root package name */
    private long f5623g;

    /* renamed from: e, reason: collision with root package name */
    private Map<Integer, Long> f5622e = new HashMap();

    /* renamed from: h, reason: collision with root package name */
    private LinkedBlockingQueue<Runnable> f5624h = new LinkedBlockingQueue<>();

    /* renamed from: i, reason: collision with root package name */
    private LinkedBlockingQueue<Runnable> f5625i = new LinkedBlockingQueue<>();

    /* renamed from: j, reason: collision with root package name */
    private final Object f5626j = new Object();

    /* renamed from: k, reason: collision with root package name */
    private long f5627k = 0;

    /* renamed from: l, reason: collision with root package name */
    private int f5628l = 0;

    /* renamed from: c, reason: collision with root package name */
    private final w f5621c = w.a();

    private ai(Context context) {
        this.d = context;
    }

    public static /* synthetic */ int b(ai aiVar) {
        int i6 = aiVar.f5628l - 1;
        aiVar.f5628l = i6;
        return i6;
    }

    public static synchronized ai a(Context context) {
        try {
            if (f5619b == null) {
                f5619b = new ai(context);
            }
        } catch (Throwable th) {
            throw th;
        }
        return f5619b;
    }

    public final boolean b(int i6) {
        if (p.f5936c) {
            al.c("Uploading frequency will not be checked if SDK is in debug mode.", new Object[0]);
            return true;
        }
        long jCurrentTimeMillis = System.currentTimeMillis() - a(i6);
        al.c("[UploadManager] Time interval is %d seconds since last uploading(ID: %d).", Long.valueOf(jCurrentTimeMillis / 1000), Integer.valueOf(i6));
        if (jCurrentTimeMillis >= SsMediaSource.DEFAULT_LIVE_PRESENTATION_DELAY_MS) {
            return true;
        }
        al.a("[UploadManager] Data only be uploaded once in %d seconds.", 30L);
        return false;
    }

    public static synchronized ai a() {
        return f5619b;
    }

    public final void a(int i6, bq bqVar, String str, String str2, ah ahVar, long j10, boolean z7) {
        try {
        } catch (Throwable th) {
            th = th;
        }
        try {
            a(new aj(this.d, i6, bqVar.f5825g, ae.a((Object) bqVar), str, str2, ahVar, z7), true, true, j10);
        } catch (Throwable th2) {
            th = th2;
            if (al.a(th)) {
                return;
            }
            th.printStackTrace();
        }
    }

    private void b() {
        ak akVarA = ak.a();
        LinkedBlockingQueue<Runnable> linkedBlockingQueue = new LinkedBlockingQueue<>();
        LinkedBlockingQueue linkedBlockingQueue2 = new LinkedBlockingQueue();
        synchronized (this.f5626j) {
            try {
                al.c("[UploadManager] Try to poll all upload task need and put them into temp queue (pid=%d | tid=%d)", Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()));
                int size = this.f5624h.size();
                int size2 = this.f5625i.size();
                if (size == 0 && size2 == 0) {
                    al.c("[UploadManager] There is no upload task in queue.", new Object[0]);
                    return;
                }
                if (akVarA == null || !akVarA.c()) {
                    size2 = 0;
                }
                a(this.f5624h, linkedBlockingQueue, size);
                a(this.f5625i, linkedBlockingQueue2, size2);
                a(size, linkedBlockingQueue);
                if (size2 > 0) {
                    al.c("[UploadManager] Execute upload tasks of queue which has %d tasks (pid=%d | tid=%d)", Integer.valueOf(size2), Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()));
                }
                ak akVarA2 = ak.a();
                if (akVarA2 != null) {
                    akVarA2.a(new androidx.leanback.widget.n0(size2, linkedBlockingQueue2));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void a(int i6, int i10, byte[] bArr, String str, String str2, ah ahVar, boolean z7) {
        try {
        } catch (Throwable th) {
            th = th;
        }
        try {
            a(new aj(this.d, i6, i10, bArr, str, str2, ahVar, 0, 0, false), z7, false, 0L);
        } catch (Throwable th2) {
            th = th2;
            if (al.a(th)) {
                return;
            }
            th.printStackTrace();
        }
    }

    public final void a(int i6, bq bqVar, String str, String str2, ah ahVar, boolean z7) {
        a(i6, bqVar.f5825g, ae.a((Object) bqVar), str, str2, ahVar, z7);
    }

    public final long a(boolean z7) {
        long jD;
        long jB = ap.b();
        int i6 = z7 ? 5 : 3;
        List<y> listA = this.f5621c.a(i6);
        if (listA != null && listA.size() > 0) {
            jD = 0;
            try {
                y yVar = listA.get(0);
                if (yVar.f5978e >= jB) {
                    jD = ap.d(yVar.f5979g);
                    if (i6 == 3) {
                        this.f = jD;
                    } else {
                        this.f5623g = jD;
                    }
                    listA.remove(yVar);
                }
            } catch (Throwable th) {
                al.a(th);
            }
            if (listA.size() > 0) {
                this.f5621c.a(listA);
            }
        } else {
            jD = z7 ? this.f5623g : this.f;
        }
        al.c("[UploadManager] Local network consume: %d KB", Long.valueOf(jD / 1024));
        return jD;
    }

    public final synchronized void a(long j10, boolean z7) {
        int i6 = z7 ? 5 : 3;
        try {
            y yVar = new y();
            yVar.f5976b = i6;
            yVar.f5978e = ap.b();
            yVar.f5977c = "";
            yVar.d = "";
            yVar.f5979g = ap.c(j10);
            this.f5621c.b(i6);
            this.f5621c.a(yVar);
            if (z7) {
                this.f5623g = j10;
            } else {
                this.f = j10;
            }
            al.c("[UploadManager] Network total consume: %d KB", Long.valueOf(j10 / 1024));
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void a(int i6, long j10) {
        if (i6 >= 0) {
            this.f5622e.put(Integer.valueOf(i6), Long.valueOf(j10));
            y yVar = new y();
            yVar.f5976b = i6;
            yVar.f5978e = j10;
            yVar.f5977c = "";
            yVar.d = "";
            yVar.f5979g = new byte[0];
            this.f5621c.b(i6);
            this.f5621c.a(yVar);
            al.c("[UploadManager] Uploading(ID:%d) time: %s", Integer.valueOf(i6), ap.a(j10));
            return;
        }
        al.e("[UploadManager] Unknown uploading ID: %d", Integer.valueOf(i6));
    }

    public final synchronized long a(int i6) {
        if (i6 >= 0) {
            Long l9 = this.f5622e.get(Integer.valueOf(i6));
            if (l9 != null) {
                return l9.longValue();
            }
        } else {
            al.e("[UploadManager] Unknown upload ID: %d", Integer.valueOf(i6));
        }
        return 0L;
    }

    private static void a(LinkedBlockingQueue<Runnable> linkedBlockingQueue, LinkedBlockingQueue<Runnable> linkedBlockingQueue2, int i6) {
        for (int i10 = 0; i10 < i6; i10++) {
            Runnable runnablePeek = linkedBlockingQueue.peek();
            if (runnablePeek == null) {
                return;
            }
            try {
                linkedBlockingQueue2.put(runnablePeek);
                linkedBlockingQueue.poll();
            } catch (Throwable th) {
                al.e("[UploadManager] Failed to add upload task to temp urgent queue: %s", th.getMessage());
            }
        }
    }

    private void a(int i6, LinkedBlockingQueue<Runnable> linkedBlockingQueue) {
        ak akVarA = ak.a();
        if (i6 > 0) {
            al.c("[UploadManager] Execute urgent upload tasks of queue which has %d tasks (pid=%d | tid=%d)", Integer.valueOf(i6), Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()));
        }
        for (int i10 = 0; i10 < i6; i10++) {
            Runnable runnablePoll = linkedBlockingQueue.poll();
            if (runnablePoll == null) {
                return;
            }
            synchronized (this.f5626j) {
                try {
                    if (this.f5628l >= 2 && akVarA != null) {
                        akVarA.a(runnablePoll);
                    } else {
                        al.a("[UploadManager] Create and start a new thread to execute a upload task: %s", "BUGLY_ASYNC_UPLOAD");
                        if (ap.a(new a3.c(this, 9, runnablePoll), "BUGLY_ASYNC_UPLOAD") != null) {
                            synchronized (this.f5626j) {
                                this.f5628l++;
                            }
                        } else {
                            al.d("[UploadManager] Failed to start a thread to execute asynchronous upload task,will try again next time.", new Object[0]);
                            a(runnablePoll, true);
                        }
                    }
                } finally {
                }
            }
        }
    }

    private boolean a(Runnable runnable, boolean z7) {
        if (runnable == null) {
            al.a("[UploadManager] Upload task should not be null", new Object[0]);
            return false;
        }
        try {
            al.c("[UploadManager] Add upload task to queue (pid=%d | tid=%d)", Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()));
            synchronized (this.f5626j) {
                try {
                    if (z7) {
                        this.f5624h.put(runnable);
                    } else {
                        this.f5625i.put(runnable);
                    }
                } finally {
                }
            }
            return true;
        } catch (Throwable th) {
            al.e("[UploadManager] Failed to add upload task to queue: %s", th.getMessage());
            return false;
        }
    }

    private void a(Runnable runnable, long j10) {
        if (runnable == null) {
            al.d("[UploadManager] Upload task should not be null", new Object[0]);
            return;
        }
        al.c("[UploadManager] Execute synchronized upload task (pid=%d | tid=%d)", Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()));
        Thread threadA = ap.a(runnable, "BUGLY_SYNC_UPLOAD");
        if (threadA == null) {
            al.e("[UploadManager] Failed to start a thread to execute synchronized upload task, add it to queue.", new Object[0]);
            a(runnable, true);
            return;
        }
        try {
            threadA.join(j10);
        } catch (Throwable th) {
            al.e("[UploadManager] Failed to join upload synchronized task with message: %s. Add it to queue.", th.getMessage());
            a(runnable, true);
            b();
        }
    }

    private void a(Runnable runnable, boolean z7, boolean z10, long j10) {
        al.c("[UploadManager] Add upload task (pid=%d | tid=%d)", Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()));
        if (z10) {
            a(runnable, j10);
        } else {
            a(runnable, z7);
            b();
        }
    }
}
