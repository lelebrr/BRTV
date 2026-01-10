package a7;

import android.animation.Animator;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.text.Editable;
import android.text.Selection;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.ActionMode;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import androidx.appcompat.app.g0;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.j0;
import androidx.fragment.app.z;
import androidx.lifecycle.p;
import androidx.lifecycle.z0;
import androidx.viewpager.widget.ViewPager;
import b1.t;
import coil.memory.MemoryCache$Key;
import com.google.android.material.internal.d0;
import com.tencent.bugly.crashreport.biz.UserInfoBean;
import com.tencent.bugly.proguard.ah;
import com.tencent.bugly.proguard.al;
import com.tencent.bugly.proguard.r;
import com.youth.banner.listener.OnPageChangeListener;
import e3.a0;
import e3.o;
import e3.w;
import ea.q;
import fa.n0;
import j9.i;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormatSymbols;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import k.b0;
import k.l;
import k3.j;
import ka.m0;
import n0.a1;
import n0.e0;
import n0.r1;
import n0.s;
import n0.s0;
import org.bitspark.android.SpkApplication;
import org.bitspark.android.beans.EventBean;
import org.json.JSONObject;
import p.m;
import r3.n;
import v2.h;
import v2.k;
import x2.x;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class f implements s, d4.b, ah, k, o, k2.f, OnPageChangeListener, n0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f168a;

    /* renamed from: b, reason: collision with root package name */
    public Object f169b;

    /* renamed from: c, reason: collision with root package name */
    public Object f170c;

    public /* synthetic */ f(int i6, Object obj) {
        this.f168a = i6;
        this.f169b = obj;
        this.f170c = null;
    }

    public static a0 e(ImageDecoder.Source source, int i6, int i10, h hVar) throws IOException {
        Drawable drawableDecodeDrawable = ImageDecoder.decodeDrawable(source, new d3.b(i6, i10, hVar));
        if (android.support.v4.media.session.b.y(drawableDecodeDrawable)) {
            return new a0(2, android.support.v4.media.session.b.i(drawableDecodeDrawable));
        }
        throw new IOException("Received unexpected drawable type for animated image, failing: " + drawableDecodeDrawable);
    }

    public static boolean f(Editable editable, KeyEvent keyEvent, boolean z7) {
        t[] tVarArr;
        if (!KeyEvent.metaStateHasNoModifiers(keyEvent.getMetaState())) {
            return false;
        }
        int selectionStart = Selection.getSelectionStart(editable);
        int selectionEnd = Selection.getSelectionEnd(editable);
        if (selectionStart != -1 && selectionEnd != -1 && selectionStart == selectionEnd && (tVarArr = (t[]) editable.getSpans(selectionStart, selectionEnd, t.class)) != null && tVarArr.length > 0) {
            for (t tVar : tVarArr) {
                int spanStart = editable.getSpanStart(tVar);
                int spanEnd = editable.getSpanEnd(tVar);
                if ((z7 && spanStart == selectionStart) || ((!z7 && spanEnd == selectionStart) || (selectionStart > spanStart && selectionStart < spanEnd))) {
                    editable.delete(spanStart, spanEnd);
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0048  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.google.android.datatransport.cct.CctBackendFactory A(java.lang.String r14) throws android.content.pm.PackageManager.NameNotFoundException {
        /*
            Method dump skipped, instructions count: 275
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: a7.f.A(java.lang.String):com.google.android.datatransport.cct.CctBackendFactory");
    }

    public Locale B() {
        SharedPreferences sharedPreferences = (SharedPreferences) this.f169b;
        String string = sharedPreferences.getString("language_key", null);
        if (string == null || r9.f.e0(string)) {
            return (Locale) this.f170c;
        }
        String string2 = sharedPreferences.getString("language_key", null);
        if (string2 != null) {
            JSONObject jSONObject = new JSONObject(string2);
            return new Locale(jSONObject.getString("language"), jSONObject.getString("country"), jSONObject.getString("variant"));
        }
        w8.b bVar = new w8.b();
        i.j(bVar, i.class.getName());
        throw bVar;
    }

    public com.bumptech.glide.o C(Context context, com.bumptech.glide.b bVar, p pVar, j0 j0Var, boolean z7) {
        n.a();
        n.a();
        HashMap map = (HashMap) this.f169b;
        com.bumptech.glide.o oVar = (com.bumptech.glide.o) map.get(pVar);
        if (oVar != null) {
            return oVar;
        }
        k3.h hVar = new k3.h(pVar);
        x4.e eVar = new x4.e(this, j0Var);
        ((u6.e) this.f170c).getClass();
        com.bumptech.glide.o oVar2 = new com.bumptech.glide.o(bVar, hVar, eVar, context);
        map.put(pVar, oVar2);
        hVar.h(new j(this, pVar));
        if (z7) {
            oVar2.i();
        }
        return oVar2;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0078  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean D(java.lang.CharSequence r10, int r11, int r12, b1.m r13) {
        /*
            Method dump skipped, instructions count: 271
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: a7.f.D(java.lang.CharSequence, int, int, b1.m):boolean");
    }

    public void E(j.a aVar) {
        a0.f fVar = (a0.f) this.f169b;
        ((ActionMode.Callback) fVar.f38b).onDestroyActionMode(fVar.f(aVar));
        g0 g0Var = (g0) this.f170c;
        if (g0Var.f286w != null) {
            g0Var.f275l.getDecorView().removeCallbacks(g0Var.f287x);
        }
        if (g0Var.f285v != null) {
            a1 a1Var = g0Var.f288y;
            if (a1Var != null) {
                a1Var.b();
            }
            a1 a1VarA = s0.a(g0Var.f285v);
            a1VarA.a(0.0f);
            g0Var.f288y = a1VarA;
            a1VarA.d(new androidx.appcompat.app.t(2, this));
        }
        g0Var.f284u = null;
        ViewGroup viewGroup = g0Var.B;
        WeakHashMap weakHashMap = s0.f8353a;
        e0.c(viewGroup);
        g0Var.J();
    }

    public boolean F(j.a aVar, l lVar) {
        ViewGroup viewGroup = ((g0) this.f170c).B;
        WeakHashMap weakHashMap = s0.f8353a;
        e0.c(viewGroup);
        a0.f fVar = (a0.f) this.f169b;
        j.f fVarF = fVar.f(aVar);
        p.l lVar2 = (p.l) fVar.f39c;
        Menu b0Var = (Menu) lVar2.get(lVar);
        if (b0Var == null) {
            b0Var = new b0((Context) fVar.f40e, lVar);
            lVar2.put(lVar, b0Var);
        }
        return ((ActionMode.Callback) fVar.f38b).onPrepareActionMode(fVarF, b0Var);
    }

    public void G(k0.e eVar) {
        int i6 = eVar.f7687b;
        Handler handler = (Handler) this.f170c;
        a0.b bVar = (a0.b) this.f169b;
        if (i6 != 0) {
            handler.post(new androidx.leanback.widget.n0(i6, 4, bVar));
        } else {
            handler.post(new a3.c(17, bVar, eVar.f7686a, false));
        }
    }

    public void H() {
        Integer num;
        a.g gVar = (a.g) this.f170c;
        ArrayList arrayList = gVar.f11e;
        String str = (String) this.f169b;
        if (!arrayList.contains(str) && (num = (Integer) gVar.f10c.remove(str)) != null) {
            gVar.f9b.remove(num);
        }
        gVar.f.remove(str);
        HashMap map = gVar.f12g;
        if (map.containsKey(str)) {
            StringBuilder sbX = a.e.x("Dropping pending result for request ", str, ": ");
            sbX.append(map.get(str));
            Log.w("ActivityResultRegistry", sbX.toString());
            map.remove(str);
        }
        Bundle bundle = gVar.f13h;
        if (bundle.containsKey(str)) {
            StringBuilder sbX2 = a.e.x("Dropping pending result for request ", str, ": ");
            sbX2.append(bundle.getParcelable(str));
            Log.w("ActivityResultRegistry", sbX2.toString());
            bundle.remove(str);
        }
        if (gVar.d.get(str) != null) {
            throw new ClassCastException();
        }
    }

    @Override // k2.f
    public void a(int i6) {
        k2.d dVar = (k2.d) this.f170c;
        if (i6 >= 40) {
            dVar.i(-1);
        } else {
            if (10 > i6 || i6 >= 20) {
                return;
            }
            dVar.i(dVar.g() / 2);
        }
    }

    @Override // k2.f
    public void b(MemoryCache$Key memoryCache$Key, Bitmap bitmap, Map map) {
        int i6;
        int iS = n5.d.s(bitmap);
        k2.d dVar = (k2.d) this.f170c;
        synchronized (dVar.f8854c) {
            i6 = dVar.f8852a;
        }
        if (iS <= i6) {
            dVar.d(memoryCache$Key, new k2.c(bitmap, map, iS));
        } else {
            dVar.e(memoryCache$Key);
            ((c6.b) this.f169b).b(memoryCache$Key, bitmap, map, iS);
        }
    }

    public void c(Object obj, String str) {
        ((ArrayList) this.f169b).add(q.i(str, "=", String.valueOf(obj)));
    }

    @Override // e3.o
    public void d(Bitmap bitmap, y2.a aVar) throws IOException {
        IOException iOException = ((r3.d) this.f170c).f9494b;
        if (iOException != null) {
            if (bitmap == null) {
                throw iOException;
            }
            aVar.e(bitmap);
            throw iOException;
        }
    }

    public void g(androidx.fragment.app.s sVar, Bundle bundle, boolean z7) {
        j0 j0Var = (j0) this.f170c;
        androidx.fragment.app.s sVar2 = j0Var.f1470p;
        if (sVar2 != null) {
            sVar2.l().f1465k.g(sVar, bundle, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f169b).iterator();
        while (it.hasNext()) {
            z zVar = (z) it.next();
            if (!z7 || zVar.f1573b) {
                zVar.f1572a.onFragmentActivityCreated(j0Var, sVar, bundle);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v7, types: [c4.a] */
    @Override // v8.a
    public Object get() {
        switch (this.f168a) {
            case 8:
                return new b4.f((Context) ((d4.c) this.f169b).f6058a, (b4.d) ((b4.e) this.f170c).get());
            default:
                u6.e eVar = new u6.e(19);
                x4.e eVar2 = new x4.e(18);
                i4.a aVar = i4.a.f;
                Object obj = ((b4.e) this.f169b).get();
                d4.b bVar = (b4.e) this.f170c;
                return new i4.g(eVar, eVar2, aVar, (i4.i) obj, bVar instanceof c4.a ? (c4.a) bVar : new d4.a(bVar));
        }
    }

    @Override // k2.f
    public k2.a h(MemoryCache$Key memoryCache$Key) {
        k2.c cVar = (k2.c) ((k2.d) this.f170c).b(memoryCache$Key);
        if (cVar != null) {
            return new k2.a(cVar.f7701a, cVar.f7702b);
        }
        return null;
    }

    @Override // v2.b
    public boolean i(Object obj, File file, h hVar) {
        return ((e3.b) this.f170c).i(new e3.d(((BitmapDrawable) ((x) obj).get()).getBitmap(), (y2.a) this.f169b), file, hVar);
    }

    @Override // fa.n0
    public void j() {
        ta.a aVar = ((m0) this.f170c).f7836v0;
        aVar.f10253i.h((Integer) this.f169b);
    }

    @Override // e3.o
    public void k() {
        w wVar = (w) this.f169b;
        synchronized (wVar) {
            wVar.f6540c = wVar.f6538a.length;
        }
    }

    @Override // v2.k
    public int l(h hVar) {
        return 2;
    }

    public void m(androidx.fragment.app.s sVar, boolean z7) {
        j0 j0Var = (j0) this.f170c;
        FragmentActivity fragmentActivity = j0Var.f1468n.f1555g;
        androidx.fragment.app.s sVar2 = j0Var.f1470p;
        if (sVar2 != null) {
            sVar2.l().f1465k.m(sVar, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f169b).iterator();
        while (it.hasNext()) {
            z zVar = (z) it.next();
            if (!z7 || zVar.f1573b) {
                zVar.f1572a.onFragmentAttached(j0Var, sVar, fragmentActivity);
            }
        }
    }

    public void n(androidx.fragment.app.s sVar, Bundle bundle, boolean z7) {
        j0 j0Var = (j0) this.f170c;
        androidx.fragment.app.s sVar2 = j0Var.f1470p;
        if (sVar2 != null) {
            sVar2.l().f1465k.n(sVar, bundle, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f169b).iterator();
        while (it.hasNext()) {
            z zVar = (z) it.next();
            if (!z7 || zVar.f1573b) {
                zVar.f1572a.onFragmentCreated(j0Var, sVar, bundle);
            }
        }
    }

    public void o(androidx.fragment.app.s sVar, boolean z7) {
        j0 j0Var = (j0) this.f170c;
        androidx.fragment.app.s sVar2 = j0Var.f1470p;
        if (sVar2 != null) {
            sVar2.l().f1465k.o(sVar, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f169b).iterator();
        while (it.hasNext()) {
            z zVar = (z) it.next();
            if (!z7 || zVar.f1573b) {
                zVar.f1572a.onFragmentDestroyed(j0Var, sVar);
            }
        }
    }

    @Override // n0.s
    public r1 onApplyWindowInsets(View view, r1 r1Var) {
        switch (this.f168a) {
            case 6:
                r1 r1VarK = s0.k(view, r1Var);
                if (r1VarK.f8352a.n()) {
                    return r1VarK;
                }
                int iB = r1VarK.b();
                Rect rect = (Rect) this.f169b;
                rect.left = iB;
                rect.top = r1VarK.d();
                rect.right = r1VarK.c();
                rect.bottom = r1VarK.a();
                ViewPager viewPager = (ViewPager) this.f170c;
                int childCount = viewPager.getChildCount();
                for (int i6 = 0; i6 < childCount; i6++) {
                    r1 r1VarB = s0.b(viewPager.getChildAt(i6), r1VarK);
                    rect.left = Math.min(r1VarB.b(), rect.left);
                    rect.top = Math.min(r1VarB.d(), rect.top);
                    rect.right = Math.min(r1VarB.c(), rect.right);
                    rect.bottom = Math.min(r1VarB.a(), rect.bottom);
                }
                return r1VarK.f(rect.left, rect.top, rect.right, rect.bottom);
            default:
                com.google.android.material.internal.e0 e0Var = new com.google.android.material.internal.e0();
                com.google.android.material.internal.e0 e0Var2 = (com.google.android.material.internal.e0) this.f170c;
                e0Var.f5031a = e0Var2.f5031a;
                e0Var.f5032b = e0Var2.f5032b;
                e0Var.f5033c = e0Var2.f5033c;
                e0Var.d = e0Var2.d;
                return ((d0) this.f169b).p(view, r1Var, e0Var);
        }
    }

    @Override // com.youth.banner.listener.OnPageChangeListener
    public void onPageScrolled(int i6, float f, int i10) {
        a2.a.s("eJTU0WZBF91dntfA\n", "MPu5tCAzdro=\n");
        a2.a.s("1LbpDK2cG4PJt9UBr51o\n", "u9i5bcr5SOA=\n");
        String str = ((EventBean) ((ArrayList) this.f169b).get(i6)).title;
    }

    @Override // com.youth.banner.listener.OnPageChangeListener
    public void onPageSelected(int i6) {
        a2.a.s("0VHJlEkLo6H0W8qF\n", "mT6k8Q95wsY=\n");
        a2.a.s("b+GCn3d0dhxs6rGKdXUF\n", "AI/S/hARJXk=\n");
        ArrayList arrayList = (ArrayList) this.f169b;
        String str = ((EventBean) arrayList.get(i6)).title;
        String str2 = ka.j.f7802d0;
        ((ka.j) this.f170c).V(i6, arrayList);
    }

    public void p(androidx.fragment.app.s sVar, boolean z7) {
        j0 j0Var = (j0) this.f170c;
        androidx.fragment.app.s sVar2 = j0Var.f1470p;
        if (sVar2 != null) {
            sVar2.l().f1465k.p(sVar, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f169b).iterator();
        while (it.hasNext()) {
            z zVar = (z) it.next();
            if (!z7 || zVar.f1573b) {
                zVar.f1572a.onFragmentDetached(j0Var, sVar);
            }
        }
    }

    public void q(androidx.fragment.app.s sVar, boolean z7) {
        j0 j0Var = (j0) this.f170c;
        androidx.fragment.app.s sVar2 = j0Var.f1470p;
        if (sVar2 != null) {
            sVar2.l().f1465k.q(sVar, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f169b).iterator();
        while (it.hasNext()) {
            z zVar = (z) it.next();
            if (!z7 || zVar.f1573b) {
                zVar.f1572a.onFragmentPaused(j0Var, sVar);
            }
        }
    }

    public void r(androidx.fragment.app.s sVar, boolean z7) {
        j0 j0Var = (j0) this.f170c;
        FragmentActivity fragmentActivity = j0Var.f1468n.f1555g;
        androidx.fragment.app.s sVar2 = j0Var.f1470p;
        if (sVar2 != null) {
            sVar2.l().f1465k.r(sVar, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f169b).iterator();
        while (it.hasNext()) {
            z zVar = (z) it.next();
            if (!z7 || zVar.f1573b) {
                zVar.f1572a.onFragmentPreAttached(j0Var, sVar, fragmentActivity);
            }
        }
    }

    public void s(androidx.fragment.app.s sVar, Bundle bundle, boolean z7) {
        j0 j0Var = (j0) this.f170c;
        androidx.fragment.app.s sVar2 = j0Var.f1470p;
        if (sVar2 != null) {
            sVar2.l().f1465k.s(sVar, bundle, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f169b).iterator();
        while (it.hasNext()) {
            z zVar = (z) it.next();
            if (!z7 || zVar.f1573b) {
                zVar.f1572a.onFragmentPreCreated(j0Var, sVar, bundle);
            }
        }
    }

    public void t(androidx.fragment.app.s sVar, boolean z7) {
        j0 j0Var = (j0) this.f170c;
        androidx.fragment.app.s sVar2 = j0Var.f1470p;
        if (sVar2 != null) {
            sVar2.l().f1465k.t(sVar, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f169b).iterator();
        while (it.hasNext()) {
            z zVar = (z) it.next();
            if (!z7 || zVar.f1573b) {
                zVar.f1572a.onFragmentResumed(j0Var, sVar);
            }
        }
    }

    public String toString() {
        int iLastIndexOf;
        switch (this.f168a) {
            case 9:
                StringBuilder sb = new StringBuilder(100);
                sb.append(this.f170c.getClass().getSimpleName());
                sb.append('{');
                ArrayList arrayList = (ArrayList) this.f169b;
                int size = arrayList.size();
                for (int i6 = 0; i6 < size; i6++) {
                    sb.append((String) arrayList.get(i6));
                    if (i6 < size - 1) {
                        sb.append(", ");
                    }
                }
                sb.append('}');
                return sb.toString();
            case 25:
                StringBuilder sb2 = new StringBuilder(128);
                sb2.append("LoaderManager{");
                sb2.append(Integer.toHexString(System.identityHashCode(this)));
                sb2.append(" in ");
                Object obj = this.f169b;
                if (obj == null) {
                    sb2.append("null");
                } else {
                    String simpleName = obj.getClass().getSimpleName();
                    if (simpleName.length() <= 0 && (iLastIndexOf = (simpleName = obj.getClass().getName()).lastIndexOf(46)) > 0) {
                        simpleName = simpleName.substring(iLastIndexOf + 1);
                    }
                    sb2.append(simpleName);
                    sb2.append('{');
                    sb2.append(Integer.toHexString(System.identityHashCode(obj)));
                }
                sb2.append("}}");
                return sb2.toString();
            default:
                return super.toString();
        }
    }

    public void u(androidx.fragment.app.s sVar, Bundle bundle, boolean z7) {
        j0 j0Var = (j0) this.f170c;
        androidx.fragment.app.s sVar2 = j0Var.f1470p;
        if (sVar2 != null) {
            sVar2.l().f1465k.u(sVar, bundle, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f169b).iterator();
        while (it.hasNext()) {
            z zVar = (z) it.next();
            if (!z7 || zVar.f1573b) {
                zVar.f1572a.onFragmentSaveInstanceState(j0Var, sVar, bundle);
            }
        }
    }

    public void v(androidx.fragment.app.s sVar, boolean z7) {
        j0 j0Var = (j0) this.f170c;
        androidx.fragment.app.s sVar2 = j0Var.f1470p;
        if (sVar2 != null) {
            sVar2.l().f1465k.v(sVar, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f169b).iterator();
        while (it.hasNext()) {
            z zVar = (z) it.next();
            if (!z7 || zVar.f1573b) {
                zVar.f1572a.onFragmentStarted(j0Var, sVar);
            }
        }
    }

    public void w(androidx.fragment.app.s sVar, boolean z7) {
        j0 j0Var = (j0) this.f170c;
        androidx.fragment.app.s sVar2 = j0Var.f1470p;
        if (sVar2 != null) {
            sVar2.l().f1465k.w(sVar, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f169b).iterator();
        while (it.hasNext()) {
            z zVar = (z) it.next();
            if (!z7 || zVar.f1573b) {
                zVar.f1572a.onFragmentStopped(j0Var, sVar);
            }
        }
    }

    public void x(androidx.fragment.app.s sVar, View view, Bundle bundle, boolean z7) {
        j0 j0Var = (j0) this.f170c;
        androidx.fragment.app.s sVar2 = j0Var.f1470p;
        if (sVar2 != null) {
            sVar2.l().f1465k.x(sVar, view, bundle, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f169b).iterator();
        while (it.hasNext()) {
            z zVar = (z) it.next();
            if (!z7 || zVar.f1573b) {
                zVar.f1572a.onFragmentViewCreated(j0Var, sVar, view, bundle);
            }
        }
    }

    public void y(androidx.fragment.app.s sVar, boolean z7) {
        j0 j0Var = (j0) this.f170c;
        androidx.fragment.app.s sVar2 = j0Var.f1470p;
        if (sVar2 != null) {
            sVar2.l().f1465k.y(sVar, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f169b).iterator();
        while (it.hasNext()) {
            z zVar = (z) it.next();
            if (!z7 || zVar.f1573b) {
                zVar.f1572a.onFragmentViewDestroyed(j0Var, sVar);
            }
        }
    }

    public void z(String str, PrintWriter printWriter) {
        k1.b bVar = (k1.b) this.f170c;
        if (bVar.d.f8861c > 0) {
            printWriter.print(str);
            printWriter.println("Loaders:");
            String str2 = str + "    ";
            m mVar = bVar.d;
            if (mVar.f8861c <= 0) {
                return;
            }
            k1.a aVar = (k1.a) mVar.f8860b[0];
            printWriter.print(str);
            printWriter.print("  #");
            printWriter.print(bVar.d.f8859a[0]);
            printWriter.print(": ");
            printWriter.println(aVar.toString());
            printWriter.print(str2);
            printWriter.print("mId=");
            printWriter.print(0);
            printWriter.print(" mArgs=");
            printWriter.println((Object) null);
            printWriter.print(str2);
            printWriter.print("mLoader=");
            printWriter.println((Object) null);
            StringBuilder sb = new StringBuilder();
            sb.append(str2);
            sb.append("  ");
            throw null;
        }
    }

    public /* synthetic */ f(int i6, Object obj, Object obj2, boolean z7) {
        this.f168a = i6;
        this.f169b = obj;
        this.f170c = obj2;
    }

    public /* synthetic */ f(Object obj, int i6, Object obj2) {
        this.f168a = i6;
        this.f170c = obj;
        this.f169b = obj2;
    }

    public /* synthetic */ f(Object obj) {
        this.f168a = 9;
        this.f170c = obj;
        this.f169b = new ArrayList();
    }

    @Override // com.tencent.bugly.proguard.ah
    public void a(boolean z7, String str) {
        if (z7) {
            al.c("[UserInfo] Successfully uploaded user info.", new Object[0]);
            long jCurrentTimeMillis = System.currentTimeMillis();
            for (UserInfoBean userInfoBean : (List) this.f169b) {
                userInfoBean.f = jCurrentTimeMillis;
                ((r) this.f170c).a(userInfoBean, true);
            }
        }
    }

    public f(u6.e eVar) {
        this.f168a = 27;
        this.f169b = new HashMap();
        this.f170c = eVar;
    }

    public f(a.g gVar, String str, a2.a aVar) {
        this.f168a = 11;
        this.f170c = gVar;
        this.f169b = str;
    }

    public f(SpkApplication spkApplication, Locale locale) {
        this.f168a = 20;
        this.f170c = locale;
        this.f169b = spkApplication.getSharedPreferences("lingver_preference", 0);
    }

    public f(androidx.lifecycle.w wVar, z0 z0Var) {
        this.f168a = 25;
        this.f169b = wVar;
        this.f170c = (k1.b) new a1.b(z0Var, k1.b.f7696e).n(k1.b.class);
    }

    public f(Locale locale) {
        this.f168a = 21;
        this.f169b = locale;
        this.f170c = DateFormatSymbols.getInstance(locale).getShortMonths();
        Calendar calendar = Calendar.getInstance(locale);
        n5.d.m(calendar.getMinimum(5), calendar.getMaximum(5));
    }

    @Override // com.youth.banner.listener.OnPageChangeListener
    public void onPageScrollStateChanged(int i6) {
    }

    public f(j0 j0Var) {
        this.f168a = 3;
        this.f169b = new CopyOnWriteArrayList();
        this.f170c = j0Var;
    }

    public f(int i6, c6.b bVar) {
        this.f168a = 26;
        this.f169b = bVar;
        this.f170c = new k2.d(i6, this);
    }

    public f(a0.f fVar, u6.e eVar, b1.d dVar) {
        this.f168a = 5;
        this.f169b = fVar;
        this.f170c = dVar;
    }

    public f(ArrayList arrayList, ArrayList arrayList2) {
        this.f168a = 16;
        int size = arrayList.size();
        this.f169b = new int[size];
        this.f170c = new float[size];
        for (int i6 = 0; i6 < size; i6++) {
            ((int[]) this.f169b)[i6] = ((Integer) arrayList.get(i6)).intValue();
            ((float[]) this.f170c)[i6] = ((Float) arrayList2.get(i6)).floatValue();
        }
    }

    public f(int i6, int i10) {
        this.f168a = 16;
        this.f169b = new int[]{i6, i10};
        this.f170c = new float[]{0.0f, 1.0f};
    }

    public f(int i6, int i10, int i11) {
        this.f168a = 16;
        this.f169b = new int[]{i6, i10, i11};
        this.f170c = new float[]{0.0f, 0.5f, 1.0f};
    }

    public f(EditText editText) {
        this.f168a = 15;
        this.f169b = editText;
        d1.h hVar = new d1.h(editText);
        this.f170c = hVar;
        editText.addTextChangedListener(hVar);
        if (d1.a.f5997b == null) {
            synchronized (d1.a.f5996a) {
                try {
                    if (d1.a.f5997b == null) {
                        d1.a aVar = new d1.a();
                        try {
                            d1.a.f5998c = Class.forName("android.text.DynamicLayout$ChangeWatcher", false, d1.a.class.getClassLoader());
                        } catch (Throwable unused) {
                        }
                        d1.a.f5997b = aVar;
                    }
                } finally {
                }
            }
        }
        editText.setEditableFactory(d1.a.f5997b);
    }

    public f(Animator animator) {
        this.f168a = 2;
        this.f169b = null;
        this.f170c = animator;
    }

    public f(ViewPager viewPager) {
        this.f168a = 6;
        this.f170c = viewPager;
        this.f169b = new Rect();
    }

    public f(int i6) {
        this.f168a = i6;
        switch (i6) {
            case 10:
                x4.b bVar = x4.b.d;
                this.f169b = new SparseIntArray();
                this.f170c = bVar;
                break;
            case 12:
                this.f169b = new Rect();
                this.f170c = new Rect();
                break;
        }
    }
}
