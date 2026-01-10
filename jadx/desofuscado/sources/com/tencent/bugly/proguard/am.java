package com.tencent.bugly.proguard;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.List;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class am {
    public static boolean a(File file, String str, long j10, boolean z7) {
        try {
            BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(file, z7));
            boolean zA = a(bufferedWriter, str.toCharArray(), str.length(), file.length(), j10);
            bufferedWriter.close();
            return zA;
        } catch (Throwable th) {
            al.a(th);
            return false;
        }
    }

    private static List<File> b(String str, String str2, String str3, long j10) {
        ArrayList arrayList = new ArrayList();
        if (str2 == null || str3 == null) {
            al.d("prefix %s and/or postfix %s is null.", str2, str3);
            return arrayList;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        File file = new File(str);
        if (!file.exists() || !file.isDirectory()) {
            return arrayList;
        }
        try {
            File[] fileArrListFiles = file.listFiles(new d0(str2, str3));
            if (fileArrListFiles != null && fileArrListFiles.length != 0) {
                return a(fileArrListFiles, str2, str3, jCurrentTimeMillis - j10);
            }
            return arrayList;
        } catch (Throwable th) {
            al.a(th);
            return arrayList;
        }
    }

    private static boolean a(Writer writer, char[] cArr, int i6, long j10, long j11) throws IOException {
        if (j10 >= j11) {
            return false;
        }
        try {
            if ((i6 * 2) + j10 <= j11) {
                writer.write(cArr, 0, i6);
            } else {
                writer.write(cArr, 0, (int) ((j11 - j10) / 2));
            }
            writer.flush();
            return true;
        } catch (IOException e5) {
            al.a(e5);
            return false;
        }
    }

    public static void a(String str, String str2, String str3, long j10) {
        try {
            int i6 = 0;
            for (File file : b(str, str2, str3, j10)) {
                al.c("File %s is to be deleted.", file.getName());
                if (file.delete()) {
                    i6++;
                }
            }
            al.c("Number of overdue trace files that has deleted: ".concat(String.valueOf(i6)), new Object[0]);
        } catch (Throwable th) {
            al.a(th);
        }
    }

    private static List<File> a(File[] fileArr, String str, String str2, long j10) {
        ArrayList arrayList = new ArrayList();
        for (File file : fileArr) {
            long jA = a(file.getName(), str, str2);
            if (jA >= 0 && 0 <= jA && jA <= j10) {
                arrayList.add(file);
            }
        }
        return arrayList;
    }

    public static long a(String str, String str2, String str3) {
        if (str == null) {
            al.d("File name is null.", new Object[0]);
            return -1L;
        }
        try {
            if (str.startsWith(str2) && str.endsWith(str3)) {
                return Long.parseLong(str.substring(str2.length(), str.indexOf(str3)));
            }
        } catch (Throwable th) {
            al.a(th);
        }
        return -1L;
    }

    public static boolean a(String str, String str2, int i6) {
        boolean z7 = true;
        al.c("rqdp{  sv sd start} %s", str);
        if (str2 != null && str2.trim().length() > 0) {
            File file = new File(str);
            try {
                if (!file.exists()) {
                    if (file.getParentFile() != null) {
                        file.getParentFile().mkdirs();
                    }
                    file.createNewFile();
                }
                long j10 = i6;
                if (file.length() >= j10) {
                    z7 = false;
                }
                return a(file, str2, j10, z7);
            } catch (Throwable th) {
                if (!al.a(th)) {
                    th.printStackTrace();
                }
            }
        }
        return false;
    }
}
