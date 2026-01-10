package com.tencent.mars.xlog;

import a.f;
import android.os.Handler;
import com.tencent.mars.xlog.Log;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a implements Log.LogImp {

    /* renamed from: a, reason: collision with root package name */
    public Handler f5982a;

    @Override // com.tencent.mars.xlog.Log.LogImp
    public final int getLogLevel(long j10) {
        return Log.level;
    }

    @Override // com.tencent.mars.xlog.Log.LogImp
    public final long getXlogInstance(String str) {
        return 0L;
    }

    @Override // com.tencent.mars.xlog.Log.LogImp
    public final void logD(long j10, String str, String str2, String str3, int i6, int i10, long j11, long j12, String str4) {
        if (Log.level <= 1) {
            android.util.Log.d(str, str4);
        }
    }

    @Override // com.tencent.mars.xlog.Log.LogImp
    public final void logE(long j10, String str, String str2, String str3, int i6, int i10, long j11, long j12, String str4) {
        if (Log.level <= 4) {
            android.util.Log.e(str, str4);
        }
    }

    @Override // com.tencent.mars.xlog.Log.LogImp
    public final void logF(long j10, String str, String str2, String str3, int i6, int i10, long j11, long j12, String str4) {
        if (Log.level > 5) {
            return;
        }
        android.util.Log.e(str, str4);
        if (Log.toastSupportContext != null) {
            this.f5982a.post(new f(8, str4));
        }
    }

    @Override // com.tencent.mars.xlog.Log.LogImp
    public final void logI(long j10, String str, String str2, String str3, int i6, int i10, long j11, long j12, String str4) {
        if (Log.level <= 2) {
            android.util.Log.i(str, str4);
        }
    }

    @Override // com.tencent.mars.xlog.Log.LogImp
    public final void logV(long j10, String str, String str2, String str3, int i6, int i10, long j11, long j12, String str4) {
        if (Log.level <= 0) {
            android.util.Log.v(str, str4);
        }
    }

    @Override // com.tencent.mars.xlog.Log.LogImp
    public final void logW(long j10, String str, String str2, String str3, int i6, int i10, long j11, long j12, String str4) {
        if (Log.level <= 3) {
            android.util.Log.w(str, str4);
        }
    }

    @Override // com.tencent.mars.xlog.Log.LogImp
    public final long openLogInstance(int i6, int i10, String str, String str2, String str3, int i11) {
        return 0L;
    }

    @Override // com.tencent.mars.xlog.Log.LogImp
    public final void appenderClose() {
    }

    @Override // com.tencent.mars.xlog.Log.LogImp
    public final void releaseXlogInstance(String str) {
    }

    @Override // com.tencent.mars.xlog.Log.LogImp
    public final void appenderFlush(long j10, boolean z7) {
    }

    @Override // com.tencent.mars.xlog.Log.LogImp
    public final void setAppenderMode(long j10, int i6) {
    }

    @Override // com.tencent.mars.xlog.Log.LogImp
    public final void setConsoleLogOpen(long j10, boolean z7) {
    }

    @Override // com.tencent.mars.xlog.Log.LogImp
    public final void setMaxAliveTime(long j10, long j11) {
    }

    @Override // com.tencent.mars.xlog.Log.LogImp
    public final void setMaxFileSize(long j10, long j11) {
    }

    @Override // com.tencent.mars.xlog.Log.LogImp
    public final void appenderOpen(int i6, int i10, String str, String str2, String str3, int i11) {
    }
}
