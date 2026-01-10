package androidx.mediarouter.app;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.SystemClock;
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
public final class q extends AsyncTask {

    /* renamed from: a, reason: collision with root package name */
    public final Bitmap f2654a;

    /* renamed from: b, reason: collision with root package name */
    public final Uri f2655b;

    /* renamed from: c, reason: collision with root package name */
    public int f2656c;
    public long d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ u f2657e;

    public q(u uVar) {
        this.f2657e = uVar;
        MediaDescriptionCompat mediaDescriptionCompat = uVar.U;
        Bitmap iconBitmap = mediaDescriptionCompat == null ? null : mediaDescriptionCompat.getIconBitmap();
        if (iconBitmap != null && iconBitmap.isRecycled()) {
            Log.w("MediaRouteCtrlDialog", "Can't fetch the given art bitmap because it's already recycled.");
            iconBitmap = null;
        }
        this.f2654a = iconBitmap;
        MediaDescriptionCompat mediaDescriptionCompat2 = uVar.U;
        this.f2655b = mediaDescriptionCompat2 != null ? mediaDescriptionCompat2.getIconUri() : null;
    }

    public final BufferedInputStream a(Uri uri) throws IOException {
        InputStream inputStreamOpenInputStream;
        String lowerCase = uri.getScheme().toLowerCase();
        if ("android.resource".equals(lowerCase) || "content".equals(lowerCase) || "file".equals(lowerCase)) {
            inputStreamOpenInputStream = this.f2657e.f2704i.getContentResolver().openInputStream(uri);
        } else {
            URLConnection uRLConnectionOpenConnection = new URL(uri.toString()).openConnection();
            int i6 = u.f2694p0;
            uRLConnectionOpenConnection.setConnectTimeout(i6);
            uRLConnectionOpenConnection.setReadTimeout(i6);
            inputStreamOpenInputStream = uRLConnectionOpenConnection.getInputStream();
        }
        if (inputStreamOpenInputStream == null) {
            return null;
        }
        return new BufferedInputStream(inputStreamOpenInputStream);
    }

    /* JADX WARN: Not initialized variable reg: 5, insn: 0x0030: MOVE (r3 I:??[OBJECT, ARRAY]) = (r5 I:??[OBJECT, ARRAY]) (LINE:49), block:B:14:0x0030 */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00f1  */
    @Override // android.os.AsyncTask
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object doInBackground(java.lang.Object[] r11) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 257
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.mediarouter.app.q.doInBackground(java.lang.Object[]):java.lang.Object");
    }

    @Override // android.os.AsyncTask
    public final void onPostExecute(Object obj) {
        Bitmap bitmap = (Bitmap) obj;
        u uVar = this.f2657e;
        uVar.V = null;
        Bitmap bitmap2 = uVar.W;
        Bitmap bitmap3 = this.f2654a;
        boolean zEquals = Objects.equals(bitmap2, bitmap3);
        Uri uri = this.f2655b;
        if (zEquals && Objects.equals(uVar.X, uri)) {
            return;
        }
        uVar.W = bitmap3;
        uVar.Z = bitmap;
        uVar.X = uri;
        uVar.f2695b0 = this.f2656c;
        uVar.Y = true;
        uVar.s(SystemClock.uptimeMillis() - this.d > 120);
    }

    @Override // android.os.AsyncTask
    public final void onPreExecute() {
        this.d = SystemClock.uptimeMillis();
        u uVar = this.f2657e;
        uVar.Y = false;
        uVar.Z = null;
        uVar.f2695b0 = 0;
    }
}
