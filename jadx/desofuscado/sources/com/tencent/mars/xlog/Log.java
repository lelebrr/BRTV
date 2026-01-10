package com.tencent.mars.xlog;

import a.e;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Process;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class Log {
    public static final int LEVEL_DEBUG = 1;
    public static final int LEVEL_ERROR = 4;
    public static final int LEVEL_FATAL = 5;
    public static final int LEVEL_INFO = 2;
    public static final int LEVEL_NONE = 6;
    public static final int LEVEL_VERBOSE = 0;
    public static final int LEVEL_WARNING = 3;
    private static final String TAG = "mars.xlog.log";
    private static LogImp debugLog = null;
    private static int level = 6;
    private static LogImp logImp;
    private static Map<String, LogInstance> sLogInstanceMap;
    public static Context toastSupportContext;

    /* compiled from: MyApplication */
    public interface LogImp {
        void appenderClose();

        void appenderFlush(long j10, boolean z7);

        void appenderOpen(int i6, int i10, String str, String str2, String str3, int i11);

        int getLogLevel(long j10);

        long getXlogInstance(String str);

        void logD(long j10, String str, String str2, String str3, int i6, int i10, long j11, long j12, String str4);

        void logE(long j10, String str, String str2, String str3, int i6, int i10, long j11, long j12, String str4);

        void logF(long j10, String str, String str2, String str3, int i6, int i10, long j11, long j12, String str4);

        void logI(long j10, String str, String str2, String str3, int i6, int i10, long j11, long j12, String str4);

        void logV(long j10, String str, String str2, String str3, int i6, int i10, long j11, long j12, String str4);

        void logW(long j10, String str, String str2, String str3, int i6, int i10, long j11, long j12, String str4);

        long openLogInstance(int i6, int i10, String str, String str2, String str3, int i11);

        void releaseXlogInstance(String str);

        void setAppenderMode(long j10, int i6);

        void setConsoleLogOpen(long j10, boolean z7);

        void setMaxAliveTime(long j10, long j11);

        void setMaxFileSize(long j10, long j11);
    }

    /* compiled from: MyApplication */
    public static class LogInstance {
        private long mLogInstancePtr;
        private String mPrefix;

        public /* synthetic */ LogInstance(int i6, int i10, String str, String str2, String str3, int i11, a aVar) {
            this(i6, i10, str, str2, str3, i11);
        }

        public void appenderFlush() {
            if (Log.logImp == null || this.mLogInstancePtr == 0) {
                return;
            }
            Log.logImp.appenderFlush(this.mLogInstancePtr, false);
        }

        public void appenderFlushSync() {
            if (Log.logImp == null || this.mLogInstancePtr == 0) {
                return;
            }
            Log.logImp.appenderFlush(this.mLogInstancePtr, true);
        }

        public void d(String str, String str2, Object... objArr) {
            if (Log.logImp == null || getLogLevel() > 1 || this.mLogInstancePtr == 0) {
                return;
            }
            String str3 = objArr == null ? str2 : String.format(str2, objArr);
            if (str3 == null) {
                str3 = "";
            }
            Log.logImp.logD(this.mLogInstancePtr, str, "", "", Process.myTid(), Process.myPid(), Thread.currentThread().getId(), Looper.getMainLooper().getThread().getId(), str3);
        }

        public void e(String str, String str2, Object... objArr) {
            if (Log.logImp == null || getLogLevel() > 4 || this.mLogInstancePtr == 0) {
                return;
            }
            String str3 = objArr == null ? str2 : String.format(str2, objArr);
            if (str3 == null) {
                str3 = "";
            }
            Log.logImp.logE(this.mLogInstancePtr, str, "", "", Process.myTid(), Process.myPid(), Thread.currentThread().getId(), Looper.getMainLooper().getThread().getId(), str3);
        }

        public void f(String str, String str2, Object... objArr) {
            if (Log.logImp == null || getLogLevel() > 5 || this.mLogInstancePtr == 0) {
                return;
            }
            Log.logImp.logF(this.mLogInstancePtr, str, "", "", Process.myTid(), Process.myPid(), Thread.currentThread().getId(), Looper.getMainLooper().getThread().getId(), objArr == null ? str2 : String.format(str2, objArr));
        }

        public int getLogLevel() {
            if (Log.logImp == null || this.mLogInstancePtr == 0) {
                return 6;
            }
            return Log.logImp.getLogLevel(this.mLogInstancePtr);
        }

        public void i(String str, String str2, Object... objArr) {
            if (Log.logImp == null || getLogLevel() > 2 || this.mLogInstancePtr == 0) {
                return;
            }
            String str3 = objArr == null ? str2 : String.format(str2, objArr);
            if (str3 == null) {
                str3 = "";
            }
            Log.logImp.logI(this.mLogInstancePtr, str, "", "", Process.myTid(), Process.myPid(), Thread.currentThread().getId(), Looper.getMainLooper().getThread().getId(), str3);
        }

        public void printErrStackTrace(String str, Throwable th, String str2, Object... objArr) {
            if (Log.logImp == null || getLogLevel() > 4 || this.mLogInstancePtr == 0) {
                return;
            }
            String str3 = objArr == null ? str2 : String.format(str2, objArr);
            if (str3 == null) {
                str3 = "";
            }
            StringBuilder sbW = e.w(str3, "  ");
            sbW.append(android.util.Log.getStackTraceString(th));
            Log.logImp.logE(this.mLogInstancePtr, str, "", "", Process.myTid(), Process.myPid(), Thread.currentThread().getId(), Looper.getMainLooper().getThread().getId(), sbW.toString());
        }

        public void setConsoleLogOpen(boolean z7) {
            if (Log.logImp == null || this.mLogInstancePtr == 0) {
                return;
            }
            Log.logImp.setConsoleLogOpen(this.mLogInstancePtr, z7);
        }

        public void v(String str, String str2, Object... objArr) {
            if (Log.logImp == null || getLogLevel() > 0 || this.mLogInstancePtr == 0) {
                return;
            }
            String str3 = objArr == null ? str2 : String.format(str2, objArr);
            if (str3 == null) {
                str3 = "";
            }
            Log.logImp.logV(this.mLogInstancePtr, str, "", "", Process.myTid(), Process.myPid(), Thread.currentThread().getId(), Looper.getMainLooper().getThread().getId(), str3);
        }

        public void w(String str, String str2, Object... objArr) {
            if (Log.logImp == null || getLogLevel() > 3 || this.mLogInstancePtr == 0) {
                return;
            }
            String str3 = objArr == null ? str2 : String.format(str2, objArr);
            if (str3 == null) {
                str3 = "";
            }
            Log.logImp.logW(this.mLogInstancePtr, str, "", "", Process.myTid(), Process.myPid(), Thread.currentThread().getId(), Looper.getMainLooper().getThread().getId(), str3);
        }

        private LogInstance(int i6, int i10, String str, String str2, String str3, int i11) {
            this.mLogInstancePtr = 0L;
            this.mPrefix = null;
            if (Log.logImp != null) {
                this.mLogInstancePtr = Log.logImp.openLogInstance(i6, i10, str, str2, str3, i11);
                this.mPrefix = str3;
            }
        }
    }

    static {
        a aVar = new a();
        aVar.f5982a = new Handler(Looper.getMainLooper());
        debugLog = aVar;
        logImp = aVar;
        sLogInstanceMap = new HashMap();
    }

    public static void appenderClose() {
        LogImp logImp2 = logImp;
        if (logImp2 != null) {
            logImp2.appenderClose();
            Iterator<Map.Entry<String, LogInstance>> it = sLogInstanceMap.entrySet().iterator();
            while (it.hasNext()) {
                closeLogInstance(it.next().getKey());
            }
        }
    }

    public static void appenderFlush() {
        LogImp logImp2 = logImp;
        if (logImp2 != null) {
            logImp2.appenderFlush(0L, false);
            Iterator<Map.Entry<String, LogInstance>> it = sLogInstanceMap.entrySet().iterator();
            while (it.hasNext()) {
                it.next().getValue().appenderFlush();
            }
        }
    }

    public static void appenderFlushSync(boolean z7) {
        LogImp logImp2 = logImp;
        if (logImp2 != null) {
            logImp2.appenderFlush(0L, z7);
        }
    }

    public static void appenderOpen(int i6, int i10, String str, String str2, String str3, int i11) {
        LogImp logImp2 = logImp;
        if (logImp2 != null) {
            logImp2.appenderOpen(i6, i10, str, str2, str3, i11);
        }
    }

    public static void closeLogInstance(String str) {
        synchronized (sLogInstanceMap) {
            try {
                if (logImp != null && sLogInstanceMap.containsKey(str)) {
                    LogInstance logInstanceRemove = sLogInstanceMap.remove(str);
                    logImp.releaseXlogInstance(str);
                    logInstanceRemove.mLogInstancePtr = 0L;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void d(String str, String str2) {
        d(str, str2, null);
    }

    public static void e(String str, String str2) {
        e(str, str2, null);
    }

    public static void f(String str, String str2) {
        f(str, str2, null);
    }

    public static LogImp getImpl() {
        return logImp;
    }

    public static LogInstance getLogInstance(String str) {
        synchronized (sLogInstanceMap) {
            try {
                if (!sLogInstanceMap.containsKey(str)) {
                    return null;
                }
                return sLogInstanceMap.get(str);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static int getLogLevel() {
        LogImp logImp2 = logImp;
        if (logImp2 != null) {
            return logImp2.getLogLevel(0L);
        }
        return 6;
    }

    public static void i(String str, String str2) {
        i(str, str2, null);
    }

    public static LogInstance openLogInstance(int i6, int i10, String str, String str2, String str3, int i11) {
        synchronized (sLogInstanceMap) {
            try {
                if (sLogInstanceMap.containsKey(str3)) {
                    return sLogInstanceMap.get(str3);
                }
                LogInstance logInstance = new LogInstance(i6, i10, str, str2, str3, i11, null);
                sLogInstanceMap.put(str3, logInstance);
                return logInstance;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void printErrStackTrace(String str, Throwable th, String str2, Object... objArr) {
        LogImp logImp2 = logImp;
        if (logImp2 == null || logImp2.getLogLevel(0L) > 4) {
            return;
        }
        String str3 = objArr == null ? str2 : String.format(str2, objArr);
        if (str3 == null) {
            str3 = "";
        }
        StringBuilder sbW = e.w(str3, "  ");
        sbW.append(android.util.Log.getStackTraceString(th));
        logImp.logE(0L, str, "", "", 0, Process.myPid(), Thread.currentThread().getId(), Looper.getMainLooper().getThread().getId(), sbW.toString());
    }

    public static void setConsoleLogOpen(boolean z7) {
        LogImp logImp2 = logImp;
        if (logImp2 != null) {
            logImp2.setConsoleLogOpen(0L, z7);
        }
    }

    public static void setLevel(int i6, boolean z7) {
        level = i6;
        android.util.Log.w(TAG, "new log level: " + i6);
        if (z7) {
            android.util.Log.e(TAG, "no jni log level support");
        }
    }

    public static void setLogImp(LogImp logImp2) {
        logImp = logImp2;
    }

    public static void v(String str, String str2) {
        v(str, str2, null);
    }

    public static void w(String str, String str2) {
        w(str, str2, null);
    }

    public static void d(String str, String str2, Object... objArr) {
        LogImp logImp2 = logImp;
        if (logImp2 == null || logImp2.getLogLevel(0L) > 1) {
            return;
        }
        if (objArr != null) {
            str2 = String.format(str2, objArr);
        }
        if (str2 == null) {
            str2 = "";
        }
        logImp.logD(0L, str, "", "", 0, Process.myPid(), Thread.currentThread().getId(), Looper.getMainLooper().getThread().getId(), str2);
    }

    public static void e(String str, String str2, Object... objArr) {
        LogImp logImp2 = logImp;
        if (logImp2 == null || logImp2.getLogLevel(0L) > 4) {
            return;
        }
        if (objArr != null) {
            str2 = String.format(str2, objArr);
        }
        if (str2 == null) {
            str2 = "";
        }
        logImp.logE(0L, str, "", "", 0, Process.myPid(), Thread.currentThread().getId(), Looper.getMainLooper().getThread().getId(), str2);
    }

    public static void f(String str, String str2, Object... objArr) {
        LogImp logImp2 = logImp;
        if (logImp2 == null || logImp2.getLogLevel(0L) > 5) {
            return;
        }
        if (objArr != null) {
            str2 = String.format(str2, objArr);
        }
        logImp.logF(0L, str, "", "", 0, Process.myPid(), Thread.currentThread().getId(), Looper.getMainLooper().getThread().getId(), str2);
    }

    public static void i(String str, String str2, Object... objArr) {
        LogImp logImp2 = logImp;
        if (logImp2 == null || logImp2.getLogLevel(0L) > 2) {
            return;
        }
        if (objArr != null) {
            str2 = String.format(str2, objArr);
        }
        if (str2 == null) {
            str2 = "";
        }
        logImp.logI(0L, str, "", "", 0, Process.myPid(), Thread.currentThread().getId(), Looper.getMainLooper().getThread().getId(), str2);
    }

    public static void v(String str, String str2, Object... objArr) {
        LogImp logImp2 = logImp;
        if (logImp2 == null || logImp2.getLogLevel(0L) > 0) {
            return;
        }
        if (objArr != null) {
            str2 = String.format(str2, objArr);
        }
        if (str2 == null) {
            str2 = "";
        }
        logImp.logV(0L, str, "", "", 0, Process.myPid(), Thread.currentThread().getId(), Looper.getMainLooper().getThread().getId(), str2);
    }

    public static void w(String str, String str2, Object... objArr) {
        LogImp logImp2 = logImp;
        if (logImp2 == null || logImp2.getLogLevel(0L) > 3) {
            return;
        }
        if (objArr != null) {
            str2 = String.format(str2, objArr);
        }
        if (str2 == null) {
            str2 = "";
        }
        logImp.logW(0L, str, "", "", 0, Process.myPid(), Thread.currentThread().getId(), Looper.getMainLooper().getThread().getId(), str2);
    }
}
