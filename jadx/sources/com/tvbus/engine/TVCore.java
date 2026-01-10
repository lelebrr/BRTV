package com.tvbus.engine;

import android.content.Context;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class TVCore {
    static final int RM_CLIENT = 2;
    static final int RM_MASTER = 1;
    static final int RM_STANDALONE = 0;
    private static TVCore inst;
    private static long nativeHandle;
    private TVListener tvListener = null;
    private String mkBroker = null;

    static {
        try {
            System.loadLibrary("tvcore");
        } catch (Throwable unused) {
        }
    }

    private TVCore() {
    }

    private native String description(long j10);

    private native void diagnose(long j10);

    private native String err2String(long j10, int i6);

    public static synchronized TVCore getInstance() {
        if (inst == null) {
            TVCore tVCore = new TVCore();
            inst = tVCore;
            try {
                long jInitialise = tVCore.initialise();
                nativeHandle = jInitialise;
                if (jInitialise == 0) {
                    return null;
                }
            } catch (Throwable unused) {
                return null;
            }
        }
        return inst;
    }

    private native String getVersion(long j10);

    private native int init(long j10, Context context);

    private native long initialise();

    private native void quit(long j10);

    private native int run(long j10);

    private native void setAuthItems(long j10, String str, String str2, String str3);

    private native void setAuthUrl(long j10, String str);

    private native void setDomainSuffix(long j10, String str);

    private native void setListener(long j10, TVListener tVListener);

    private native void setMKBroker(long j10, String str);

    private native void setOption(long j10, String str, String str2);

    private native void setPassword(long j10, String str);

    private native void setPlayPort(long j10, int i6);

    private native void setRunningMode(long j10, int i6);

    private native void setServPort(long j10, int i6);

    private native void setUsername(long j10, String str);

    private native void start(long j10, String str);

    private native void start2(long j10, String str, String str2);

    private native void stop(long j10);

    private native void stop2(long j10, int i6);

    public String description() {
        try {
            return description(nativeHandle);
        } catch (Throwable unused) {
            return "";
        }
    }

    public void diagnose() {
        try {
            diagnose(nativeHandle);
        } catch (Throwable unused) {
        }
    }

    public String err2String(int i6) {
        try {
            return err2String(nativeHandle, i6);
        } catch (Throwable unused) {
            return "";
        }
    }

    public String getVersion() {
        try {
            return getVersion(nativeHandle);
        } catch (Throwable unused) {
            return "";
        }
    }

    public int init(Context context) {
        try {
            return init(nativeHandle, context);
        } catch (Throwable unused) {
            return -1;
        }
    }

    public void quit() {
        try {
            quit(nativeHandle);
        } catch (Throwable unused) {
        }
    }

    public int run() {
        try {
            return run(nativeHandle);
        } catch (Throwable unused) {
            return -1;
        }
    }

    public void setAuthItems(String str, String str2, String str3) {
        try {
            setAuthItems(nativeHandle, str, str2, str3);
        } catch (Throwable unused) {
        }
    }

    public void setAuthUrl(String str) {
        try {
            setAuthUrl(nativeHandle, str);
        } catch (Throwable unused) {
        }
    }

    public void setDomainSuffix(String str) {
        try {
            setDomainSuffix(nativeHandle, str);
        } catch (Throwable unused) {
        }
    }

    public void setMKBroker(String str) {
        try {
            setMKBroker(nativeHandle, str);
        } catch (Throwable unused) {
        }
    }

    public void setOption(String str, String str2) {
        try {
            setOption(nativeHandle, str, str2);
        } catch (Throwable unused) {
        }
    }

    public void setPassword(String str) {
        try {
            setPassword(nativeHandle, str);
        } catch (Throwable unused) {
        }
    }

    public void setPlayPort(int i6) {
        try {
            setPlayPort(nativeHandle, i6);
        } catch (Throwable unused) {
        }
    }

    public void setRunningMode(int i6) {
        try {
            setRunningMode(nativeHandle, i6);
        } catch (Throwable unused) {
        }
    }

    public void setServPort(int i6) {
        try {
            setServPort(nativeHandle, i6);
        } catch (Throwable unused) {
        }
    }

    public void setTVListener(TVListener tVListener) {
        this.tvListener = tVListener;
        try {
            setListener(nativeHandle, tVListener);
        } catch (Throwable unused) {
        }
    }

    public void setUsername(String str) {
        try {
            setUsername(nativeHandle, str);
        } catch (Throwable unused) {
        }
    }

    public void start(String str) {
        try {
            start(nativeHandle, str);
        } catch (Throwable unused) {
        }
    }

    public void stop() {
        try {
            stop(nativeHandle);
        } catch (Throwable unused) {
        }
    }

    public void start(String str, String str2) {
        try {
            start2(nativeHandle, str, str2);
        } catch (Throwable unused) {
        }
    }

    public void stop(int i6) {
        try {
            stop2(nativeHandle, i6);
        } catch (Throwable unused) {
        }
    }
}
