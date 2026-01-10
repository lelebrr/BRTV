package androidx.core.graphics.drawable;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Shader;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import androidx.media3.exoplayer.rtsp.SessionDescription;
import androidx.versionedparcelable.CustomVersionedParcelable;
import g0.c;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class IconCompat extends CustomVersionedParcelable {

    /* renamed from: k, reason: collision with root package name */
    public static final PorterDuff.Mode f1252k = PorterDuff.Mode.SRC_IN;

    /* renamed from: a, reason: collision with root package name */
    public int f1253a;

    /* renamed from: b, reason: collision with root package name */
    public Object f1254b;

    /* renamed from: c, reason: collision with root package name */
    public byte[] f1255c;
    public Parcelable d;

    /* renamed from: e, reason: collision with root package name */
    public int f1256e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public ColorStateList f1257g;

    /* renamed from: h, reason: collision with root package name */
    public PorterDuff.Mode f1258h;

    /* renamed from: i, reason: collision with root package name */
    public String f1259i;

    /* renamed from: j, reason: collision with root package name */
    public String f1260j;

    public IconCompat() {
        this.f1253a = -1;
        this.f1255c = null;
        this.d = null;
        this.f1256e = 0;
        this.f = 0;
        this.f1257g = null;
        this.f1258h = f1252k;
        this.f1259i = null;
    }

    public static IconCompat b(Bundle bundle) {
        int i6 = bundle.getInt(SessionDescription.ATTR_TYPE);
        IconCompat iconCompat = new IconCompat(i6);
        iconCompat.f1256e = bundle.getInt("int1");
        iconCompat.f = bundle.getInt("int2");
        iconCompat.f1260j = bundle.getString("string1");
        if (bundle.containsKey("tint_list")) {
            iconCompat.f1257g = (ColorStateList) bundle.getParcelable("tint_list");
        }
        if (bundle.containsKey("tint_mode")) {
            iconCompat.f1258h = PorterDuff.Mode.valueOf(bundle.getString("tint_mode"));
        }
        switch (i6) {
            case -1:
            case 1:
            case 5:
                iconCompat.f1254b = bundle.getParcelable("obj");
                return iconCompat;
            case 0:
            default:
                Log.w("IconCompat", "Unknown type " + i6);
                return null;
            case 2:
            case 4:
            case 6:
                iconCompat.f1254b = bundle.getString("obj");
                return iconCompat;
            case 3:
                iconCompat.f1254b = bundle.getByteArray("obj");
                return iconCompat;
        }
    }

    public static IconCompat c(Icon icon) {
        icon.getClass();
        int iC = c.c(icon);
        if (iC == 2) {
            return e(null, c.b(icon), c.a(icon));
        }
        if (iC == 4) {
            Uri uriD = c.d(icon);
            uriD.getClass();
            String string = uriD.toString();
            string.getClass();
            IconCompat iconCompat = new IconCompat(4);
            iconCompat.f1254b = string;
            return iconCompat;
        }
        if (iC != 6) {
            IconCompat iconCompat2 = new IconCompat(-1);
            iconCompat2.f1254b = icon;
            return iconCompat2;
        }
        Uri uriD2 = c.d(icon);
        uriD2.getClass();
        String string2 = uriD2.toString();
        string2.getClass();
        IconCompat iconCompat3 = new IconCompat(6);
        iconCompat3.f1254b = string2;
        return iconCompat3;
    }

    public static Bitmap d(Bitmap bitmap, boolean z7) {
        int iMin = (int) (Math.min(bitmap.getWidth(), bitmap.getHeight()) * 0.6666667f);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iMin, iMin, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Paint paint = new Paint(3);
        float f = iMin;
        float f3 = 0.5f * f;
        float f4 = 0.9166667f * f3;
        if (z7) {
            float f5 = 0.010416667f * f;
            paint.setColor(0);
            paint.setShadowLayer(f5, 0.0f, f * 0.020833334f, 1023410176);
            canvas.drawCircle(f3, f3, f4, paint);
            paint.setShadowLayer(f5, 0.0f, 0.0f, 503316480);
            canvas.drawCircle(f3, f3, f4, paint);
            paint.clearShadowLayer();
        }
        paint.setColor(-16777216);
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        BitmapShader bitmapShader = new BitmapShader(bitmap, tileMode, tileMode);
        Matrix matrix = new Matrix();
        matrix.setTranslate((-(bitmap.getWidth() - iMin)) / 2.0f, (-(bitmap.getHeight() - iMin)) / 2.0f);
        bitmapShader.setLocalMatrix(matrix);
        paint.setShader(bitmapShader);
        canvas.drawCircle(f3, f3, f4, paint);
        canvas.setBitmap(null);
        return bitmapCreateBitmap;
    }

    public static IconCompat e(Resources resources, String str, int i6) {
        str.getClass();
        if (i6 == 0) {
            throw new IllegalArgumentException("Drawable resource ID must not be 0");
        }
        IconCompat iconCompat = new IconCompat(2);
        iconCompat.f1256e = i6;
        if (resources != null) {
            try {
                iconCompat.f1254b = resources.getResourceName(i6);
            } catch (Resources.NotFoundException unused) {
                throw new IllegalArgumentException("Icon resource cannot be found");
            }
        } else {
            iconCompat.f1254b = str;
        }
        iconCompat.f1260j = str;
        return iconCompat;
    }

    public static Resources i(Context context, String str) throws PackageManager.NameNotFoundException {
        if ("android".equals(str)) {
            return Resources.getSystem();
        }
        PackageManager packageManager = context.getPackageManager();
        try {
            ApplicationInfo applicationInfo = packageManager.getApplicationInfo(str, 8192);
            if (applicationInfo != null) {
                return packageManager.getResourcesForApplication(applicationInfo);
            }
            return null;
        } catch (PackageManager.NameNotFoundException e5) {
            Log.e("IconCompat", "Unable to find pkg=" + str + " for icon", e5);
            return null;
        }
    }

    public final Bitmap f() {
        int i6 = this.f1253a;
        if (i6 == -1 && Build.VERSION.SDK_INT >= 23) {
            Object obj = this.f1254b;
            if (obj instanceof Bitmap) {
                return (Bitmap) obj;
            }
            return null;
        }
        if (i6 == 1) {
            return (Bitmap) this.f1254b;
        }
        if (i6 == 5) {
            return d((Bitmap) this.f1254b, true);
        }
        throw new IllegalStateException("called getBitmap() on " + this);
    }

    public final int g() {
        int i6 = this.f1253a;
        if (i6 == -1 && Build.VERSION.SDK_INT >= 23) {
            return c.a(this.f1254b);
        }
        if (i6 == 2) {
            return this.f1256e;
        }
        throw new IllegalStateException("called getResId() on " + this);
    }

    public final String h() {
        int i6 = this.f1253a;
        if (i6 == -1 && Build.VERSION.SDK_INT >= 23) {
            return c.b(this.f1254b);
        }
        if (i6 == 2) {
            String str = this.f1260j;
            return (str == null || TextUtils.isEmpty(str)) ? ((String) this.f1254b).split(":", -1)[0] : this.f1260j;
        }
        throw new IllegalStateException("called getResPackage() on " + this);
    }

    public final int j() {
        int i6 = this.f1253a;
        return (i6 != -1 || Build.VERSION.SDK_INT < 23) ? i6 : c.c(this.f1254b);
    }

    public final Uri k() {
        int i6 = this.f1253a;
        if (i6 == -1 && Build.VERSION.SDK_INT >= 23) {
            return c.d(this.f1254b);
        }
        if (i6 == 4 || i6 == 6) {
            return Uri.parse((String) this.f1254b);
        }
        throw new IllegalStateException("called getUri() on " + this);
    }

    public final InputStream l(Context context) {
        Uri uriK = k();
        String scheme = uriK.getScheme();
        if ("content".equals(scheme) || "file".equals(scheme)) {
            try {
                return context.getContentResolver().openInputStream(uriK);
            } catch (Exception e5) {
                Log.w("IconCompat", "Unable to load image from URI: " + uriK, e5);
                return null;
            }
        }
        try {
            return new FileInputStream(new File((String) this.f1254b));
        } catch (FileNotFoundException e10) {
            Log.w("IconCompat", "Unable to load image from path: " + uriK, e10);
            return null;
        }
    }

    public final Bundle m() {
        Bundle bundle = new Bundle();
        switch (this.f1253a) {
            case -1:
                bundle.putParcelable("obj", (Parcelable) this.f1254b);
                break;
            case 0:
            default:
                throw new IllegalArgumentException("Invalid icon");
            case 1:
            case 5:
                bundle.putParcelable("obj", (Bitmap) this.f1254b);
                break;
            case 2:
            case 4:
            case 6:
                bundle.putString("obj", (String) this.f1254b);
                break;
            case 3:
                bundle.putByteArray("obj", (byte[]) this.f1254b);
                break;
        }
        bundle.putInt(SessionDescription.ATTR_TYPE, this.f1253a);
        bundle.putInt("int1", this.f1256e);
        bundle.putInt("int2", this.f);
        bundle.putString("string1", this.f1260j);
        ColorStateList colorStateList = this.f1257g;
        if (colorStateList != null) {
            bundle.putParcelable("tint_list", colorStateList);
        }
        PorterDuff.Mode mode = this.f1258h;
        if (mode != f1252k) {
            bundle.putString("tint_mode", mode.name());
        }
        return bundle;
    }

    public final Icon n(Context context) {
        if (Build.VERSION.SDK_INT >= 23) {
            return c.f(this, context);
        }
        throw new UnsupportedOperationException("This method is only supported on API level 23+");
    }

    public final String toString() {
        String str;
        if (this.f1253a == -1) {
            return String.valueOf(this.f1254b);
        }
        StringBuilder sb = new StringBuilder("Icon(typ=");
        switch (this.f1253a) {
            case 1:
                str = "BITMAP";
                break;
            case 2:
                str = "RESOURCE";
                break;
            case 3:
                str = "DATA";
                break;
            case 4:
                str = "URI";
                break;
            case 5:
                str = "BITMAP_MASKABLE";
                break;
            case 6:
                str = "URI_MASKABLE";
                break;
            default:
                str = "UNKNOWN";
                break;
        }
        sb.append(str);
        switch (this.f1253a) {
            case 1:
            case 5:
                sb.append(" size=");
                sb.append(((Bitmap) this.f1254b).getWidth());
                sb.append("x");
                sb.append(((Bitmap) this.f1254b).getHeight());
                break;
            case 2:
                sb.append(" pkg=");
                sb.append(this.f1260j);
                sb.append(" id=");
                sb.append(String.format("0x%08x", Integer.valueOf(g())));
                break;
            case 3:
                sb.append(" len=");
                sb.append(this.f1256e);
                if (this.f != 0) {
                    sb.append(" off=");
                    sb.append(this.f);
                    break;
                }
                break;
            case 4:
            case 6:
                sb.append(" uri=");
                sb.append(this.f1254b);
                break;
        }
        if (this.f1257g != null) {
            sb.append(" tint=");
            sb.append(this.f1257g);
        }
        if (this.f1258h != f1252k) {
            sb.append(" mode=");
            sb.append(this.f1258h);
        }
        sb.append(")");
        return sb.toString();
    }

    public IconCompat(int i6) {
        this.f1255c = null;
        this.d = null;
        this.f1256e = 0;
        this.f = 0;
        this.f1257g = null;
        this.f1258h = f1252k;
        this.f1259i = null;
        this.f1253a = i6;
    }
}
