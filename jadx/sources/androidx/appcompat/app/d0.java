package androidx.appcompat.app;

import android.view.KeyEvent;
import android.view.MotionEvent;
import androidx.appcompat.widget.ContentFrameLayout;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d0 extends ContentFrameLayout {

    /* renamed from: i, reason: collision with root package name */
    public final /* synthetic */ g0 f236i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d0(g0 g0Var, j.d dVar) {
        super(dVar, null);
        this.f236i = g0Var;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return this.f236i.u(keyEvent) || super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            int x10 = (int) motionEvent.getX();
            int y7 = (int) motionEvent.getY();
            if (x10 < -5 || y7 < -5 || x10 > getWidth() + 5 || y7 > getHeight() + 5) {
                g0 g0Var = this.f236i;
                g0Var.s(g0Var.A(0), true);
                return true;
            }
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public final void setBackgroundResource(int i6) {
        setBackgroundDrawable(com.bumptech.glide.c.h(getContext(), i6));
    }
}
