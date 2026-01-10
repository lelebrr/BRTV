package y5;

import android.util.Property;
import android.view.ViewGroup;
import com.p2elite.brtv2.R;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class c extends Property {

    /* renamed from: a, reason: collision with root package name */
    public static final c f11411a = new c(Float.class, "childrenAlpha");

    @Override // android.util.Property
    public final Object get(Object obj) {
        Float f = (Float) ((ViewGroup) obj).getTag(R.id.mtrl_internal_children_alpha_tag);
        return f != null ? f : Float.valueOf(1.0f);
    }

    @Override // android.util.Property
    public final void set(Object obj, Object obj2) {
        ViewGroup viewGroup = (ViewGroup) obj;
        Float f = (Float) obj2;
        float fFloatValue = f.floatValue();
        viewGroup.setTag(R.id.mtrl_internal_children_alpha_tag, f);
        int childCount = viewGroup.getChildCount();
        for (int i6 = 0; i6 < childCount; i6++) {
            viewGroup.getChildAt(i6).setAlpha(fFloatValue);
        }
    }
}
