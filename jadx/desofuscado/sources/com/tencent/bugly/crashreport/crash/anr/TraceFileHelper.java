package com.tencent.bugly.crashreport.crash.anr;

import com.tencent.bugly.proguard.al;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class TraceFileHelper {

    /* compiled from: MyApplication */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public long f5544a;

        /* renamed from: b, reason: collision with root package name */
        public String f5545b;

        /* renamed from: c, reason: collision with root package name */
        public long f5546c;
        public Map<String, String[]> d;
    }

    /* compiled from: MyApplication */
    public interface b {
        boolean a(long j10);

        boolean a(long j10, long j11, String str);

        boolean a(String str, int i6, String str2, String str3);
    }

    private static Object[] a(BufferedReader bufferedReader, Pattern... patternArr) throws IOException {
        while (true) {
            String line = bufferedReader.readLine();
            if (line == null) {
                return null;
            }
            for (Pattern pattern : patternArr) {
                if (pattern.matcher(line).matches()) {
                    return new Object[]{pattern, line};
                }
            }
        }
    }

    private static String b(BufferedReader bufferedReader) throws IOException {
        StringBuffer stringBuffer = new StringBuffer();
        while (true) {
            String line = bufferedReader.readLine();
            if (line == null || line.trim().length() <= 0) {
                break;
            }
            stringBuffer.append(line.concat("\n"));
        }
        return stringBuffer.toString();
    }

    public static a readFirstDumpInfo(String str, boolean z7) throws Throwable {
        if (str == null) {
            al.e("path:%s", str);
            return null;
        }
        a aVar = new a();
        readTraceFile(str, new com.tencent.bugly.crashreport.crash.anr.b(aVar, z7));
        if (aVar.f5544a > 0 && aVar.f5546c > 0 && aVar.f5545b != null) {
            return aVar;
        }
        al.e("first dump error %s", aVar.f5544a + " " + aVar.f5546c + " " + aVar.f5545b);
        return null;
    }

    public static a readTargetDumpInfo(String str, String str2, boolean z7) {
        if (str != null && str2 != null) {
            a aVar = new a();
            readTraceFile(str2, new com.tencent.bugly.crashreport.crash.anr.a(aVar, str, z7));
            if (aVar.f5544a > 0 && aVar.f5546c > 0 && aVar.f5545b != null) {
                return aVar;
            }
        }
        return null;
    }

    public static void readTraceFile(String str, b bVar) throws Throwable {
        Throwable th;
        int i6 = 0;
        if (str == null || bVar == null) {
            return;
        }
        File file = new File(str);
        if (!file.exists()) {
            return;
        }
        file.lastModified();
        file.length();
        BufferedReader bufferedReader = null;
        try {
            try {
                BufferedReader bufferedReader2 = new BufferedReader(new FileReader(file));
                try {
                    Pattern patternCompile = Pattern.compile("-{5}\\spid\\s\\d+\\sat\\s\\d+-\\d+-\\d+\\s\\d{2}:\\d{2}:\\d{2}\\s-{5}");
                    Pattern patternCompile2 = Pattern.compile("-{5}\\send\\s\\d+\\s-{5}");
                    Pattern patternCompile3 = Pattern.compile("Cmd\\sline:\\s(\\S+)");
                    Pattern patternCompile4 = Pattern.compile("\".+\"\\s(daemon\\s){0,1}prio=\\d+\\stid=\\d+\\s.*");
                    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.US);
                    while (true) {
                        Pattern[] patternArr = new Pattern[1];
                        patternArr[i6] = patternCompile;
                        Object[] objArrA = a(bufferedReader2, patternArr);
                        if (objArrA == null) {
                            try {
                                bufferedReader2.close();
                                return;
                            } catch (IOException e5) {
                                if (al.a(e5)) {
                                    return;
                                }
                                e5.printStackTrace();
                                return;
                            }
                        }
                        Pattern[] patternArr2 = new Pattern[1];
                        patternArr2[i6] = patternCompile3;
                        Object[] objArrA2 = a(bufferedReader2, patternArr2);
                        if (objArrA2 == null) {
                            al.d("Failed to find process name.", new Object[i6]);
                            try {
                                bufferedReader2.close();
                                return;
                            } catch (IOException e10) {
                                if (al.a(e10)) {
                                    return;
                                }
                                e10.printStackTrace();
                                return;
                            }
                        }
                        String[] strArrSplit = objArrA[1].toString().split("\\s");
                        long j10 = Long.parseLong(strArrSplit[2]);
                        long time = simpleDateFormat.parse(strArrSplit[4] + " " + strArrSplit[5]).getTime();
                        Matcher matcher = patternCompile3.matcher(objArrA2[1].toString());
                        matcher.find();
                        matcher.group(1);
                        SimpleDateFormat simpleDateFormat2 = simpleDateFormat;
                        if (!bVar.a(j10, time, matcher.group(1))) {
                            try {
                                bufferedReader2.close();
                                return;
                            } catch (IOException e11) {
                                if (al.a(e11)) {
                                    return;
                                }
                                e11.printStackTrace();
                                return;
                            }
                        }
                        while (true) {
                            Object[] objArrA3 = a(bufferedReader2, patternCompile4, patternCompile2);
                            if (objArrA3 == null) {
                                break;
                            }
                            if (objArrA3[0] == patternCompile4) {
                                String string = objArrA3[1].toString();
                                Matcher matcher2 = Pattern.compile("\".+\"").matcher(string);
                                matcher2.find();
                                String strGroup = matcher2.group();
                                String strSubstring = strGroup.substring(1, strGroup.length() - 1);
                                string.contains("NATIVE");
                                Matcher matcher3 = Pattern.compile("tid=\\d+").matcher(string);
                                matcher3.find();
                                String strGroup2 = matcher3.group();
                                bVar.a(strSubstring, Integer.parseInt(strGroup2.substring(strGroup2.indexOf("=") + 1)), a(bufferedReader2), b(bufferedReader2));
                            } else if (!bVar.a(Long.parseLong(objArrA3[1].toString().split("\\s")[2]))) {
                                try {
                                    bufferedReader2.close();
                                    return;
                                } catch (IOException e12) {
                                    if (al.a(e12)) {
                                        return;
                                    }
                                    e12.printStackTrace();
                                    return;
                                }
                            }
                        }
                        simpleDateFormat = simpleDateFormat2;
                        i6 = 0;
                    }
                } catch (Exception e13) {
                    e = e13;
                    bufferedReader = bufferedReader2;
                    if (!al.a(e)) {
                        e.printStackTrace();
                    }
                    al.d("trace open fail:%s : %s", e.getClass().getName(), e.getMessage());
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (IOException e14) {
                            if (al.a(e14)) {
                                return;
                            }
                            e14.printStackTrace();
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    bufferedReader = bufferedReader2;
                    if (bufferedReader == null) {
                        throw th;
                    }
                    try {
                        bufferedReader.close();
                        throw th;
                    } catch (IOException e15) {
                        if (al.a(e15)) {
                            throw th;
                        }
                        e15.printStackTrace();
                        throw th;
                    }
                }
            } catch (Exception e16) {
                e = e16;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    private static String a(BufferedReader bufferedReader) throws IOException {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i6 = 0; i6 < 3; i6++) {
            String line = bufferedReader.readLine();
            if (line == null) {
                return null;
            }
            stringBuffer.append(line.concat("\n"));
        }
        return stringBuffer.toString();
    }
}
