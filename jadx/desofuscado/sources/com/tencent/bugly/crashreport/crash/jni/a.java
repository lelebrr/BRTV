package com.tencent.bugly.crashreport.crash.jni;

import a0.e;
import com.tencent.bugly.crashreport.crash.CrashDetailBean;
import com.tencent.bugly.proguard.al;
import com.tencent.bugly.proguard.ap;
import com.tencent.bugly.proguard.at;
import com.tencent.bugly.proguard.be;
import java.io.File;
import java.util.Arrays;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ NativeCrashHandler f5568a;

    public a(NativeCrashHandler nativeCrashHandler) {
        this.f5568a = nativeCrashHandler;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        NativeCrashHandler nativeCrashHandler = this.f5568a;
        if (!ap.a(nativeCrashHandler.d, "native_record_lock")) {
            al.a("[Native] Failed to lock file for handling native crash record.", new Object[0]);
            return;
        }
        if (!NativeCrashHandler.f5559n) {
            nativeCrashHandler.a(999, "false");
        }
        CrashDetailBean crashDetailBeanA = be.a(nativeCrashHandler.d, NativeCrashHandler.f5556a, nativeCrashHandler.f5561g);
        if (crashDetailBeanA != null) {
            al.a("[Native] Get crash from native record.", new Object[0]);
            if (!nativeCrashHandler.f5567m.a(crashDetailBeanA, true)) {
                nativeCrashHandler.f5567m.b(crashDetailBeanA, false);
            }
            be.a(false, NativeCrashHandler.f5556a);
        }
        long jB = ap.b() - at.f5697j;
        long jB2 = ap.b() + 86400000;
        File file = new File(NativeCrashHandler.f5556a);
        if (file.exists() && file.isDirectory()) {
            try {
                File[] fileArrListFiles = file.listFiles();
                if (fileArrListFiles != null && fileArrListFiles.length != 0) {
                    Arrays.sort(fileArrListFiles, new e(3));
                    long length = 0;
                    int i6 = 0;
                    int i10 = 0;
                    for (File file2 : fileArrListFiles) {
                        long jLastModified = file2.lastModified();
                        length += file2.length();
                        if (jLastModified < jB || jLastModified >= jB2 || length >= at.f5696i) {
                            al.a("[Native] Delete record file: %s", file2.getAbsolutePath());
                            i6++;
                            if (file2.delete()) {
                                i10++;
                            }
                        }
                    }
                    al.c("[Native] Number of record files overdue: %d, has deleted: %d", Integer.valueOf(i6), Integer.valueOf(i10));
                }
            } catch (Throwable th) {
                al.a(th);
            }
        }
        ap.b(nativeCrashHandler.d, "native_record_lock");
    }
}
