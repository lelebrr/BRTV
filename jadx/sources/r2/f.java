package r2;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.webkit.MimeTypeMap;
import android.widget.ImageView;
import androidx.fragment.app.q;
import com.p2elite.brtv2.R;
import java.io.Closeable;
import java.io.IOException;
import m2.u;
import okhttp3.Headers;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class f {

    /* renamed from: a, reason: collision with root package name */
    public static final Bitmap.Config[] f9467a;

    /* renamed from: b, reason: collision with root package name */
    public static final Bitmap.Config f9468b;

    /* renamed from: c, reason: collision with root package name */
    public static final Headers f9469c;

    static {
        int i6 = Build.VERSION.SDK_INT;
        f9467a = i6 >= 26 ? new Bitmap.Config[]{Bitmap.Config.ARGB_8888, Bitmap.Config.RGBA_F16} : new Bitmap.Config[]{Bitmap.Config.ARGB_8888};
        f9468b = i6 >= 26 ? Bitmap.Config.HARDWARE : Bitmap.Config.ARGB_8888;
        f9469c = new Headers.Builder().build();
    }

    public static final void a(Closeable closeable) throws IOException {
        try {
            closeable.close();
        } catch (RuntimeException e5) {
            throw e5;
        } catch (Exception unused) {
        }
    }

    public static final String b(MimeTypeMap mimeTypeMap, String str) {
        if (str == null || r9.f.e0(str)) {
            return null;
        }
        String strL0 = r9.f.l0(r9.f.l0(str, '#'), '?');
        return mimeTypeMap.getMimeTypeFromExtension(r9.f.k0('.', r9.f.k0('/', strL0, strL0), ""));
    }

    public static final u c(ImageView imageView) {
        Object tag = imageView.getTag(R.id.coil_request_manager);
        u uVar = tag instanceof u ? (u) tag : null;
        if (uVar == null) {
            synchronized (imageView) {
                try {
                    Object tag2 = imageView.getTag(R.id.coil_request_manager);
                    u uVar2 = tag2 instanceof u ? (u) tag2 : null;
                    if (uVar2 != null) {
                        uVar = uVar2;
                    } else {
                        uVar = new u(imageView);
                        imageView.addOnAttachStateChangeListener(uVar);
                        imageView.setTag(R.id.coil_request_manager, uVar);
                    }
                } finally {
                }
            }
        }
        return uVar;
    }

    public static final boolean d(Uri uri) {
        return j9.i.a(uri.getScheme(), "file") && j9.i.a((String) x8.j.V(uri.getPathSegments()), "android_asset");
    }

    public static final int e(r4.b bVar, n2.g gVar) {
        if (bVar instanceof n2.a) {
            return ((n2.a) bVar).f8374c;
        }
        int iOrdinal = gVar.ordinal();
        if (iOrdinal == 0) {
            return Integer.MIN_VALUE;
        }
        if (iOrdinal == 1) {
            return Integer.MAX_VALUE;
        }
        throw new q(13);
    }
}
