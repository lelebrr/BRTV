package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.widget.CompoundButton;
import android.widget.TextView;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class v {

    /* renamed from: a, reason: collision with root package name */
    public Parcelable f850a;

    /* renamed from: b, reason: collision with root package name */
    public Object f851b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f852c;
    public boolean d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f853e;
    public final Object f;

    public /* synthetic */ v(TextView textView) {
        this.f850a = null;
        this.f851b = null;
        this.f852c = false;
        this.d = false;
        this.f = textView;
    }

    public void a() throws NoSuchFieldException, SecurityException {
        CompoundButton compoundButton = (CompoundButton) this.f;
        Drawable drawableG = com.bumptech.glide.c.g(compoundButton);
        if (drawableG != null) {
            if (this.f852c || this.d) {
                Drawable drawableMutate = n5.d.W(drawableG).mutate();
                if (this.f852c) {
                    g0.a.h(drawableMutate, (ColorStateList) this.f850a);
                }
                if (this.d) {
                    g0.a.i(drawableMutate, (PorterDuff.Mode) this.f851b);
                }
                if (drawableMutate.isStateful()) {
                    drawableMutate.setState(compoundButton.getDrawableState());
                }
                compoundButton.setButtonDrawable(drawableMutate);
            }
        }
    }

    public void b() {
        AppCompatCheckedTextView appCompatCheckedTextView = (AppCompatCheckedTextView) this.f;
        Drawable checkMarkDrawable = appCompatCheckedTextView.getCheckMarkDrawable();
        if (checkMarkDrawable != null) {
            if (this.f852c || this.d) {
                Drawable drawableMutate = n5.d.W(checkMarkDrawable).mutate();
                if (this.f852c) {
                    g0.a.h(drawableMutate, (ColorStateList) this.f850a);
                }
                if (this.d) {
                    g0.a.i(drawableMutate, (PorterDuff.Mode) this.f851b);
                }
                if (drawableMutate.isStateful()) {
                    drawableMutate.setState(appCompatCheckedTextView.getDrawableState());
                }
                appCompatCheckedTextView.setCheckMarkDrawable(drawableMutate);
            }
        }
    }

    public Bundle c(String str) {
        if (!this.d) {
            throw new IllegalStateException("You can consumeRestoredStateForKey only after super.onCreate of corresponding component");
        }
        Bundle bundle = (Bundle) this.f850a;
        if (bundle == null) {
            return null;
        }
        Bundle bundle2 = bundle.getBundle(str);
        Bundle bundle3 = (Bundle) this.f850a;
        if (bundle3 != null) {
            bundle3.remove(str);
        }
        Bundle bundle4 = (Bundle) this.f850a;
        if (bundle4 == null || bundle4.isEmpty()) {
            this.f850a = null;
        }
        return bundle2;
    }

    public v1.d d() {
        String str;
        v1.d dVar;
        Iterator it = ((m.f) this.f).iterator();
        do {
            m.b bVar = (m.b) it;
            if (!bVar.hasNext()) {
                return null;
            }
            Map.Entry entry = (Map.Entry) bVar.next();
            j9.i.e(entry, "components");
            str = (String) entry.getKey();
            dVar = (v1.d) entry.getValue();
        } while (!j9.i.a(str, "androidx.lifecycle.internal.SavedStateHandlesProvider"));
        return dVar;
    }

    public void e(AttributeSet attributeSet, int i6) {
        int resourceId;
        int resourceId2;
        CompoundButton compoundButton = (CompoundButton) this.f;
        Context context = compoundButton.getContext();
        int[] iArr = e.a.f6358n;
        a1.b bVarC = a1.b.C(context, attributeSet, iArr, i6);
        TypedArray typedArray = (TypedArray) bVarC.f48c;
        n0.s0.p(compoundButton, compoundButton.getContext(), iArr, attributeSet, (TypedArray) bVarC.f48c, i6, 0);
        try {
            if (typedArray.hasValue(1) && (resourceId2 = typedArray.getResourceId(1, 0)) != 0) {
                try {
                    compoundButton.setButtonDrawable(com.bumptech.glide.c.h(compoundButton.getContext(), resourceId2));
                } catch (Resources.NotFoundException unused) {
                }
            } else if (typedArray.hasValue(0) && (resourceId = typedArray.getResourceId(0, 0)) != 0) {
                compoundButton.setButtonDrawable(com.bumptech.glide.c.h(compoundButton.getContext(), resourceId));
            }
            if (typedArray.hasValue(2)) {
                androidx.core.widget.b.c(compoundButton, bVarC.s(2));
            }
            if (typedArray.hasValue(3)) {
                androidx.core.widget.b.d(compoundButton, m1.c(typedArray.getInt(3, -1), null));
            }
        } finally {
            bVarC.F();
        }
    }

    public void f(String str, v1.d dVar) {
        Object obj;
        j9.i.f(dVar, "provider");
        m.f fVar = (m.f) this.f;
        m.c cVarC = fVar.c(str);
        if (cVarC != null) {
            obj = cVarC.f8103b;
        } else {
            m.c cVar = new m.c(str, dVar);
            fVar.d++;
            m.c cVar2 = fVar.f8109b;
            if (cVar2 == null) {
                fVar.f8108a = cVar;
                fVar.f8109b = cVar;
            } else {
                cVar2.f8104c = cVar;
                cVar.d = cVar2;
                fVar.f8109b = cVar;
            }
            obj = null;
        }
        if (((v1.d) obj) != null) {
            throw new IllegalArgumentException("SavedStateProvider with the given key is already registered");
        }
    }

    public void g() throws NoSuchMethodException, SecurityException {
        if (!this.f853e) {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        }
        androidx.appcompat.app.k kVar = (androidx.appcompat.app.k) this.f851b;
        if (kVar == null) {
            kVar = new androidx.appcompat.app.k(this);
        }
        this.f851b = kVar;
        try {
            androidx.lifecycle.k.class.getDeclaredConstructor(null);
            androidx.appcompat.app.k kVar2 = (androidx.appcompat.app.k) this.f851b;
            if (kVar2 != null) {
                ((LinkedHashSet) kVar2.f325b).add(androidx.lifecycle.k.class.getName());
            }
        } catch (NoSuchMethodException e5) {
            throw new IllegalArgumentException("Class " + androidx.lifecycle.k.class.getSimpleName() + " must have default constructor in order to be automatically recreated", e5);
        }
    }

    public v() {
        this.f = new m.f();
        this.f853e = true;
    }
}
