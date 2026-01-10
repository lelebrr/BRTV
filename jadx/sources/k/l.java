package k;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewConfiguration;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import n0.u0;
import n0.w0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class l implements Menu {

    /* renamed from: y, reason: collision with root package name */
    public static final int[] f7608y = {1, 4, 5, 3, 2, 0};

    /* renamed from: a, reason: collision with root package name */
    public final Context f7609a;

    /* renamed from: b, reason: collision with root package name */
    public final Resources f7610b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f7611c;
    public final boolean d;

    /* renamed from: e, reason: collision with root package name */
    public j f7612e;
    public final ArrayList f;

    /* renamed from: g, reason: collision with root package name */
    public final ArrayList f7613g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f7614h;

    /* renamed from: i, reason: collision with root package name */
    public final ArrayList f7615i;

    /* renamed from: j, reason: collision with root package name */
    public final ArrayList f7616j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f7617k;

    /* renamed from: m, reason: collision with root package name */
    public CharSequence f7619m;

    /* renamed from: n, reason: collision with root package name */
    public Drawable f7620n;

    /* renamed from: o, reason: collision with root package name */
    public View f7621o;

    /* renamed from: v, reason: collision with root package name */
    public n f7628v;

    /* renamed from: x, reason: collision with root package name */
    public boolean f7630x;

    /* renamed from: l, reason: collision with root package name */
    public int f7618l = 0;

    /* renamed from: p, reason: collision with root package name */
    public boolean f7622p = false;

    /* renamed from: q, reason: collision with root package name */
    public boolean f7623q = false;

    /* renamed from: r, reason: collision with root package name */
    public boolean f7624r = false;

    /* renamed from: s, reason: collision with root package name */
    public boolean f7625s = false;

    /* renamed from: t, reason: collision with root package name */
    public final ArrayList f7626t = new ArrayList();

    /* renamed from: u, reason: collision with root package name */
    public final CopyOnWriteArrayList f7627u = new CopyOnWriteArrayList();

    /* renamed from: w, reason: collision with root package name */
    public boolean f7629w = false;

    public l(Context context) {
        boolean zB;
        boolean z7 = false;
        this.f7609a = context;
        Resources resources = context.getResources();
        this.f7610b = resources;
        this.f = new ArrayList();
        this.f7613g = new ArrayList();
        this.f7614h = true;
        this.f7615i = new ArrayList();
        this.f7616j = new ArrayList();
        this.f7617k = true;
        if (resources.getConfiguration().keyboard != 1) {
            ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
            Method method = w0.f8362a;
            if (Build.VERSION.SDK_INT >= 28) {
                zB = u0.b(viewConfiguration);
            } else {
                Resources resources2 = context.getResources();
                int identifier = resources2.getIdentifier("config_showMenuShortcutsWhenKeyboardPresent", "bool", "android");
                zB = identifier != 0 && resources2.getBoolean(identifier);
            }
            if (zB) {
                z7 = true;
            }
        }
        this.d = z7;
    }

    public n a(int i6, int i10, int i11, CharSequence charSequence) {
        int i12;
        int i13 = ((-65536) & i11) >> 16;
        if (i13 < 0 || i13 >= 6) {
            throw new IllegalArgumentException("order does not contain a valid category.");
        }
        int i14 = (f7608y[i13] << 16) | (65535 & i11);
        n nVar = new n(this, i6, i10, i11, i14, charSequence, this.f7618l);
        ArrayList arrayList = this.f;
        int size = arrayList.size() - 1;
        while (true) {
            if (size < 0) {
                i12 = 0;
                break;
            }
            if (((n) arrayList.get(size)).d <= i14) {
                i12 = size + 1;
                break;
            }
            size--;
        }
        arrayList.add(i12, nVar);
        p(true);
        return nVar;
    }

    @Override // android.view.Menu
    public final MenuItem add(CharSequence charSequence) {
        return a(0, 0, 0, charSequence);
    }

    @Override // android.view.Menu
    public final int addIntentOptions(int i6, int i10, int i11, ComponentName componentName, Intent[] intentArr, Intent intent, int i12, MenuItem[] menuItemArr) {
        int i13;
        PackageManager packageManager = this.f7609a.getPackageManager();
        List<ResolveInfo> listQueryIntentActivityOptions = packageManager.queryIntentActivityOptions(componentName, intentArr, intent, 0);
        int size = listQueryIntentActivityOptions != null ? listQueryIntentActivityOptions.size() : 0;
        if ((i12 & 1) == 0) {
            removeGroup(i6);
        }
        for (int i14 = 0; i14 < size; i14++) {
            ResolveInfo resolveInfo = listQueryIntentActivityOptions.get(i14);
            int i15 = resolveInfo.specificIndex;
            Intent intent2 = new Intent(i15 < 0 ? intent : intentArr[i15]);
            ActivityInfo activityInfo = resolveInfo.activityInfo;
            intent2.setComponent(new ComponentName(activityInfo.applicationInfo.packageName, activityInfo.name));
            n nVarA = a(i6, i10, i11, resolveInfo.loadLabel(packageManager));
            nVarA.setIcon(resolveInfo.loadIcon(packageManager));
            nVarA.f7638g = intent2;
            if (menuItemArr != null && (i13 = resolveInfo.specificIndex) >= 0) {
                menuItemArr[i13] = nVarA;
            }
        }
        return size;
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(CharSequence charSequence) {
        return addSubMenu(0, 0, 0, charSequence);
    }

    public final void b(y yVar, Context context) {
        this.f7627u.add(new WeakReference(yVar));
        yVar.k(context, this);
        this.f7617k = true;
    }

    public final void c(boolean z7) {
        if (this.f7625s) {
            return;
        }
        this.f7625s = true;
        CopyOnWriteArrayList copyOnWriteArrayList = this.f7627u;
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            WeakReference weakReference = (WeakReference) it.next();
            y yVar = (y) weakReference.get();
            if (yVar == null) {
                copyOnWriteArrayList.remove(weakReference);
            } else {
                yVar.b(this, z7);
            }
        }
        this.f7625s = false;
    }

    @Override // android.view.Menu
    public final void clear() {
        n nVar = this.f7628v;
        if (nVar != null) {
            d(nVar);
        }
        this.f.clear();
        p(true);
    }

    public final void clearHeader() {
        this.f7620n = null;
        this.f7619m = null;
        this.f7621o = null;
        p(false);
    }

    @Override // android.view.Menu
    public final void close() {
        c(true);
    }

    public boolean d(n nVar) {
        CopyOnWriteArrayList copyOnWriteArrayList = this.f7627u;
        boolean zF = false;
        if (!copyOnWriteArrayList.isEmpty() && this.f7628v == nVar) {
            y();
            Iterator it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                WeakReference weakReference = (WeakReference) it.next();
                y yVar = (y) weakReference.get();
                if (yVar == null) {
                    copyOnWriteArrayList.remove(weakReference);
                } else {
                    zF = yVar.f(nVar);
                    if (zF) {
                        break;
                    }
                }
            }
            x();
            if (zF) {
                this.f7628v = null;
            }
        }
        return zF;
    }

    public boolean e(l lVar, MenuItem menuItem) {
        j jVar = this.f7612e;
        return jVar != null && jVar.j(lVar, menuItem);
    }

    public boolean f(n nVar) {
        CopyOnWriteArrayList copyOnWriteArrayList = this.f7627u;
        boolean zD = false;
        if (copyOnWriteArrayList.isEmpty()) {
            return false;
        }
        y();
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            WeakReference weakReference = (WeakReference) it.next();
            y yVar = (y) weakReference.get();
            if (yVar == null) {
                copyOnWriteArrayList.remove(weakReference);
            } else {
                zD = yVar.d(nVar);
                if (zD) {
                    break;
                }
            }
        }
        x();
        if (zD) {
            this.f7628v = nVar;
        }
        return zD;
    }

    @Override // android.view.Menu
    public final MenuItem findItem(int i6) {
        MenuItem menuItemFindItem;
        ArrayList arrayList = this.f;
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            n nVar = (n) arrayList.get(i10);
            if (nVar.f7634a == i6) {
                return nVar;
            }
            if (nVar.hasSubMenu() && (menuItemFindItem = nVar.f7646o.findItem(i6)) != null) {
                return menuItemFindItem;
            }
        }
        return null;
    }

    public final n g(int i6, KeyEvent keyEvent) {
        ArrayList arrayList = this.f7626t;
        arrayList.clear();
        h(arrayList, i6, keyEvent);
        if (arrayList.isEmpty()) {
            return null;
        }
        int metaState = keyEvent.getMetaState();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        keyEvent.getKeyData(keyData);
        int size = arrayList.size();
        if (size == 1) {
            return (n) arrayList.get(0);
        }
        boolean zN = n();
        for (int i10 = 0; i10 < size; i10++) {
            n nVar = (n) arrayList.get(i10);
            char c5 = zN ? nVar.f7641j : nVar.f7639h;
            char[] cArr = keyData.meta;
            if ((c5 == cArr[0] && (metaState & 2) == 0) || ((c5 == cArr[2] && (metaState & 2) != 0) || (zN && c5 == '\b' && i6 == 67))) {
                return nVar;
            }
        }
        return null;
    }

    @Override // android.view.Menu
    public final MenuItem getItem(int i6) {
        return (MenuItem) this.f.get(i6);
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0069  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void h(java.util.ArrayList r17, int r18, android.view.KeyEvent r19) {
        /*
            r16 = this;
            r0 = r17
            r1 = r18
            r2 = r19
            boolean r3 = r16.n()
            int r4 = r19.getModifiers()
            android.view.KeyCharacterMap$KeyData r5 = new android.view.KeyCharacterMap$KeyData
            r5.<init>()
            boolean r6 = r2.getKeyData(r5)
            r7 = 67
            if (r6 != 0) goto L1e
            if (r1 == r7) goto L1e
            return
        L1e:
            r6 = r16
            java.util.ArrayList r8 = r6.f
            int r9 = r8.size()
            r10 = 0
            r11 = 0
        L28:
            if (r11 >= r9) goto L7a
            java.lang.Object r12 = r8.get(r11)
            k.n r12 = (k.n) r12
            boolean r13 = r12.hasSubMenu()
            if (r13 == 0) goto L3b
            k.e0 r13 = r12.f7646o
            r13.h(r0, r1, r2)
        L3b:
            if (r3 == 0) goto L40
            char r13 = r12.f7641j
            goto L42
        L40:
            char r13 = r12.f7639h
        L42:
            if (r3 == 0) goto L47
            int r14 = r12.f7642k
            goto L49
        L47:
            int r14 = r12.f7640i
        L49:
            r15 = 69647(0x1100f, float:9.7596E-41)
            r7 = r4 & r15
            r14 = r14 & r15
            if (r7 != r14) goto L69
            if (r13 == 0) goto L69
            char[] r7 = r5.meta
            char r14 = r7[r10]
            if (r13 == r14) goto L6c
            r14 = 2
            char r7 = r7[r14]
            if (r13 == r7) goto L6c
            if (r3 == 0) goto L69
            r7 = 8
            if (r13 != r7) goto L69
            r7 = 67
            if (r1 != r7) goto L77
            goto L6e
        L69:
            r7 = 67
            goto L77
        L6c:
            r7 = 67
        L6e:
            boolean r13 = r12.isEnabled()
            if (r13 == 0) goto L77
            r0.add(r12)
        L77:
            int r11 = r11 + 1
            goto L28
        L7a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: k.l.h(java.util.ArrayList, int, android.view.KeyEvent):void");
    }

    @Override // android.view.Menu
    public final boolean hasVisibleItems() {
        if (this.f7630x) {
            return true;
        }
        ArrayList arrayList = this.f;
        int size = arrayList.size();
        for (int i6 = 0; i6 < size; i6++) {
            if (((n) arrayList.get(i6)).isVisible()) {
                return true;
            }
        }
        return false;
    }

    public final void i() {
        ArrayList arrayListL = l();
        if (this.f7617k) {
            CopyOnWriteArrayList copyOnWriteArrayList = this.f7627u;
            Iterator it = copyOnWriteArrayList.iterator();
            boolean zL = false;
            while (it.hasNext()) {
                WeakReference weakReference = (WeakReference) it.next();
                y yVar = (y) weakReference.get();
                if (yVar == null) {
                    copyOnWriteArrayList.remove(weakReference);
                } else {
                    zL |= yVar.l();
                }
            }
            ArrayList arrayList = this.f7615i;
            ArrayList arrayList2 = this.f7616j;
            if (zL) {
                arrayList.clear();
                arrayList2.clear();
                int size = arrayListL.size();
                for (int i6 = 0; i6 < size; i6++) {
                    n nVar = (n) arrayListL.get(i6);
                    if (nVar.f()) {
                        arrayList.add(nVar);
                    } else {
                        arrayList2.add(nVar);
                    }
                }
            } else {
                arrayList.clear();
                arrayList2.clear();
                arrayList2.addAll(l());
            }
            this.f7617k = false;
        }
    }

    @Override // android.view.Menu
    public final boolean isShortcutKey(int i6, KeyEvent keyEvent) {
        return g(i6, keyEvent) != null;
    }

    public String j() {
        return "android:menu:actionviewstates";
    }

    public final ArrayList l() {
        boolean z7 = this.f7614h;
        ArrayList arrayList = this.f7613g;
        if (!z7) {
            return arrayList;
        }
        arrayList.clear();
        ArrayList arrayList2 = this.f;
        int size = arrayList2.size();
        for (int i6 = 0; i6 < size; i6++) {
            n nVar = (n) arrayList2.get(i6);
            if (nVar.isVisible()) {
                arrayList.add(nVar);
            }
        }
        this.f7614h = false;
        this.f7617k = true;
        return arrayList;
    }

    public boolean m() {
        return this.f7629w;
    }

    public boolean n() {
        return this.f7611c;
    }

    public boolean o() {
        return this.d;
    }

    public void p(boolean z7) {
        if (this.f7622p) {
            this.f7623q = true;
            if (z7) {
                this.f7624r = true;
                return;
            }
            return;
        }
        if (z7) {
            this.f7614h = true;
            this.f7617k = true;
        }
        CopyOnWriteArrayList copyOnWriteArrayList = this.f7627u;
        if (copyOnWriteArrayList.isEmpty()) {
            return;
        }
        y();
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            WeakReference weakReference = (WeakReference) it.next();
            y yVar = (y) weakReference.get();
            if (yVar == null) {
                copyOnWriteArrayList.remove(weakReference);
            } else {
                yVar.j(z7);
            }
        }
        x();
    }

    @Override // android.view.Menu
    public final boolean performIdentifierAction(int i6, int i10) {
        return q(findItem(i6), null, i10);
    }

    @Override // android.view.Menu
    public final boolean performShortcut(int i6, KeyEvent keyEvent, int i10) {
        n nVarG = g(i6, keyEvent);
        boolean zQ = nVarG != null ? q(nVarG, null, i10) : false;
        if ((i10 & 2) != 0) {
            c(true);
        }
        return zQ;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0018  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean q(android.view.MenuItem r7, k.y r8, int r9) {
        /*
            Method dump skipped, instructions count: 223
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: k.l.q(android.view.MenuItem, k.y, int):boolean");
    }

    public final void r(y yVar) {
        CopyOnWriteArrayList copyOnWriteArrayList = this.f7627u;
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            WeakReference weakReference = (WeakReference) it.next();
            y yVar2 = (y) weakReference.get();
            if (yVar2 == null || yVar2 == yVar) {
                copyOnWriteArrayList.remove(weakReference);
            }
        }
    }

    @Override // android.view.Menu
    public final void removeGroup(int i6) {
        ArrayList arrayList = this.f;
        int size = arrayList.size();
        int i10 = 0;
        int i11 = 0;
        while (true) {
            if (i11 >= size) {
                i11 = -1;
                break;
            } else if (((n) arrayList.get(i11)).f7635b == i6) {
                break;
            } else {
                i11++;
            }
        }
        if (i11 >= 0) {
            int size2 = arrayList.size() - i11;
            while (true) {
                int i12 = i10 + 1;
                if (i10 >= size2 || ((n) arrayList.get(i11)).f7635b != i6) {
                    break;
                }
                if (i11 >= 0) {
                    ArrayList arrayList2 = this.f;
                    if (i11 < arrayList2.size()) {
                        arrayList2.remove(i11);
                    }
                }
                i10 = i12;
            }
            p(true);
        }
    }

    @Override // android.view.Menu
    public final void removeItem(int i6) {
        ArrayList arrayList = this.f;
        int size = arrayList.size();
        int i10 = 0;
        while (true) {
            if (i10 >= size) {
                i10 = -1;
                break;
            } else if (((n) arrayList.get(i10)).f7634a == i6) {
                break;
            } else {
                i10++;
            }
        }
        if (i10 >= 0) {
            ArrayList arrayList2 = this.f;
            if (i10 >= arrayList2.size()) {
                return;
            }
            arrayList2.remove(i10);
            p(true);
        }
    }

    public final void s(Bundle bundle) {
        MenuItem menuItemFindItem;
        if (bundle == null) {
            return;
        }
        SparseArray<Parcelable> sparseParcelableArray = bundle.getSparseParcelableArray(j());
        int size = this.f.size();
        for (int i6 = 0; i6 < size; i6++) {
            MenuItem item = getItem(i6);
            View actionView = item.getActionView();
            if (actionView != null && actionView.getId() != -1) {
                actionView.restoreHierarchyState(sparseParcelableArray);
            }
            if (item.hasSubMenu()) {
                ((e0) item.getSubMenu()).s(bundle);
            }
        }
        int i10 = bundle.getInt("android:menu:expandedactionview");
        if (i10 <= 0 || (menuItemFindItem = findItem(i10)) == null) {
            return;
        }
        menuItemFindItem.expandActionView();
    }

    @Override // android.view.Menu
    public final void setGroupCheckable(int i6, boolean z7, boolean z10) {
        ArrayList arrayList = this.f;
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            n nVar = (n) arrayList.get(i10);
            if (nVar.f7635b == i6) {
                nVar.g(z10);
                nVar.setCheckable(z7);
            }
        }
    }

    @Override // android.view.Menu
    public void setGroupDividerEnabled(boolean z7) {
        this.f7629w = z7;
    }

    @Override // android.view.Menu
    public final void setGroupEnabled(int i6, boolean z7) {
        ArrayList arrayList = this.f;
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            n nVar = (n) arrayList.get(i10);
            if (nVar.f7635b == i6) {
                nVar.setEnabled(z7);
            }
        }
    }

    @Override // android.view.Menu
    public final void setGroupVisible(int i6, boolean z7) {
        ArrayList arrayList = this.f;
        int size = arrayList.size();
        boolean z10 = false;
        for (int i10 = 0; i10 < size; i10++) {
            n nVar = (n) arrayList.get(i10);
            if (nVar.f7635b == i6) {
                int i11 = nVar.f7655x;
                int i12 = (i11 & (-9)) | (z7 ? 0 : 8);
                nVar.f7655x = i12;
                if (i11 != i12) {
                    z10 = true;
                }
            }
        }
        if (z10) {
            p(true);
        }
    }

    @Override // android.view.Menu
    public void setQwertyMode(boolean z7) {
        this.f7611c = z7;
        p(false);
    }

    @Override // android.view.Menu
    public final int size() {
        return this.f.size();
    }

    public final void t(Bundle bundle) {
        Parcelable parcelable;
        SparseArray sparseParcelableArray = bundle.getSparseParcelableArray("android:menu:presenters");
        if (sparseParcelableArray != null) {
            CopyOnWriteArrayList copyOnWriteArrayList = this.f7627u;
            if (copyOnWriteArrayList.isEmpty()) {
                return;
            }
            Iterator it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                WeakReference weakReference = (WeakReference) it.next();
                y yVar = (y) weakReference.get();
                if (yVar == null) {
                    copyOnWriteArrayList.remove(weakReference);
                } else {
                    int id = yVar.getId();
                    if (id > 0 && (parcelable = (Parcelable) sparseParcelableArray.get(id)) != null) {
                        yVar.g(parcelable);
                    }
                }
            }
        }
    }

    public final void u(Bundle bundle) {
        int size = this.f.size();
        SparseArray<? extends Parcelable> sparseArray = null;
        for (int i6 = 0; i6 < size; i6++) {
            MenuItem item = getItem(i6);
            View actionView = item.getActionView();
            if (actionView != null && actionView.getId() != -1) {
                if (sparseArray == null) {
                    sparseArray = new SparseArray<>();
                }
                actionView.saveHierarchyState(sparseArray);
                if (item.isActionViewExpanded()) {
                    bundle.putInt("android:menu:expandedactionview", item.getItemId());
                }
            }
            if (item.hasSubMenu()) {
                ((e0) item.getSubMenu()).u(bundle);
            }
        }
        if (sparseArray != null) {
            bundle.putSparseParcelableArray(j(), sparseArray);
        }
    }

    public final void v(Bundle bundle) {
        Parcelable parcelableM;
        CopyOnWriteArrayList copyOnWriteArrayList = this.f7627u;
        if (copyOnWriteArrayList.isEmpty()) {
            return;
        }
        SparseArray<? extends Parcelable> sparseArray = new SparseArray<>();
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            WeakReference weakReference = (WeakReference) it.next();
            y yVar = (y) weakReference.get();
            if (yVar == null) {
                copyOnWriteArrayList.remove(weakReference);
            } else {
                int id = yVar.getId();
                if (id > 0 && (parcelableM = yVar.m()) != null) {
                    sparseArray.put(id, parcelableM);
                }
            }
        }
        bundle.putSparseParcelableArray("android:menu:presenters", sparseArray);
    }

    public final void w(int i6, CharSequence charSequence, int i10, Drawable drawable, View view) {
        if (view != null) {
            this.f7621o = view;
            this.f7619m = null;
            this.f7620n = null;
        } else {
            if (i6 > 0) {
                this.f7619m = this.f7610b.getText(i6);
            } else if (charSequence != null) {
                this.f7619m = charSequence;
            }
            if (i10 > 0) {
                this.f7620n = d0.a.b(this.f7609a, i10);
            } else if (drawable != null) {
                this.f7620n = drawable;
            }
            this.f7621o = null;
        }
        p(false);
    }

    public final void x() {
        this.f7622p = false;
        if (this.f7623q) {
            this.f7623q = false;
            p(this.f7624r);
        }
    }

    public final void y() {
        if (this.f7622p) {
            return;
        }
        this.f7622p = true;
        this.f7623q = false;
        this.f7624r = false;
    }

    @Override // android.view.Menu
    public final MenuItem add(int i6) {
        return a(0, 0, 0, this.f7610b.getString(i6));
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(int i6) {
        return addSubMenu(0, 0, 0, this.f7610b.getString(i6));
    }

    @Override // android.view.Menu
    public final MenuItem add(int i6, int i10, int i11, CharSequence charSequence) {
        return a(i6, i10, i11, charSequence);
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i6, int i10, int i11, CharSequence charSequence) {
        n nVarA = a(i6, i10, i11, charSequence);
        e0 e0Var = new e0(this.f7609a, this, nVarA);
        nVarA.f7646o = e0Var;
        e0Var.setHeaderTitle(nVarA.f7637e);
        return e0Var;
    }

    @Override // android.view.Menu
    public final MenuItem add(int i6, int i10, int i11, int i12) {
        return a(i6, i10, i11, this.f7610b.getString(i12));
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(int i6, int i10, int i11, int i12) {
        return addSubMenu(i6, i10, i11, this.f7610b.getString(i12));
    }

    public l k() {
        return this;
    }
}
