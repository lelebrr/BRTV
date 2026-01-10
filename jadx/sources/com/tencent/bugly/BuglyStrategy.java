package com.tencent.bugly;

import com.tencent.bugly.proguard.aa;
import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class BuglyStrategy {

    /* renamed from: c, reason: collision with root package name */
    private String f5453c;
    private String d;

    /* renamed from: e, reason: collision with root package name */
    private String f5454e;
    private long f;

    /* renamed from: g, reason: collision with root package name */
    private String f5455g;

    /* renamed from: h, reason: collision with root package name */
    private String f5456h;

    /* renamed from: i, reason: collision with root package name */
    private String f5457i;

    /* renamed from: u, reason: collision with root package name */
    private a f5469u;

    /* renamed from: j, reason: collision with root package name */
    private boolean f5458j = true;

    /* renamed from: k, reason: collision with root package name */
    private boolean f5459k = true;

    /* renamed from: l, reason: collision with root package name */
    private boolean f5460l = true;

    /* renamed from: m, reason: collision with root package name */
    private boolean f5461m = false;

    /* renamed from: n, reason: collision with root package name */
    private boolean f5462n = true;

    /* renamed from: o, reason: collision with root package name */
    private Class<?> f5463o = null;

    /* renamed from: p, reason: collision with root package name */
    private boolean f5464p = true;

    /* renamed from: q, reason: collision with root package name */
    private boolean f5465q = true;

    /* renamed from: r, reason: collision with root package name */
    private boolean f5466r = true;

    /* renamed from: s, reason: collision with root package name */
    private boolean f5467s = true;

    /* renamed from: t, reason: collision with root package name */
    private boolean f5468t = false;

    /* renamed from: a, reason: collision with root package name */
    protected int f5451a = 31;

    /* renamed from: b, reason: collision with root package name */
    protected boolean f5452b = false;

    /* renamed from: v, reason: collision with root package name */
    private boolean f5470v = false;

    /* compiled from: MyApplication */
    public static class a {
        public static final int CRASHTYPE_ANR = 4;
        public static final int CRASHTYPE_BLOCK = 7;
        public static final int CRASHTYPE_COCOS2DX_JS = 5;
        public static final int CRASHTYPE_COCOS2DX_LUA = 6;
        public static final int CRASHTYPE_JAVA_CATCH = 1;
        public static final int CRASHTYPE_JAVA_CRASH = 0;
        public static final int CRASHTYPE_NATIVE = 2;
        public static final int CRASHTYPE_U3D = 3;
        public static final int MAX_USERDATA_KEY_LENGTH = 100;
        public static final int MAX_USERDATA_VALUE_LENGTH = 100000;

        public synchronized Map<String, String> onCrashHandleStart(int i6, String str, String str2, String str3) {
            return null;
        }

        public synchronized byte[] onCrashHandleStart2GetExtraDatas(int i6, String str, String str2, String str3) {
            return null;
        }
    }

    public synchronized String getAppChannel() {
        String str = this.d;
        if (str != null) {
            return str;
        }
        return aa.b().f5586s;
    }

    public synchronized String getAppPackageName() {
        String str = this.f5454e;
        if (str != null) {
            return str;
        }
        return aa.b().f5572c;
    }

    public synchronized long getAppReportDelay() {
        return this.f;
    }

    public synchronized String getAppVersion() {
        String str = this.f5453c;
        if (str != null) {
            return str;
        }
        return aa.b().f5582o;
    }

    public synchronized int getCallBackType() {
        return this.f5451a;
    }

    public synchronized boolean getCloseErrorCallback() {
        return this.f5452b;
    }

    public synchronized a getCrashHandleCallback() {
        return this.f5469u;
    }

    public synchronized String getDeviceID() {
        return this.f5456h;
    }

    public synchronized String getDeviceModel() {
        return this.f5457i;
    }

    public synchronized String getLibBuglySOFilePath() {
        return this.f5455g;
    }

    public synchronized Class<?> getUserInfoActivity() {
        return this.f5463o;
    }

    public synchronized boolean isBuglyLogUpload() {
        return this.f5464p;
    }

    public synchronized boolean isEnableANRCrashMonitor() {
        return this.f5459k;
    }

    public synchronized boolean isEnableCatchAnrTrace() {
        return this.f5460l;
    }

    public synchronized boolean isEnableNativeCrashMonitor() {
        return this.f5458j;
    }

    public boolean isEnableRecordAnrMainStack() {
        return this.f5461m;
    }

    public synchronized boolean isEnableUserInfo() {
        return this.f5462n;
    }

    public boolean isMerged() {
        return this.f5470v;
    }

    public boolean isReplaceOldChannel() {
        return this.f5465q;
    }

    public synchronized boolean isUploadProcess() {
        return this.f5466r;
    }

    public synchronized boolean isUploadSpotCrash() {
        return this.f5467s;
    }

    public synchronized boolean recordUserInfoOnceADay() {
        return this.f5468t;
    }

    public synchronized BuglyStrategy setAppChannel(String str) {
        this.d = str;
        return this;
    }

    public synchronized BuglyStrategy setAppPackageName(String str) {
        this.f5454e = str;
        return this;
    }

    public synchronized BuglyStrategy setAppReportDelay(long j10) {
        this.f = j10;
        return this;
    }

    public synchronized BuglyStrategy setAppVersion(String str) {
        this.f5453c = str;
        return this;
    }

    public synchronized BuglyStrategy setBuglyLogUpload(boolean z7) {
        this.f5464p = z7;
        return this;
    }

    public synchronized void setCallBackType(int i6) {
        this.f5451a = i6;
    }

    public synchronized void setCloseErrorCallback(boolean z7) {
        this.f5452b = z7;
    }

    public synchronized BuglyStrategy setCrashHandleCallback(a aVar) {
        this.f5469u = aVar;
        return this;
    }

    public synchronized BuglyStrategy setDeviceID(String str) {
        this.f5456h = str;
        return this;
    }

    public synchronized BuglyStrategy setDeviceModel(String str) {
        this.f5457i = str;
        return this;
    }

    public synchronized BuglyStrategy setEnableANRCrashMonitor(boolean z7) {
        this.f5459k = z7;
        return this;
    }

    public void setEnableCatchAnrTrace(boolean z7) {
        this.f5460l = z7;
    }

    public synchronized BuglyStrategy setEnableNativeCrashMonitor(boolean z7) {
        this.f5458j = z7;
        return this;
    }

    public void setEnableRecordAnrMainStack(boolean z7) {
        this.f5461m = z7;
    }

    public synchronized BuglyStrategy setEnableUserInfo(boolean z7) {
        this.f5462n = z7;
        return this;
    }

    public synchronized BuglyStrategy setLibBuglySOFilePath(String str) {
        this.f5455g = str;
        return this;
    }

    @Deprecated
    public void setMerged(boolean z7) {
        this.f5470v = z7;
    }

    public synchronized BuglyStrategy setRecordUserInfoOnceADay(boolean z7) {
        this.f5468t = z7;
        return this;
    }

    public void setReplaceOldChannel(boolean z7) {
        this.f5465q = z7;
    }

    public synchronized BuglyStrategy setUploadProcess(boolean z7) {
        this.f5466r = z7;
        return this;
    }

    public synchronized void setUploadSpotCrash(boolean z7) {
        this.f5467s = z7;
    }

    public synchronized BuglyStrategy setUserInfoActivity(Class<?> cls) {
        this.f5463o = cls;
        return this;
    }
}
