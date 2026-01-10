package fa;

import android.content.DialogInterface;
import android.os.Message;
import android.view.View;
import com.p2elite.brtv2.R;
import org.bitspark.android.Spark;
import org.bitspark.android.beans.Group;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d1 implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6833a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f6834b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f6835c;
    public final /* synthetic */ Object d;

    public /* synthetic */ d1(Object obj, Object obj2, int i6, int i10) {
        this.f6833a = i10;
        this.d = obj;
        this.f6835c = obj2;
        this.f6834b = i6;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i6) {
        switch (this.f6833a) {
            case 0:
                Spark.f8662c2 = true;
                ((e1) this.f6835c).f6840a.setImageResource(R.mipmap.group_type_lock_0);
                f1 f1Var = (f1) this.d;
                f1Var.notifyItemChanged(f1Var.f6932a);
                ka.m0.E0.removeMessages(3);
                androidx.mediarouter.app.c cVar = ka.m0.E0;
                int i10 = this.f6834b;
                Message messageObtain = Message.obtain(cVar, 3, i10, 0);
                messageObtain.obj = ((Group) f1Var.f6850h.get(i10)).url;
                ka.m0.E0.sendMessage(messageObtain);
                break;
            default:
                Spark.f8662c2 = true;
                ka.n nVar = (ka.n) this.d;
                nVar.f7841b.c0();
                o9.d.y((View) this.f6835c);
                nVar.f7841b.X.notifyItemChanged(this.f6834b);
                break;
        }
    }
}
