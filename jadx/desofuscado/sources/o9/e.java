package o9;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.text.Spanned;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewAnimationUtils;
import android.view.ViewParent;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.TextView;
import androidx.media3.exoplayer.rtsp.SessionDescription;
import androidx.media3.extractor.ts.TsExtractor;
import b3.c0;
import b3.e0;
import b3.g0;
import com.bumptech.glide.j;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import e3.b0;
import e3.f0;
import e3.m;
import e3.p;
import e3.t;
import i3.k;
import i9.l;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import okio.FileSystem;
import okio.Path;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class e {

    /* renamed from: a, reason: collision with root package name */
    public static Boolean f8647a;

    /* renamed from: b, reason: collision with root package name */
    public static Boolean f8648b;

    /* renamed from: c, reason: collision with root package name */
    public static Boolean f8649c;
    public static Boolean d;

    /* renamed from: e, reason: collision with root package name */
    public static SharedPreferences f8650e;

    public static void A(EditorInfo editorInfo, InputConnection inputConnection, TextView textView) {
        if (inputConnection == null || editorInfo.hintText != null) {
            return;
        }
        for (ViewParent parent = textView.getParent(); parent instanceof View; parent = parent.getParent()) {
        }
    }

    public static void H(TextView textView, CharSequence charSequence) {
        CharSequence text = textView.getText();
        if (charSequence != text) {
            if (charSequence == null && text.length() == 0) {
                return;
            }
            if (!(charSequence instanceof Spanned)) {
                if ((charSequence == null) == (text == null)) {
                    if (charSequence == null) {
                        return;
                    }
                    int length = charSequence.length();
                    if (length == text.length()) {
                        for (int i6 = 0; i6 < length; i6++) {
                            if (charSequence.charAt(i6) == text.charAt(i6)) {
                            }
                        }
                        return;
                    }
                }
            } else if (charSequence.equals(text)) {
                return;
            }
            textView.setText(charSequence);
        }
    }

    public static boolean I(Context context) {
        ApplicationInfo applicationInfo;
        Intent intentPutExtra = new Intent().addFlags(268435456).setAction("com.android.settings.panel.action.MEDIA_OUTPUT").putExtra("com.android.settings.panel.extra.PACKAGE_NAME", context.getPackageName());
        Iterator<ResolveInfo> it = context.getPackageManager().queryIntentActivities(intentPutExtra, 0).iterator();
        while (it.hasNext()) {
            ActivityInfo activityInfo = it.next().activityInfo;
            if (activityInfo != null && (applicationInfo = activityInfo.applicationInfo) != null && (applicationInfo.flags & TsExtractor.TS_STREAM_TYPE_AC3) != 0) {
                intentPutExtra.setPackage(applicationInfo.packageName);
                context.startActivity(intentPutExtra);
                return true;
            }
        }
        return false;
    }

    public static SharedPreferences J(Context context) {
        SharedPreferences sharedPreferences;
        synchronized (SharedPreferences.class) {
            try {
                if (f8650e == null) {
                    f8650e = (SharedPreferences) u7.d.A(new l1.b(1, context));
                }
                sharedPreferences = f8650e;
            } catch (Throwable th) {
                throw th;
            }
        }
        return sharedPreferences;
    }

    public static final boolean c(Object[] objArr, int i6, int i10, List list) {
        if (i10 != list.size()) {
            return false;
        }
        for (int i11 = 0; i11 < i10; i11++) {
            if (!j9.i.a(objArr[i6 + i11], list.get(i11))) {
                return false;
            }
        }
        return true;
    }

    public static final String d(Object[] objArr, int i6, int i10, x8.f fVar) {
        StringBuilder sb = new StringBuilder((i10 * 3) + 2);
        sb.append("[");
        for (int i11 = 0; i11 < i10; i11++) {
            if (i11 > 0) {
                sb.append(", ");
            }
            Object obj = objArr[i6 + i11];
            if (obj == fVar) {
                sb.append("(this Collection)");
            } else {
                sb.append(obj);
            }
        }
        sb.append("]");
        String string = sb.toString();
        j9.i.e(string, "toString(...)");
        return string;
    }

    public static void g(StringBuilder sb, Object obj, l lVar) {
        if (lVar != null) {
            sb.append((CharSequence) lVar.invoke(obj));
            return;
        }
        if (obj == null ? true : obj instanceof CharSequence) {
            sb.append((CharSequence) obj);
        } else if (obj instanceof Character) {
            sb.append(((Character) obj).charValue());
        } else {
            sb.append((CharSequence) obj.toString());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0043  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean h(int r9, android.graphics.Rect r10, android.graphics.Rect r11, android.graphics.Rect r12) {
        /*
            boolean r0 = i(r9, r10, r11)
            boolean r1 = i(r9, r10, r12)
            r2 = 0
            if (r1 != 0) goto L78
            if (r0 != 0) goto Lf
            goto L78
        Lf:
            java.lang.String r0 = "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."
            r1 = 130(0x82, float:1.82E-43)
            r3 = 33
            r4 = 66
            r5 = 17
            r6 = 1
            if (r9 == r5) goto L3d
            if (r9 == r3) goto L36
            if (r9 == r4) goto L2f
            if (r9 != r1) goto L29
            int r7 = r10.bottom
            int r8 = r12.top
            if (r7 > r8) goto L77
            goto L43
        L29:
            java.lang.IllegalArgumentException r9 = new java.lang.IllegalArgumentException
            r9.<init>(r0)
            throw r9
        L2f:
            int r7 = r10.right
            int r8 = r12.left
            if (r7 > r8) goto L77
            goto L43
        L36:
            int r7 = r10.top
            int r8 = r12.bottom
            if (r7 < r8) goto L77
            goto L43
        L3d:
            int r7 = r10.left
            int r8 = r12.right
            if (r7 < r8) goto L77
        L43:
            if (r9 == r5) goto L77
            if (r9 != r4) goto L48
            goto L77
        L48:
            int r11 = y(r9, r10, r11)
            if (r9 == r5) goto L6a
            if (r9 == r3) goto L65
            if (r9 == r4) goto L60
            if (r9 != r1) goto L5a
            int r9 = r12.bottom
            int r10 = r10.bottom
        L58:
            int r9 = r9 - r10
            goto L6f
        L5a:
            java.lang.IllegalArgumentException r9 = new java.lang.IllegalArgumentException
            r9.<init>(r0)
            throw r9
        L60:
            int r9 = r12.right
            int r10 = r10.right
            goto L58
        L65:
            int r9 = r10.top
            int r10 = r12.top
            goto L58
        L6a:
            int r9 = r10.left
            int r10 = r12.left
            goto L58
        L6f:
            int r9 = java.lang.Math.max(r6, r9)
            if (r11 >= r9) goto L76
            r2 = 1
        L76:
            return r2
        L77:
            return r6
        L78:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: o9.e.h(int, android.graphics.Rect, android.graphics.Rect, android.graphics.Rect):boolean");
    }

    public static boolean i(int i6, Rect rect, Rect rect2) {
        if (i6 != 17) {
            if (i6 != 33) {
                if (i6 != 66) {
                    if (i6 != 130) {
                        throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                    }
                }
            }
            return rect2.right >= rect.left && rect2.left <= rect.right;
        }
        return rect2.bottom >= rect.top && rect2.top <= rect.bottom;
    }

    public static int j(int i6, int i10) {
        return f0.a.h(i6, (Color.alpha(i6) * i10) / 255);
    }

    public static byte[] k(byte[] bArr, int i6, int i10) {
        int i11 = i10 - i6;
        if (i11 >= 0) {
            byte[] bArr2 = new byte[i11];
            System.arraycopy(bArr, i6, bArr2, 0, Math.min(bArr.length - i6, i11));
            return bArr2;
        }
        throw new IllegalArgumentException(i6 + " > " + i10);
    }

    public static j l(com.bumptech.glide.b bVar, ArrayList arrayList) {
        v2.j fVar;
        v2.j aVar;
        int i6;
        Resources resources;
        f0 f0Var;
        Class cls;
        y2.a aVar2 = bVar.f3494a;
        com.bumptech.glide.f fVar2 = bVar.f3496c;
        Context applicationContext = fVar2.getApplicationContext();
        a0.b bVar2 = fVar2.f3520h;
        j jVar = new j();
        m mVar = new m();
        j3.c cVar = jVar.f3531g;
        synchronized (cVar) {
            cVar.f7432a.add(mVar);
        }
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 27) {
            jVar.k(new t());
        }
        Resources resources2 = applicationContext.getResources();
        ArrayList arrayListF = jVar.f();
        y2.f fVar3 = bVar.d;
        i3.b bVar3 = new i3.b(applicationContext, arrayListF, aVar2, fVar3);
        f0 f0Var2 = new f0(aVar2, new x4.e(10));
        p pVar = new p(jVar.f(), resources2.getDisplayMetrics(), aVar2, fVar3);
        if (i10 < 28 || !((Map) bVar2.f32b).containsKey(com.bumptech.glide.c.class)) {
            fVar = new e3.f(pVar, 0);
            aVar = new e3.a(pVar, 2, fVar3);
        } else {
            aVar = new e3.g(1);
            fVar = new e3.g(0);
        }
        if (i10 >= 28) {
            i6 = i10;
            resources = resources2;
            f0Var = f0Var2;
            jVar.d("Animation", InputStream.class, Drawable.class, new g3.a(1, new a7.f(19, arrayListF, fVar3, false)));
            jVar.d("Animation", ByteBuffer.class, Drawable.class, new g3.a(0, new a7.f(19, arrayListF, fVar3, false)));
        } else {
            i6 = i10;
            resources = resources2;
            f0Var = f0Var2;
        }
        g3.d dVar = new g3.d(applicationContext);
        e3.b bVar4 = new e3.b(fVar3);
        c6.b bVar5 = new c6.b(1);
        j3.d dVar2 = new j3.d(1);
        ContentResolver contentResolver = applicationContext.getContentResolver();
        jVar.b(ByteBuffer.class, new b3.c(2));
        jVar.b(InputStream.class, new a0.b(10, fVar3));
        jVar.d("Bitmap", ByteBuffer.class, Bitmap.class, fVar);
        jVar.d("Bitmap", InputStream.class, Bitmap.class, aVar);
        String str = Build.FINGERPRINT;
        if ("robolectric".equals(str)) {
            cls = Drawable.class;
        } else {
            cls = Drawable.class;
            jVar.d("Bitmap", ParcelFileDescriptor.class, Bitmap.class, new e3.f(pVar, 1));
        }
        jVar.d("Bitmap", AssetFileDescriptor.class, Bitmap.class, new f0(aVar2, new u6.e(9)));
        f0 f0Var3 = f0Var;
        jVar.d("Bitmap", ParcelFileDescriptor.class, Bitmap.class, f0Var3);
        e0 e0Var = e0.f3179b;
        jVar.a(Bitmap.class, Bitmap.class, e0Var);
        jVar.d("Bitmap", Bitmap.class, Bitmap.class, new b0(0));
        jVar.c(Bitmap.class, bVar4);
        Resources resources3 = resources;
        jVar.d("BitmapDrawable", ByteBuffer.class, BitmapDrawable.class, new e3.a(resources3, fVar));
        jVar.d("BitmapDrawable", InputStream.class, BitmapDrawable.class, new e3.a(resources3, aVar));
        jVar.d("BitmapDrawable", ParcelFileDescriptor.class, BitmapDrawable.class, new e3.a(resources3, f0Var3));
        jVar.c(BitmapDrawable.class, new a7.f(17, aVar2, bVar4, false));
        jVar.d("Animation", InputStream.class, i3.d.class, new k(arrayListF, bVar3, fVar3));
        jVar.d("Animation", ByteBuffer.class, i3.d.class, bVar3);
        jVar.c(i3.d.class, new x4.e(14));
        jVar.a(t2.d.class, t2.d.class, e0Var);
        jVar.d("Bitmap", t2.d.class, Bitmap.class, new e3.c(aVar2));
        Class cls2 = cls;
        jVar.d("legacy_append", Uri.class, cls2, dVar);
        jVar.d("legacy_append", Uri.class, Bitmap.class, new e3.a(dVar, 1, aVar2));
        jVar.i(new com.bumptech.glide.load.data.h(2));
        jVar.a(File.class, ByteBuffer.class, new e0(3));
        jVar.a(File.class, InputStream.class, new b3.j(new b3.c(5)));
        jVar.d("legacy_append", File.class, File.class, new b0(2));
        jVar.a(File.class, ParcelFileDescriptor.class, new b3.j(new b3.c(4)));
        jVar.a(File.class, File.class, e0Var);
        jVar.i(new com.bumptech.glide.load.data.m(fVar3));
        if (!"robolectric".equals(str)) {
            jVar.i(new com.bumptech.glide.load.data.h(1));
        }
        b3.h hVar = new b3.h(applicationContext, 2);
        b3.h hVar2 = new b3.h(applicationContext, 0);
        b3.h hVar3 = new b3.h(applicationContext, 1);
        Class cls3 = Integer.TYPE;
        jVar.a(cls3, InputStream.class, hVar);
        jVar.a(Integer.class, InputStream.class, hVar);
        jVar.a(cls3, AssetFileDescriptor.class, hVar2);
        jVar.a(Integer.class, AssetFileDescriptor.class, hVar2);
        jVar.a(cls3, cls2, hVar3);
        jVar.a(Integer.class, cls2, hVar3);
        jVar.a(Uri.class, InputStream.class, new b3.h(applicationContext, 5));
        jVar.a(Uri.class, AssetFileDescriptor.class, new b3.h(applicationContext, 4));
        c0 c0Var = new c0(resources3, 2);
        c0 c0Var2 = new c0(resources3, 0);
        c0 c0Var3 = new c0(resources3, 1);
        jVar.a(Integer.class, Uri.class, c0Var);
        jVar.a(cls3, Uri.class, c0Var);
        jVar.a(Integer.class, AssetFileDescriptor.class, c0Var2);
        jVar.a(cls3, AssetFileDescriptor.class, c0Var2);
        jVar.a(Integer.class, InputStream.class, c0Var3);
        jVar.a(cls3, InputStream.class, c0Var3);
        jVar.a(String.class, InputStream.class, new b3.g(0));
        jVar.a(Uri.class, InputStream.class, new b3.g(0));
        jVar.a(String.class, InputStream.class, new e0(6));
        jVar.a(String.class, ParcelFileDescriptor.class, new e0(5));
        jVar.a(String.class, AssetFileDescriptor.class, new e0(4));
        jVar.a(Uri.class, InputStream.class, new b3.a(applicationContext.getAssets(), 1));
        jVar.a(Uri.class, AssetFileDescriptor.class, new b3.a(applicationContext.getAssets(), 0));
        jVar.a(Uri.class, InputStream.class, new b3.h(applicationContext, 6));
        jVar.a(Uri.class, InputStream.class, new b3.h(applicationContext, 7));
        int i11 = i6;
        if (i11 >= 29) {
            jVar.a(Uri.class, InputStream.class, new c3.b(applicationContext, InputStream.class));
            jVar.a(Uri.class, ParcelFileDescriptor.class, new c3.b(applicationContext, ParcelFileDescriptor.class));
        }
        jVar.a(Uri.class, InputStream.class, new g0(contentResolver, 2));
        jVar.a(Uri.class, ParcelFileDescriptor.class, new g0(contentResolver, 1));
        jVar.a(Uri.class, AssetFileDescriptor.class, new g0(contentResolver, 0));
        jVar.a(Uri.class, InputStream.class, new e0(7));
        jVar.a(URL.class, InputStream.class, new c3.e());
        jVar.a(Uri.class, File.class, new b3.h(applicationContext, 3));
        jVar.a(b3.k.class, InputStream.class, new b3.g(1));
        jVar.a(byte[].class, ByteBuffer.class, new e0(1));
        jVar.a(byte[].class, InputStream.class, new e0(2));
        jVar.a(Uri.class, Uri.class, e0Var);
        jVar.a(cls2, cls2, e0Var);
        jVar.d("legacy_append", cls2, cls2, new b0(1));
        jVar.j(Bitmap.class, BitmapDrawable.class, new a0.b(29, resources3));
        jVar.j(Bitmap.class, byte[].class, bVar5);
        jVar.j(cls2, byte[].class, new a1.b(aVar2, bVar5, dVar2, 20));
        jVar.j(i3.d.class, byte[].class, dVar2);
        if (i11 >= 23) {
            f0 f0Var4 = new f0(aVar2, new x4.e(9));
            jVar.d("legacy_append", ByteBuffer.class, Bitmap.class, f0Var4);
            jVar.d("legacy_append", ByteBuffer.class, BitmapDrawable.class, new e3.a(resources3, f0Var4));
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            l3.a aVar3 = (l3.a) it.next();
            try {
                aVar3.a(jVar);
            } catch (AbstractMethodError e5) {
                throw new IllegalStateException("Attempting to register a Glide v3 module. If you see this, you or one of your dependencies may be including Glide v3 even though you're using Glide v4. You'll need to find and remove (or update) the offending dependency. The v3 module name is: ".concat(aVar3.getClass().getName()), e5);
            }
        }
        return jVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static AnimatorSet m(f6.e eVar, float f, float f3, float f4) {
        ObjectAnimator objectAnimatorOfObject = ObjectAnimator.ofObject(eVar, f6.b.f6789a, f6.a.f6787b, new f6.d(f, f3, f4));
        f6.d revealInfo = eVar.getRevealInfo();
        if (revealInfo == null) {
            throw new IllegalStateException("Caller must set a non-null RevealInfo before calling this.");
        }
        Animator animatorCreateCircularReveal = ViewAnimationUtils.createCircularReveal((View) eVar, (int) f, (int) f3, revealInfo.f6793c, f4);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(objectAnimatorOfObject, animatorCreateCircularReveal);
        return animatorSet;
    }

    public static String n(int i6) {
        String strConcat = System.currentTimeMillis() + "";
        while (strConcat.length() < 13) {
            strConcat = SessionDescription.SUPPORTED_SDP_VERSION.concat(strConcat);
        }
        return strConcat + "-" + i6 + ' ';
    }

    public static final void o(FileSystem fileSystem, Path path) throws IOException {
        try {
            IOException iOException = null;
            for (Path path2 : fileSystem.list(path)) {
                try {
                    if (fileSystem.metadata(path2).isDirectory()) {
                        o(fileSystem, path2);
                    }
                    fileSystem.delete(path2);
                } catch (IOException e5) {
                    if (iOException == null) {
                        iOException = e5;
                    }
                }
            }
            if (iOException != null) {
                throw iOException;
            }
        } catch (FileNotFoundException unused) {
        }
    }

    public static int p(int i6, View view) {
        return com.bumptech.glide.c.m(view.getContext(), i6, view.getClass().getCanonicalName());
    }

    public static int q(Context context, int i6, int i10) {
        TypedValue typedValueL = com.bumptech.glide.c.l(context, i6);
        return typedValueL != null ? typedValueL.data : i10;
    }

    public static boolean r(byte[] bArr) {
        if (bArr == null || bArr.length <= 15 || bArr[13] != 45) {
            return false;
        }
        int i6 = 0;
        while (true) {
            if (i6 >= bArr.length) {
                i6 = -1;
                break;
            }
            if (bArr[i6] == 32) {
                break;
            }
            i6++;
        }
        return i6 > 14;
    }

    public static boolean s(int i6, Rect rect, Rect rect2) {
        if (i6 == 17) {
            int i10 = rect.right;
            int i11 = rect2.right;
            return (i10 > i11 || rect.left >= i11) && rect.left > rect2.left;
        }
        if (i6 == 33) {
            int i12 = rect.bottom;
            int i13 = rect2.bottom;
            return (i12 > i13 || rect.top >= i13) && rect.top > rect2.top;
        }
        if (i6 == 66) {
            int i14 = rect.left;
            int i15 = rect2.left;
            return (i14 < i15 || rect.right <= i15) && rect.right < rect2.right;
        }
        if (i6 != 130) {
            throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        }
        int i16 = rect.top;
        int i17 = rect2.top;
        return (i16 < i17 || rect.bottom <= i17) && rect.bottom < rect2.bottom;
    }

    public static boolean t(int i6) {
        return i6 != 0 && f0.a.d(i6) > 0.5d;
    }

    public static boolean u(byte[] bArr) {
        String[] strArr;
        if (r(bArr)) {
            String str = new String(k(bArr, 0, 13));
            int i6 = 0;
            while (true) {
                if (i6 >= bArr.length) {
                    i6 = -1;
                    break;
                }
                if (bArr[i6] == 32) {
                    break;
                }
                i6++;
            }
            strArr = new String[]{str, new String(k(bArr, 14, i6))};
        } else {
            strArr = null;
        }
        if (strArr != null && strArr.length == 2) {
            String strSubstring = strArr[0];
            while (strSubstring.startsWith(SessionDescription.SUPPORTED_SDP_VERSION)) {
                strSubstring = strSubstring.substring(1, strSubstring.length());
            }
            if (System.currentTimeMillis() > (Long.valueOf(strArr[1]).longValue() * 1000) + Long.valueOf(strSubstring).longValue()) {
                return true;
            }
        }
        return false;
    }

    public static boolean v(Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (f8647a == null) {
            f8647a = Boolean.valueOf(packageManager.hasSystemFeature("android.hardware.type.watch"));
        }
        return f8647a.booleanValue();
    }

    public static boolean w(Context context) {
        if (v(context) && Build.VERSION.SDK_INT < 24) {
            return true;
        }
        if (f8648b == null) {
            f8648b = Boolean.valueOf(context.getPackageManager().hasSystemFeature("cn.google"));
        }
        if (f8648b.booleanValue()) {
            return !u7.d.t() || Build.VERSION.SDK_INT >= 30;
        }
        return false;
    }

    public static int x(float f, int i6, int i10) {
        return f0.a.f(f0.a.h(i10, Math.round(Color.alpha(i10) * f)), i6);
    }

    public static int y(int i6, Rect rect, Rect rect2) {
        int i10;
        int i11;
        if (i6 == 17) {
            i10 = rect.left;
            i11 = rect2.right;
        } else if (i6 == 33) {
            i10 = rect.top;
            i11 = rect2.bottom;
        } else if (i6 == 66) {
            i10 = rect2.left;
            i11 = rect.right;
        } else {
            if (i6 != 130) {
                throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
            }
            i10 = rect2.top;
            i11 = rect.bottom;
        }
        return Math.max(0, i10 - i11);
    }

    public static int z(int i6, Rect rect, Rect rect2) {
        if (i6 != 17) {
            if (i6 != 33) {
                if (i6 != 66) {
                    if (i6 != 130) {
                        throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                    }
                }
            }
            return Math.abs(((rect.width() / 2) + rect.left) - ((rect2.width() / 2) + rect2.left));
        }
        return Math.abs(((rect.height() / 2) + rect.top) - ((rect2.height() / 2) + rect2.top));
    }

    public abstract View B(int i6);

    public abstract boolean C();

    public void E() {
    }

    public void D(FloatingActionButton floatingActionButton) {
    }

    public void F(boolean z7) {
    }

    public void G(boolean z7) {
    }
}
