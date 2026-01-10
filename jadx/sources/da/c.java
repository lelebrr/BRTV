package da;

import android.os.Process;
import android.util.Log;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.HashMap;
import o9.e;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c {

    /* renamed from: c, reason: collision with root package name */
    public static final HashMap f6344c = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public String f6345a;

    /* renamed from: b, reason: collision with root package name */
    public b f6346b;

    public static String c() {
        return "_" + Process.myPid();
    }

    public final void a() {
        b bVar = this.f6346b;
        bVar.f6343e.clear();
        bVar.f6340a.set(0L);
        File[] fileArrListFiles = bVar.f.listFiles();
        if (fileArrListFiles != null) {
            for (File file : fileArrListFiles) {
                file.delete();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:104:0x00c9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:119:0x00bf A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0072 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:132:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x00d2 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x00d5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object b(java.lang.String r8) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 222
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: da.c.b(java.lang.String):java.lang.Object");
    }

    public final void d(String str, Serializable serializable, int i6) throws Throwable {
        String str2 = this.f6345a;
        ObjectOutputStream objectOutputStream = null;
        try {
            try {
                try {
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    ObjectOutputStream objectOutputStream2 = new ObjectOutputStream(byteArrayOutputStream);
                    try {
                        objectOutputStream2.writeObject(serializable);
                        byte[] byteArray = byteArrayOutputStream.toByteArray();
                        if (i6 != -1) {
                            f(str, byteArray, i6);
                        } else {
                            e(str, byteArray);
                        }
                        objectOutputStream2.close();
                    } catch (Exception e5) {
                        e = e5;
                        objectOutputStream = objectOutputStream2;
                        e.printStackTrace();
                        objectOutputStream.close();
                    } catch (Throwable th) {
                        th = th;
                        objectOutputStream = objectOutputStream2;
                        try {
                            objectOutputStream.close();
                        } catch (IOException e10) {
                            Log.e(str2, "Exception", e10);
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Exception e11) {
                e = e11;
            }
        } catch (IOException e12) {
            Log.e(str2, "Exception", e12);
        }
    }

    public final void e(String str, byte[] bArr) throws Throwable {
        FileOutputStream fileOutputStream;
        b bVar = this.f6346b;
        File fileC = bVar.c(str);
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                fileOutputStream = new FileOutputStream(fileC);
                try {
                    fileOutputStream.write(bArr);
                } catch (Exception e5) {
                    e = e5;
                    fileOutputStream2 = fileOutputStream;
                    e.printStackTrace();
                    if (fileOutputStream2 != null) {
                        try {
                            fileOutputStream2.flush();
                            fileOutputStream2.close();
                        } catch (IOException e10) {
                            e = e10;
                            e.printStackTrace();
                            b.a(bVar, fileC);
                        }
                    }
                    b.a(bVar, fileC);
                } catch (Throwable th) {
                    th = th;
                    fileOutputStream2 = fileOutputStream;
                    if (fileOutputStream2 != null) {
                        try {
                            fileOutputStream2.flush();
                            fileOutputStream2.close();
                        } catch (IOException e11) {
                            e11.printStackTrace();
                        }
                    }
                    b.a(bVar, fileC);
                    throw th;
                }
            } catch (Exception e12) {
                e = e12;
            }
            try {
                fileOutputStream.flush();
                fileOutputStream.close();
            } catch (IOException e13) {
                e = e13;
                e.printStackTrace();
                b.a(bVar, fileC);
            }
            b.a(bVar, fileC);
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public final void f(String str, byte[] bArr, int i6) throws Throwable {
        byte[] bytes = e.n(i6).getBytes();
        byte[] bArr2 = new byte[bytes.length + bArr.length];
        System.arraycopy(bytes, 0, bArr2, 0, bytes.length);
        System.arraycopy(bArr, 0, bArr2, bytes.length, bArr.length);
        e(str, bArr2);
    }

    public final void g(String str) {
        b bVar = this.f6346b;
        File fileB = bVar.b(str);
        bVar.f6343e.remove(fileB);
        bVar.f6340a.addAndGet(-fileB.length());
        bVar.f6341b.addAndGet(-1);
        fileB.delete();
    }
}
