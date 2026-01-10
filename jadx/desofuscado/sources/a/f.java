package a;

import android.graphics.LinearGradient;
import android.graphics.Shader;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.AnimationUtils;
import android.view.inputmethod.InputMethodManager;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.s0;
import androidx.appcompat.app.z;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.r0;
import androidx.appcompat.widget.s1;
import androidx.leanback.widget.picker.DatePicker;
import androidx.lifecycle.d0;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.ViewPager;
import com.google.android.gms.cast.CastRemoteDisplayLocalService;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.p2elite.brtv2.R;
import com.tencent.bugly.proguard.ag;
import com.tencent.bugly.proguard.au;
import com.tencent.mars.xlog.Log;
import ea.x;
import fa.x0;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.WeakHashMap;
import ka.i0;
import ka.j0;
import ka.l0;
import org.bitspark.android.Spark;
import org.bitspark.android.SpkApplication;
import q1.k0;
import q1.n1;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class f implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f7b;

    public /* synthetic */ f(int i6, Object obj) {
        this.f6a = i6;
        this.f7b = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        boolean z7;
        boolean z10;
        RecyclerView recyclerView;
        switch (this.f6a) {
            case 0:
                try {
                    super/*android.app.Activity*/.onBackPressed();
                    return;
                } catch (IllegalStateException e5) {
                    if (!TextUtils.equals(e5.getMessage(), "Can not perform this action after onSaveInstanceState")) {
                        throw e5;
                    }
                    return;
                }
            case 1:
                s0 s0Var = (s0) this.f7b;
                z zVar = s0Var.f357s;
                Menu menuV = s0Var.V();
                k.l lVar = menuV instanceof k.l ? (k.l) menuV : null;
                if (lVar != null) {
                    lVar.y();
                }
                try {
                    menuV.clear();
                    if (!zVar.onCreatePanelMenu(0, menuV) || !zVar.onPreparePanel(0, null, menuV)) {
                        menuV.clear();
                    }
                    if (lVar != null) {
                        lVar.x();
                        return;
                    }
                    return;
                } catch (Throwable th) {
                    if (lVar != null) {
                        lVar.x();
                    }
                    throw th;
                }
            case 2:
                s1 s1Var = (s1) this.f7b;
                s1Var.f832l = null;
                s1Var.drawableStateChanged();
                return;
            case 3:
                ((Toolbar) this.f7b).v();
                return;
            case 4:
                androidx.core.widget.h hVar = (androidx.core.widget.h) this.f7b;
                if (hVar.f1311o) {
                    boolean z11 = hVar.f1309m;
                    androidx.core.widget.a aVar = hVar.f1299a;
                    if (z11) {
                        hVar.f1309m = false;
                        long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
                        aVar.f1292e = jCurrentAnimationTimeMillis;
                        aVar.f1293g = -1L;
                        aVar.f = jCurrentAnimationTimeMillis;
                        aVar.f1294h = 0.5f;
                    }
                    if ((aVar.f1293g > 0 && AnimationUtils.currentAnimationTimeMillis() > aVar.f1293g + aVar.f1295i) || !hVar.e()) {
                        hVar.f1311o = false;
                        return;
                    }
                    boolean z12 = hVar.f1310n;
                    ListView listView = hVar.f1301c;
                    if (z12) {
                        hVar.f1310n = false;
                        long jUptimeMillis = SystemClock.uptimeMillis();
                        MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                        listView.onTouchEvent(motionEventObtain);
                        motionEventObtain.recycle();
                    }
                    if (aVar.f == 0) {
                        throw new RuntimeException("Cannot compute scroll delta before calling start()");
                    }
                    long jCurrentAnimationTimeMillis2 = AnimationUtils.currentAnimationTimeMillis();
                    float fA = aVar.a(jCurrentAnimationTimeMillis2);
                    long j10 = jCurrentAnimationTimeMillis2 - aVar.f;
                    aVar.f = jCurrentAnimationTimeMillis2;
                    hVar.f1313q.scrollListBy((int) (j10 * ((fA * 4.0f) + ((-4.0f) * fA * fA)) * aVar.d));
                    WeakHashMap weakHashMap = n0.s0.f8353a;
                    listView.postOnAnimation(this);
                    return;
                }
                return;
            case 5:
                synchronized (((d0) this.f7b).f1951a) {
                    obj = ((d0) this.f7b).f;
                    ((d0) this.f7b).f = d0.f1950k;
                }
                ((d0) this.f7b).j(obj);
                return;
            case 6:
                ViewPager viewPager = (ViewPager) this.f7b;
                viewPager.setScrollState(0);
                viewPager.p();
                return;
            case 7:
                c6.c cVar = (c6.c) this.f7b;
                cVar.f3393b = false;
                BottomSheetBehavior bottomSheetBehavior = (BottomSheetBehavior) cVar.d;
                v0.d dVar = bottomSheetBehavior.K;
                if (dVar != null && dVar.g()) {
                    cVar.d(cVar.f3392a);
                    return;
                } else {
                    if (bottomSheetBehavior.J == 2) {
                        bottomSheetBehavior.B(cVar.f3392a);
                        return;
                    }
                    return;
                }
            case 8:
                Toast.makeText(Log.toastSupportContext, (String) this.f7b, 1).show();
                return;
            case 9:
                com.bumptech.glide.o oVar = (com.bumptech.glide.o) this.f7b;
                oVar.f3573c.h(oVar);
                return;
            case 10:
                View view = (View) this.f7b;
                ((InputMethodManager) view.getContext().getSystemService("input_method")).showSoftInput(view, 1);
                return;
            case 11:
                ag.c((List) this.f7b);
                return;
            case 12:
                au.a((au) this.f7b);
                return;
            case 13:
                da.b bVar = (da.b) this.f7b;
                File[] fileArrListFiles = bVar.f.listFiles();
                if (fileArrListFiles != null) {
                    int length = fileArrListFiles.length;
                    int length2 = 0;
                    int i6 = 0;
                    for (int i10 = 0; i10 < length; i10++) {
                        File file = fileArrListFiles[i10];
                        length2 = (int) ((file == null ? 0L : file.length()) + length2);
                        i6++;
                        bVar.f6343e.put(file, Long.valueOf(file.lastModified()));
                    }
                    bVar.f6340a.set(length2);
                    bVar.f6341b.set(i6);
                    return;
                }
                return;
            case 14:
                ((x) this.f7b).f6748b.T();
                return;
            case 15:
                Spark spark = ((ea.k) this.f7b).f6705b;
                spark.A0.smoothScrollToPosition(spark.i0.d(0));
                return;
            case 16:
                x0 x0Var = (x0) ((androidx.core.app.h) this.f7b).f1167b;
                x0Var.notifyItemInserted(x0Var.f6972j.size() - 1);
                return;
            case 17:
                g.e eVar = (g.e) this.f7b;
                eVar.a(true);
                eVar.invalidateSelf();
                return;
            case 18:
                ((ga.a) this.f7b).f7114b.f7116a.dismiss();
                return;
            case 19:
                DatePicker datePicker = (DatePicker) this.f7b;
                int[] iArr = {datePicker.f1883u, datePicker.f1882t, datePicker.f1884v};
                boolean z13 = true;
                boolean z14 = true;
                for (int i11 = 2; i11 >= 0; i11--) {
                    int i12 = iArr[i11];
                    if (i12 >= 0) {
                        int i13 = DatePicker.C[i11];
                        ArrayList arrayList = datePicker.f1891c;
                        i1.d dVar2 = arrayList == null ? null : (i1.d) arrayList.get(i12);
                        if (z13) {
                            int i14 = datePicker.f1887y.get(i13);
                            if (i14 != dVar2.f7296b) {
                                dVar2.f7296b = i14;
                                z7 = true;
                            }
                            z7 = false;
                        } else {
                            int actualMinimum = datePicker.A.getActualMinimum(i13);
                            if (actualMinimum != dVar2.f7296b) {
                                dVar2.f7296b = actualMinimum;
                                z7 = true;
                            }
                            z7 = false;
                        }
                        if (z14) {
                            int i15 = datePicker.f1888z.get(i13);
                            if (i15 != dVar2.f7297c) {
                                dVar2.f7297c = i15;
                                z10 = true;
                            }
                            z10 = false;
                        } else {
                            int actualMaximum = datePicker.A.getActualMaximum(i13);
                            if (actualMaximum != dVar2.f7297c) {
                                dVar2.f7297c = actualMaximum;
                                z10 = true;
                            }
                            z10 = false;
                        }
                        boolean z15 = z7 | z10;
                        z13 &= datePicker.A.get(i13) == datePicker.f1887y.get(i13);
                        z14 &= datePicker.A.get(i13) == datePicker.f1888z.get(i13);
                        if (z15) {
                            datePicker.b(iArr[i11], dVar2);
                        }
                        datePicker.c(iArr[i11], datePicker.A.get(i13));
                    }
                }
                return;
            case 20:
                ka.c cVar2 = (ka.c) this.f7b;
                ba.d.a(cVar2.f7761b.j(), 0, cVar2.f7761b.m().getString(R.string.advise_delete_outdated_programs)).show();
                return;
            case 21:
                TextView textView = (TextView) this.f7b;
                int width = textView.getWidth();
                int height = textView.getHeight();
                String strS = a2.a.s("dqfzKPxHEQRTrfA5\n", "PsieTbo1cGM=\n");
                StringBuilder sb = new StringBuilder();
                sb.append(a2.a.s("wGUgDzSxoTrBVD05ObrvLcZubm0=\n", "swBUTVXfz18=\n"));
                sb.append(width);
                String strJ = ea.q.j("CJ7JPu8WrA==\n", "NaP0A9IrkSo=\n", sb, height);
                boolean z16 = org.bitspark.android.utils.m.f8784b;
                Log.i(strS, strJ);
                if (width == 0 || height == 0) {
                    return;
                }
                textView.setVisibility(0);
                textView.getPaint().setShader(new LinearGradient(0.0f, 0.0f, width, 0.0f, new int[]{u7.d.i(SpkApplication.f8737c.getApplicationContext(), R.color.home_banner_title_text_start), u7.d.i(SpkApplication.f8737c.getApplicationContext(), R.color.home_banner_title_text_end)}, new float[]{0.0f, 1.0f}, Shader.TileMode.CLAMP));
                textView.invalidate();
                return;
            case 22:
                ((i0) this.f7b).Q();
                return;
            case 23:
                r0 r0Var = (r0) this.f7b;
                sa.l lVar2 = (sa.l) ((i0) r0Var.d).h().k().z((String) r0Var.f818c);
                if (lVar2 != null && (recyclerView = lVar2.U) != null) {
                    o9.d.z(recyclerView, r0Var.f817b);
                }
                String strS2 = a2.a.s("UudbuheSsshozk2fFYu2z3A=\n", "BIg//nLm06E=\n");
                String str = a2.a.s("zCV3El7XjJqzRH5SyFY=\n", "KaP69PJ2ZBs=\n") + ((i0) r0Var.d).h().getCurrentFocus();
                boolean z17 = org.bitspark.android.utils.m.f8784b;
                Log.i(strS2, str);
                return;
            case 24:
                ((j0) this.f7b).f7806b.f7822g0.setVisibility(8);
                return;
            case 25:
                l0 l0Var = (l0) this.f7b;
                ba.d.a(l0Var.d.j(), 0, l0Var.d.m().getString(R.string.advise_delete_outdated_programs)).show();
                return;
            case 26:
                m1.b bVar2 = (m1.b) this.f7b;
                bVar2.f.d.remove(bVar2.d.f8146a.getBinder());
                return;
            case 27:
                CastRemoteDisplayLocalService castRemoteDisplayLocalService = (CastRemoteDisplayLocalService) this.f7b;
                castRemoteDisplayLocalService.a("onCreate after delay. The local service been started: " + castRemoteDisplayLocalService.f3671a);
                if (castRemoteDisplayLocalService.f3671a) {
                    return;
                }
                v4.b bVar3 = CastRemoteDisplayLocalService.d;
                android.util.Log.e(bVar3.f10671a, bVar3.d("[Instance: %s] %s", castRemoteDisplayLocalService, "The local service has not been been started, stopping it"));
                castRemoteDisplayLocalService.stopSelf();
                return;
            case 28:
                ((k0) this.f7b).h();
                return;
            default:
                ((n1) this.f7b).a();
                return;
        }
    }
}
