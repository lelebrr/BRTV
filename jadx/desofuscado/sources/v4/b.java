package v4;

import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import java.util.Locale;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public final String f10671a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f10672b;

    /* renamed from: c, reason: collision with root package name */
    public final String f10673c;

    public b(String str, String str2) {
        b5.l.d(str, "The log tag cannot be null or empty.");
        this.f10671a = str;
        this.f10673c = str2;
        this.f10672b = str.length() <= 23;
    }

    public final void a(Exception exc, String str, Object... objArr) {
        if (Build.TYPE.equals("user") || !this.f10672b) {
            return;
        }
        String str2 = this.f10671a;
        if (Log.isLoggable(str2, 3)) {
            Log.d(str2, d(str, objArr), exc);
        }
    }

    public final void b(String str, Object... objArr) {
        if (Build.TYPE.equals("user") || !this.f10672b) {
            return;
        }
        String str2 = this.f10671a;
        if (Log.isLoggable(str2, 3)) {
            Log.d(str2, d(str, objArr));
        }
    }

    public final void c(Object... objArr) {
        Log.e(this.f10671a, d("Bundle is null", objArr));
    }

    public final String d(String str, Object... objArr) {
        if (objArr.length != 0) {
            str = String.format(Locale.ROOT, str, objArr);
        }
        String str2 = this.f10673c;
        String strR = TextUtils.isEmpty(str2) ? "" : a.e.r("[", str2, "] ");
        return !TextUtils.isEmpty(strR) ? strR.concat(String.valueOf(str)) : str;
    }
}
