package k;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Build;
import android.os.Handler;
import android.os.Parcelable;
import android.util.Log;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.widget.e2;
import androidx.appcompat.widget.f2;
import androidx.appcompat.widget.i2;
import androidx.appcompat.widget.s1;
import com.p2elite.brtv2.R;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;
import n0.s0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class f extends t implements View.OnKeyListener, PopupWindow.OnDismissListener {

    /* renamed from: b, reason: collision with root package name */
    public final Context f7575b;

    /* renamed from: c, reason: collision with root package name */
    public final int f7576c;
    public final int d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f7577e;
    public final Handler f;

    /* renamed from: j, reason: collision with root package name */
    public final com.google.android.material.textfield.k f7581j;

    /* renamed from: k, reason: collision with root package name */
    public final j7.c f7582k;

    /* renamed from: n, reason: collision with root package name */
    public View f7585n;

    /* renamed from: o, reason: collision with root package name */
    public View f7586o;

    /* renamed from: p, reason: collision with root package name */
    public int f7587p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f7588q;

    /* renamed from: r, reason: collision with root package name */
    public boolean f7589r;

    /* renamed from: s, reason: collision with root package name */
    public int f7590s;

    /* renamed from: t, reason: collision with root package name */
    public int f7591t;

    /* renamed from: v, reason: collision with root package name */
    public boolean f7593v;

    /* renamed from: w, reason: collision with root package name */
    public x f7594w;

    /* renamed from: x, reason: collision with root package name */
    public ViewTreeObserver f7595x;

    /* renamed from: y, reason: collision with root package name */
    public u f7596y;

    /* renamed from: z, reason: collision with root package name */
    public boolean f7597z;

    /* renamed from: g, reason: collision with root package name */
    public final ArrayList f7578g = new ArrayList();

    /* renamed from: h, reason: collision with root package name */
    public final ArrayList f7579h = new ArrayList();

    /* renamed from: i, reason: collision with root package name */
    public final androidx.appcompat.widget.q f7580i = new androidx.appcompat.widget.q(4, this);

    /* renamed from: l, reason: collision with root package name */
    public int f7583l = 0;

    /* renamed from: m, reason: collision with root package name */
    public int f7584m = 0;

    /* renamed from: u, reason: collision with root package name */
    public boolean f7592u = false;

    public f(Context context, View view, int i6, boolean z7) {
        this.f7581j = new com.google.android.material.textfield.k(i, this);
        this.f7582k = new j7.c(i, this);
        this.f7575b = context;
        this.f7585n = view;
        this.d = i6;
        this.f7577e = z7;
        WeakHashMap weakHashMap = s0.f8353a;
        this.f7587p = view.getLayoutDirection() == 1 ? 0 : 1;
        Resources resources = context.getResources();
        this.f7576c = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R.dimen.abc_config_prefDialogWidth));
        this.f = new Handler();
    }

    @Override // k.c0
    public final void a() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        if (c()) {
            return;
        }
        ArrayList arrayList = this.f7578g;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            x((l) it.next());
        }
        arrayList.clear();
        View view = this.f7585n;
        this.f7586o = view;
        if (view != null) {
            boolean z7 = this.f7595x == null;
            ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
            this.f7595x = viewTreeObserver;
            if (z7) {
                viewTreeObserver.addOnGlobalLayoutListener(this.f7580i);
            }
            this.f7586o.addOnAttachStateChangeListener(this.f7581j);
        }
    }

    @Override // k.y
    public final void b(l lVar, boolean z7) {
        ArrayList arrayList = this.f7579h;
        int size = arrayList.size();
        int i6 = 0;
        while (true) {
            if (i6 >= size) {
                i6 = -1;
                break;
            } else if (lVar == ((e) arrayList.get(i6)).f7572b) {
                break;
            } else {
                i6++;
            }
        }
        if (i6 < 0) {
            return;
        }
        int i10 = i6 + 1;
        if (i10 < arrayList.size()) {
            ((e) arrayList.get(i10)).f7572b.c(false);
        }
        e eVar = (e) arrayList.remove(i6);
        eVar.f7572b.r(this);
        boolean z10 = this.f7597z;
        i2 i2Var = eVar.f7571a;
        if (z10) {
            if (Build.VERSION.SDK_INT >= 23) {
                e2.b(i2Var.f583y, null);
            }
            i2Var.f583y.setAnimationStyle(0);
        }
        i2Var.dismiss();
        int size2 = arrayList.size();
        if (size2 > 0) {
            this.f7587p = ((e) arrayList.get(size2 - 1)).f7573c;
        } else {
            View view = this.f7585n;
            WeakHashMap weakHashMap = s0.f8353a;
            this.f7587p = view.getLayoutDirection() == 1 ? 0 : 1;
        }
        if (size2 != 0) {
            if (z7) {
                ((e) arrayList.get(0)).f7572b.c(false);
                return;
            }
            return;
        }
        dismiss();
        x xVar = this.f7594w;
        if (xVar != null) {
            xVar.b(lVar, true);
        }
        ViewTreeObserver viewTreeObserver = this.f7595x;
        if (viewTreeObserver != null) {
            if (viewTreeObserver.isAlive()) {
                this.f7595x.removeGlobalOnLayoutListener(this.f7580i);
            }
            this.f7595x = null;
        }
        this.f7586o.removeOnAttachStateChangeListener(this.f7581j);
        this.f7596y.onDismiss();
    }

    @Override // k.c0
    public final boolean c() {
        ArrayList arrayList = this.f7579h;
        return arrayList.size() > 0 && ((e) arrayList.get(0)).f7571a.f583y.isShowing();
    }

    @Override // k.c0
    public final void dismiss() {
        ArrayList arrayList = this.f7579h;
        int size = arrayList.size();
        if (size > 0) {
            e[] eVarArr = (e[]) arrayList.toArray(new e[size]);
            for (int i6 = size - 1; i6 >= 0; i6--) {
                e eVar = eVarArr[i6];
                if (eVar.f7571a.f583y.isShowing()) {
                    eVar.f7571a.dismiss();
                }
            }
        }
    }

    @Override // k.y
    public final boolean e(e0 e0Var) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Iterator it = this.f7579h.iterator();
        while (it.hasNext()) {
            e eVar = (e) it.next();
            if (e0Var == eVar.f7572b) {
                eVar.f7571a.f563c.requestFocus();
                return true;
            }
        }
        if (!e0Var.hasVisibleItems()) {
            return false;
        }
        n(e0Var);
        x xVar = this.f7594w;
        if (xVar != null) {
            xVar.f(e0Var);
        }
        return true;
    }

    @Override // k.c0
    public final s1 h() {
        ArrayList arrayList = this.f7579h;
        if (arrayList.isEmpty()) {
            return null;
        }
        return ((e) ea.q.e(1, arrayList)).f7571a.f563c;
    }

    @Override // k.y
    public final void i(x xVar) {
        this.f7594w = xVar;
    }

    @Override // k.y
    public final void j(boolean z7) {
        Iterator it = this.f7579h.iterator();
        while (it.hasNext()) {
            ListAdapter adapter = ((e) it.next()).f7571a.f563c.getAdapter();
            if (adapter instanceof HeaderViewListAdapter) {
                adapter = ((HeaderViewListAdapter) adapter).getWrappedAdapter();
            }
            ((i) adapter).notifyDataSetChanged();
        }
    }

    @Override // k.y
    public final boolean l() {
        return false;
    }

    @Override // k.y
    public final Parcelable m() {
        return null;
    }

    @Override // k.t
    public final void n(l lVar) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        lVar.b(this, this.f7575b);
        if (c()) {
            x(lVar);
        } else {
            this.f7578g.add(lVar);
        }
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        e eVar;
        ArrayList arrayList = this.f7579h;
        int size = arrayList.size();
        int i6 = 0;
        while (true) {
            if (i6 >= size) {
                eVar = null;
                break;
            }
            eVar = (e) arrayList.get(i6);
            if (!eVar.f7571a.f583y.isShowing()) {
                break;
            } else {
                i6++;
            }
        }
        if (eVar != null) {
            eVar.f7572b.c(false);
        }
    }

    @Override // android.view.View.OnKeyListener
    public final boolean onKey(View view, int i6, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 1 || i6 != 82) {
            return false;
        }
        dismiss();
        return true;
    }

    @Override // k.t
    public final void p(View view) {
        if (this.f7585n != view) {
            this.f7585n = view;
            int i6 = this.f7583l;
            WeakHashMap weakHashMap = s0.f8353a;
            this.f7584m = Gravity.getAbsoluteGravity(i6, view.getLayoutDirection());
        }
    }

    @Override // k.t
    public final void q(boolean z7) {
        this.f7592u = z7;
    }

    @Override // k.t
    public final void r(int i6) {
        if (this.f7583l != i6) {
            this.f7583l = i6;
            View view = this.f7585n;
            WeakHashMap weakHashMap = s0.f8353a;
            this.f7584m = Gravity.getAbsoluteGravity(i6, view.getLayoutDirection());
        }
    }

    @Override // k.t
    public final void s(int i6) {
        this.f7588q = true;
        this.f7590s = i6;
    }

    @Override // k.t
    public final void t(PopupWindow.OnDismissListener onDismissListener) {
        this.f7596y = (u) onDismissListener;
    }

    @Override // k.t
    public final void u(boolean z7) {
        this.f7593v = z7;
    }

    @Override // k.t
    public final void v(int i6) {
        this.f7589r = true;
        this.f7591t = i6;
    }

    public final void x(l lVar) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        View childAt;
        e eVar;
        char c5;
        int i6;
        int i10;
        MenuItem item;
        i iVar;
        int headersCount;
        int i11;
        int firstVisiblePosition;
        Context context = this.f7575b;
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(context);
        i iVar2 = new i(lVar, layoutInflaterFrom, this.f7577e, R.layout.abc_cascading_menu_item_layout);
        if (!c() && this.f7592u) {
            iVar2.f7606c = true;
        } else if (c()) {
            iVar2.f7606c = t.w(lVar);
        }
        int iO = t.o(iVar2, context, this.f7576c);
        i2 i2Var = new i2(context, null, this.d, 0);
        PopupWindow popupWindow = i2Var.f583y;
        i2Var.C = this.f7582k;
        i2Var.f574p = this;
        popupWindow.setOnDismissListener(this);
        i2Var.f573o = this.f7585n;
        i2Var.f570l = this.f7584m;
        i2Var.f582x = true;
        popupWindow.setFocusable(true);
        popupWindow.setInputMethodMode(2);
        i2Var.q(iVar2);
        i2Var.r(iO);
        i2Var.f570l = this.f7584m;
        ArrayList arrayList = this.f7579h;
        if (arrayList.size() > 0) {
            eVar = (e) ea.q.e(1, arrayList);
            l lVar2 = eVar.f7572b;
            int size = lVar2.f.size();
            int i12 = 0;
            while (true) {
                if (i12 >= size) {
                    item = null;
                    break;
                }
                item = lVar2.getItem(i12);
                if (item.hasSubMenu() && lVar == item.getSubMenu()) {
                    break;
                } else {
                    i12++;
                }
            }
            if (item == null) {
                childAt = null;
            } else {
                s1 s1Var = eVar.f7571a.f563c;
                ListAdapter adapter = s1Var.getAdapter();
                if (adapter instanceof HeaderViewListAdapter) {
                    HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
                    headersCount = headerViewListAdapter.getHeadersCount();
                    iVar = (i) headerViewListAdapter.getWrappedAdapter();
                } else {
                    iVar = (i) adapter;
                    headersCount = 0;
                }
                int count = iVar.getCount();
                int i13 = 0;
                while (true) {
                    if (i13 >= count) {
                        i11 = -1;
                        i13 = -1;
                        break;
                    } else {
                        if (item == iVar.getItem(i13)) {
                            i11 = -1;
                            break;
                        }
                        i13++;
                    }
                }
                childAt = (i13 != i11 && (firstVisiblePosition = (i13 + headersCount) - s1Var.getFirstVisiblePosition()) >= 0 && firstVisiblePosition < s1Var.getChildCount()) ? s1Var.getChildAt(firstVisiblePosition) : null;
            }
        } else {
            childAt = null;
            eVar = null;
        }
        if (childAt != null) {
            if (Build.VERSION.SDK_INT <= 28) {
                Method method = i2.D;
                if (method != null) {
                    try {
                        method.invoke(popupWindow, Boolean.FALSE);
                    } catch (Exception unused) {
                        Log.i("MenuPopupWindow", "Could not invoke setTouchModal() on PopupWindow. Oh well.");
                    }
                }
            } else {
                f2.a(popupWindow, false);
            }
            int i14 = Build.VERSION.SDK_INT;
            if (i14 >= 23) {
                e2.a(popupWindow, null);
            }
            s1 s1Var2 = ((e) ea.q.e(1, arrayList)).f7571a.f563c;
            int[] iArr = new int[2];
            s1Var2.getLocationOnScreen(iArr);
            Rect rect = new Rect();
            this.f7586o.getWindowVisibleDisplayFrame(rect);
            int i15 = (this.f7587p != 1 ? iArr[0] - iO >= 0 : (s1Var2.getWidth() + iArr[0]) + iO > rect.right) ? 0 : 1;
            boolean z7 = i15 == 1;
            this.f7587p = i15;
            if (i14 >= 26) {
                i2Var.f573o = childAt;
                i10 = 0;
                i6 = 0;
            } else {
                int[] iArr2 = new int[2];
                this.f7585n.getLocationOnScreen(iArr2);
                int[] iArr3 = new int[2];
                childAt.getLocationOnScreen(iArr3);
                if ((this.f7584m & 7) == 5) {
                    c5 = 0;
                    iArr2[0] = this.f7585n.getWidth() + iArr2[0];
                    iArr3[0] = childAt.getWidth() + iArr3[0];
                } else {
                    c5 = 0;
                }
                i6 = iArr3[c5] - iArr2[c5];
                i10 = iArr3[1] - iArr2[1];
            }
            i2Var.f = (this.f7584m & 5) == 5 ? z7 ? i6 + iO : i6 - childAt.getWidth() : z7 ? i6 + childAt.getWidth() : i6 - iO;
            i2Var.f569k = true;
            i2Var.f568j = true;
            i2Var.j(i10);
        } else {
            if (this.f7588q) {
                i2Var.f = this.f7590s;
            }
            if (this.f7589r) {
                i2Var.j(this.f7591t);
            }
            Rect rect2 = this.f7666a;
            i2Var.f581w = rect2 != null ? new Rect(rect2) : null;
        }
        arrayList.add(new e(i2Var, lVar, this.f7587p));
        i2Var.a();
        s1 s1Var3 = i2Var.f563c;
        s1Var3.setOnKeyListener(this);
        if (eVar == null && this.f7593v && lVar.f7619m != null) {
            FrameLayout frameLayout = (FrameLayout) layoutInflaterFrom.inflate(R.layout.abc_popup_menu_header_item_layout, (ViewGroup) s1Var3, false);
            TextView textView = (TextView) frameLayout.findViewById(android.R.id.title);
            frameLayout.setEnabled(false);
            textView.setText(lVar.f7619m);
            s1Var3.addHeaderView(frameLayout, null, false);
            i2Var.a();
        }
    }

    @Override // k.y
    public final void g(Parcelable parcelable) {
    }
}
