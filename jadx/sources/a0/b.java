package a0;

import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Parcel;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import androidx.appcompat.app.q0;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.n;
import androidx.appcompat.widget.o3;
import androidx.appcompat.widget.r3;
import androidx.appcompat.widget.y0;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.widget.NestedScrollView;
import androidx.media3.common.C;
import b3.r;
import com.google.android.gms.common.internal.TelemetryData;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import com.google.android.material.behavior.SwipeDismissBehavior;
import com.google.android.material.internal.ScrimInsetsFrameLayout;
import com.google.android.material.navigation.NavigationView;
import e3.l;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Objects;
import java.util.WeakHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import k.e0;
import k.j;
import k.x;
import n0.i;
import n0.o1;
import n0.r1;
import n0.s;
import n0.s0;
import v2.h;
import z4.k;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class b implements s, o0.s, x, j, y0, i, v2.b, com.google.android.material.button.a, com.google.android.material.internal.f, k, l, j3.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f31a;

    /* renamed from: b, reason: collision with root package name */
    public Object f32b;

    public /* synthetic */ b(int i6, Object obj) {
        this.f31a = i6;
        this.f32b = obj;
    }

    @Override // k.x
    public void b(k.l lVar, boolean z7) {
        if (lVar instanceof e0) {
            ((e0) lVar).f7574z.k().c(false);
        }
        x xVar = ((androidx.appcompat.widget.k) this.f32b).f7546e;
        if (xVar != null) {
            xVar.b(lVar, z7);
        }
    }

    @Override // e3.l
    public int c(byte[] bArr, int i6) throws e3.k {
        int i10 = 0;
        int i11 = 0;
        while (i10 < i6 && (i11 = ((InputStream) this.f32b).read(bArr, i10, i6 - i10)) != -1) {
            i10 += i11;
        }
        if (i10 == 0 && i11 == -1) {
            throw new e3.k();
        }
        return i10;
    }

    @Override // e3.l
    public short d() throws IOException {
        int i6 = ((InputStream) this.f32b).read();
        if (i6 != -1) {
            return (short) i6;
        }
        throw new e3.k();
    }

    @Override // j3.a
    public x2.x e(x2.x xVar, h hVar) {
        if (xVar == null) {
            return null;
        }
        return new e3.d((Resources) this.f32b, xVar);
    }

    @Override // k.x
    public boolean f(k.l lVar) {
        androidx.appcompat.widget.k kVar = (androidx.appcompat.widget.k) this.f32b;
        if (lVar == kVar.f7545c) {
            return false;
        }
        kVar.f762y = ((e0) lVar).A.f7634a;
        x xVar = kVar.f7546e;
        if (xVar != null) {
            return xVar.f(lVar);
        }
        return false;
    }

    @Override // n0.i
    public boolean g(float f) {
        if (f == 0.0f) {
            return false;
        }
        o();
        ((NestedScrollView) this.f32b).k((int) f);
        return true;
    }

    @Override // e3.l
    public int h() {
        return (d() << 8) | d();
    }

    @Override // v2.b
    public boolean i(Object obj, File file, h hVar) throws Throwable {
        InputStream inputStream = (InputStream) obj;
        y2.f fVar = (y2.f) this.f32b;
        byte[] bArr = (byte[]) fVar.d(C.DEFAULT_BUFFER_SEGMENT_SIZE, byte[].class);
        FileOutputStream fileOutputStream = null;
        try {
            try {
                FileOutputStream fileOutputStream2 = new FileOutputStream(file);
                while (true) {
                    try {
                        int i6 = inputStream.read(bArr);
                        if (i6 == -1) {
                            break;
                        }
                        fileOutputStream2.write(bArr, 0, i6);
                    } catch (IOException e5) {
                        e = e5;
                        fileOutputStream = fileOutputStream2;
                        if (Log.isLoggable("StreamEncoder", 3)) {
                            Log.d("StreamEncoder", "Failed to encode data onto the OutputStream", e);
                        }
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (IOException unused) {
                            }
                        }
                        fVar.h(bArr);
                        return false;
                    } catch (Throwable th) {
                        th = th;
                        fileOutputStream = fileOutputStream2;
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (IOException unused2) {
                            }
                        }
                        fVar.h(bArr);
                        throw th;
                    }
                }
                fileOutputStream2.close();
                try {
                    fileOutputStream2.close();
                } catch (IOException unused3) {
                }
                fVar.h(bArr);
                return true;
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e10) {
            e = e10;
        }
    }

    @Override // k.j
    public boolean j(k.l lVar, MenuItem menuItem) {
        switch (this.f31a) {
            case 5:
                n nVar = ((ActionMenuView) this.f32b).A;
                if (nVar == null) {
                    return false;
                }
                Toolbar toolbar = ((o3) nVar).f798a;
                Iterator it = ((CopyOnWriteArrayList) toolbar.G.f8017c).iterator();
                if (it.hasNext()) {
                    throw a.e.l(it);
                }
                r3 r3Var = toolbar.I;
                return r3Var != null ? ((q0) r3Var).f348a.f357s.f385a.onMenuItemSelected(0, menuItem) : false;
            case 19:
                com.google.android.material.navigation.l lVar2 = (com.google.android.material.navigation.l) this.f32b;
                lVar2.getClass();
                lVar2.getClass();
                return false;
            default:
                ((NavigationView) this.f32b).getClass();
                return false;
        }
    }

    @Override // n0.i
    public float m() {
        return -((NestedScrollView) this.f32b).getVerticalScrollFactorCompat();
    }

    @Override // k.j
    public void n(k.l lVar) {
        switch (this.f31a) {
            case 5:
                j jVar = ((ActionMenuView) this.f32b).f473v;
                if (jVar != null) {
                    jVar.n(lVar);
                    break;
                }
                break;
        }
    }

    @Override // n0.i
    public void o() {
        ((NestedScrollView) this.f32b).d.abortAnimation();
    }

    @Override // n0.s
    public r1 onApplyWindowInsets(View view, r1 r1Var) {
        r1 r1Var2;
        z = false;
        boolean z7 = false;
        switch (this.f31a) {
            case 0:
                CoordinatorLayout coordinatorLayout = (CoordinatorLayout) this.f32b;
                if (!Objects.equals(coordinatorLayout.f1115n, r1Var)) {
                    coordinatorLayout.f1115n = r1Var;
                    boolean z10 = r1Var.d() > 0;
                    coordinatorLayout.f1116o = z10;
                    coordinatorLayout.setWillNotDraw(!z10 && coordinatorLayout.getBackground() == null);
                    o1 o1Var = r1Var.f8352a;
                    if (!o1Var.n()) {
                        int childCount = coordinatorLayout.getChildCount();
                        for (int i6 = 0; i6 < childCount; i6++) {
                            View childAt = coordinatorLayout.getChildAt(i6);
                            WeakHashMap weakHashMap = s0.f8353a;
                            if (!childAt.getFitsSystemWindows() || ((androidx.coordinatorlayout.widget.c) childAt.getLayoutParams()).f1122a == null || !o1Var.n()) {
                            }
                        }
                    }
                    coordinatorLayout.requestLayout();
                }
                return r1Var;
            case 13:
                AppBarLayout appBarLayout = (AppBarLayout) this.f32b;
                appBarLayout.getClass();
                WeakHashMap weakHashMap2 = s0.f8353a;
                r1Var2 = appBarLayout.getFitsSystemWindows() ? r1Var : null;
                if (!Objects.equals(appBarLayout.f4540g, r1Var2)) {
                    appBarLayout.f4540g = r1Var2;
                    if (appBarLayout.f4551r != null && appBarLayout.getTopInset() > 0) {
                        z7 = true;
                    }
                    appBarLayout.setWillNotDraw(!z7);
                    appBarLayout.requestLayout();
                }
                return r1Var;
            case 14:
                CollapsingToolbarLayout collapsingToolbarLayout = (CollapsingToolbarLayout) this.f32b;
                collapsingToolbarLayout.getClass();
                WeakHashMap weakHashMap3 = s0.f8353a;
                r1Var2 = collapsingToolbarLayout.getFitsSystemWindows() ? r1Var : null;
                if (!Objects.equals(collapsingToolbarLayout.f4587y, r1Var2)) {
                    collapsingToolbarLayout.f4587y = r1Var2;
                    collapsingToolbarLayout.requestLayout();
                }
                return r1Var.f8352a.c();
            default:
                ScrimInsetsFrameLayout scrimInsetsFrameLayout = (ScrimInsetsFrameLayout) this.f32b;
                if (scrimInsetsFrameLayout.f4972b == null) {
                    scrimInsetsFrameLayout.f4972b = new Rect();
                }
                scrimInsetsFrameLayout.f4972b.set(r1Var.b(), r1Var.d(), r1Var.c(), r1Var.a());
                scrimInsetsFrameLayout.a(r1Var);
                o1 o1Var2 = r1Var.f8352a;
                scrimInsetsFrameLayout.setWillNotDraw(o1Var2.k().equals(f0.c.f6753e) || scrimInsetsFrameLayout.f4971a == null);
                WeakHashMap weakHashMap4 = s0.f8353a;
                scrimInsetsFrameLayout.postInvalidateOnAnimation();
                return o1Var2.c();
        }
    }

    public e2.j p() {
        e2.e eVarC;
        e2.c cVar = (e2.c) this.f32b;
        e2.h hVar = (e2.h) cVar.d;
        synchronized (hVar) {
            cVar.d(true);
            eVarC = hVar.c(((e2.d) cVar.f6449b).f6451a);
        }
        if (eVarC != null) {
            return new e2.j(eVarC);
        }
        return null;
    }

    @Override // o0.s
    public boolean perform(View view, o0.k kVar) {
        SwipeDismissBehavior swipeDismissBehavior = (SwipeDismissBehavior) this.f32b;
        if (!swipeDismissBehavior.s(view)) {
            return false;
        }
        WeakHashMap weakHashMap = s0.f8353a;
        boolean z7 = view.getLayoutDirection() == 1;
        int i6 = swipeDismissBehavior.f4643c;
        s0.i((!(i6 == 0 && z7) && (i6 != 1 || z7)) ? view.getWidth() : -view.getWidth(), view);
        view.setAlpha(0.0f);
        return true;
    }

    @Override // z4.k
    public void r(Object obj, Object obj2) {
        w5.d dVar = (w5.d) obj2;
        d5.a aVar = (d5.a) ((d5.c) obj).p();
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(aVar.f4096e);
        int i6 = q5.a.f9236a;
        TelemetryData telemetryData = (TelemetryData) this.f32b;
        if (telemetryData == null) {
            parcelObtain.writeInt(0);
        } else {
            parcelObtain.writeInt(1);
            telemetryData.writeToParcel(parcelObtain, 0);
        }
        try {
            aVar.d.transact(1, parcelObtain, null, 1);
            parcelObtain.recycle();
            dVar.b(null);
        } catch (Throwable th) {
            parcelObtain.recycle();
            throw th;
        }
    }

    @Override // e3.l
    public long skip(long j10) throws IOException {
        if (j10 < 0) {
            return 0L;
        }
        long j11 = j10;
        while (j11 > 0) {
            InputStream inputStream = (InputStream) this.f32b;
            long jSkip = inputStream.skip(j11);
            if (jSkip > 0) {
                j11 -= jSkip;
            } else {
                if (inputStream.read() == -1) {
                    break;
                }
                j11--;
            }
        }
        return j10 - j11;
    }

    public b(b3.x xVar) {
        this.f31a = 12;
        this.f32b = Collections.unmodifiableMap(new HashMap(xVar.f3222a));
    }

    public b(int i6) {
        this.f31a = i6;
        switch (i6) {
            case 28:
                break;
            default:
                this.f32b = new r(500L);
                break;
        }
    }

    public b(ViewGroup viewGroup) {
        this.f31a = 18;
        this.f32b = viewGroup.getOverlay();
    }

    public b(TextView textView) {
        this.f31a = 23;
        this.f32b = new d1.g(textView);
    }

    public b(EditText editText) {
        this.f31a = 22;
        this.f32b = new a7.f(editText);
    }

    private final void q(k.l lVar) {
    }

    private final void s(k.l lVar) {
    }

    @Override // androidx.appcompat.widget.y0
    public void a(int i6) {
    }

    @Override // androidx.appcompat.widget.y0
    public void k(int i6) {
    }
}
