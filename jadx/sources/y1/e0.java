package y1;

import android.view.View;
import java.util.ArrayList;
import java.util.HashMap;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class e0 {

    /* renamed from: b, reason: collision with root package name */
    public final View f11260b;

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f11259a = new HashMap();

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f11261c = new ArrayList();

    public e0(View view) {
        this.f11260b = view;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof e0)) {
            return false;
        }
        e0 e0Var = (e0) obj;
        return this.f11260b == e0Var.f11260b && this.f11259a.equals(e0Var.f11259a);
    }

    public final int hashCode() {
        return this.f11259a.hashCode() + (this.f11260b.hashCode() * 31);
    }

    public final String toString() {
        StringBuilder sbW = a.e.w("TransitionValues@" + Integer.toHexString(hashCode()) + ":\n", "    view = ");
        sbW.append(this.f11260b);
        sbW.append("\n");
        String strH = ea.q.h(sbW.toString(), "    values:");
        HashMap map = this.f11259a;
        for (String str : map.keySet()) {
            strH = strH + "    " + str + ": " + map.get(str) + "\n";
        }
        return strH;
    }
}
