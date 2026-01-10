package i2;

import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.net.Uri;
import j9.i;
import m2.m;
import r2.f;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c implements b {
    @Override // i2.b
    public final String a(Object obj, m mVar) {
        Uri uri = (Uri) obj;
        if (!i.a(uri.getScheme(), "android.resource")) {
            return uri.toString();
        }
        StringBuilder sb = new StringBuilder();
        sb.append(uri);
        sb.append('-');
        Configuration configuration = mVar.f8229a.getResources().getConfiguration();
        Bitmap.Config[] configArr = f.f9467a;
        sb.append(configuration.uiMode & 48);
        return sb.toString();
    }
}
