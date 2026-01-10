package androidx.transition;

import android.content.Context;
import android.util.AttributeSet;
import java.util.ArrayList;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class AutoTransition extends TransitionSet {
    public AutoTransition(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        J();
    }

    public final void J() {
        I(1);
        F(new Fade(2));
        ChangeBounds changeBounds = new ChangeBounds();
        changeBounds.f2998x = false;
        F(changeBounds);
        F(new Fade(1));
    }

    public AutoTransition() {
        this.f3032x = new ArrayList();
        this.f3033y = true;
        this.A = false;
        this.B = 0;
        J();
    }
}
