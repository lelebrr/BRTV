package y5;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.Log;
import android.util.Property;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import java.util.ArrayList;
import p.l;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    public final l f11413a = new l(0);

    /* renamed from: b, reason: collision with root package name */
    public final l f11414b = new l(0);

    public static e a(Context context, TypedArray typedArray, int i6) {
        int resourceId;
        if (!typedArray.hasValue(i6) || (resourceId = typedArray.getResourceId(i6, 0)) == 0) {
            return null;
        }
        return b(context, resourceId);
    }

    public static e b(Context context, int i6) throws Resources.NotFoundException {
        try {
            Animator animatorLoadAnimator = AnimatorInflater.loadAnimator(context, i6);
            if (animatorLoadAnimator instanceof AnimatorSet) {
                return c(((AnimatorSet) animatorLoadAnimator).getChildAnimations());
            }
            if (animatorLoadAnimator == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(animatorLoadAnimator);
            return c(arrayList);
        } catch (Exception e5) {
            Log.w("MotionSpec", "Can't load animation resource ID #0x" + Integer.toHexString(i6), e5);
            return null;
        }
    }

    public static e c(ArrayList arrayList) {
        e eVar = new e();
        int size = arrayList.size();
        for (int i6 = 0; i6 < size; i6++) {
            Animator animator = (Animator) arrayList.get(i6);
            if (!(animator instanceof ObjectAnimator)) {
                throw new IllegalArgumentException("Animator must be an ObjectAnimator: " + animator);
            }
            ObjectAnimator objectAnimator = (ObjectAnimator) animator;
            eVar.h(objectAnimator.getPropertyName(), objectAnimator.getValues());
            String propertyName = objectAnimator.getPropertyName();
            long startDelay = objectAnimator.getStartDelay();
            long duration = objectAnimator.getDuration();
            TimeInterpolator interpolator = objectAnimator.getInterpolator();
            if ((interpolator instanceof AccelerateDecelerateInterpolator) || interpolator == null) {
                interpolator = a.f11407b;
            } else if (interpolator instanceof AccelerateInterpolator) {
                interpolator = a.f11408c;
            } else if (interpolator instanceof DecelerateInterpolator) {
                interpolator = a.d;
            }
            f fVar = new f();
            fVar.d = 0;
            fVar.f11418e = 1;
            fVar.f11415a = startDelay;
            fVar.f11416b = duration;
            fVar.f11417c = interpolator;
            fVar.d = objectAnimator.getRepeatCount();
            fVar.f11418e = objectAnimator.getRepeatMode();
            eVar.f11413a.put(propertyName, fVar);
        }
        return eVar;
    }

    public final ObjectAnimator d(String str, Object obj, Property property) {
        ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(obj, e(str));
        objectAnimatorOfPropertyValuesHolder.setProperty(property);
        f(str).a(objectAnimatorOfPropertyValuesHolder);
        return objectAnimatorOfPropertyValuesHolder;
    }

    public final PropertyValuesHolder[] e(String str) {
        if (!g(str)) {
            throw new IllegalArgumentException();
        }
        PropertyValuesHolder[] propertyValuesHolderArr = (PropertyValuesHolder[]) this.f11414b.get(str);
        PropertyValuesHolder[] propertyValuesHolderArr2 = new PropertyValuesHolder[propertyValuesHolderArr.length];
        for (int i6 = 0; i6 < propertyValuesHolderArr.length; i6++) {
            propertyValuesHolderArr2[i6] = propertyValuesHolderArr[i6].clone();
        }
        return propertyValuesHolderArr2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof e) {
            return this.f11413a.equals(((e) obj).f11413a);
        }
        return false;
    }

    public final f f(String str) {
        l lVar = this.f11413a;
        if (lVar.get(str) != null) {
            return (f) lVar.get(str);
        }
        throw new IllegalArgumentException();
    }

    public final boolean g(String str) {
        return this.f11414b.get(str) != null;
    }

    public final void h(String str, PropertyValuesHolder[] propertyValuesHolderArr) {
        this.f11414b.put(str, propertyValuesHolderArr);
    }

    public final int hashCode() {
        return this.f11413a.hashCode();
    }

    public final String toString() {
        return "\n" + e.class.getName() + '{' + Integer.toHexString(System.identityHashCode(this)) + " timings: " + this.f11413a + "}\n";
    }
}
