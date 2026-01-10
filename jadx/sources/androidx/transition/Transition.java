package androidx.transition;

import a0.f;
import a6.a;
import a7.d;
import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.InflateException;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowId;
import android.view.animation.AnimationUtils;
import android.widget.ListView;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.lzy.okgo.cookie.SerializableCookie;
import e0.b;
import ea.q;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.StringTokenizer;
import java.util.WeakHashMap;
import n0.g0;
import n0.s0;
import p.e;
import p.i;
import y1.e0;
import y1.h0;
import y1.o0;
import y1.v;
import y1.w;
import y1.x;
import y1.y;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class Transition implements Cloneable {

    /* renamed from: u, reason: collision with root package name */
    public static final int[] f3011u = {2, 1, 3, 4};

    /* renamed from: v, reason: collision with root package name */
    public static final w f3012v = new w();

    /* renamed from: w, reason: collision with root package name */
    public static final ThreadLocal f3013w = new ThreadLocal();

    /* renamed from: a, reason: collision with root package name */
    public final String f3014a;

    /* renamed from: b, reason: collision with root package name */
    public long f3015b;

    /* renamed from: c, reason: collision with root package name */
    public long f3016c;
    public TimeInterpolator d;

    /* renamed from: e, reason: collision with root package name */
    public final ArrayList f3017e;
    public final ArrayList f;

    /* renamed from: g, reason: collision with root package name */
    public f f3018g;

    /* renamed from: h, reason: collision with root package name */
    public f f3019h;

    /* renamed from: i, reason: collision with root package name */
    public TransitionSet f3020i;

    /* renamed from: j, reason: collision with root package name */
    public final int[] f3021j;

    /* renamed from: k, reason: collision with root package name */
    public ArrayList f3022k;

    /* renamed from: l, reason: collision with root package name */
    public ArrayList f3023l;

    /* renamed from: m, reason: collision with root package name */
    public final ArrayList f3024m;

    /* renamed from: n, reason: collision with root package name */
    public int f3025n;

    /* renamed from: o, reason: collision with root package name */
    public boolean f3026o;

    /* renamed from: p, reason: collision with root package name */
    public boolean f3027p;

    /* renamed from: q, reason: collision with root package name */
    public ArrayList f3028q;

    /* renamed from: r, reason: collision with root package name */
    public ArrayList f3029r;

    /* renamed from: s, reason: collision with root package name */
    public v f3030s;

    /* renamed from: t, reason: collision with root package name */
    public w f3031t;

    public Transition() {
        this.f3014a = getClass().getName();
        this.f3015b = -1L;
        this.f3016c = -1L;
        this.d = null;
        this.f3017e = new ArrayList();
        this.f = new ArrayList();
        this.f3018g = new f(11);
        this.f3019h = new f(11);
        this.f3020i = null;
        this.f3021j = f3011u;
        this.f3024m = new ArrayList();
        this.f3025n = 0;
        this.f3026o = false;
        this.f3027p = false;
        this.f3028q = null;
        this.f3029r = new ArrayList();
        this.f3031t = f3012v;
    }

    public static void b(f fVar, View view, e0 e0Var) {
        ((e) fVar.f38b).put(view, e0Var);
        int id = view.getId();
        if (id >= 0) {
            SparseArray sparseArray = (SparseArray) fVar.f39c;
            if (sparseArray.indexOfKey(id) >= 0) {
                sparseArray.put(id, null);
            } else {
                sparseArray.put(id, view);
            }
        }
        WeakHashMap weakHashMap = s0.f8353a;
        String strK = g0.k(view);
        if (strK != null) {
            e eVar = (e) fVar.f40e;
            if (eVar.containsKey(strK)) {
                eVar.put(strK, null);
            } else {
                eVar.put(strK, view);
            }
        }
        if (view.getParent() instanceof ListView) {
            ListView listView = (ListView) view.getParent();
            if (listView.getAdapter().hasStableIds()) {
                long itemIdAtPosition = listView.getItemIdAtPosition(listView.getPositionForView(view));
                i iVar = (i) fVar.d;
                if (iVar.f(itemIdAtPosition) < 0) {
                    view.setHasTransientState(true);
                    iVar.h(itemIdAtPosition, view);
                    return;
                }
                View view2 = (View) iVar.d(itemIdAtPosition);
                if (view2 != null) {
                    view2.setHasTransientState(false);
                    iVar.h(itemIdAtPosition, null);
                }
            }
        }
    }

    public static e n() {
        ThreadLocal threadLocal = f3013w;
        e eVar = (e) threadLocal.get();
        if (eVar != null) {
            return eVar;
        }
        e eVar2 = new e(0);
        threadLocal.set(eVar2);
        return eVar2;
    }

    public static boolean s(e0 e0Var, e0 e0Var2, String str) {
        Object obj = e0Var.f11259a.get(str);
        Object obj2 = e0Var2.f11259a.get(str);
        if (obj == null && obj2 == null) {
            return false;
        }
        if (obj == null || obj2 == null) {
            return true;
        }
        return !obj.equals(obj2);
    }

    public void A(w wVar) {
        if (wVar == null) {
            this.f3031t = f3012v;
        } else {
            this.f3031t = wVar;
        }
    }

    public void B(v vVar) {
        this.f3030s = vVar;
    }

    public void C(long j10) {
        this.f3015b = j10;
    }

    public final void D() {
        if (this.f3025n == 0) {
            ArrayList arrayList = this.f3028q;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList arrayList2 = (ArrayList) this.f3028q.clone();
                int size = arrayList2.size();
                for (int i6 = 0; i6 < size; i6++) {
                    ((y) arrayList2.get(i6)).a();
                }
            }
            this.f3027p = false;
        }
        this.f3025n++;
    }

    public String E(String str) {
        StringBuilder sbM = q.m(str);
        sbM.append(getClass().getSimpleName());
        sbM.append("@");
        sbM.append(Integer.toHexString(hashCode()));
        sbM.append(": ");
        String string = sbM.toString();
        if (this.f3016c != -1) {
            string = a.e.s(a.e.w(string, "dur("), this.f3016c, ") ");
        }
        if (this.f3015b != -1) {
            string = a.e.s(a.e.w(string, "dly("), this.f3015b, ") ");
        }
        if (this.d != null) {
            StringBuilder sbW = a.e.w(string, "interp(");
            sbW.append(this.d);
            sbW.append(") ");
            string = sbW.toString();
        }
        ArrayList arrayList = this.f3017e;
        int size = arrayList.size();
        ArrayList arrayList2 = this.f;
        if (size <= 0 && arrayList2.size() <= 0) {
            return string;
        }
        String strH = q.h(string, "tgts(");
        if (arrayList.size() > 0) {
            for (int i6 = 0; i6 < arrayList.size(); i6++) {
                if (i6 > 0) {
                    strH = q.h(strH, ", ");
                }
                StringBuilder sbM2 = q.m(strH);
                sbM2.append(arrayList.get(i6));
                strH = sbM2.toString();
            }
        }
        if (arrayList2.size() > 0) {
            for (int i10 = 0; i10 < arrayList2.size(); i10++) {
                if (i10 > 0) {
                    strH = q.h(strH, ", ");
                }
                StringBuilder sbM3 = q.m(strH);
                sbM3.append(arrayList2.get(i10));
                strH = sbM3.toString();
            }
        }
        return q.h(strH, ")");
    }

    public void a(y yVar) {
        if (this.f3028q == null) {
            this.f3028q = new ArrayList();
        }
        this.f3028q.add(yVar);
    }

    public abstract void c(e0 e0Var);

    public final void d(View view, boolean z7) {
        if (view == null) {
            return;
        }
        view.getId();
        if (view.getParent() instanceof ViewGroup) {
            e0 e0Var = new e0(view);
            if (z7) {
                f(e0Var);
            } else {
                c(e0Var);
            }
            e0Var.f11261c.add(this);
            e(e0Var);
            if (z7) {
                b(this.f3018g, view, e0Var);
            } else {
                b(this.f3019h, view, e0Var);
            }
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i6 = 0; i6 < viewGroup.getChildCount(); i6++) {
                d(viewGroup.getChildAt(i6), z7);
            }
        }
    }

    public void e(e0 e0Var) {
        if (this.f3030s != null) {
            HashMap map = e0Var.f11259a;
            if (map.isEmpty()) {
                return;
            }
            this.f3030s.getClass();
            String[] strArr = v.f11330j;
            for (int i6 = 0; i6 < 2; i6++) {
                if (!map.containsKey(strArr[i6])) {
                    this.f3030s.getClass();
                    Integer numValueOf = (Integer) map.get("android:visibility:visibility");
                    View view = e0Var.f11260b;
                    if (numValueOf == null) {
                        numValueOf = Integer.valueOf(view.getVisibility());
                    }
                    map.put("android:visibilityPropagation:visibility", numValueOf);
                    int[] iArr = {iRound, 0};
                    view.getLocationOnScreen(iArr);
                    int iRound = Math.round(view.getTranslationX()) + iArr[0];
                    iArr[0] = (view.getWidth() / 2) + iRound;
                    int iRound2 = Math.round(view.getTranslationY()) + iArr[1];
                    iArr[1] = iRound2;
                    iArr[1] = (view.getHeight() / 2) + iRound2;
                    map.put("android:visibilityPropagation:center", iArr);
                    return;
                }
            }
        }
    }

    public abstract void f(e0 e0Var);

    public final void g(ViewGroup viewGroup, boolean z7) {
        h(z7);
        ArrayList arrayList = this.f3017e;
        int size = arrayList.size();
        ArrayList arrayList2 = this.f;
        if (size <= 0 && arrayList2.size() <= 0) {
            d(viewGroup, z7);
            return;
        }
        for (int i6 = 0; i6 < arrayList.size(); i6++) {
            View viewFindViewById = viewGroup.findViewById(((Integer) arrayList.get(i6)).intValue());
            if (viewFindViewById != null) {
                e0 e0Var = new e0(viewFindViewById);
                if (z7) {
                    f(e0Var);
                } else {
                    c(e0Var);
                }
                e0Var.f11261c.add(this);
                e(e0Var);
                if (z7) {
                    b(this.f3018g, viewFindViewById, e0Var);
                } else {
                    b(this.f3019h, viewFindViewById, e0Var);
                }
            }
        }
        for (int i10 = 0; i10 < arrayList2.size(); i10++) {
            View view = (View) arrayList2.get(i10);
            e0 e0Var2 = new e0(view);
            if (z7) {
                f(e0Var2);
            } else {
                c(e0Var2);
            }
            e0Var2.f11261c.add(this);
            e(e0Var2);
            if (z7) {
                b(this.f3018g, view, e0Var2);
            } else {
                b(this.f3019h, view, e0Var2);
            }
        }
    }

    public final void h(boolean z7) {
        if (z7) {
            ((e) this.f3018g.f38b).clear();
            ((SparseArray) this.f3018g.f39c).clear();
            ((i) this.f3018g.d).b();
        } else {
            ((e) this.f3019h.f38b).clear();
            ((SparseArray) this.f3019h.f39c).clear();
            ((i) this.f3019h.d).b();
        }
    }

    @Override // 
    /* renamed from: i, reason: merged with bridge method [inline-methods] */
    public Transition clone() {
        try {
            Transition transition = (Transition) super.clone();
            transition.f3029r = new ArrayList();
            transition.f3018g = new f(11);
            transition.f3019h = new f(11);
            transition.f3022k = null;
            transition.f3023l = null;
            return transition;
        } catch (CloneNotSupportedException unused) {
            return null;
        }
    }

    public Animator j(ViewGroup viewGroup, e0 e0Var, e0 e0Var2) {
        return null;
    }

    public void k(ViewGroup viewGroup, f fVar, f fVar2, ArrayList arrayList, ArrayList arrayList2) {
        Animator animatorJ;
        int i6;
        int i10;
        View view;
        e0 e0Var;
        Animator animator;
        e eVarN = n();
        SparseIntArray sparseIntArray = new SparseIntArray();
        int size = arrayList.size();
        long jMin = Long.MAX_VALUE;
        int i11 = 0;
        while (i11 < size) {
            e0 e0Var2 = (e0) arrayList.get(i11);
            e0 e0Var3 = (e0) arrayList2.get(i11);
            if (e0Var2 != null && !e0Var2.f11261c.contains(this)) {
                e0Var2 = null;
            }
            if (e0Var3 != null && !e0Var3.f11261c.contains(this)) {
                e0Var3 = null;
            }
            if (!(e0Var2 == null && e0Var3 == null) && ((e0Var2 == null || e0Var3 == null || q(e0Var2, e0Var3)) && (animatorJ = j(viewGroup, e0Var2, e0Var3)) != null)) {
                String str = this.f3014a;
                if (e0Var3 != null) {
                    String[] strArrO = o();
                    view = e0Var3.f11260b;
                    i6 = size;
                    if (strArrO != null && strArrO.length > 0) {
                        e0Var = new e0(view);
                        e0 e0Var4 = (e0) ((e) fVar2.f38b).get(view);
                        if (e0Var4 != null) {
                            animator = animatorJ;
                            int i12 = 0;
                            while (i12 < strArrO.length) {
                                HashMap map = e0Var.f11259a;
                                int i13 = i11;
                                String str2 = strArrO[i12];
                                map.put(str2, e0Var4.f11259a.get(str2));
                                i12++;
                                i11 = i13;
                                strArrO = strArrO;
                            }
                            i10 = i11;
                        } else {
                            i10 = i11;
                            animator = animatorJ;
                        }
                        int i14 = eVarN.f8858c;
                        int i15 = 0;
                        while (true) {
                            if (i15 >= i14) {
                                break;
                            }
                            x xVar = (x) eVarN.get((Animator) eVarN.f(i15));
                            if (xVar.f11344c != null && xVar.f11342a == view && xVar.f11343b.equals(str) && xVar.f11344c.equals(e0Var)) {
                                animator = null;
                                break;
                            }
                            i15++;
                        }
                    } else {
                        i10 = i11;
                        animator = animatorJ;
                        e0Var = null;
                    }
                    animatorJ = animator;
                } else {
                    i6 = size;
                    i10 = i11;
                    view = e0Var2.f11260b;
                    e0Var = null;
                }
                if (animatorJ != null) {
                    v vVar = this.f3030s;
                    if (vVar != null) {
                        long jE = vVar.e(viewGroup, this, e0Var2, e0Var3);
                        sparseIntArray.put(this.f3029r.size(), (int) jE);
                        jMin = Math.min(jE, jMin);
                    }
                    h0 h0Var = y1.g0.f11276a;
                    o0 o0Var = new o0(viewGroup);
                    x xVar2 = new x();
                    xVar2.f11342a = view;
                    xVar2.f11343b = str;
                    xVar2.f11344c = e0Var;
                    xVar2.d = o0Var;
                    xVar2.f11345e = this;
                    eVarN.put(animatorJ, xVar2);
                    this.f3029r.add(animatorJ);
                }
            } else {
                i6 = size;
                i10 = i11;
            }
            i11 = i10 + 1;
            size = i6;
        }
        if (sparseIntArray.size() != 0) {
            for (int i16 = 0; i16 < sparseIntArray.size(); i16++) {
                Animator animator2 = (Animator) this.f3029r.get(sparseIntArray.keyAt(i16));
                animator2.setStartDelay(animator2.getStartDelay() + (sparseIntArray.valueAt(i16) - jMin));
            }
        }
    }

    public final void l() {
        int i6 = this.f3025n - 1;
        this.f3025n = i6;
        if (i6 == 0) {
            ArrayList arrayList = this.f3028q;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList arrayList2 = (ArrayList) this.f3028q.clone();
                int size = arrayList2.size();
                for (int i10 = 0; i10 < size; i10++) {
                    ((y) arrayList2.get(i10)).e(this);
                }
            }
            for (int i11 = 0; i11 < ((i) this.f3018g.d).j(); i11++) {
                View view = (View) ((i) this.f3018g.d).k(i11);
                if (view != null) {
                    WeakHashMap weakHashMap = s0.f8353a;
                    view.setHasTransientState(false);
                }
            }
            for (int i12 = 0; i12 < ((i) this.f3019h.d).j(); i12++) {
                View view2 = (View) ((i) this.f3019h.d).k(i12);
                if (view2 != null) {
                    WeakHashMap weakHashMap2 = s0.f8353a;
                    view2.setHasTransientState(false);
                }
            }
            this.f3027p = true;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x002d, code lost:
    
        if (r3 < 0) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x002f, code lost:
    
        if (r7 == false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0031, code lost:
    
        r6 = r5.f3023l;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0034, code lost:
    
        r6 = r5.f3022k;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x003d, code lost:
    
        return (y1.e0) r6.get(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:?, code lost:
    
        return null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final y1.e0 m(android.view.View r6, boolean r7) {
        /*
            r5 = this;
            androidx.transition.TransitionSet r0 = r5.f3020i
            if (r0 == 0) goto L9
            y1.e0 r6 = r0.m(r6, r7)
            return r6
        L9:
            if (r7 == 0) goto Le
            java.util.ArrayList r0 = r5.f3022k
            goto L10
        Le:
            java.util.ArrayList r0 = r5.f3023l
        L10:
            r1 = 0
            if (r0 != 0) goto L14
            return r1
        L14:
            int r2 = r0.size()
            r3 = 0
        L19:
            if (r3 >= r2) goto L2c
            java.lang.Object r4 = r0.get(r3)
            y1.e0 r4 = (y1.e0) r4
            if (r4 != 0) goto L24
            return r1
        L24:
            android.view.View r4 = r4.f11260b
            if (r4 != r6) goto L29
            goto L2d
        L29:
            int r3 = r3 + 1
            goto L19
        L2c:
            r3 = -1
        L2d:
            if (r3 < 0) goto L3d
            if (r7 == 0) goto L34
            java.util.ArrayList r6 = r5.f3023l
            goto L36
        L34:
            java.util.ArrayList r6 = r5.f3022k
        L36:
            java.lang.Object r6 = r6.get(r3)
            r1 = r6
            y1.e0 r1 = (y1.e0) r1
        L3d:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.Transition.m(android.view.View, boolean):y1.e0");
    }

    public String[] o() {
        return null;
    }

    public final e0 p(View view, boolean z7) {
        TransitionSet transitionSet = this.f3020i;
        if (transitionSet != null) {
            return transitionSet.p(view, z7);
        }
        return (e0) ((e) (z7 ? this.f3018g : this.f3019h).f38b).get(view);
    }

    public boolean q(e0 e0Var, e0 e0Var2) {
        if (e0Var == null || e0Var2 == null) {
            return false;
        }
        String[] strArrO = o();
        if (strArrO == null) {
            Iterator it = e0Var.f11259a.keySet().iterator();
            while (it.hasNext()) {
                if (s(e0Var, e0Var2, (String) it.next())) {
                }
            }
            return false;
        }
        for (String str : strArrO) {
            if (!s(e0Var, e0Var2, str)) {
            }
        }
        return false;
        return true;
    }

    public final boolean r(View view) {
        int id = view.getId();
        ArrayList arrayList = this.f3017e;
        int size = arrayList.size();
        ArrayList arrayList2 = this.f;
        return (size == 0 && arrayList2.size() == 0) || arrayList.contains(Integer.valueOf(id)) || arrayList2.contains(view);
    }

    public void t(ViewGroup viewGroup) {
        if (this.f3027p) {
            return;
        }
        e eVarN = n();
        int i6 = eVarN.f8858c;
        h0 h0Var = y1.g0.f11276a;
        WindowId windowId = viewGroup.getWindowId();
        for (int i10 = i6 - 1; i10 >= 0; i10--) {
            x xVar = (x) eVarN.j(i10);
            if (xVar.f11342a != null && xVar.d.f11318a.equals(windowId)) {
                ((Animator) eVarN.f(i10)).pause();
            }
        }
        ArrayList arrayList = this.f3028q;
        if (arrayList != null && arrayList.size() > 0) {
            ArrayList arrayList2 = (ArrayList) this.f3028q.clone();
            int size = arrayList2.size();
            for (int i11 = 0; i11 < size; i11++) {
                ((y) arrayList2.get(i11)).b();
            }
        }
        this.f3026o = true;
    }

    public final String toString() {
        return E("");
    }

    public void u(y yVar) {
        ArrayList arrayList = this.f3028q;
        if (arrayList == null) {
            return;
        }
        arrayList.remove(yVar);
        if (this.f3028q.size() == 0) {
            this.f3028q = null;
        }
    }

    public void v(View view) {
        if (this.f3026o) {
            if (!this.f3027p) {
                e eVarN = n();
                int i6 = eVarN.f8858c;
                h0 h0Var = y1.g0.f11276a;
                WindowId windowId = view.getWindowId();
                for (int i10 = i6 - 1; i10 >= 0; i10--) {
                    x xVar = (x) eVarN.j(i10);
                    if (xVar.f11342a != null && xVar.d.f11318a.equals(windowId)) {
                        ((Animator) eVarN.f(i10)).resume();
                    }
                }
                ArrayList arrayList = this.f3028q;
                if (arrayList != null && arrayList.size() > 0) {
                    ArrayList arrayList2 = (ArrayList) this.f3028q.clone();
                    int size = arrayList2.size();
                    for (int i11 = 0; i11 < size; i11++) {
                        ((y) arrayList2.get(i11)).c();
                    }
                }
            }
            this.f3026o = false;
        }
    }

    public void w() {
        D();
        e eVarN = n();
        Iterator it = this.f3029r.iterator();
        while (it.hasNext()) {
            Animator animator = (Animator) it.next();
            if (eVarN.containsKey(animator)) {
                D();
                if (animator != null) {
                    animator.addListener(new d(this, eVarN));
                    long j10 = this.f3016c;
                    if (j10 >= 0) {
                        animator.setDuration(j10);
                    }
                    long j11 = this.f3015b;
                    if (j11 >= 0) {
                        animator.setStartDelay(animator.getStartDelay() + j11);
                    }
                    TimeInterpolator timeInterpolator = this.d;
                    if (timeInterpolator != null) {
                        animator.setInterpolator(timeInterpolator);
                    }
                    animator.addListener(new a(8, this));
                    animator.start();
                }
            }
        }
        this.f3029r.clear();
        l();
    }

    public void x(long j10) {
        this.f3016c = j10;
    }

    public void z(TimeInterpolator timeInterpolator) {
        this.d = timeInterpolator;
    }

    @SuppressLint({"RestrictedApi"})
    public Transition(Context context, AttributeSet attributeSet) {
        this.f3014a = getClass().getName();
        this.f3015b = -1L;
        this.f3016c = -1L;
        this.d = null;
        this.f3017e = new ArrayList();
        this.f = new ArrayList();
        this.f3018g = new f(11);
        this.f3019h = new f(11);
        this.f3020i = null;
        int[] iArr = f3011u;
        this.f3021j = iArr;
        this.f3024m = new ArrayList();
        this.f3025n = 0;
        this.f3026o = false;
        this.f3027p = false;
        this.f3028q = null;
        this.f3029r = new ArrayList();
        this.f3031t = f3012v;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, v.f11323a);
        XmlResourceParser xmlResourceParser = (XmlResourceParser) attributeSet;
        long jC = b.c(typedArrayObtainStyledAttributes, xmlResourceParser, "duration", 1, -1);
        if (jC >= 0) {
            x(jC);
        }
        long j10 = b.e(xmlResourceParser, "startDelay") ? typedArrayObtainStyledAttributes.getInt(2, -1) : -1;
        if (j10 > 0) {
            C(j10);
        }
        int resourceId = !b.e(xmlResourceParser, "interpolator") ? 0 : typedArrayObtainStyledAttributes.getResourceId(0, 0);
        if (resourceId > 0) {
            z(AnimationUtils.loadInterpolator(context, resourceId));
        }
        String strD = b.d(typedArrayObtainStyledAttributes, xmlResourceParser, "matchOrder", 3);
        if (strD != null) {
            StringTokenizer stringTokenizer = new StringTokenizer(strD, ",");
            int[] iArr2 = new int[stringTokenizer.countTokens()];
            int i6 = 0;
            while (stringTokenizer.hasMoreTokens()) {
                String strTrim = stringTokenizer.nextToken().trim();
                if (TtmlNode.ATTR_ID.equalsIgnoreCase(strTrim)) {
                    iArr2[i6] = 3;
                } else if ("instance".equalsIgnoreCase(strTrim)) {
                    iArr2[i6] = 1;
                } else if (SerializableCookie.NAME.equalsIgnoreCase(strTrim)) {
                    iArr2[i6] = 2;
                } else if ("itemId".equalsIgnoreCase(strTrim)) {
                    iArr2[i6] = 4;
                } else if (strTrim.isEmpty()) {
                    int[] iArr3 = new int[iArr2.length - 1];
                    System.arraycopy(iArr2, 0, iArr3, 0, i6);
                    i6--;
                    iArr2 = iArr3;
                } else {
                    throw new InflateException(a.e.r("Unknown match type in matchOrder: '", strTrim, "'"));
                }
                i6++;
            }
            if (iArr2.length == 0) {
                this.f3021j = iArr;
            } else {
                for (int i10 = 0; i10 < iArr2.length; i10++) {
                    int i11 = iArr2[i10];
                    if (i11 < 1 || i11 > 4) {
                        throw new IllegalArgumentException("matches contains invalid value");
                    }
                    for (int i12 = 0; i12 < i10; i12++) {
                        if (iArr2[i12] == i11) {
                            throw new IllegalArgumentException("matches contains a duplicate value");
                        }
                    }
                }
                this.f3021j = (int[]) iArr2.clone();
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public void y(v vVar) {
    }
}
