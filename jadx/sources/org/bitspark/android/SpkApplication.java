package org.bitspark.android;

import a2.a;
import a7.f;
import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Point;
import android.os.StrictMode;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.view.WindowManager;
import com.lzy.okgo.OkGo;
import com.tencent.bugly.crashreport.CrashReport;
import com.tencent.mars.xlog.Log;
import com.tencent.mars.xlog.Xlog;
import ea.h;
import f8.b;
import f8.c;
import go.Seq;
import java.util.Locale;
import me.jessyan.autosize.AutoSizeConfig;
import org.bitspark.android.utils.BSContextWrapper;
import org.bitspark.android.utils.m;
import org.bitspark.android.utils.r;
import org.json.JSONException;
import u6.e;
import u7.d;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class SpkApplication extends Application {

    /* renamed from: b, reason: collision with root package name */
    public static final String f8736b = a.s("NQVigpo=\n", "eHwj8urOVho=\n");

    /* renamed from: c, reason: collision with root package name */
    public static SpkApplication f8737c;

    /* renamed from: a, reason: collision with root package name */
    public boolean f8738a = false;

    @Override // android.content.ContextWrapper
    public final void attachBaseContext(Context context) {
        d.s();
        String string = "";
        try {
            string = context.getSharedPreferences(a.s("WzRWvFI1+mw=\n", "GWcG0DNMnx4=\n"), 0).getString(a.s("M16Cb8hFe4MhSZg=\n", "YA7dI4kLPNY=\n"), "");
        } catch (Exception e5) {
            e5.printStackTrace();
        }
        if (string.isEmpty() && !h.H.isEmpty()) {
            string = h.H;
        }
        super.attachBaseContext(BSContextWrapper.wrap(context, string));
        r1.a.d(this);
    }

    @Override // android.app.Application
    public final void onCreate() throws JSONException {
        super.onCreate();
        if (TextUtils.isEmpty(h.I)) {
            h.I = h.H;
        }
        f8737c = this;
        TelephonyManager telephonyManager = (TelephonyManager) getApplicationContext().getSystemService(a.s("7f/cizA=\n", "nZez5VXkAuY=\n"));
        this.f8738a = (telephonyManager == null || telephonyManager.getPhoneType() == 0) ? false : true;
        String str = a.s("BKLCFSZM1rAFs+Y0OnHe61c=\n", "d8e2XFUfu9E=\n") + this.f8738a;
        boolean z7 = m.f8784b;
        Log.i(f8736b, str);
        CrashReport.initCrashReport(getApplicationContext(), a.s("pekwvJSzN6bztg==\n", "l49T36SDUpI=\n"), false);
        if (r.b(this) != null) {
            Log.setLogImp(new Xlog());
            Xlog.open(true, 2, 0, r.b(this) + r.f8799c, r.b(this) + r.f8798b, r.f8797a, a.s("JFO8sFVSKAl2COHhX1IoCnJV4eFYVSVVdQG97VoFcQoiBLfmWFMnXycB5uULVSVaJwGz4g8GdFsv\nBLXtVVInDnMD4O1eBnRaJwi14AxUIwklBuHtC1AgWyEJt+daAiMNdQSxt1gDI1kkV7ezXwFxXiBT\n5rYODycIJQi27VUFKQ8=\n", "FzGF1W02EGw=\n"));
            Log.setConsoleLogOpen(false);
        }
        OkGo.getInstance().init(this).setOkHttpClient(m.d(a.s("lje+\n", "90fXkReM6L4=\n"))).setCacheTime(h.f6679j).setRetryCount(1);
        Seq.setContext((Context) this);
        StrictMode.VmPolicy.Builder builder = new StrictMode.VmPolicy.Builder();
        StrictMode.setVmPolicy(builder.build());
        builder.detectFileUriExposure();
        String strG = m.g(a.s("Wa0GliO9B2ZLuhw=\n", "Cv1Z2mLzQDM=\n"), "");
        if (strG.isEmpty() && !h.H.isEmpty()) {
            strG = h.H;
        }
        if (strG.isEmpty()) {
            strG = a.s("jLQ=\n", "6dpbaZchcBA=\n");
        }
        Locale locale = b.f6800c;
        f fVar = new f(this, new Locale(strG));
        if (b.d != null) {
            throw new IllegalStateException("Already initialized");
        }
        b bVar = new b(fVar, new e(13));
        registerActivityLifecycleCallbacks(new c(new aa.c(2, bVar)));
        registerComponentCallbacks(new f8.d(new f8.a(bVar, this)));
        bVar.a(this, ((SharedPreferences) fVar.f169b).getBoolean("follow_system_locale_key", false) ? bVar.f6801a : fVar.B());
        b.d = bVar;
        WindowManager windowManager = (WindowManager) getSystemService(a.s("IeJsqdr6\n", "VosCzbWNcWE=\n"));
        if (windowManager == null || windowManager.getDefaultDisplay() == null) {
            return;
        }
        Point point = new Point();
        windowManager.getDefaultDisplay().getRealSize(point);
        int i6 = point.x;
        int i10 = point.y;
        if (i6 <= 0 || i10 <= 0) {
            return;
        }
        int i11 = i10 > i6 ? i10 : i6;
        if (i10 <= i6) {
            i6 = i10;
        }
        AutoSizeConfig.getInstance().setScreenWidth(i11).setScreenHeight(i6).setLog(false);
    }
}
