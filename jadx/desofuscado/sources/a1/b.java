package a1;

import a4.t;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.location.LocationManager;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkRequest;
import android.os.Build;
import android.os.Handler;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.Choreographer;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.appcompat.widget.v;
import androidx.appcompat.widget.z3;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.l0;
import androidx.fragment.app.p0;
import androidx.fragment.app.s;
import androidx.leanback.widget.a1;
import androidx.leanback.widget.e0;
import androidx.leanback.widget.z;
import androidx.lifecycle.LifecycleService;
import androidx.lifecycle.n;
import androidx.lifecycle.o0;
import androidx.lifecycle.p;
import androidx.lifecycle.s0;
import androidx.lifecycle.u0;
import androidx.lifecycle.v0;
import androidx.lifecycle.w0;
import androidx.lifecycle.y;
import androidx.lifecycle.y0;
import androidx.lifecycle.z0;
import androidx.media3.exoplayer.Renderer;
import com.bumptech.glide.load.ImageHeaderParser$ImageType;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.cast.LaunchOptions;
import com.google.android.gms.common.api.ApiMetadata;
import com.google.android.gms.common.api.ComplianceOptions;
import com.google.android.gms.internal.cast.d0;
import com.google.android.gms.internal.cast.j0;
import com.google.android.gms.internal.cast.k2;
import com.google.android.gms.internal.cast.q0;
import com.lzy.okgo.cache.CacheEntity;
import d7.c2;
import e3.w;
import h4.j;
import j9.i;
import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.concurrent.atomic.AtomicLong;
import n7.m;
import n7.q;
import okhttp3.internal.ws.WebSocketProtocol;
import p4.o;
import v2.h;
import w8.l;
import x2.x;
import z4.k;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class b implements d4.b, j0.d, j3.a, l2.g, m, k {

    /* renamed from: e, reason: collision with root package name */
    public static b f45e;

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f46a;

    /* renamed from: b, reason: collision with root package name */
    public Object f47b;

    /* renamed from: c, reason: collision with root package name */
    public Object f48c;
    public Object d;

    public /* synthetic */ b(int i6, boolean z7) {
        this.f46a = i6;
    }

    public static b B(Context context, AttributeSet attributeSet, int[] iArr) {
        return new b(context, context.obtainStyledAttributes(attributeSet, iArr));
    }

    public static b C(Context context, AttributeSet attributeSet, int[] iArr, int i6) {
        return new b(context, context.obtainStyledAttributes(attributeSet, iArr, i6, 0));
    }

    public static final void c(b bVar, Network network, boolean z7) {
        l lVar;
        boolean z10;
        Network[] allNetworks = ((ConnectivityManager) bVar.f47b).getAllNetworks();
        int length = allNetworks.length;
        boolean z11 = false;
        int i6 = 0;
        while (true) {
            if (i6 >= length) {
                break;
            }
            Network network2 = allNetworks[i6];
            if (i.a(network2, network)) {
                z10 = z7;
            } else {
                NetworkCapabilities networkCapabilities = ((ConnectivityManager) bVar.f47b).getNetworkCapabilities(network2);
                z10 = networkCapabilities != null && networkCapabilities.hasCapability(12);
            }
            if (z10) {
                z11 = true;
                break;
            }
            i6++;
        }
        r2.l lVar2 = (r2.l) bVar.f48c;
        synchronized (lVar2) {
            try {
                if (((c2.l) lVar2.f9482a.get()) != null) {
                    lVar2.f9485e = z11;
                    lVar = l.f10832a;
                } else {
                    lVar = null;
                }
                if (lVar == null) {
                    lVar2.b();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static m2.e k(m2.i iVar, Throwable th) {
        Drawable drawableB;
        if (th instanceof m2.l) {
            drawableB = r2.d.b(iVar, null, null, iVar.D.f8172l);
            if (drawableB == null) {
                drawableB = r2.d.b(iVar, iVar.B, iVar.A, iVar.D.f8171k);
            }
        } else {
            drawableB = r2.d.b(iVar, iVar.B, iVar.A, iVar.D.f8171k);
        }
        return new m2.e(drawableB, iVar, th);
    }

    public static boolean y(m2.i iVar, Bitmap.Config config) {
        if (!n5.d.A(config)) {
            return true;
        }
        if (!iVar.f8211k) {
            return false;
        }
        o2.a aVar = iVar.f8205c;
        if (aVar instanceof o2.a) {
            ImageView imageView = aVar.f8548b;
            if (imageView.isAttachedToWindow() && !imageView.isHardwareAccelerated()) {
                return false;
            }
        }
        return true;
    }

    public void A(p0 p0Var) {
        s sVar = p0Var.f1511c;
        if (sVar.B) {
            ((l0) this.d).c(sVar);
        }
        if (((p0) ((HashMap) this.f48c).put(sVar.f, null)) != null && Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "Removed fragment from active set " + sVar);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public m2.m D(m2.i r20, n2.h r21) {
        /*
            r19 = this;
            r0 = r20
            r4 = r21
            java.util.List r1 = r0.f
            boolean r1 = r1.isEmpty()
            android.graphics.Bitmap$Config r2 = r0.d
            if (r1 != 0) goto L1a
            android.graphics.Bitmap$Config[] r1 = r2.f.f9467a
            boolean r1 = x8.i.B(r1, r2)
            if (r1 == 0) goto L17
            goto L1a
        L17:
            r15 = r19
            goto L36
        L1a:
            boolean r1 = n5.d.A(r2)
            if (r1 != 0) goto L23
            r15 = r19
            goto L39
        L23:
            boolean r1 = y(r0, r2)
            if (r1 == 0) goto L17
            r15 = r19
            java.lang.Object r1 = r15.d
            r2.i r1 = (r2.i) r1
            boolean r1 = r1.a(r4)
            if (r1 == 0) goto L36
            goto L39
        L36:
            android.graphics.Bitmap$Config r1 = android.graphics.Bitmap.Config.ARGB_8888
            r2 = r1
        L39:
            r4.b r1 = r4.f8385a
            n2.b r3 = n2.b.f8375c
            boolean r1 = r1.equals(r3)
            if (r1 != 0) goto L50
            r4.b r1 = r4.f8386b
            boolean r1 = r1.equals(r3)
            if (r1 == 0) goto L4c
            goto L50
        L4c:
            n2.g r1 = r0.f8223w
        L4e:
            r5 = r1
            goto L53
        L50:
            n2.g r1 = n2.g.f8382b
            goto L4e
        L53:
            boolean r1 = r0.f8212l
            if (r1 == 0) goto L66
            java.util.List r1 = r0.f
            boolean r1 = r1.isEmpty()
            if (r1 == 0) goto L66
            android.graphics.Bitmap$Config r1 = android.graphics.Bitmap.Config.ALPHA_8
            if (r2 == r1) goto L66
            r1 = 1
            r7 = 1
            goto L68
        L66:
            r1 = 0
            r7 = 0
        L68:
            m2.m r16 = new m2.m
            boolean r6 = r2.d.a(r20)
            m2.r r11 = r0.f8209i
            m2.o r12 = r0.f8224x
            m2.b r14 = r0.f8215o
            m2.b r13 = r0.f8216p
            android.content.Context r1 = r0.f8203a
            r3 = 0
            boolean r8 = r0.f8213m
            r9 = 0
            okhttp3.Headers r10 = r0.f8208h
            m2.b r0 = r0.f8214n
            r17 = r0
            r0 = r16
            r4 = r21
            r18 = r13
            r13 = r17
            r15 = r18
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15)
            return r16
        */
        throw new UnsupportedOperationException("Method not decompiled: a1.b.D(m2.i, n2.h):m2.m");
    }

    public void E(n nVar) {
        u0 u0Var = (u0) this.d;
        if (u0Var != null) {
            u0Var.run();
        }
        u0 u0Var2 = new u0((y) this.f47b, nVar);
        this.d = u0Var2;
        ((Handler) this.f48c).postAtFrontOfQueue(u0Var2);
    }

    public void F() {
        ((TypedArray) this.f48c).recycle();
    }

    public void G(String str) {
        if (str == null) {
            throw new NullPointerException("Null backendName");
        }
        this.f47b = str;
    }

    public void H(androidx.leanback.widget.l0 l0Var) {
        boolean z7 = ((androidx.leanback.widget.l0) this.f48c) != null;
        this.f48c = l0Var;
        if (z7) {
            ((e0) this.f47b).a();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x003c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public m2.m K(m2.m r24) {
        /*
            r23 = this;
            r1 = r23
            r0 = r24
            android.graphics.Bitmap$Config r2 = r0.f8230b
            m2.b r3 = r0.f8241o
            boolean r4 = n5.d.A(r2)
            r5 = 1
            if (r4 == 0) goto L1f
            java.lang.Object r4 = r1.d
            r2.i r4 = (r2.i) r4
            boolean r4 = r4.b()
            if (r4 == 0) goto L1a
            goto L1f
        L1a:
            android.graphics.Bitmap$Config r2 = android.graphics.Bitmap.Config.ARGB_8888
            r8 = r2
            r4 = 1
            goto L21
        L1f:
            r4 = 0
            r8 = r2
        L21:
            m2.b r2 = r0.f8241o
            boolean r2 = r2.f8161a
            if (r2 == 0) goto L3c
            java.lang.Object r2 = r1.f48c
            r2.l r2 = (r2.l) r2
            monitor-enter(r2)
            r2.a()     // Catch: java.lang.Throwable -> L39
            boolean r6 = r2.f9485e     // Catch: java.lang.Throwable -> L39
            monitor-exit(r2)
            if (r6 != 0) goto L3c
            m2.b r3 = m2.b.DISABLED
            r21 = r3
            goto L3f
        L39:
            r0 = move-exception
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L39
            throw r0
        L3c:
            r21 = r3
            r5 = r4
        L3f:
            if (r5 == 0) goto L6d
            android.content.Context r7 = r0.f8229a
            android.graphics.ColorSpace r9 = r0.f8231c
            n2.h r10 = r0.d
            n2.g r11 = r0.f8232e
            boolean r12 = r0.f
            boolean r13 = r0.f8233g
            boolean r14 = r0.f8234h
            java.lang.String r15 = r0.f8235i
            okhttp3.Headers r2 = r0.f8236j
            m2.r r3 = r0.f8237k
            m2.o r4 = r0.f8238l
            m2.b r5 = r0.f8239m
            m2.b r0 = r0.f8240n
            m2.m r22 = new m2.m
            r6 = r22
            r16 = r2
            r17 = r3
            r18 = r4
            r19 = r5
            r20 = r0
            r6.<init>(r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21)
            return r22
        L6d:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: a1.b.K(m2.m):m2.m");
    }

    public void L(int i6, String str, String str2) {
        ((HashMap) this.f47b).put(str, str2);
        ((HashMap) this.f48c).put(str2, str);
        ((HashMap) this.d).put(str, Integer.valueOf(i6));
    }

    @Override // j0.d
    public void a() {
        View view = (View) this.f47b;
        view.clearAnimation();
        ((ViewGroup) this.f48c).endViewTransition(view);
        ((androidx.fragment.app.g) this.d).d();
    }

    @Override // l2.g
    public boolean b() {
        ConnectivityManager connectivityManager = (ConnectivityManager) this.f47b;
        for (Network network : connectivityManager.getAllNetworks()) {
            NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(network);
            if (networkCapabilities != null && networkCapabilities.hasCapability(12)) {
                return true;
            }
        }
        return false;
    }

    public void d(Object obj, String str) {
        b bVar = new b(13, false);
        ((b) this.d).d = bVar;
        this.d = bVar;
        bVar.f48c = obj;
        bVar.f47b = str;
    }

    @Override // j3.a
    public x e(x xVar, h hVar) {
        Drawable drawable = (Drawable) xVar.get();
        if (drawable instanceof BitmapDrawable) {
            return ((c6.b) this.f48c).e(e3.d.b(((BitmapDrawable) drawable).getBitmap(), (y2.a) this.f47b), hVar);
        }
        if (drawable instanceof i3.d) {
            return ((j3.d) this.d).e(xVar, hVar);
        }
        return null;
    }

    public void f(s sVar) {
        if (((ArrayList) this.f47b).contains(sVar)) {
            throw new IllegalStateException("Fragment already added: " + sVar);
        }
        synchronized (((ArrayList) this.f47b)) {
            ((ArrayList) this.f47b).add(sVar);
        }
        sVar.f1529l = true;
    }

    public void g(int[] iArr, ValueAnimator valueAnimator) {
        u6.e eVar = new u6.e(iArr, valueAnimator);
        valueAnimator.addListener((a6.a) this.d);
        ((ArrayList) this.f47b).add(eVar);
    }

    @Override // v8.a
    public Object get() {
        switch (this.f46a) {
            case 3:
                return new t(new u6.e(19), new x4.e(18), (g4.b) ((c2.b) this.f47b).get(), (h4.i) ((z3) this.f48c).get(), (j) ((a0.f) this.d).get());
            default:
                return new h4.d((Context) ((d4.c) this.f47b).f6058a, (i4.d) ((v8.a) this.f48c).get(), (h4.b) ((x4.e) this.d).get());
        }
    }

    public a4.j h() {
        String strConcat = ((String) this.f47b) == null ? " backendName" : "";
        if (((x3.c) this.d) == null) {
            strConcat = strConcat.concat(" priority");
        }
        if (strConcat.isEmpty()) {
            return new a4.j((String) this.f47b, (byte[]) this.f48c, (x3.c) this.d);
        }
        throw new IllegalStateException("Missing required properties:".concat(strConcat));
    }

    public Bitmap i(BitmapFactory.Options options) {
        switch (this.f46a) {
            case 16:
                return BitmapFactory.decodeStream(new d2.i(r3.a.c((ByteBuffer) this.f47b)), null, options);
            case 17:
                w wVar = (w) ((com.bumptech.glide.load.data.i) this.f47b).f3555b;
                wVar.reset();
                return BitmapFactory.decodeStream(wVar, null, options);
            default:
                return BitmapFactory.decodeFileDescriptor(((com.bumptech.glide.load.data.i) this.d).d().getFileDescriptor(), null, options);
        }
    }

    public void j(e4.a aVar, ByteArrayOutputStream byteArrayOutputStream) {
        HashMap map = (HashMap) this.f48c;
        HashMap map2 = (HashMap) this.f47b;
        k7.e eVar = new k7.e(byteArrayOutputStream, map2, map, (j7.a) this.d);
        h7.d dVar = (h7.d) map2.get(e4.a.class);
        if (dVar == null) {
            throw new h7.b(a.e.q(e4.a.class, "No encoder for "));
        }
        dVar.a(aVar, eVar);
    }

    public s l(String str) {
        p0 p0Var = (p0) ((HashMap) this.f48c).get(str);
        if (p0Var != null) {
            return p0Var.f1511c;
        }
        return null;
    }

    public s m(String str) {
        for (p0 p0Var : ((HashMap) this.f48c).values()) {
            if (p0Var != null) {
                s sVarM = p0Var.f1511c;
                if (!str.equals(sVarM.f)) {
                    sVarM = sVarM.f1538u.f1459c.m(str);
                }
                if (sVarM != null) {
                    return sVarM;
                }
            }
        }
        return null;
    }

    public v0 n(Class cls) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName != null) {
            return p(cls, "androidx.lifecycle.ViewModelProvider.DefaultKey:".concat(canonicalName));
        }
        throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
    }

    @Override // n7.m
    public Object o() {
        try {
            return ((n7.d) this.f47b).i((Class) this.f48c);
        } catch (Exception e5) {
            throw new RuntimeException("Unable to invoke no-args constructor for " + ((Type) this.d) + ". Registering an InstanceCreator with Gson for this type may fix this problem.", e5);
        }
    }

    public v0 p(Class cls, String str) {
        v0 v0VarA;
        i.f(str, CacheEntity.KEY);
        z0 z0Var = (z0) this.f47b;
        z0Var.getClass();
        LinkedHashMap linkedHashMap = z0Var.f2025a;
        v0 v0Var = (v0) linkedHashMap.get(str);
        boolean zIsInstance = cls.isInstance(v0Var);
        y0 y0Var = (y0) this.f48c;
        if (!zIsInstance) {
            j1.b bVar = new j1.b((c2) this.d);
            ((LinkedHashMap) bVar.f6105a).put(w0.f2011c, str);
            try {
                v0VarA = y0Var.b(cls, bVar);
            } catch (AbstractMethodError unused) {
                v0VarA = y0Var.a(cls);
            }
            i.f(v0VarA, "viewModel");
            v0 v0Var2 = (v0) linkedHashMap.put(str, v0VarA);
            if (v0Var2 != null) {
                v0Var2.b();
            }
            return v0VarA;
        }
        s0 s0Var = y0Var instanceof s0 ? (s0) y0Var : null;
        if (s0Var != null) {
            i.c(v0Var);
            p pVar = s0Var.d;
            if (pVar != null) {
                v vVar = s0Var.f2000e;
                i.c(vVar);
                o0.a(v0Var, vVar, pVar);
            }
        }
        i.d(v0Var, "null cannot be cast to non-null type T of androidx.lifecycle.ViewModelProvider.get");
        return v0Var;
    }

    public ArrayList q() {
        ArrayList arrayList = new ArrayList();
        for (p0 p0Var : ((HashMap) this.f48c).values()) {
            if (p0Var != null) {
                arrayList.add(p0Var);
            }
        }
        return arrayList;
    }

    @Override // z4.k
    public void r(Object obj, Object obj2) {
        v4.w wVar = (v4.w) obj;
        w5.d dVar = (w5.d) obj2;
        switch (this.f46a) {
            case 26:
                v4.b bVar = o.F;
                o oVar = (o) this.f47b;
                b5.l.g("Not connected to device", oVar.j());
                Context context = wVar.f3991c;
                ComplianceOptions complianceOptions = new ComplianceOptions(-1, -1, 0, true);
                v4.d dVar2 = (v4.d) wVar.p();
                ApiMetadata apiMetadata = new ApiMetadata(complianceOptions);
                Parcel parcelL = dVar2.l();
                parcelL.writeString((String) this.f48c);
                d0.c(parcelL, (LaunchOptions) this.d);
                d0.c(parcelL, apiMetadata);
                dVar2.y(parcelL, 13);
                synchronized (oVar.f8898q) {
                    try {
                        if (oVar.f8895n != null) {
                            oVar.h(2477);
                        }
                        oVar.f8895n = dVar;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return;
            default:
                b5.l.g("Not active connection", ((o) this.f47b).E != 1);
                if (((p4.b) this.f48c) != null) {
                    Context context2 = wVar.f3991c;
                    ComplianceOptions complianceOptions2 = new ComplianceOptions(-1, -1, 0, true);
                    v4.d dVar3 = (v4.d) wVar.p();
                    ApiMetadata apiMetadata2 = new ApiMetadata(complianceOptions2);
                    Parcel parcelL2 = dVar3.l();
                    parcelL2.writeString((String) this.d);
                    d0.c(parcelL2, apiMetadata2);
                    dVar3.y(parcelL2, 12);
                }
                dVar.b(null);
                return;
        }
    }

    public ColorStateList s(int i6) {
        int resourceId;
        ColorStateList colorStateListK;
        TypedArray typedArray = (TypedArray) this.f48c;
        return (!typedArray.hasValue(i6) || (resourceId = typedArray.getResourceId(i6, 0)) == 0 || (colorStateListK = u7.d.k((Context) this.f47b, resourceId)) == null) ? typedArray.getColorStateList(i6) : colorStateListK;
    }

    @Override // l2.g
    public void shutdown() {
        ((ConnectivityManager) this.f47b).unregisterNetworkCallback((q0) this.d);
    }

    public Drawable t(int i6) {
        int resourceId;
        TypedArray typedArray = (TypedArray) this.f48c;
        return (!typedArray.hasValue(i6) || (resourceId = typedArray.getResourceId(i6, 0)) == 0) ? typedArray.getDrawable(i6) : com.bumptech.glide.c.h((Context) this.f47b, resourceId);
    }

    public String toString() {
        switch (this.f46a) {
            case 14:
                StringBuilder sb = new StringBuilder(32);
                sb.append((String) this.f47b);
                sb.append('{');
                b bVar = (b) ((b) this.f48c).d;
                String str = "";
                while (bVar != null) {
                    Object obj = bVar.f48c;
                    boolean z7 = bVar instanceof b7.l;
                    sb.append(str);
                    String str2 = (String) bVar.f47b;
                    if (str2 != null) {
                        sb.append(str2);
                        sb.append('=');
                    }
                    if (obj == null || !obj.getClass().isArray()) {
                        sb.append(obj);
                    } else {
                        String strDeepToString = Arrays.deepToString(new Object[]{obj});
                        sb.append((CharSequence) strDeepToString, 1, strDeepToString.length() - 1);
                    }
                    bVar = (b) bVar.d;
                    str = ", ";
                }
                sb.append('}');
                return sb.toString();
            default:
                return super.toString();
        }
    }

    public Drawable u(int i6) {
        int resourceId;
        Drawable drawableG;
        if (!((TypedArray) this.f48c).hasValue(i6) || (resourceId = ((TypedArray) this.f48c).getResourceId(i6, 0)) == 0) {
            return null;
        }
        androidx.appcompat.widget.w wVarA = androidx.appcompat.widget.w.a();
        Context context = (Context) this.f47b;
        synchronized (wVarA) {
            drawableG = wVarA.f877a.g(context, resourceId, true);
        }
        return drawableG;
    }

    public Typeface v(int i6, int i10, androidx.appcompat.widget.q0 q0Var) {
        int resourceId = ((TypedArray) this.f48c).getResourceId(i6, 0);
        if (resourceId == 0) {
            return null;
        }
        if (((TypedValue) this.d) == null) {
            this.d = new TypedValue();
        }
        TypedValue typedValue = (TypedValue) this.d;
        ThreadLocal threadLocal = e0.n.f6394a;
        Context context = (Context) this.f47b;
        if (context.isRestricted()) {
            return null;
        }
        return e0.n.c(context, resourceId, typedValue, i10, q0Var, true, false);
    }

    public List w() {
        ArrayList arrayList;
        if (((ArrayList) this.f47b).isEmpty()) {
            return Collections.emptyList();
        }
        synchronized (((ArrayList) this.f47b)) {
            arrayList = new ArrayList((ArrayList) this.f47b);
        }
        return arrayList;
    }

    public ImageHeaderParser$ImageType x() throws Throwable {
        w wVar;
        switch (this.f46a) {
            case 16:
                return u7.d.q((ArrayList) this.f48c, r3.a.c((ByteBuffer) this.f47b));
            case 17:
                w wVar2 = (w) ((com.bumptech.glide.load.data.i) this.f47b).f3555b;
                wVar2.reset();
                return u7.d.p((ArrayList) this.d, wVar2, (y2.f) this.f48c);
            default:
                com.bumptech.glide.load.data.i iVar = (com.bumptech.glide.load.data.i) this.d;
                y2.f fVar = (y2.f) this.f47b;
                ArrayList arrayList = (ArrayList) this.f48c;
                int size = arrayList.size();
                for (int i6 = 0; i6 < size; i6++) {
                    v2.d dVar = (v2.d) arrayList.get(i6);
                    w wVar3 = null;
                    try {
                        wVar = new w(new FileInputStream(iVar.d().getFileDescriptor()), fVar);
                    } catch (Throwable th) {
                        th = th;
                    }
                    try {
                        ImageHeaderParser$ImageType imageHeaderParser$ImageTypeD = dVar.d(wVar);
                        wVar.b();
                        iVar.d();
                        if (imageHeaderParser$ImageTypeD != ImageHeaderParser$ImageType.UNKNOWN) {
                            return imageHeaderParser$ImageTypeD;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        wVar3 = wVar;
                        if (wVar3 != null) {
                            wVar3.b();
                        }
                        iVar.d();
                        throw th;
                    }
                }
                return ImageHeaderParser$ImageType.UNKNOWN;
        }
    }

    public void z(p0 p0Var) {
        s sVar = p0Var.f1511c;
        String str = sVar.f;
        HashMap map = (HashMap) this.f48c;
        if (map.get(str) != null) {
            return;
        }
        map.put(sVar.f, p0Var);
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "Added fragment to active set " + sVar);
        }
    }

    public /* synthetic */ b(Object obj, Object obj2, Object obj3, int i6) {
        this.f46a = i6;
        this.f47b = obj;
        this.f48c = obj2;
        this.d = obj3;
    }

    public b(CastDevice castDevice, j0 j0Var) {
        this.f46a = 25;
        b5.l.f(castDevice, "CastDevice parameter cannot be null");
        this.f47b = castDevice;
        this.f48c = j0Var;
    }

    public b(r4.f fVar) {
        this.f46a = 29;
        this.d = fVar;
        this.f48c = new AtomicLong((v4.a.f10670b.nextLong() & WebSocketProtocol.PAYLOAD_SHORT_MAX) * Renderer.DEFAULT_DURATION_TO_PROGRESS_US);
    }

    public b(c2.l lVar, r2.l lVar2) {
        Object bVar;
        this.f46a = 23;
        this.f47b = lVar;
        this.f48c = lVar2;
        int i6 = Build.VERSION.SDK_INT;
        if (i6 < 26) {
            boolean z7 = r2.a.f9460a;
        } else {
            if (!r2.a.f9460a) {
                if (i6 != 26 && i6 != 27) {
                    bVar = new org.bitspark.android.utils.b(true);
                } else {
                    bVar = new r2.k();
                }
            }
            this.d = bVar;
        }
        bVar = new org.bitspark.android.utils.b(false);
        this.d = bVar;
    }

    public b(LifecycleService lifecycleService) {
        this.f46a = 10;
        this.f47b = new y(lifecycleService);
        this.f48c = new Handler();
    }

    public b(int i6) {
        this.f46a = i6;
        switch (i6) {
            case 9:
                this.f47b = new z(1);
                z zVar = new z(0);
                this.f48c = zVar;
                this.d = zVar;
                break;
            case 15:
                this.f47b = new ArrayList();
                this.f48c = null;
                this.d = new a6.a(3, this);
                break;
            case 28:
                this.f47b = new HashMap();
                this.f48c = new HashMap();
                this.d = new HashMap();
                break;
            default:
                this.f47b = new ArrayList();
                this.f48c = new HashMap();
                break;
        }
    }

    private final void I() {
    }

    private final void J() {
    }

    public b(a4.j jVar, x3.b bVar, k2 k2Var, t tVar) {
        this.f46a = 2;
        this.f47b = jVar;
        this.f48c = bVar;
        this.d = tVar;
    }

    public b(z0 z0Var, y0 y0Var, c2 c2Var) {
        this.f46a = 11;
        i.f(z0Var, "store");
        i.f(y0Var, "factory");
        i.f(c2Var, "defaultCreationExtras");
        this.f47b = z0Var;
        this.f48c = y0Var;
        this.d = c2Var;
    }

    public b(androidx.leanback.widget.m mVar) {
        this.f46a = 8;
        this.f46a = 8;
        this.f47b = new e0();
        H(mVar);
        this.d = new ArrayList();
        new ArrayList();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public b(z0 z0Var, y0 y0Var) {
        this(z0Var, y0Var, j1.a.f7427b);
        this.f46a = 11;
        i.f(z0Var, "store");
    }

    public b(qa.m mVar) {
        this.f46a = 8;
        this.f46a = 8;
        this.f47b = new e0();
        H(new a1(mVar));
        this.d = new ArrayList();
        new ArrayList();
    }

    public b(Context context, TypedArray typedArray) {
        this.f46a = 5;
        this.f47b = context;
        this.f48c = typedArray;
    }

    public b(Context context, LocationManager locationManager) {
        this.f46a = 4;
        this.d = new androidx.appcompat.app.u0();
        this.f47b = context;
        this.f48c = locationManager;
    }

    public b(ConnectivityManager connectivityManager, r2.l lVar) {
        this.f46a = 22;
        this.f47b = connectivityManager;
        this.f48c = lVar;
        q0 q0Var = new q0(2, this);
        this.d = q0Var;
        connectivityManager.registerNetworkCallback(new NetworkRequest.Builder().addCapability(12).build(), q0Var);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public b(FragmentActivity fragmentActivity) {
        this(fragmentActivity.e(), fragmentActivity.c(), fragmentActivity.d());
        this.f46a = 11;
        i.f(fragmentActivity, "owner");
    }

    public b(String str) {
        this.f46a = 14;
        b bVar = new b(13, false);
        this.f48c = bVar;
        this.d = bVar;
        this.f47b = str;
    }

    public b(r3.k kVar, ArrayList arrayList, y2.f fVar) {
        this.f46a = 17;
        r3.f.c(fVar, "Argument must not be null");
        this.f48c = fVar;
        r3.f.c(arrayList, "Argument must not be null");
        this.d = arrayList;
        this.f47b = new com.bumptech.glide.load.data.i(kVar, fVar);
    }

    public b(a0.b bVar) {
        this.f46a = 0;
        this.f46a = 0;
        this.f47b = bVar;
        this.f48c = Choreographer.getInstance();
        this.d = new a(0, this);
    }

    public b(Class cls, Type type) throws NoSuchFieldException, NoSuchMethodException, ClassNotFoundException, SecurityException {
        Object qVar;
        this.f46a = 24;
        this.f48c = cls;
        this.d = type;
        try {
            try {
                try {
                    Class<?> cls2 = Class.forName("sun.misc.Unsafe");
                    Field declaredField = cls2.getDeclaredField("theUnsafe");
                    declaredField.setAccessible(true);
                    qVar = new n7.n(cls2.getMethod("allocateInstance", Class.class), declaredField.get(null));
                } catch (Exception unused) {
                    Method declaredMethod = ObjectStreamClass.class.getDeclaredMethod("getConstructorId", Class.class);
                    declaredMethod.setAccessible(true);
                    int iIntValue = ((Integer) declaredMethod.invoke(null, Object.class)).intValue();
                    Method declaredMethod2 = ObjectStreamClass.class.getDeclaredMethod("newInstance", Class.class, Integer.TYPE);
                    declaredMethod2.setAccessible(true);
                    qVar = new n7.o(declaredMethod2, iIntValue);
                }
            } catch (Exception unused2) {
                Method declaredMethod3 = ObjectInputStream.class.getDeclaredMethod("newInstance", Class.class, Class.class);
                declaredMethod3.setAccessible(true);
                qVar = new n7.p(declaredMethod3);
            }
        } catch (Exception unused3) {
            qVar = new q();
        }
        this.f47b = qVar;
    }

    public b(ParcelFileDescriptor parcelFileDescriptor, ArrayList arrayList, y2.f fVar) {
        this.f46a = 18;
        r3.f.c(fVar, "Argument must not be null");
        this.f47b = fVar;
        r3.f.c(arrayList, "Argument must not be null");
        this.f48c = arrayList;
        this.d = new com.bumptech.glide.load.data.i(parcelFileDescriptor);
    }
}
