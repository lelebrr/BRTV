package n0;

import android.view.DisplayCutout;
import android.view.WindowInsets;
import java.util.Objects;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class l1 extends k1 {
    public l1(r1 r1Var, WindowInsets windowInsets) {
        super(r1Var, windowInsets);
    }

    @Override // n0.o1
    public r1 a() {
        return r1.h(this.f8330c.consumeDisplayCutout(), null);
    }

    @Override // n0.j1, n0.o1
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof l1)) {
            return false;
        }
        l1 l1Var = (l1) obj;
        return Objects.equals(this.f8330c, l1Var.f8330c) && Objects.equals(this.f8332g, l1Var.f8332g);
    }

    @Override // n0.o1
    public k f() {
        DisplayCutout displayCutout = this.f8330c.getDisplayCutout();
        if (displayCutout == null) {
            return null;
        }
        return new k(displayCutout);
    }

    @Override // n0.o1
    public int hashCode() {
        return this.f8330c.hashCode();
    }

    public l1(r1 r1Var, l1 l1Var) {
        super(r1Var, l1Var);
    }
}
