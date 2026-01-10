package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Constraints;
import java.util.Arrays;
import java.util.HashMap;
import v.e;
import v.j;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class ConstraintHelper extends View {

    /* renamed from: a, reason: collision with root package name */
    public int[] f1013a;

    /* renamed from: b, reason: collision with root package name */
    public int f1014b;

    /* renamed from: c, reason: collision with root package name */
    public Context f1015c;
    public j d;

    /* renamed from: e, reason: collision with root package name */
    public String f1016e;
    public View[] f;

    /* renamed from: g, reason: collision with root package name */
    public HashMap f1017g;

    public ConstraintHelper(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1013a = new int[32];
        this.f = null;
        this.f1017g = new HashMap();
        this.f1015c = context;
        g(attributeSet);
    }

    public final void a(String str) throws IllegalAccessException, IllegalArgumentException {
        if (str == null || str.length() == 0 || this.f1015c == null) {
            return;
        }
        String strTrim = str.trim();
        if (getParent() instanceof ConstraintLayout) {
        }
        int iE = e(strTrim);
        if (iE != 0) {
            this.f1017g.put(Integer.valueOf(iE), strTrim);
            b(iE);
        } else {
            Log.w("ConstraintHelper", "Could not find id of \"" + strTrim + "\"");
        }
    }

    public final void b(int i6) {
        if (i6 == getId()) {
            return;
        }
        int i10 = this.f1014b + 1;
        int[] iArr = this.f1013a;
        if (i10 > iArr.length) {
            this.f1013a = Arrays.copyOf(iArr, iArr.length * 2);
        }
        int[] iArr2 = this.f1013a;
        int i11 = this.f1014b;
        iArr2[i11] = i6;
        this.f1014b = i11 + 1;
    }

    public final void c() {
        ViewParent parent = getParent();
        if (parent == null || !(parent instanceof ConstraintLayout)) {
            return;
        }
        ConstraintLayout constraintLayout = (ConstraintLayout) parent;
        int visibility = getVisibility();
        float elevation = getElevation();
        for (int i6 = 0; i6 < this.f1014b; i6++) {
            View viewD = constraintLayout.d(this.f1013a[i6]);
            if (viewD != null) {
                viewD.setVisibility(visibility);
                if (elevation > 0.0f) {
                    viewD.setTranslationZ(viewD.getTranslationZ() + elevation);
                }
            }
        }
    }

    public final int d(ConstraintLayout constraintLayout, String str) {
        Resources resources;
        String resourceEntryName;
        if (str == null || constraintLayout == null || (resources = this.f1015c.getResources()) == null) {
            return 0;
        }
        int childCount = constraintLayout.getChildCount();
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = constraintLayout.getChildAt(i6);
            if (childAt.getId() != -1) {
                try {
                    resourceEntryName = resources.getResourceEntryName(childAt.getId());
                } catch (Resources.NotFoundException unused) {
                    resourceEntryName = null;
                }
                if (str.equals(resourceEntryName)) {
                    return childAt.getId();
                }
            }
        }
        return 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x003a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int e(java.lang.String r5) throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException {
        /*
            r4 = this;
            android.view.ViewParent r0 = r4.getParent()
            boolean r0 = r0 instanceof androidx.constraintlayout.widget.ConstraintLayout
            r1 = 0
            if (r0 == 0) goto L10
            android.view.ViewParent r0 = r4.getParent()
            androidx.constraintlayout.widget.ConstraintLayout r0 = (androidx.constraintlayout.widget.ConstraintLayout) r0
            goto L11
        L10:
            r0 = r1
        L11:
            boolean r2 = r4.isInEditMode()
            if (r2 == 0) goto L3a
            if (r0 == 0) goto L3a
            boolean r2 = r5 instanceof java.lang.String
            if (r2 == 0) goto L2e
            java.util.HashMap r2 = r0.f1029m
            if (r2 == 0) goto L2e
            boolean r2 = r2.containsKey(r5)
            if (r2 == 0) goto L2e
            java.util.HashMap r2 = r0.f1029m
            java.lang.Object r2 = r2.get(r5)
            goto L2f
        L2e:
            r2 = r1
        L2f:
            boolean r3 = r2 instanceof java.lang.Integer
            if (r3 == 0) goto L3a
            java.lang.Integer r2 = (java.lang.Integer) r2
            int r2 = r2.intValue()
            goto L3b
        L3a:
            r2 = 0
        L3b:
            if (r2 != 0) goto L43
            if (r0 == 0) goto L43
            int r2 = r4.d(r0, r5)
        L43:
            if (r2 != 0) goto L51
            java.lang.Class<y.i> r0 = y.i.class
            java.lang.reflect.Field r0 = r0.getField(r5)     // Catch: java.lang.Exception -> L50
            int r2 = r0.getInt(r1)     // Catch: java.lang.Exception -> L50
            goto L51
        L50:
        L51:
            if (r2 != 0) goto L63
            android.content.Context r0 = r4.f1015c
            android.content.res.Resources r1 = r0.getResources()
            java.lang.String r2 = "id"
            java.lang.String r0 = r0.getPackageName()
            int r2 = r1.getIdentifier(r5, r2, r0)
        L63:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintHelper.e(java.lang.String):int");
    }

    public final View[] f(ConstraintLayout constraintLayout) {
        View[] viewArr = this.f;
        if (viewArr == null || viewArr.length != this.f1014b) {
            this.f = new View[this.f1014b];
        }
        for (int i6 = 0; i6 < this.f1014b; i6++) {
            this.f[i6] = constraintLayout.d(this.f1013a[i6]);
        }
        return this.f;
    }

    public void g(AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, y.j.f11210b);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i6 = 0; i6 < indexCount; i6++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i6);
                if (index == 19) {
                    String string = typedArrayObtainStyledAttributes.getString(index);
                    this.f1016e = string;
                    setIds(string);
                }
            }
        }
    }

    public int[] getReferencedIds() {
        return Arrays.copyOf(this.f1013a, this.f1014b);
    }

    public void h(c cVar, j jVar, Constraints.LayoutParams layoutParams, SparseArray sparseArray) {
        y.d dVar = cVar.d;
        int[] iArr = dVar.f11162e0;
        int i6 = 0;
        if (iArr != null) {
            setReferencedIds(iArr);
        } else {
            String str = dVar.f11163f0;
            if (str != null && str.length() > 0) {
                String[] strArrSplit = dVar.f11163f0.split(",");
                getContext();
                int[] iArrCopyOf = new int[strArrSplit.length];
                int i10 = 0;
                for (String str2 : strArrSplit) {
                    int iE = e(str2.trim());
                    if (iE != 0) {
                        iArrCopyOf[i10] = iE;
                        i10++;
                    }
                }
                if (i10 != strArrSplit.length) {
                    iArrCopyOf = Arrays.copyOf(iArrCopyOf, i10);
                }
                dVar.f11162e0 = iArrCopyOf;
            }
        }
        jVar.f10614h0 = 0;
        Arrays.fill(jVar.f10613g0, (Object) null);
        if (dVar.f11162e0 == null) {
            return;
        }
        while (true) {
            int[] iArr2 = dVar.f11162e0;
            if (i6 >= iArr2.length) {
                return;
            }
            e eVar = (e) sparseArray.get(iArr2[i6]);
            if (eVar != null) {
                jVar.C(eVar);
            }
            i6++;
        }
    }

    public final void l() {
        if (this.d == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams instanceof ConstraintLayout.LayoutParams) {
            ((ConstraintLayout.LayoutParams) layoutParams).f1052l0 = this.d;
        }
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        String str = this.f1016e;
        if (str != null) {
            setIds(str);
        }
    }

    @Override // android.view.View
    public void onMeasure(int i6, int i10) {
        setMeasuredDimension(0, 0);
    }

    public void setIds(String str) {
        this.f1016e = str;
        if (str == null) {
            return;
        }
        int i6 = 0;
        this.f1014b = 0;
        while (true) {
            int iIndexOf = str.indexOf(44, i6);
            if (iIndexOf == -1) {
                a(str.substring(i6));
                return;
            } else {
                a(str.substring(i6, iIndexOf));
                i6 = iIndexOf + 1;
            }
        }
    }

    public void setReferencedIds(int[] iArr) {
        this.f1016e = null;
        this.f1014b = 0;
        for (int i6 : iArr) {
            b(i6);
        }
    }

    public ConstraintHelper(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
        this.f1013a = new int[32];
        this.f = null;
        this.f1017g = new HashMap();
        this.f1015c = context;
        g(attributeSet);
    }

    public void j() {
    }

    public void k(ConstraintLayout constraintLayout) {
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
    }

    public void i(e eVar, boolean z7) {
    }
}
