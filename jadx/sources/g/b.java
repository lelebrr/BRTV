package g;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.SparseArray;
import android.util.StateSet;
import com.alibaba.fastjson.asm.Opcodes;
import java.lang.reflect.InvocationTargetException;
import p.i;
import p.j;
import p.m;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b extends Drawable.ConstantState {
    public boolean A;
    public ColorFilter B;
    public boolean C;
    public ColorStateList D;
    public PorterDuff.Mode E;
    public boolean F;
    public boolean G;
    public int[][] H;
    public i I;
    public m J;

    /* renamed from: a, reason: collision with root package name */
    public final e f6992a;

    /* renamed from: b, reason: collision with root package name */
    public Resources f6993b;

    /* renamed from: c, reason: collision with root package name */
    public int f6994c;
    public int d;

    /* renamed from: e, reason: collision with root package name */
    public int f6995e;
    public SparseArray f;

    /* renamed from: g, reason: collision with root package name */
    public Drawable[] f6996g;

    /* renamed from: h, reason: collision with root package name */
    public int f6997h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f6998i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f6999j;

    /* renamed from: k, reason: collision with root package name */
    public Rect f7000k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f7001l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f7002m;

    /* renamed from: n, reason: collision with root package name */
    public int f7003n;

    /* renamed from: o, reason: collision with root package name */
    public int f7004o;

    /* renamed from: p, reason: collision with root package name */
    public int f7005p;

    /* renamed from: q, reason: collision with root package name */
    public int f7006q;

    /* renamed from: r, reason: collision with root package name */
    public boolean f7007r;

    /* renamed from: s, reason: collision with root package name */
    public int f7008s;

    /* renamed from: t, reason: collision with root package name */
    public boolean f7009t;

    /* renamed from: u, reason: collision with root package name */
    public boolean f7010u;

    /* renamed from: v, reason: collision with root package name */
    public boolean f7011v;

    /* renamed from: w, reason: collision with root package name */
    public boolean f7012w;

    /* renamed from: x, reason: collision with root package name */
    public int f7013x;

    /* renamed from: y, reason: collision with root package name */
    public int f7014y;

    /* renamed from: z, reason: collision with root package name */
    public int f7015z;

    public b(b bVar, e eVar, Resources resources) {
        this.f6998i = false;
        this.f7001l = false;
        this.f7012w = true;
        this.f7014y = 0;
        this.f7015z = 0;
        this.f6992a = eVar;
        this.f6993b = resources != null ? resources : bVar != null ? bVar.f6993b : null;
        int i6 = bVar != null ? bVar.f6994c : 0;
        int i10 = g.f7030m;
        i6 = resources != null ? resources.getDisplayMetrics().densityDpi : i6;
        i6 = i6 == 0 ? Opcodes.IF_ICMPNE : i6;
        this.f6994c = i6;
        if (bVar != null) {
            this.d = bVar.d;
            this.f6995e = bVar.f6995e;
            this.f7010u = true;
            this.f7011v = true;
            this.f6998i = bVar.f6998i;
            this.f7001l = bVar.f7001l;
            this.f7012w = bVar.f7012w;
            this.f7013x = bVar.f7013x;
            this.f7014y = bVar.f7014y;
            this.f7015z = bVar.f7015z;
            this.A = bVar.A;
            this.B = bVar.B;
            this.C = bVar.C;
            this.D = bVar.D;
            this.E = bVar.E;
            this.F = bVar.F;
            this.G = bVar.G;
            if (bVar.f6994c == i6) {
                if (bVar.f6999j) {
                    this.f7000k = bVar.f7000k != null ? new Rect(bVar.f7000k) : null;
                    this.f6999j = true;
                }
                if (bVar.f7002m) {
                    this.f7003n = bVar.f7003n;
                    this.f7004o = bVar.f7004o;
                    this.f7005p = bVar.f7005p;
                    this.f7006q = bVar.f7006q;
                    this.f7002m = true;
                }
            }
            if (bVar.f7007r) {
                this.f7008s = bVar.f7008s;
                this.f7007r = true;
            }
            if (bVar.f7009t) {
                this.f7009t = true;
            }
            Drawable[] drawableArr = bVar.f6996g;
            this.f6996g = new Drawable[drawableArr.length];
            this.f6997h = bVar.f6997h;
            SparseArray sparseArray = bVar.f;
            if (sparseArray != null) {
                this.f = sparseArray.clone();
            } else {
                this.f = new SparseArray(this.f6997h);
            }
            int i11 = this.f6997h;
            for (int i12 = 0; i12 < i11; i12++) {
                Drawable drawable = drawableArr[i12];
                if (drawable != null) {
                    Drawable.ConstantState constantState = drawable.getConstantState();
                    if (constantState != null) {
                        this.f.put(i12, constantState);
                    } else {
                        this.f6996g[i12] = drawableArr[i12];
                    }
                }
            }
        } else {
            this.f6996g = new Drawable[10];
            this.f6997h = 0;
        }
        if (bVar != null) {
            this.H = bVar.H;
        } else {
            this.H = new int[this.f6996g.length][];
        }
        if (bVar != null) {
            this.I = bVar.I;
            this.J = bVar.J;
        } else {
            this.I = new i();
            this.J = new m();
        }
    }

    public final int a(Drawable drawable) {
        int i6 = this.f6997h;
        if (i6 >= this.f6996g.length) {
            int i10 = i6 + 10;
            Drawable[] drawableArr = new Drawable[i10];
            Drawable[] drawableArr2 = this.f6996g;
            if (drawableArr2 != null) {
                System.arraycopy(drawableArr2, 0, drawableArr, 0, i6);
            }
            this.f6996g = drawableArr;
            int[][] iArr = new int[i10][];
            System.arraycopy(this.H, 0, iArr, 0, i6);
            this.H = iArr;
        }
        drawable.mutate();
        drawable.setVisible(false, true);
        drawable.setCallback(this.f6992a);
        this.f6996g[i6] = drawable;
        this.f6997h++;
        this.f6995e = drawable.getChangingConfigurations() | this.f6995e;
        this.f7007r = false;
        this.f7009t = false;
        this.f7000k = null;
        this.f6999j = false;
        this.f7002m = false;
        this.f7010u = false;
        return i6;
    }

    public final void b() throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        this.f7002m = true;
        c();
        int i6 = this.f6997h;
        Drawable[] drawableArr = this.f6996g;
        this.f7004o = -1;
        this.f7003n = -1;
        this.f7006q = 0;
        this.f7005p = 0;
        for (int i10 = 0; i10 < i6; i10++) {
            Drawable drawable = drawableArr[i10];
            int intrinsicWidth = drawable.getIntrinsicWidth();
            if (intrinsicWidth > this.f7003n) {
                this.f7003n = intrinsicWidth;
            }
            int intrinsicHeight = drawable.getIntrinsicHeight();
            if (intrinsicHeight > this.f7004o) {
                this.f7004o = intrinsicHeight;
            }
            int minimumWidth = drawable.getMinimumWidth();
            if (minimumWidth > this.f7005p) {
                this.f7005p = minimumWidth;
            }
            int minimumHeight = drawable.getMinimumHeight();
            if (minimumHeight > this.f7006q) {
                this.f7006q = minimumHeight;
            }
        }
    }

    public final void c() throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        SparseArray sparseArray = this.f;
        if (sparseArray != null) {
            int size = sparseArray.size();
            for (int i6 = 0; i6 < size; i6++) {
                int iKeyAt = this.f.keyAt(i6);
                Drawable.ConstantState constantState = (Drawable.ConstantState) this.f.valueAt(i6);
                Drawable[] drawableArr = this.f6996g;
                Drawable drawableNewDrawable = constantState.newDrawable(this.f6993b);
                if (Build.VERSION.SDK_INT >= 23) {
                    n5.d.Q(drawableNewDrawable, this.f7013x);
                }
                Drawable drawableMutate = drawableNewDrawable.mutate();
                drawableMutate.setCallback(this.f6992a);
                drawableArr[iKeyAt] = drawableMutate;
            }
            this.f = null;
        }
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final boolean canApplyTheme() {
        int i6 = this.f6997h;
        Drawable[] drawableArr = this.f6996g;
        for (int i10 = 0; i10 < i6; i10++) {
            Drawable drawable = drawableArr[i10];
            if (drawable == null) {
                Drawable.ConstantState constantState = (Drawable.ConstantState) this.f.get(i10);
                if (constantState != null && constantState.canApplyTheme()) {
                    return true;
                }
            } else if (g0.a.b(drawable)) {
                return true;
            }
        }
        return false;
    }

    public final Drawable d(int i6) {
        int iIndexOfKey;
        Drawable drawable = this.f6996g[i6];
        if (drawable != null) {
            return drawable;
        }
        SparseArray sparseArray = this.f;
        if (sparseArray == null || (iIndexOfKey = sparseArray.indexOfKey(i6)) < 0) {
            return null;
        }
        Drawable drawableNewDrawable = ((Drawable.ConstantState) this.f.valueAt(iIndexOfKey)).newDrawable(this.f6993b);
        if (Build.VERSION.SDK_INT >= 23) {
            n5.d.Q(drawableNewDrawable, this.f7013x);
        }
        Drawable drawableMutate = drawableNewDrawable.mutate();
        drawableMutate.setCallback(this.f6992a);
        this.f6996g[i6] = drawableMutate;
        this.f.removeAt(iIndexOfKey);
        if (this.f.size() == 0) {
            this.f = null;
        }
        return drawableMutate;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r5v2 */
    public final int e(int i6) {
        ?? r52;
        if (i6 < 0) {
            return 0;
        }
        m mVar = this.J;
        int i10 = 0;
        int iA = q.a.a(mVar.f8861c, i6, mVar.f8859a);
        if (iA >= 0 && (r52 = mVar.f8860b[iA]) != j.f8851b) {
            i10 = r52;
        }
        return i10.intValue();
    }

    public final int f(int[] iArr) {
        int[][] iArr2 = this.H;
        int i6 = this.f6997h;
        for (int i10 = 0; i10 < i6; i10++) {
            if (StateSet.stateSetMatches(iArr2[i10], iArr)) {
                return i10;
            }
        }
        return -1;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final int getChangingConfigurations() {
        return this.d | this.f6995e;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable() {
        return new e(this, null);
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable(Resources resources) {
        return new e(this, resources);
    }
}
