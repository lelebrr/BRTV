package x4;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.graphics.Bitmap;
import android.media.MediaExtractor;
import android.media.MediaMetadataRetriever;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.SystemClock;
import android.util.Log;
import android.view.View;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.j0;
import androidx.media3.exoplayer.smoothstreaming.SsMediaSource;
import androidx.media3.extractor.ts.TsExtractor;
import com.google.android.gms.common.api.ApiMetadata;
import com.google.android.gms.common.api.ComplianceOptions;
import com.google.android.material.internal.d0;
import e3.e0;
import e3.o;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Field;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.TreeMap;
import java.util.WeakHashMap;
import n0.r1;
import n0.s0;
import v4.w;
import x2.x;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class e implements d0, o, e0, d4.b, v2.k, k3.g, k3.f, k3.m, k4.a, sa.o, l2.g, n7.m, l8.a, z4.k {

    /* renamed from: b, reason: collision with root package name */
    public static e f11003b;

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f11004a;

    public /* synthetic */ e(int i6) {
        this.f11004a = i6;
    }

    public static void j(Context context) {
        b5.l.e(context);
        synchronized (e.class) {
            try {
                if (f11003b == null) {
                    l.a(context);
                    e eVar = new e(0);
                    context.getApplicationContext();
                    f11003b = eVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0045, code lost:
    
        if (java.lang.Character.isHighSurrogate(r5) != false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0082, code lost:
    
        if (java.lang.Character.isLowSurrogate(r5) != false) goto L58;
     */
    /* JADX WARN: Removed duplicated region for block: B:104:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x006c A[EDGE_INSN: B:91:0x006c->B:46:0x006c BREAK  A[LOOP:2: B:47:0x006e->B:58:0x0085], EDGE_INSN: B:92:0x006c->B:46:0x006c BREAK  A[LOOP:2: B:47:0x006e->B:58:0x0085, LOOP_LABEL: LOOP:2: B:47:0x006e->B:58:0x0085]] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00a2 A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean n(d1.b r7, android.text.Editable r8, int r9, int r10, boolean r11) {
        /*
            Method dump skipped, instructions count: 240
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: x4.e.n(d1.b, android.text.Editable, int, int, boolean):boolean");
    }

    public static final i v(PackageInfo packageInfo, i... iVarArr) {
        Signature[] signatureArr = packageInfo.signatures;
        if (signatureArr != null) {
            if (signatureArr.length != 1) {
                Log.w("GoogleSignatureVerifier", "Package has more than one signature.");
                return null;
            }
            j jVar = new j(packageInfo.signatures[0].toByteArray());
            for (int i6 = 0; i6 < iVarArr.length; i6++) {
                if (iVarArr[i6].equals(jVar)) {
                    return iVarArr[i6];
                }
            }
        }
        return null;
    }

    public static final boolean w(PackageInfo packageInfo) {
        PackageInfo packageInfo2;
        boolean z7;
        if (packageInfo != null) {
            if ("com.android.vending".equals(packageInfo.packageName) || "com.google.android.gms".equals(packageInfo.packageName)) {
                ApplicationInfo applicationInfo = packageInfo.applicationInfo;
                z7 = (applicationInfo == null || (applicationInfo.flags & TsExtractor.TS_STREAM_TYPE_AC3) == 0) ? false : true;
            } else {
                z7 = true;
            }
            packageInfo2 = packageInfo;
        } else {
            packageInfo2 = null;
            z7 = true;
        }
        if (packageInfo != null && packageInfo2.signatures != null) {
            if ((z7 ? v(packageInfo2, k.f11013a) : v(packageInfo2, k.f11013a[0])) != null) {
                return true;
            }
        }
        return false;
    }

    @Override // l8.a
    public void accept(Object obj) {
        Throwable nullPointerException = (Throwable) obj;
        String str = "The exception was not handled due to missing onError handler in the subscribe() method call. Further reading: https://github.com/ReactiveX/RxJava/wiki/Error-Handling | " + nullPointerException;
        if (nullPointerException == null) {
            nullPointerException = new NullPointerException();
        }
        com.bumptech.glide.d.y(new k8.c(str, nullPointerException));
    }

    @Override // l2.g
    public boolean b() {
        return true;
    }

    @Override // k4.a
    public long c() {
        return SystemClock.elapsedRealtime();
    }

    @Override // e3.e0
    public void e(MediaMetadataRetriever mediaMetadataRetriever, Object obj) throws IllegalArgumentException {
        switch (this.f11004a) {
            case 9:
                mediaMetadataRetriever.setDataSource(new e3.d0((ByteBuffer) obj));
                break;
            default:
                mediaMetadataRetriever.setDataSource(((ParcelFileDescriptor) obj).getFileDescriptor());
                break;
        }
    }

    @Override // e3.e0
    public void f(MediaExtractor mediaExtractor, Object obj) throws IOException {
        switch (this.f11004a) {
            case 9:
                mediaExtractor.setDataSource(new e3.d0((ByteBuffer) obj));
                break;
            default:
                mediaExtractor.setDataSource(((ParcelFileDescriptor) obj).getFileDescriptor());
                break;
        }
    }

    @Override // v8.a
    public Object get() {
        u6.e eVar = new u6.e(19);
        HashMap map = new HashMap();
        x3.c cVar = x3.c.f10991a;
        Set setEmptySet = Collections.emptySet();
        if (setEmptySet == null) {
            throw new NullPointerException("Null flags");
        }
        map.put(cVar, new h4.c(SsMediaSource.DEFAULT_LIVE_PRESENTATION_DELAY_MS, 86400000L, setEmptySet));
        x3.c cVar2 = x3.c.f10993c;
        Set setEmptySet2 = Collections.emptySet();
        if (setEmptySet2 == null) {
            throw new NullPointerException("Null flags");
        }
        map.put(cVar2, new h4.c(1000L, 86400000L, setEmptySet2));
        x3.c cVar3 = x3.c.f10992b;
        if (Collections.emptySet() == null) {
            throw new NullPointerException("Null flags");
        }
        Set setUnmodifiableSet = Collections.unmodifiableSet(new HashSet(Arrays.asList(h4.e.f7245a, h4.e.f7246b)));
        if (setUnmodifiableSet == null) {
            throw new NullPointerException("Null flags");
        }
        map.put(cVar3, new h4.c(86400000L, 86400000L, setUnmodifiableSet));
        if (map.keySet().size() < x3.c.values().length) {
            throw new IllegalStateException("Not all priorities have been configured");
        }
        new HashMap();
        return new h4.b(eVar, map);
    }

    @Override // k3.g
    public void h(k3.i iVar) {
        iVar.i();
    }

    @Override // v2.b
    public boolean i(Object obj, File file, v2.h hVar) throws Throwable {
        try {
            r3.a.d(((i3.i) ((i3.d) ((x) obj).get()).f7308a.f7307b).f7321a.d.asReadOnlyBuffer(), file);
            return true;
        } catch (IOException e5) {
            if (Log.isLoggable("GifEncoder", 5)) {
                Log.w("GifEncoder", "Failed to encode GIF drawable data", e5);
            }
            return false;
        }
    }

    @Override // v2.k
    public int l(v2.h hVar) {
        return 1;
    }

    public Signature[] m(PackageManager packageManager, String str) {
        return packageManager.getPackageInfo(str, 64).signatures;
    }

    @Override // n7.m
    public Object o() {
        switch (this.f11004a) {
            case 22:
                return new TreeMap();
            case 23:
                return new n7.l();
            case 24:
                return new LinkedHashSet();
            default:
                return new ArrayList();
        }
    }

    @Override // com.google.android.material.internal.d0
    public r1 p(View view, r1 r1Var, com.google.android.material.internal.e0 e0Var) {
        e0Var.d = r1Var.a() + e0Var.d;
        WeakHashMap weakHashMap = s0.f8353a;
        boolean z7 = view.getLayoutDirection() == 1;
        int iB = r1Var.b();
        int iC = r1Var.c();
        int i6 = e0Var.f5031a + (z7 ? iC : iB);
        e0Var.f5031a = i6;
        int i10 = e0Var.f5033c;
        if (!z7) {
            iB = iC;
        }
        int i11 = i10 + iB;
        e0Var.f5033c = i11;
        view.setPaddingRelative(i6, e0Var.f5032b, i11, e0Var.d);
        return r1Var;
    }

    @Override // z4.k
    public void r(Object obj, Object obj2) {
        w wVar = (w) obj;
        v4.b bVar = p4.o.F;
        Context context = wVar.f3991c;
        ComplianceOptions complianceOptions = new ComplianceOptions(-1, -1, 0, true);
        v4.d dVar = (v4.d) wVar.p();
        ApiMetadata apiMetadata = new ApiMetadata(complianceOptions);
        Parcel parcelL = dVar.l();
        com.google.android.gms.internal.cast.d0.c(parcelL, apiMetadata);
        dVar.y(parcelL, 19);
        ((w5.d) obj2).b(Boolean.TRUE);
    }

    public String toString() {
        switch (this.f11004a) {
            case 26:
                return "EmptyAction";
            default:
                return super.toString();
        }
    }

    public n5.b u(Context context, u6.e eVar) throws IllegalAccessException, NoSuchFieldException, ClassNotFoundException, IllegalArgumentException {
        n5.b bVar = new n5.b();
        eVar.getClass();
        int iB = n5.c.b(context, "com.google.android.gms.cast.framework.dynamite", true);
        bVar.f8448b = iB;
        if (iB != 0) {
            bVar.f8449c = 1;
        } else {
            int i6 = 0;
            try {
                Class<?> clsLoadClass = context.getApplicationContext().getClassLoader().loadClass("com.google.android.gms.dynamite.descriptors.com.google.android.gms.cast.framework.dynamite.ModuleDescriptor");
                Field declaredField = clsLoadClass.getDeclaredField("MODULE_ID");
                Field declaredField2 = clsLoadClass.getDeclaredField("MODULE_VERSION");
                if (b5.l.h(declaredField.get(null), "com.google.android.gms.cast.framework.dynamite")) {
                    i6 = declaredField2.getInt(null);
                } else {
                    Log.e("DynamiteModule", "Module descriptor id '" + String.valueOf(declaredField.get(null)) + "' didn't match expected id 'com.google.android.gms.cast.framework.dynamite'");
                }
            } catch (ClassNotFoundException unused) {
                Log.w("DynamiteModule", "Local module descriptor class for com.google.android.gms.cast.framework.dynamite not found.");
            } catch (Exception e5) {
                Log.e("DynamiteModule", "Failed to load module descriptor class: ".concat(String.valueOf(e5.getMessage())));
            }
            bVar.f8447a = i6;
            if (i6 != 0) {
                bVar.f8449c = -1;
            }
        }
        return bVar;
    }

    public e(a7.f fVar, j0 j0Var) {
        this.f11004a = 17;
    }

    @Override // e3.o
    public void k() {
    }

    @Override // sa.o
    public void onDismiss() {
    }

    public void q() {
    }

    public void s() {
    }

    @Override // l2.g
    public void shutdown() {
    }

    public void t() {
    }

    @Override // k3.f
    public void a(FragmentActivity fragmentActivity) {
    }

    @Override // k3.g
    public void g(k3.i iVar) {
    }

    @Override // e3.o
    public void d(Bitmap bitmap, y2.a aVar) {
    }
}
