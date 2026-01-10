package com.tencent.bugly.crashreport.crash.h5;

import android.webkit.JavascriptInterface;
import com.lzy.okgo.cookie.SerializableCookie;
import com.lzy.okgo.model.Progress;
import com.tencent.bugly.crashreport.CrashReport;
import com.tencent.bugly.crashreport.inner.InnerApi;
import com.tencent.bugly.proguard.al;
import com.tencent.bugly.proguard.ap;
import com.tencent.bugly.proguard.bb;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Map;
import org.json.JSONObject;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class H5JavaScriptInterface {

    /* renamed from: a, reason: collision with root package name */
    private static HashSet<Integer> f5552a = new HashSet<>();

    /* renamed from: b, reason: collision with root package name */
    private String f5553b = null;

    /* renamed from: c, reason: collision with root package name */
    private Thread f5554c = null;
    private String d = null;

    /* renamed from: e, reason: collision with root package name */
    private Map<String, String> f5555e = null;

    private H5JavaScriptInterface() {
    }

    private static bb a(String str) {
        String string;
        if (str != null && str.length() > 0) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                bb bbVar = new bb();
                String string2 = jSONObject.getString("projectRoot");
                bbVar.f5756a = string2;
                if (string2 == null) {
                    return null;
                }
                String string3 = jSONObject.getString("context");
                bbVar.f5757b = string3;
                if (string3 == null) {
                    return null;
                }
                String string4 = jSONObject.getString(Progress.URL);
                bbVar.f5758c = string4;
                if (string4 == null) {
                    return null;
                }
                String string5 = jSONObject.getString("userAgent");
                bbVar.d = string5;
                if (string5 == null) {
                    return null;
                }
                String string6 = jSONObject.getString("language");
                bbVar.f5759e = string6;
                if (string6 == null) {
                    return null;
                }
                String string7 = jSONObject.getString(SerializableCookie.NAME);
                bbVar.f = string7;
                if (string7 == null || string7.equals("null") || (string = jSONObject.getString("stacktrace")) == null) {
                    return null;
                }
                int iIndexOf = string.indexOf("\n");
                if (iIndexOf < 0) {
                    al.d("H5 crash stack's format is wrong!", new Object[0]);
                    return null;
                }
                bbVar.f5761h = string.substring(iIndexOf + 1);
                String strSubstring = string.substring(0, iIndexOf);
                bbVar.f5760g = strSubstring;
                int iIndexOf2 = strSubstring.indexOf(":");
                if (iIndexOf2 > 0) {
                    bbVar.f5760g = bbVar.f5760g.substring(iIndexOf2 + 1);
                }
                bbVar.f5762i = jSONObject.getString("file");
                if (bbVar.f == null) {
                    return null;
                }
                long j10 = jSONObject.getLong("lineNumber");
                bbVar.f5763j = j10;
                if (j10 < 0) {
                    return null;
                }
                long j11 = jSONObject.getLong("columnNumber");
                bbVar.f5764k = j11;
                if (j11 < 0) {
                    return null;
                }
                al.a("H5 crash information is following: ", new Object[0]);
                al.a("[projectRoot]: " + bbVar.f5756a, new Object[0]);
                al.a("[context]: " + bbVar.f5757b, new Object[0]);
                al.a("[url]: " + bbVar.f5758c, new Object[0]);
                al.a("[userAgent]: " + bbVar.d, new Object[0]);
                al.a("[language]: " + bbVar.f5759e, new Object[0]);
                al.a("[name]: " + bbVar.f, new Object[0]);
                al.a("[message]: " + bbVar.f5760g, new Object[0]);
                al.a("[stacktrace]: \n" + bbVar.f5761h, new Object[0]);
                al.a("[file]: " + bbVar.f5762i, new Object[0]);
                al.a("[lineNumber]: " + bbVar.f5763j, new Object[0]);
                al.a("[columnNumber]: " + bbVar.f5764k, new Object[0]);
                return bbVar;
            } catch (Throwable th) {
                if (!al.a(th)) {
                    th.printStackTrace();
                }
            }
        }
        return null;
    }

    public static H5JavaScriptInterface getInstance(CrashReport.a aVar) {
        String string = null;
        if (aVar == null || f5552a.contains(Integer.valueOf(aVar.hashCode()))) {
            return null;
        }
        H5JavaScriptInterface h5JavaScriptInterface = new H5JavaScriptInterface();
        f5552a.add(Integer.valueOf(aVar.hashCode()));
        Thread threadCurrentThread = Thread.currentThread();
        h5JavaScriptInterface.f5554c = threadCurrentThread;
        if (threadCurrentThread != null) {
            StringBuilder sb = new StringBuilder("\n");
            for (int i6 = 2; i6 < threadCurrentThread.getStackTrace().length; i6++) {
                StackTraceElement stackTraceElement = threadCurrentThread.getStackTrace()[i6];
                if (!stackTraceElement.toString().contains("crashreport")) {
                    sb.append(stackTraceElement.toString());
                    sb.append("\n");
                }
            }
            string = sb.toString();
        }
        h5JavaScriptInterface.d = string;
        HashMap map = new HashMap();
        StringBuilder sb2 = new StringBuilder();
        sb2.append((Object) aVar.c());
        map.put("[WebView] ContentDescription", sb2.toString());
        h5JavaScriptInterface.f5555e = map;
        return h5JavaScriptInterface;
    }

    @JavascriptInterface
    public void printLog(String str) {
        al.d("Log from js: %s", str);
    }

    @JavascriptInterface
    public void reportJSException(String str) {
        if (str == null) {
            al.d("Payload from JS is null.", new Object[0]);
            return;
        }
        String strC = ap.c(str.getBytes());
        String str2 = this.f5553b;
        if (str2 != null && str2.equals(strC)) {
            al.d("Same payload from js. Please check whether you've injected bugly.js more than one times.", new Object[0]);
            return;
        }
        this.f5553b = strC;
        al.d("Handling JS exception ...", new Object[0]);
        bb bbVarA = a(str);
        if (bbVarA == null) {
            al.d("Failed to parse payload.", new Object[0]);
            return;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        String str3 = bbVarA.f5756a;
        if (str3 != null) {
            linkedHashMap2.put("[JS] projectRoot", str3);
        }
        String str4 = bbVarA.f5757b;
        if (str4 != null) {
            linkedHashMap2.put("[JS] context", str4);
        }
        String str5 = bbVarA.f5758c;
        if (str5 != null) {
            linkedHashMap2.put("[JS] url", str5);
        }
        String str6 = bbVarA.d;
        if (str6 != null) {
            linkedHashMap2.put("[JS] userAgent", str6);
        }
        String str7 = bbVarA.f5762i;
        if (str7 != null) {
            linkedHashMap2.put("[JS] file", str7);
        }
        long j10 = bbVarA.f5763j;
        if (j10 != 0) {
            linkedHashMap2.put("[JS] lineNumber", Long.toString(j10));
        }
        linkedHashMap.putAll(linkedHashMap2);
        linkedHashMap.putAll(this.f5555e);
        linkedHashMap.put("Java Stack", this.d);
        InnerApi.postH5CrashAsync(this.f5554c, bbVarA.f, bbVarA.f5760g, bbVarA.f5761h, linkedHashMap);
    }
}
