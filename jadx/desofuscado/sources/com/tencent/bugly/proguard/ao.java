package com.tencent.bugly.proguard;

import android.content.Context;
import android.os.Process;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class ao {

    /* renamed from: a, reason: collision with root package name */
    public static boolean f5653a = true;

    /* renamed from: b, reason: collision with root package name */
    public static boolean f5654b = true;

    /* renamed from: c, reason: collision with root package name */
    private static SimpleDateFormat f5655c = null;
    private static int d = 30720;

    /* renamed from: e, reason: collision with root package name */
    private static StringBuilder f5656e;
    private static StringBuilder f;

    /* renamed from: g, reason: collision with root package name */
    private static boolean f5657g;

    /* renamed from: h, reason: collision with root package name */
    private static a f5658h;

    /* renamed from: i, reason: collision with root package name */
    private static String f5659i;

    /* renamed from: j, reason: collision with root package name */
    private static String f5660j;

    /* renamed from: k, reason: collision with root package name */
    private static Context f5661k;

    /* renamed from: l, reason: collision with root package name */
    private static String f5662l;

    /* renamed from: m, reason: collision with root package name */
    private static boolean f5663m;

    /* renamed from: n, reason: collision with root package name */
    private static boolean f5664n;

    /* renamed from: o, reason: collision with root package name */
    private static ExecutorService f5665o;

    /* renamed from: p, reason: collision with root package name */
    private static int f5666p;

    /* renamed from: q, reason: collision with root package name */
    private static final Object f5667q = new Object();

    static {
        try {
            f5655c = new SimpleDateFormat("MM-dd HH:mm:ss");
        } catch (Throwable th) {
            al.b(th.getCause());
        }
    }

    public static synchronized void a(Context context) {
        if (f5663m || context == null || !f5654b) {
            return;
        }
        try {
            f5665o = Executors.newSingleThreadExecutor();
            f = new StringBuilder(0);
            f5656e = new StringBuilder(0);
            f5661k = context;
            f5659i = aa.a(context).d;
            f5660j = "";
            f5662l = f5661k.getFilesDir().getPath() + "/buglylog_" + f5659i + "_" + f5660j + ".txt";
            f5666p = Process.myPid();
        } catch (Throwable unused) {
        }
        f5663m = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean d(String str, String str2, String str3) {
        q qVar;
        try {
            aa aaVarB = aa.b();
            if (aaVarB == null || (qVar = aaVarB.N) == null) {
                return false;
            }
            return qVar.appendLogToNative(str, str2, str3);
        } catch (Throwable th) {
            if (al.a(th)) {
                return false;
            }
            th.printStackTrace();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static synchronized void e(String str, String str2, String str3) {
        if (f5653a) {
            f(str, str2, str3);
        } else {
            g(str, str2, str3);
        }
    }

    private static synchronized void f(String str, String str2, String str3) {
        String strA = a(str, str2, str3, Process.myTid());
        synchronized (f5667q) {
            try {
                f.append(strA);
            } finally {
                try {
                } catch (Throwable th) {
                }
            }
            if (f.length() >= d) {
                StringBuilder sb = f;
                f = sb.delete(0, sb.indexOf("\u0001\r\n") + 1);
            }
        }
    }

    private static synchronized void g(String str, String str2, String str3) {
        String strA = a(str, str2, str3, Process.myTid());
        synchronized (f5667q) {
            try {
                f.append(strA);
            } catch (Throwable unused) {
            }
            if (f.length() <= d) {
                return;
            }
            if (f5657g) {
                return;
            }
            f5657g = true;
            a aVar = f5658h;
            if (aVar == null) {
                f5658h = new a(f5662l);
            } else {
                File file = aVar.f5669b;
                if (file == null || file.length() + f.length() > f5658h.f5670c) {
                    f5658h.a();
                }
            }
            if (f5658h.a(f.toString())) {
                f.setLength(0);
                f5657g = false;
            }
        }
    }

    private static String b() {
        q qVar;
        try {
            aa aaVarB = aa.b();
            if (aaVarB == null || (qVar = aaVarB.N) == null) {
                return null;
            }
            return qVar.getLogFromNative();
        } catch (Throwable th) {
            if (al.a(th)) {
                return null;
            }
            th.printStackTrace();
            return null;
        }
    }

    private static byte[] c() {
        File file;
        if (!f5654b) {
            return null;
        }
        if (f5664n) {
            al.a("[LogUtil] Get user log from native.", new Object[0]);
            String strB = b();
            if (strB != null) {
                al.a("[LogUtil] Got user log from native: %d bytes", Integer.valueOf(strB.length()));
                return ap.a(strB, "BuglyNativeLog.txt");
            }
        }
        StringBuilder sb = new StringBuilder();
        synchronized (f5667q) {
            try {
                a aVar = f5658h;
                if (aVar != null && aVar.f5668a && (file = aVar.f5669b) != null && file.length() > 0) {
                    sb.append(ap.a(f5658h.f5669b, 30720, true));
                }
                StringBuilder sb2 = f;
                if (sb2 != null && sb2.length() > 0) {
                    sb.append(f.toString());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return ap.a(sb.toString(), "BuglyLog.txt");
    }

    /* compiled from: MyApplication */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        boolean f5668a;

        /* renamed from: b, reason: collision with root package name */
        File f5669b;

        /* renamed from: c, reason: collision with root package name */
        long f5670c = 30720;
        private String d;

        /* renamed from: e, reason: collision with root package name */
        private long f5671e;

        public a(String str) {
            if (str == null || str.equals("")) {
                return;
            }
            this.d = str;
            this.f5668a = a();
        }

        public final boolean a() {
            try {
                File file = new File(this.d);
                this.f5669b = file;
                if (file.exists() && !this.f5669b.delete()) {
                    this.f5668a = false;
                    return false;
                }
                if (this.f5669b.createNewFile()) {
                    return true;
                }
                this.f5668a = false;
                return false;
            } catch (Throwable th) {
                al.a(th);
                this.f5668a = false;
                return false;
            }
        }

        public final boolean a(String str) throws IOException {
            FileOutputStream fileOutputStream;
            if (!this.f5668a) {
                return false;
            }
            FileOutputStream fileOutputStream2 = null;
            try {
                fileOutputStream = new FileOutputStream(this.f5669b, true);
            } catch (Throwable th) {
                th = th;
            }
            try {
                fileOutputStream.write(str.getBytes("UTF-8"));
                fileOutputStream.flush();
                fileOutputStream.close();
                this.f5671e += r10.length;
                this.f5668a = true;
                try {
                    fileOutputStream.close();
                } catch (IOException unused) {
                }
                return true;
            } catch (Throwable th2) {
                th = th2;
                fileOutputStream2 = fileOutputStream;
                try {
                    al.a(th);
                    this.f5668a = false;
                    if (fileOutputStream2 != null) {
                        try {
                            fileOutputStream2.close();
                        } catch (IOException unused2) {
                        }
                    }
                    return false;
                } catch (Throwable th3) {
                    if (fileOutputStream2 != null) {
                        try {
                            fileOutputStream2.close();
                        } catch (IOException unused3) {
                        }
                    }
                    throw th3;
                }
            }
        }
    }

    public static void a(int i6) {
        synchronized (f5667q) {
            try {
                d = i6;
                if (i6 < 0) {
                    d = 0;
                } else if (i6 > 30720) {
                    d = 30720;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void a(String str, String str2, Throwable th) {
        if (th == null) {
            return;
        }
        String message = th.getMessage();
        if (message == null) {
            message = "";
        }
        a(str, str2, message + '\n' + ap.b(th));
    }

    public static synchronized void a(String str, String str2, String str3) {
        if (f5663m && f5654b) {
            try {
                if (f5664n) {
                    f5665o.execute(new e0(0, str, str2, str3));
                } else {
                    f5665o.execute(new e0(1, str, str2, str3));
                }
            } catch (Exception e5) {
                al.b(e5);
            }
        }
    }

    private static String a(String str, String str2, String str3, long j10) {
        String string;
        f5656e.setLength(0);
        if (str3.length() > 30720) {
            str3 = str3.substring(str3.length() - 30720, str3.length() - 1);
        }
        Date date = new Date();
        SimpleDateFormat simpleDateFormat = f5655c;
        if (simpleDateFormat != null) {
            string = simpleDateFormat.format(date);
        } else {
            string = date.toString();
        }
        StringBuilder sb = f5656e;
        sb.append(string);
        sb.append(" ");
        sb.append(f5666p);
        sb.append(" ");
        sb.append(j10);
        sb.append(" ");
        sb.append(str);
        sb.append(" ");
        sb.append(str2);
        sb.append(": ");
        sb.append(str3);
        sb.append("\u0001\r\n");
        return f5656e.toString();
    }

    public static byte[] a() {
        if (f5653a) {
            if (f5654b) {
                return ap.a(f.toString(), "BuglyLog.txt");
            }
            return null;
        }
        return c();
    }
}
