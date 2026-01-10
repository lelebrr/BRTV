package com.tencent.mars.xlog;

import com.tencent.mars.xlog.Log;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class Xlog implements Log.LogImp {
    public static final int AppednerModeAsync = 0;
    public static final int AppednerModeSync = 1;
    public static final int COMPRESS_LEVEL1 = 1;
    public static final int COMPRESS_LEVEL2 = 2;
    public static final int COMPRESS_LEVEL3 = 3;
    public static final int COMPRESS_LEVEL4 = 4;
    public static final int COMPRESS_LEVEL5 = 5;
    public static final int COMPRESS_LEVEL6 = 6;
    public static final int COMPRESS_LEVEL7 = 7;
    public static final int COMPRESS_LEVEL8 = 8;
    public static final int COMPRESS_LEVEL9 = 9;
    public static final int LEVEL_ALL = 0;
    public static final int LEVEL_DEBUG = 1;
    public static final int LEVEL_ERROR = 4;
    public static final int LEVEL_FATAL = 5;
    public static final int LEVEL_INFO = 2;
    public static final int LEVEL_NONE = 6;
    public static final int LEVEL_VERBOSE = 0;
    public static final int LEVEL_WARNING = 3;
    public static final int ZLIB_MODE = 0;
    public static final int ZSTD_MODE = 1;

    /* compiled from: MyApplication */
    public static class XLogConfig {
        public String cachedir;
        public String logdir;
        public String nameprefix;
        public int level = 2;
        public int mode = 0;
        public String pubkey = "";
        public int compressmode = 0;
        public int compresslevel = 0;
        public int cachedays = 0;
    }

    /* compiled from: MyApplication */
    public abstract class XLoggerInfo {
    }

    private static native void appenderOpen(XLogConfig xLogConfig);

    public static native void logWrite(XLoggerInfo xLoggerInfo, String str);

    public static void logWrite2(int i6, String str, String str2, String str3, int i10, int i11, long j10, long j11, String str4) {
        logWrite2(0L, i6, str, str2, str3, i10, i11, j10, j11, str4);
    }

    public static native void logWrite2(long j10, int i6, String str, String str2, String str3, int i10, int i11, long j11, long j12, String str4);

    public static void open(boolean z7, int i6, int i10, String str, String str2, String str3, String str4) {
        if (z7) {
            System.loadLibrary("c++_shared");
            System.loadLibrary("marsxlog");
        }
        XLogConfig xLogConfig = new XLogConfig();
        xLogConfig.level = i6;
        xLogConfig.mode = i10;
        xLogConfig.logdir = str2;
        xLogConfig.nameprefix = str3;
        xLogConfig.pubkey = str4;
        xLogConfig.compressmode = 0;
        xLogConfig.compresslevel = 0;
        xLogConfig.cachedir = str;
        xLogConfig.cachedays = 0;
        appenderOpen(xLogConfig);
    }

    @Override // com.tencent.mars.xlog.Log.LogImp
    public native void appenderClose();

    @Override // com.tencent.mars.xlog.Log.LogImp
    public native void appenderFlush(long j10, boolean z7);

    @Override // com.tencent.mars.xlog.Log.LogImp
    public void appenderOpen(int i6, int i10, String str, String str2, String str3, int i11) {
        XLogConfig xLogConfig = new XLogConfig();
        xLogConfig.level = i6;
        xLogConfig.mode = i10;
        xLogConfig.logdir = str2;
        xLogConfig.nameprefix = str3;
        xLogConfig.compressmode = 0;
        xLogConfig.pubkey = "";
        xLogConfig.cachedir = str;
        xLogConfig.cachedays = i11;
        appenderOpen(xLogConfig);
    }

    @Override // com.tencent.mars.xlog.Log.LogImp
    public native int getLogLevel(long j10);

    @Override // com.tencent.mars.xlog.Log.LogImp
    public native long getXlogInstance(String str);

    @Override // com.tencent.mars.xlog.Log.LogImp
    public void logD(long j10, String str, String str2, String str3, int i6, int i10, long j11, long j12, String str4) {
        logWrite2(j10, 1, decryptTag(str), str2, str3, i6, i10, j11, j12, str4);
    }

    @Override // com.tencent.mars.xlog.Log.LogImp
    public void logE(long j10, String str, String str2, String str3, int i6, int i10, long j11, long j12, String str4) {
        logWrite2(j10, 4, decryptTag(str), str2, str3, i6, i10, j11, j12, str4);
    }

    @Override // com.tencent.mars.xlog.Log.LogImp
    public void logF(long j10, String str, String str2, String str3, int i6, int i10, long j11, long j12, String str4) {
        logWrite2(j10, 5, decryptTag(str), str2, str3, i6, i10, j11, j12, str4);
    }

    @Override // com.tencent.mars.xlog.Log.LogImp
    public void logI(long j10, String str, String str2, String str3, int i6, int i10, long j11, long j12, String str4) {
        logWrite2(j10, 2, decryptTag(str), str2, str3, i6, i10, j11, j12, str4);
    }

    @Override // com.tencent.mars.xlog.Log.LogImp
    public void logV(long j10, String str, String str2, String str3, int i6, int i10, long j11, long j12, String str4) {
        logWrite2(j10, 0, decryptTag(str), str2, str3, i6, i10, j11, j12, str4);
    }

    @Override // com.tencent.mars.xlog.Log.LogImp
    public void logW(long j10, String str, String str2, String str3, int i6, int i10, long j11, long j12, String str4) {
        logWrite2(j10, 3, decryptTag(str), str2, str3, i6, i10, j11, j12, str4);
    }

    public native long newXlogInstance(XLogConfig xLogConfig);

    @Override // com.tencent.mars.xlog.Log.LogImp
    public long openLogInstance(int i6, int i10, String str, String str2, String str3, int i11) {
        XLogConfig xLogConfig = new XLogConfig();
        xLogConfig.level = i6;
        xLogConfig.mode = i10;
        xLogConfig.logdir = str2;
        xLogConfig.nameprefix = str3;
        xLogConfig.compressmode = 0;
        xLogConfig.pubkey = "";
        xLogConfig.cachedir = str;
        xLogConfig.cachedays = i11;
        return newXlogInstance(xLogConfig);
    }

    @Override // com.tencent.mars.xlog.Log.LogImp
    public native void releaseXlogInstance(String str);

    @Override // com.tencent.mars.xlog.Log.LogImp
    public native void setAppenderMode(long j10, int i6);

    @Override // com.tencent.mars.xlog.Log.LogImp
    public native void setConsoleLogOpen(long j10, boolean z7);

    @Override // com.tencent.mars.xlog.Log.LogImp
    public native void setMaxAliveTime(long j10, long j11);

    @Override // com.tencent.mars.xlog.Log.LogImp
    public native void setMaxFileSize(long j10, long j11);

    private static String decryptTag(String str) {
        return str;
    }
}
