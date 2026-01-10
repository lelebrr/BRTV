package fa;

import android.os.Message;
import android.util.SparseArray;
import android.view.View;
import com.p2elite.brtv2.R;
import com.tencent.mars.xlog.Log;
import org.bitspark.android.Spark;
import org.bitspark.android.beans.Group;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c1 implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6824a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ e1 f6825b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ f1 f6826c;

    public c1(f1 f1Var, int i6, e1 e1Var) {
        this.f6826c = f1Var;
        this.f6824a = i6;
        this.f6825b = e1Var;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i6 = 0;
        String strS = a2.a.s("9T7WIg8oc1TiNdMVCSJ0\n", "o1GyZX1HBiQ=\n");
        StringBuilder sb = new StringBuilder();
        sb.append(a2.a.s("+eWdOJDaAw==\n", "uon0W/vrI6s=\n"));
        f1 f1Var = this.f6826c;
        sb.append(f1Var.f6934c.getChildLayoutPosition(view));
        sb.append(a2.a.s("7w==\n", "zsANABph/z4=\n"));
        String string = sb.toString();
        boolean z7 = org.bitspark.android.utils.m.f8784b;
        Log.i(strS, string);
        f1Var.notifyItemChanged(f1Var.f6932a);
        f1Var.f6933b = f1Var.f6934c.getChildLayoutPosition(view);
        int childLayoutPosition = f1Var.f6934c.getChildLayoutPosition(view);
        f1Var.f6932a = childLayoutPosition;
        f1Var.notifyItemChanged(childLayoutPosition);
        SparseArray sparseArray = f1Var.f6850h;
        int i10 = this.f6824a;
        if (((Group) sparseArray.get(i10)).restrictedAccess) {
            boolean z10 = Spark.f8662c2;
            e1 e1Var = this.f6825b;
            if (!z10) {
                l6.h hVar = new l6.h(f1Var.f6849g);
                hVar.f8017c = new d1(f1Var, e1Var, i10, i6);
                hVar.b().show();
            } else {
                f1Var.notifyItemChanged(f1Var.f6932a);
                e1Var.f6840a.setImageResource(R.mipmap.group_type_lock_1);
                ka.m0.E0.removeMessages(3);
                ka.m0.E0.sendMessage(Message.obtain(ka.m0.E0, 3, i10, 0));
            }
        }
    }
}
