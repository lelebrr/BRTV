package fa;

import android.view.MotionEvent;
import android.view.View;
import com.p2elite.brtv2.R;
import org.bitspark.android.keyboard.custom.MyKeyBoardView;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class j0 implements View.OnTouchListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6879a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f6880b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ androidx.recyclerview.widget.p1 f6881c;
    public final /* synthetic */ androidx.recyclerview.widget.k0 d;

    public /* synthetic */ j0(androidx.recyclerview.widget.k0 k0Var, androidx.recyclerview.widget.p1 p1Var, int i6, int i10) {
        this.f6879a = i10;
        this.d = k0Var;
        this.f6881c = p1Var;
        this.f6880b = i6;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        o0 o0Var;
        o0 o0Var2;
        o0 o0Var3;
        o0 o0Var4;
        switch (this.f6879a) {
            case 0:
                if (motionEvent.getAction() == 1 && (o0Var = ((m0) this.d).f6915a) != null) {
                    o0Var.a(this.f6880b, ((l0) this.f6881c).itemView);
                }
                return false;
            case 1:
                if (motionEvent.getAction() == 1 && (o0Var2 = ((b1) this.d).f6818g) != null) {
                    o0Var2.a(this.f6880b, ((a1) this.f6881c).itemView);
                }
                return false;
            case 2:
                if (motionEvent.getAction() == 1 && (o0Var3 = ((m1) this.d).f6818g) != null) {
                    o0Var3.a(this.f6880b, ((l1) this.f6881c).itemView);
                }
                return false;
            case 3:
                if (motionEvent.getAction() == 1 && (o0Var4 = ((o1) this.d).f6818g) != null) {
                    o0Var4.a(this.f6880b, ((p1) this.f6881c).itemView);
                }
                return false;
            default:
                long eventTime = motionEvent.getEventTime();
                ma.a aVar = (ma.a) this.d;
                aVar.f8284i = eventTime;
                int action = motionEvent.getAction();
                t3.d dVar = (t3.d) this.f6881c;
                if (action != 0) {
                    int i6 = this.f6880b;
                    if (action == 1 || action == 3) {
                        aVar.f8289n.removeCallbacksAndMessages(null);
                        if (aVar.f8286k) {
                            aVar.f8286k = false;
                            aVar.f8287l = false;
                        }
                        dVar.b(view.getId()).setBackgroundResource(R.color.white);
                        na.a aVar2 = aVar.f;
                        if (aVar2 != null) {
                            aVar2.a(view, i6, false);
                        }
                    } else {
                        if (!aVar.f8286k) {
                            aVar.f8286k = aVar.f8284i - aVar.f8283h >= aVar.f8285j;
                        }
                        if (aVar.f8286k && !aVar.f8287l) {
                            aVar.f8289n.removeCallbacksAndMessages(null);
                            aVar.f8287l = true;
                            na.a aVar3 = aVar.f;
                            if (aVar3 != null) {
                                aVar3.a(view, i6, true);
                            }
                        }
                    }
                } else {
                    aVar.f8283h = motionEvent.getDownTime();
                    na.a aVar4 = aVar.f8281e;
                    if (aVar4 != null) {
                        MyKeyBoardView.a(aVar4.f8507a, view, dVar.getLayoutPosition());
                    }
                    dVar.b(view.getId()).setBackgroundResource(R.color.greySelectedText);
                    aVar.f8289n.postDelayed(new a3.c(this, 23, view), 500L);
                }
                return true;
        }
    }
}
