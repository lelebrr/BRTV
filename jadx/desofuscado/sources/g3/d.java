package g3;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.text.TextUtils;
import java.util.List;
import v2.g;
import v2.h;
import v2.j;
import x2.x;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d implements j {

    /* renamed from: b, reason: collision with root package name */
    public static final g f7097b = new g("com.bumptech.glide.load.resource.bitmap.Downsampler.Theme", null, g.f10661e);

    /* renamed from: a, reason: collision with root package name */
    public final Context f7098a;

    public d(Context context) {
        this.f7098a = context.getApplicationContext();
    }

    @Override // v2.j
    public final /* bridge */ /* synthetic */ x a(Object obj, int i6, int i10, h hVar) {
        return c((Uri) obj, hVar);
    }

    @Override // v2.j
    public final boolean b(Object obj, h hVar) {
        String scheme = ((Uri) obj).getScheme();
        return scheme != null && scheme.equals("android.resource");
    }

    public final x c(Uri uri, h hVar) throws PackageManager.NameNotFoundException, NumberFormatException {
        Context contextCreatePackageContext;
        int identifier;
        String authority = uri.getAuthority();
        if (TextUtils.isEmpty(authority)) {
            throw new IllegalStateException("Package name for " + uri + " is null or empty");
        }
        Context context = this.f7098a;
        if (authority.equals(context.getPackageName())) {
            contextCreatePackageContext = context;
        } else {
            try {
                contextCreatePackageContext = context.createPackageContext(authority, 0);
            } catch (PackageManager.NameNotFoundException e5) {
                if (!authority.contains(context.getPackageName())) {
                    throw new IllegalArgumentException("Failed to obtain context or unrecognized Uri format for: " + uri, e5);
                }
            }
        }
        List<String> pathSegments = uri.getPathSegments();
        if (pathSegments.size() == 2) {
            List<String> pathSegments2 = uri.getPathSegments();
            String authority2 = uri.getAuthority();
            String str = pathSegments2.get(0);
            String str2 = pathSegments2.get(1);
            identifier = contextCreatePackageContext.getResources().getIdentifier(str2, str, authority2);
            if (identifier == 0) {
                identifier = Resources.getSystem().getIdentifier(str2, str, "android");
            }
            if (identifier == 0) {
                throw new IllegalArgumentException("Failed to find resource id for: " + uri);
            }
        } else {
            if (pathSegments.size() != 1) {
                throw new IllegalArgumentException("Unrecognized Uri format: " + uri);
            }
            try {
                identifier = Integer.parseInt(uri.getPathSegments().get(0));
            } catch (NumberFormatException e10) {
                throw new IllegalArgumentException("Unrecognized Uri format: " + uri, e10);
            }
        }
        Resources.Theme theme = authority.equals(context.getPackageName()) ? (Resources.Theme) hVar.c(f7097b) : null;
        Drawable drawableN = theme == null ? o9.d.n(context, contextCreatePackageContext, identifier, null) : o9.d.n(context, context, identifier, theme);
        if (drawableN != null) {
            return new c(drawableN, 0);
        }
        return null;
    }
}
