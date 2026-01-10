package com.tencent.bugly.crashreport;

import android.webkit.WebSettings;
import android.webkit.WebView;
import com.tencent.bugly.crashreport.CrashReport;
import com.tencent.bugly.crashreport.crash.h5.H5JavaScriptInterface;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a implements CrashReport.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ WebView f5477a;

    public a(WebView webView) {
        this.f5477a = webView;
    }

    @Override // com.tencent.bugly.crashreport.CrashReport.a
    public final String a() {
        return this.f5477a.getUrl();
    }

    @Override // com.tencent.bugly.crashreport.CrashReport.a
    public final void b() {
        WebSettings settings = this.f5477a.getSettings();
        if (settings.getJavaScriptEnabled()) {
            return;
        }
        settings.setJavaScriptEnabled(true);
    }

    @Override // com.tencent.bugly.crashreport.CrashReport.a
    public final CharSequence c() {
        return this.f5477a.getContentDescription();
    }

    @Override // com.tencent.bugly.crashreport.CrashReport.a
    public final void a(String str) {
        this.f5477a.loadUrl(str);
    }

    @Override // com.tencent.bugly.crashreport.CrashReport.a
    public final void a(H5JavaScriptInterface h5JavaScriptInterface, String str) {
        this.f5477a.addJavascriptInterface(h5JavaScriptInterface, str);
    }
}
