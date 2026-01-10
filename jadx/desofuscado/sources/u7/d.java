package u7;

import a4.r;
import android.app.AppOpsManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.Signature;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Process;
import android.os.StrictMode;
import android.text.TextUtils;
import android.util.Log;
import android.util.Property;
import android.view.View;
import androidx.appcompat.app.r0;
import androidx.core.app.u0;
import androidx.core.app.z0;
import androidx.media3.common.C;
import b1.o;
import b1.p;
import com.bumptech.glide.load.ImageHeaderParser$ImageType;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.textfield.TextInputLayout;
import e3.w;
import ea.h;
import j9.q;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.WeakHashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;
import n0.s0;
import q1.e0;
import t9.k;
import t9.k0;
import t9.l0;
import t9.u;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class d implements androidx.leanback.transition.e {

    /* renamed from: a, reason: collision with root package name */
    public static String f10447a = "";

    public static Object A(Callable callable) {
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        try {
            StrictMode.setThreadPolicy(StrictMode.ThreadPolicy.LAX);
            return callable.call();
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }

    public static void a(TextInputLayout textInputLayout, CheckableImageButton checkableImageButton, ColorStateList colorStateList, PorterDuff.Mode mode) {
        Drawable drawable = checkableImageButton.getDrawable();
        if (drawable != null) {
            drawable = n5.d.W(drawable).mutate();
            if (colorStateList == null || !colorStateList.isStateful()) {
                g0.a.h(drawable, colorStateList);
            } else {
                int[] drawableState = textInputLayout.getDrawableState();
                int[] drawableState2 = checkableImageButton.getDrawableState();
                int length = drawableState.length;
                int[] iArrCopyOf = Arrays.copyOf(drawableState, drawableState.length + drawableState2.length);
                System.arraycopy(drawableState2, 0, iArrCopyOf, length, drawableState2.length);
                g0.a.h(drawable, ColorStateList.valueOf(colorStateList.getColorForState(iArrCopyOf, colorStateList.getDefaultColor())));
            }
            if (mode != null) {
                g0.a.i(drawable, mode);
            }
        }
        if (checkableImageButton.getDrawable() != drawable) {
            checkableImageButton.setImageDrawable(drawable);
        }
    }

    public static int b(Context context, String str) throws NoSuchMethodException, ClassNotFoundException, SecurityException {
        boolean zA = true;
        if (str == null) {
            throw new NullPointerException("permission must be non-null");
        }
        int i6 = Build.VERSION.SDK_INT;
        if (i6 >= 33 || !TextUtils.equals("android.permission.POST_NOTIFICATIONS", str)) {
            return context.checkPermission(str, Process.myPid(), Process.myUid());
        }
        z0 z0Var = new z0(context);
        if (i6 >= 24) {
            zA = u0.a(z0Var.f1246b);
        } else {
            AppOpsManager appOpsManager = (AppOpsManager) context.getSystemService("appops");
            ApplicationInfo applicationInfo = context.getApplicationInfo();
            String packageName = context.getApplicationContext().getPackageName();
            int i10 = applicationInfo.uid;
            try {
                Class<?> cls = Class.forName(AppOpsManager.class.getName());
                Class<?> cls2 = Integer.TYPE;
                Method method = cls.getMethod("checkOpNoThrow", cls2, cls2, String.class);
                Integer num = (Integer) cls.getDeclaredField("OP_POST_NOTIFICATION").get(Integer.class);
                num.getClass();
                if (((Integer) method.invoke(appOpsManager, num, Integer.valueOf(i10), packageName)).intValue() != 0) {
                    zA = false;
                }
            } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException | NoSuchMethodException | RuntimeException | InvocationTargetException unused) {
            }
        }
        return zA ? 0 : -1;
    }

    public static int c(int i6, int i10) {
        long j10 = i6 + i10;
        int i11 = (int) j10;
        if (j10 == ((long) i11)) {
            return i11;
        }
        throw new ArithmeticException("overflow: checkedAdd(" + i6 + ", " + i10 + ")");
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0055, code lost:
    
        if (l5.a.j(r9, r1, j9.i.a(r7, r2) ? r0.getWidth() : r2.f.e(r7.f8385a, r8), j9.i.a(r7, r2) ? r0.getHeight() : r2.f.e(r7.f8386b, r8), r8) == 1.0d) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static android.graphics.Bitmap d(android.graphics.drawable.Drawable r5, android.graphics.Bitmap.Config r6, n2.h r7, n2.g r8, boolean r9) {
        /*
            Method dump skipped, instructions count: 243
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: u7.d.d(android.graphics.drawable.Drawable, android.graphics.Bitmap$Config, n2.h, n2.g, boolean):android.graphics.Bitmap");
    }

    public static final void e(int i6, int i10) {
        if (i6 <= i10) {
            return;
        }
        throw new IndexOutOfBoundsException("toIndex (" + i6 + ") is greater than size (" + i10 + ").");
    }

    public static p f(Context context) {
        ProviderInfo providerInfo;
        c2.b bVar;
        ApplicationInfo applicationInfo;
        x4.e cVar = Build.VERSION.SDK_INT >= 28 ? new b1.c(2) : new x4.e(2);
        PackageManager packageManager = context.getPackageManager();
        a2.a.p(packageManager, "Package manager required to locate emoji font provider");
        Iterator<ResolveInfo> it = packageManager.queryIntentContentProviders(new Intent("androidx.content.action.LOAD_EMOJI_FONT"), 0).iterator();
        while (true) {
            if (!it.hasNext()) {
                providerInfo = null;
                break;
            }
            providerInfo = it.next().providerInfo;
            if (providerInfo != null && (applicationInfo = providerInfo.applicationInfo) != null && (applicationInfo.flags & 1) == 1) {
                break;
            }
        }
        if (providerInfo == null) {
            bVar = null;
        } else {
            try {
                String str = providerInfo.authority;
                String str2 = providerInfo.packageName;
                Signature[] signatureArrM = cVar.m(packageManager, str2);
                ArrayList arrayList = new ArrayList();
                for (Signature signature : signatureArrM) {
                    arrayList.add(signature.toByteArray());
                }
                bVar = new c2.b(str, str2, "emojicompat-emoji-font", Collections.singletonList(arrayList));
            } catch (PackageManager.NameNotFoundException e5) {
                Log.wtf("emoji2.text.DefaultEmojiConfig", e5);
            }
        }
        if (bVar == null) {
            return null;
        }
        return new p(new o(context, bVar));
    }

    public static float g(float f, float f3, float f4, float f5) {
        double d = 0.0f - f;
        double d10 = 0.0f - f3;
        float fHypot = (float) Math.hypot(d, d10);
        double d11 = f4 - f;
        float fHypot2 = (float) Math.hypot(d11, d10);
        double d12 = f5 - f3;
        float fHypot3 = (float) Math.hypot(d11, d12);
        float fHypot4 = (float) Math.hypot(d, d12);
        return (fHypot <= fHypot2 || fHypot <= fHypot3 || fHypot <= fHypot4) ? (fHypot2 <= fHypot3 || fHypot2 <= fHypot4) ? fHypot3 > fHypot4 ? fHypot3 : fHypot4 : fHypot2 : fHypot;
    }

    public static int i(Context context, int i6) {
        return Build.VERSION.SDK_INT >= 23 ? d0.b.a(context, i6) : context.getResources().getColor(i6);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0046, code lost:
    
        if (r5.f6391c == r8.hashCode()) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static android.content.res.ColorStateList k(android.content.Context r8, int r9) {
        /*
            android.content.res.Resources r0 = r8.getResources()
            android.content.res.Resources$Theme r8 = r8.getTheme()
            e0.l r1 = new e0.l
            r1.<init>(r0, r8)
            java.lang.Object r2 = e0.n.f6396c
            monitor-enter(r2)
            java.util.WeakHashMap r3 = e0.n.f6395b     // Catch: java.lang.Throwable -> L3c
            java.lang.Object r3 = r3.get(r1)     // Catch: java.lang.Throwable -> L3c
            android.util.SparseArray r3 = (android.util.SparseArray) r3     // Catch: java.lang.Throwable -> L3c
            r4 = 0
            if (r3 == 0) goto L4f
            int r5 = r3.size()     // Catch: java.lang.Throwable -> L3c
            if (r5 <= 0) goto L4f
            java.lang.Object r5 = r3.get(r9)     // Catch: java.lang.Throwable -> L3c
            e0.k r5 = (e0.k) r5     // Catch: java.lang.Throwable -> L3c
            if (r5 == 0) goto L4f
            android.content.res.Configuration r6 = r5.f6390b     // Catch: java.lang.Throwable -> L3c
            android.content.res.Configuration r7 = r0.getConfiguration()     // Catch: java.lang.Throwable -> L3c
            boolean r6 = r6.equals(r7)     // Catch: java.lang.Throwable -> L3c
            if (r6 == 0) goto L4c
            if (r8 != 0) goto L3e
            int r6 = r5.f6391c     // Catch: java.lang.Throwable -> L3c
            if (r6 == 0) goto L48
            goto L3e
        L3c:
            r8 = move-exception
            goto L9d
        L3e:
            if (r8 == 0) goto L4c
            int r6 = r5.f6391c     // Catch: java.lang.Throwable -> L3c
            int r7 = r8.hashCode()     // Catch: java.lang.Throwable -> L3c
            if (r6 != r7) goto L4c
        L48:
            android.content.res.ColorStateList r3 = r5.f6389a     // Catch: java.lang.Throwable -> L3c
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L3c
            goto L51
        L4c:
            r3.remove(r9)     // Catch: java.lang.Throwable -> L3c
        L4f:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L3c
            r3 = r4
        L51:
            if (r3 == 0) goto L54
            goto L9c
        L54:
            java.lang.ThreadLocal r2 = e0.n.f6394a
            java.lang.Object r3 = r2.get()
            android.util.TypedValue r3 = (android.util.TypedValue) r3
            if (r3 != 0) goto L66
            android.util.TypedValue r3 = new android.util.TypedValue
            r3.<init>()
            r2.set(r3)
        L66:
            r2 = 1
            r0.getValue(r9, r3, r2)
            int r2 = r3.type
            r3 = 28
            if (r2 < r3) goto L75
            r3 = 31
            if (r2 > r3) goto L75
            goto L86
        L75:
            android.content.res.XmlResourceParser r2 = r0.getXml(r9)
            android.content.res.ColorStateList r4 = e0.c.a(r0, r2, r8)     // Catch: java.lang.Exception -> L7e
            goto L86
        L7e:
            r2 = move-exception
            java.lang.String r3 = "ResourcesCompat"
            java.lang.String r5 = "Failed to inflate ColorStateList, leaving it to the framework"
            android.util.Log.w(r3, r5, r2)
        L86:
            if (r4 == 0) goto L8d
            e0.n.a(r1, r9, r4, r8)
            r3 = r4
            goto L9c
        L8d:
            int r1 = android.os.Build.VERSION.SDK_INT
            r2 = 23
            if (r1 < r2) goto L98
            android.content.res.ColorStateList r3 = e0.j.b(r0, r9, r8)
            goto L9c
        L98:
            android.content.res.ColorStateList r3 = r0.getColorStateList(r9)
        L9c:
            return r3
        L9d:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L3c
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: u7.d.k(android.content.Context, int):android.content.res.ColorStateList");
    }

    public static Executor m(Context context) {
        return Build.VERSION.SDK_INT >= 28 ? d0.d.a(context) : new r(1, new Handler(context.getMainLooper()));
    }

    public static int n(ArrayList arrayList, InputStream inputStream, y2.f fVar) throws IOException {
        if (inputStream == null) {
            return -1;
        }
        if (!inputStream.markSupported()) {
            inputStream = new w(inputStream, fVar);
        }
        inputStream.mark(5242880);
        int size = arrayList.size();
        for (int i6 = 0; i6 < size; i6++) {
            try {
                int iB = ((v2.d) arrayList.get(i6)).b(inputStream, fVar);
                if (iB != -1) {
                    return iB;
                }
            } finally {
                inputStream.reset();
            }
        }
        return -1;
    }

    public static Object o(Context context, Class cls) {
        int i6 = Build.VERSION.SDK_INT;
        if (i6 >= 23) {
            return d0.b.b(context, cls);
        }
        String strC = i6 >= 23 ? d0.b.c(context, cls) : (String) d0.e.f5992a.get(cls);
        if (strC != null) {
            return context.getSystemService(strC);
        }
        return null;
    }

    public static ImageHeaderParser$ImageType p(ArrayList arrayList, InputStream inputStream, y2.f fVar) throws IOException {
        if (inputStream == null) {
            return ImageHeaderParser$ImageType.UNKNOWN;
        }
        if (!inputStream.markSupported()) {
            inputStream = new w(inputStream, fVar);
        }
        inputStream.mark(5242880);
        int size = arrayList.size();
        for (int i6 = 0; i6 < size; i6++) {
            try {
                ImageHeaderParser$ImageType imageHeaderParser$ImageTypeD = ((v2.d) arrayList.get(i6)).d(inputStream);
                inputStream.reset();
                if (imageHeaderParser$ImageTypeD != ImageHeaderParser$ImageType.UNKNOWN) {
                    return imageHeaderParser$ImageTypeD;
                }
            } catch (Throwable th) {
                inputStream.reset();
                throw th;
            }
        }
        return ImageHeaderParser$ImageType.UNKNOWN;
    }

    public static ImageHeaderParser$ImageType q(ArrayList arrayList, ByteBuffer byteBuffer) {
        if (byteBuffer == null) {
            return ImageHeaderParser$ImageType.UNKNOWN;
        }
        int size = arrayList.size();
        for (int i6 = 0; i6 < size; i6++) {
            try {
                ImageHeaderParser$ImageType imageHeaderParser$ImageTypeA = ((v2.d) arrayList.get(i6)).a(byteBuffer);
                AtomicReference atomicReference = r3.a.f9488a;
                if (imageHeaderParser$ImageTypeA != ImageHeaderParser$ImageType.UNKNOWN) {
                    return imageHeaderParser$ImageTypeA;
                }
            } catch (Throwable th) {
                AtomicReference atomicReference2 = r3.a.f9488a;
                throw th;
            }
        }
        return ImageHeaderParser$ImageType.UNKNOWN;
    }

    public static int r(long j10) {
        return (int) (j10 ^ (j10 >>> 32));
    }

    public static void s() {
        h.f6676g = a2.a.s("yofP8Uw=\n", "r+umhSndyTU=\n");
        h.f6672a = a2.a.s("smRRYbmM9Um7ZVF5+5iqVL98TGWvmLkJtz9EYaOZrFT1YkB2o8WuA6g=\n", "2hAlEcq22mY=\n");
        h.f6673b = a2.a.s("wumieSso33PL6KJhaTyAbsvuv2h2c4M1y7K3eTE9hm6F/KN9MA==\n", "qp3WCVgS8Fw=\n");
        h.f6674c = a2.a.s("BVziMKwImVQMXeIo7hzGSQhE/zS6HNUUAAf3MLYdwElCSeM0tw==\n", "bSiWQN8ytns=\n");
        h.d = a2.a.s("t+4zz3XiMVjZ/W7H\n", "954BqhmLRT0=\n");
        a2.a.s("sSg0SK5dFKmoLyFIvQAc\n", "wVtEZt5vccU=\n");
        h.f6681l = true;
        h.f6682m = true;
        h.f6685p = true;
        h.f6693x = a2.a.s("8E25yA==\n", "wH2J+GKsm7k=\n");
        h.f6691v = ea.c.f6624a;
        h.H = a2.a.s("y+4=\n", "u5qNRwQUd3k=\n");
        h.J = a2.a.s("/2g=\n", "jxyDuTpxCK0=\n");
        h.N = true;
        h.K = true;
        h.f6684o = true;
        h.M = false;
        h.L = true;
        h.f = false;
        h.f6675e = false;
        h.T = true;
        h.S = a2.a.s("+XFcititl7DwdUHLheeK+v1sXJ+F9NfyvnZYn87zzPricQfPm9r6sfNsRg==\n", "kQUo+quXuJ8=\n");
        h.R = true;
    }

    public static boolean t() {
        return Build.VERSION.SDK_INT >= 26;
    }

    public static synchronized boolean u() {
        String hostAddress;
        try {
            DatagramSocket datagramSocket = new DatagramSocket();
            datagramSocket.connect(InetAddress.getByName("3.3.3.3"), 53);
            InetAddress localAddress = datagramSocket.getLocalAddress();
            datagramSocket.close();
            hostAddress = localAddress.getHostAddress();
        } catch (IOException e5) {
            e5.printStackTrace();
            hostAddress = "";
        }
        if (hostAddress.equals(f10447a)) {
            return false;
        }
        f10447a = hostAddress;
        return true;
    }

    public static int v(int i6) {
        int i10 = i6 % C.DEFAULT_BUFFER_SEGMENT_SIZE;
        return i10 >= 0 ? i10 : i10 + C.DEFAULT_BUFFER_SEGMENT_SIZE;
    }

    public static void x(TextInputLayout textInputLayout, CheckableImageButton checkableImageButton, ColorStateList colorStateList) {
        Drawable drawable = checkableImageButton.getDrawable();
        if (checkableImageButton.getDrawable() == null || colorStateList == null || !colorStateList.isStateful()) {
            return;
        }
        int[] drawableState = textInputLayout.getDrawableState();
        int[] drawableState2 = checkableImageButton.getDrawableState();
        int length = drawableState.length;
        int[] iArrCopyOf = Arrays.copyOf(drawableState, drawableState.length + drawableState2.length);
        System.arraycopy(drawableState2, 0, iArrCopyOf, length, drawableState2.length);
        int colorForState = colorStateList.getColorForState(iArrCopyOf, colorStateList.getDefaultColor());
        Drawable drawableMutate = n5.d.W(drawable).mutate();
        g0.a.h(drawableMutate, ColorStateList.valueOf(colorForState));
        checkableImageButton.setImageDrawable(drawableMutate);
    }

    public static void y(CheckableImageButton checkableImageButton, View.OnLongClickListener onLongClickListener) {
        WeakHashMap weakHashMap = s0.f8353a;
        boolean zHasOnClickListeners = checkableImageButton.hasOnClickListeners();
        boolean z7 = onLongClickListener != null;
        boolean z10 = zHasOnClickListeners || z7;
        checkableImageButton.setFocusable(z10);
        checkableImageButton.setClickable(zHasOnClickListeners);
        checkableImageButton.setPressable(zHasOnClickListeners);
        checkableImageButton.setLongClickable(z7);
        checkableImageButton.setImportantForAccessibility(z10 ? 1 : 2);
    }

    public static final Object z(x9.r rVar, x9.r rVar2, i9.p pVar) throws Throwable {
        Object kVar;
        Object objA;
        k0 k0Var;
        try {
            q.b(pVar);
            kVar = pVar.invoke(rVar2, rVar);
        } catch (Throwable th) {
            kVar = new k(th, false);
        }
        b9.a aVar = b9.a.f3322a;
        if (kVar == aVar || (objA = rVar.A(kVar)) == u.d) {
            return aVar;
        }
        if (objA instanceof k) {
            throw ((k) objA).f10208a;
        }
        l0 l0Var = objA instanceof l0 ? (l0) objA : null;
        return (l0Var == null || (k0Var = l0Var.f10211a) == null) ? objA : k0Var;
    }

    @Override // androidx.leanback.transition.e
    public float j(View view) {
        return view.getTranslationX();
    }

    @Override // androidx.leanback.transition.e
    public Property l() {
        return View.TRANSLATION_X;
    }

    public abstract void w(e0 e0Var, r0 r0Var);
}
