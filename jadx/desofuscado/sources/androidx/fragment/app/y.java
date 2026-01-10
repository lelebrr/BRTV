package androidx.fragment.app;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.Iterator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class y implements LayoutInflater.Factory2 {

    /* renamed from: a, reason: collision with root package name */
    public final j0 f1571a;

    public y(j0 j0Var) {
        this.f1571a = j0Var;
    }

    @Override // android.view.LayoutInflater.Factory
    public final View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }

    @Override // android.view.LayoutInflater.Factory2
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        boolean zIsAssignableFrom;
        p0 p0VarF;
        View view2;
        boolean zEquals = FragmentContainerView.class.getName().equals(str);
        j0 j0Var = this.f1571a;
        if (zEquals) {
            FragmentContainerView fragmentContainerView = new FragmentContainerView(context, attributeSet);
            fragmentContainerView.d = true;
            String classAttribute = attributeSet.getClassAttribute();
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f1.a.f6776b);
            if (classAttribute == null) {
                classAttribute = typedArrayObtainStyledAttributes.getString(0);
            }
            String string = typedArrayObtainStyledAttributes.getString(1);
            typedArrayObtainStyledAttributes.recycle();
            int id = fragmentContainerView.getId();
            s sVarY = j0Var.y(id);
            if (classAttribute != null && sVarY == null) {
                if (id <= 0) {
                    throw new IllegalStateException(a.e.r("FragmentContainerView must have an android:id to add Fragment ", classAttribute, string != null ? " with tag ".concat(string) : ""));
                }
                d0 d0VarC = j0Var.C();
                context.getClassLoader();
                s sVarA = d0VarC.a(classAttribute);
                sVarA.D = true;
                v vVar = sVarA.f1537t;
                if ((vVar != null ? vVar.f : null) != null) {
                    sVarA.D = true;
                }
                a aVar = new a(j0Var);
                aVar.f1423p = true;
                sVarA.E = fragmentContainerView;
                aVar.f(fragmentContainerView.getId(), sVarA, string, 1);
                if (aVar.f1414g) {
                    throw new IllegalStateException("This transaction is already being added to the back stack");
                }
                aVar.f1415h = false;
                aVar.f1424q.v(aVar, true);
            }
            Iterator it = j0Var.f1459c.q().iterator();
            while (it.hasNext()) {
                p0 p0Var = (p0) it.next();
                s sVar = p0Var.f1511c;
                if (sVar.f1541x == fragmentContainerView.getId() && (view2 = sVar.F) != null && view2.getParent() == null) {
                    sVar.E = fragmentContainerView;
                    p0Var.b();
                }
            }
            return fragmentContainerView;
        }
        if (!"fragment".equals(str)) {
            return null;
        }
        String attributeValue = attributeSet.getAttributeValue(null, "class");
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, f1.a.f6775a);
        if (attributeValue == null) {
            attributeValue = typedArrayObtainStyledAttributes2.getString(0);
        }
        int resourceId = typedArrayObtainStyledAttributes2.getResourceId(1, -1);
        String string2 = typedArrayObtainStyledAttributes2.getString(2);
        typedArrayObtainStyledAttributes2.recycle();
        if (attributeValue != null) {
            try {
                zIsAssignableFrom = s.class.isAssignableFrom(d0.b(attributeValue, context.getClassLoader()));
            } catch (ClassNotFoundException unused) {
                zIsAssignableFrom = false;
            }
            if (zIsAssignableFrom) {
                int id2 = view != null ? view.getId() : 0;
                if (id2 == -1 && resourceId == -1 && string2 == null) {
                    throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + attributeValue);
                }
                s sVarY2 = resourceId != -1 ? j0Var.y(resourceId) : null;
                if (sVarY2 == null && string2 != null) {
                    sVarY2 = j0Var.z(string2);
                }
                if (sVarY2 == null && id2 != -1) {
                    sVarY2 = j0Var.y(id2);
                }
                if (sVarY2 == null) {
                    d0 d0VarC2 = j0Var.C();
                    context.getClassLoader();
                    sVarY2 = d0VarC2.a(attributeValue);
                    sVarY2.f1531n = true;
                    sVarY2.f1540w = resourceId != 0 ? resourceId : id2;
                    sVarY2.f1541x = id2;
                    sVarY2.f1542y = string2;
                    sVarY2.f1532o = true;
                    sVarY2.f1536s = j0Var;
                    v vVar2 = j0Var.f1468n;
                    sVarY2.f1537t = vVar2;
                    FragmentActivity fragmentActivity = vVar2.f1555g;
                    sVarY2.D = true;
                    if ((vVar2 != null ? vVar2.f : null) != null) {
                        sVarY2.D = true;
                    }
                    p0VarF = j0Var.a(sVarY2);
                    if (Log.isLoggable("FragmentManager", 2)) {
                        Log.v("FragmentManager", "Fragment " + sVarY2 + " has been inflated via the <fragment> tag: id=0x" + Integer.toHexString(resourceId));
                    }
                } else {
                    if (sVarY2.f1532o) {
                        throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(resourceId) + ", tag " + string2 + ", or parent id 0x" + Integer.toHexString(id2) + " with another fragment for " + attributeValue);
                    }
                    sVarY2.f1532o = true;
                    sVarY2.f1536s = j0Var;
                    v vVar3 = j0Var.f1468n;
                    sVarY2.f1537t = vVar3;
                    FragmentActivity fragmentActivity2 = vVar3.f1555g;
                    sVarY2.D = true;
                    if ((vVar3 != null ? vVar3.f : null) != null) {
                        sVarY2.D = true;
                    }
                    p0VarF = j0Var.f(sVarY2);
                    if (Log.isLoggable("FragmentManager", 2)) {
                        Log.v("FragmentManager", "Retained Fragment " + sVarY2 + " has been re-attached via the <fragment> tag: id=0x" + Integer.toHexString(resourceId));
                    }
                }
                sVarY2.E = (ViewGroup) view;
                p0VarF.k();
                p0VarF.j();
                View view3 = sVarY2.F;
                if (view3 == null) {
                    throw new IllegalStateException(a.e.r("Fragment ", attributeValue, " did not create a view."));
                }
                if (resourceId != 0) {
                    view3.setId(resourceId);
                }
                if (sVarY2.F.getTag() == null) {
                    sVarY2.F.setTag(string2);
                }
                sVarY2.F.addOnAttachStateChangeListener(new x(this, p0VarF));
                return sVarY2.F;
            }
        }
        return null;
    }
}
