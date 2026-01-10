package androidx.mediarouter.app;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.AsyncTask;
import android.support.v4.media.MediaDescriptionCompat;
import android.util.Log;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;
import java.util.Objects;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class e0 extends AsyncTask {

    /* renamed from: a, reason: collision with root package name */
    public final Bitmap f2579a;

    /* renamed from: b, reason: collision with root package name */
    public final Uri f2580b;

    /* renamed from: c, reason: collision with root package name */
    public int f2581c;
    public final /* synthetic */ q0 d;

    public e0(q0 q0Var) {
        this.d = q0Var;
        MediaDescriptionCompat mediaDescriptionCompat = q0Var.K;
        Bitmap iconBitmap = mediaDescriptionCompat == null ? null : mediaDescriptionCompat.getIconBitmap();
        if (iconBitmap != null && iconBitmap.isRecycled()) {
            Log.w("MediaRouteCtrlDialog", "Can't fetch the given art bitmap because it's already recycled.");
            iconBitmap = null;
        }
        this.f2579a = iconBitmap;
        MediaDescriptionCompat mediaDescriptionCompat2 = q0Var.K;
        this.f2580b = mediaDescriptionCompat2 != null ? mediaDescriptionCompat2.getIconUri() : null;
    }

    public final BufferedInputStream a(Uri uri) throws IOException {
        InputStream inputStreamOpenInputStream;
        String lowerCase = uri.getScheme().toLowerCase();
        if ("android.resource".equals(lowerCase) || "content".equals(lowerCase) || "file".equals(lowerCase)) {
            inputStreamOpenInputStream = this.d.f2665m.getContentResolver().openInputStream(uri);
        } else {
            URLConnection uRLConnectionOpenConnection = new URL(uri.toString()).openConnection();
            uRLConnectionOpenConnection.setConnectTimeout(30000);
            uRLConnectionOpenConnection.setReadTimeout(30000);
            inputStreamOpenInputStream = uRLConnectionOpenConnection.getInputStream();
        }
        if (inputStreamOpenInputStream == null) {
            return null;
        }
        return new BufferedInputStream(inputStreamOpenInputStream);
    }

    /* JADX WARN: Not initialized variable reg: 5, insn: 0x0030: MOVE (r3 I:??[OBJECT, ARRAY]) = (r5 I:??[OBJECT, ARRAY]) (LINE:49), block:B:14:0x0030 */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00f6  */
    @Override // android.os.AsyncTask
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object doInBackground(java.lang.Object[] r10) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 262
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.mediarouter.app.e0.doInBackground(java.lang.Object[]):java.lang.Object");
    }

    @Override // android.os.AsyncTask
    public final void onPostExecute(Object obj) {
        Bitmap bitmap = (Bitmap) obj;
        q0 q0Var = this.d;
        q0Var.L = null;
        Bitmap bitmap2 = q0Var.M;
        Bitmap bitmap3 = this.f2579a;
        boolean zEquals = Objects.equals(bitmap2, bitmap3);
        Uri uri = this.f2580b;
        if (zEquals && Objects.equals(q0Var.N, uri)) {
            return;
        }
        q0Var.M = bitmap3;
        q0Var.P = bitmap;
        q0Var.N = uri;
        q0Var.Q = this.f2581c;
        q0Var.O = true;
        q0Var.n();
    }

    @Override // android.os.AsyncTask
    public final void onPreExecute() {
        q0 q0Var = this.d;
        q0Var.O = false;
        q0Var.P = null;
        q0Var.Q = 0;
    }
}
