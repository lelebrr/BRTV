package l2;

import android.graphics.Bitmap;
import com.lzy.okgo.model.HttpHeaders;
import java.util.Date;
import okhttp3.Headers;
import okhttp3.Request;
import r9.m;
import r9.n;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    public final Request f7957a;

    /* renamed from: b, reason: collision with root package name */
    public final c f7958b;

    /* renamed from: c, reason: collision with root package name */
    public final Date f7959c;
    public final String d;

    /* renamed from: e, reason: collision with root package name */
    public final Date f7960e;
    public final String f;

    /* renamed from: g, reason: collision with root package name */
    public final Date f7961g;

    /* renamed from: h, reason: collision with root package name */
    public final long f7962h;

    /* renamed from: i, reason: collision with root package name */
    public final long f7963i;

    /* renamed from: j, reason: collision with root package name */
    public final String f7964j;

    /* renamed from: k, reason: collision with root package name */
    public final int f7965k;

    public e(Request request, c cVar) {
        int i6;
        this.f7957a = request;
        this.f7958b = cVar;
        this.f7965k = -1;
        if (cVar != null) {
            this.f7962h = cVar.f7955c;
            this.f7963i = cVar.d;
            Headers headers = cVar.f;
            int size = headers.size();
            for (int i10 = 0; i10 < size; i10++) {
                String strName = headers.name(i10);
                if (n.P(strName, "Date")) {
                    this.f7959c = headers.getDate("Date");
                    this.d = headers.value(i10);
                } else if (n.P(strName, "Expires")) {
                    this.f7961g = headers.getDate("Expires");
                } else if (n.P(strName, HttpHeaders.HEAD_KEY_LAST_MODIFIED)) {
                    this.f7960e = headers.getDate(HttpHeaders.HEAD_KEY_LAST_MODIFIED);
                    this.f = headers.value(i10);
                } else if (n.P(strName, HttpHeaders.HEAD_KEY_E_TAG)) {
                    this.f7964j = headers.value(i10);
                } else if (n.P(strName, "Age")) {
                    String strValue = headers.value(i10);
                    Bitmap.Config[] configArr = r2.f.f9467a;
                    Long lM = m.M(strValue);
                    if (lM != null) {
                        long jLongValue = lM.longValue();
                        i6 = jLongValue > 2147483647L ? Integer.MAX_VALUE : jLongValue < 0 ? 0 : (int) jLongValue;
                    } else {
                        i6 = -1;
                    }
                    this.f7965k = i6;
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x00fe  */
    /* JADX WARN: Type inference failed for: r4v1, types: [java.lang.Object, w8.c] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final l2.f a() {
        /*
            Method dump skipped, instructions count: 411
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: l2.e.a():l2.f");
    }
}
