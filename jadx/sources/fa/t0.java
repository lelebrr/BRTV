package fa;

import android.os.Message;
import android.view.View;
import com.p2elite.brtv2.R;
import java.util.Iterator;
import org.bitspark.android.Spark;
import org.bitspark.android.beans.ChannelBean;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class t0 implements View.OnLongClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ChannelBean f6953a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f6954b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f6955c;
    public final /* synthetic */ x0 d;

    public t0(x0 x0Var, ChannelBean channelBean, int i6, int i10) {
        this.d = x0Var;
        this.f6953a = channelBean;
        this.f6954b = i6;
        this.f6955c = i10;
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) throws Throwable {
        if (this.f6953a.getLevel() >= 18) {
            return true;
        }
        if (ga.o.f7156e.contains("" + this.f6954b)) {
            ba.d.a(this.d.f6925a, 0, this.f6953a.getName().getInit() + " " + this.d.f6925a.getString(R.string.remove_fav)).show();
            ga.i iVar = Spark.Y1;
            ChannelBean channelBean = this.f6953a;
            synchronized (iVar) {
                Iterator it = ga.i.f7134g.iterator();
                while (it.hasNext()) {
                    if (((ChannelBean) it.next()).getChid() == channelBean.getChid()) {
                        it.remove();
                    }
                }
            }
            ga.o.a();
            x0 x0Var = this.d;
            int i6 = x0Var.f6974l;
            if (i6 == -5 || i6 == -20) {
                x0Var.f6972j.clear();
                this.d.f6972j.addAll(Spark.Y1.b());
                this.d.notifyItemRemoved(this.f6955c);
                this.d.notifyDataSetChanged();
                int i10 = this.f6955c;
                int i11 = i10 - 1;
                if (i10 == 0 && !this.d.f6972j.isEmpty()) {
                    i11 = 0;
                }
                if (i11 >= 0) {
                    this.d.notifyItemChanged(i11);
                    x0 x0Var2 = this.d;
                    x0Var2.d = i11;
                    x0Var2.f6926b = i11;
                    x0Var2.notifyItemChanged(i11);
                } else {
                    ka.m0.E0.removeMessages(3);
                    ka.m0.E0.sendMessage(Message.obtain(ka.m0.E0, 3, -5, 0));
                    Spark.X1.sendEmptyMessage(108);
                    ka.m0.F0 = ea.d.d;
                }
            } else {
                x0Var.notifyItemChanged(x0Var.f6926b);
                x0 x0Var3 = this.d;
                x0Var3.d = x0Var3.f6928e.getChildLayoutPosition(view);
                x0 x0Var4 = this.d;
                x0Var4.f6926b = x0Var4.f6928e.getChildLayoutPosition(view);
                x0 x0Var5 = this.d;
                x0Var5.notifyItemChanged(x0Var5.f6926b);
            }
        } else {
            ba.d.a(this.d.f6925a, 0, this.f6953a.getName().getInit() + " " + this.d.f6925a.getString(R.string.favorited)).show();
            ga.i iVar2 = Spark.Y1;
            ChannelBean channelBean2 = this.f6953a;
            iVar2.getClass();
            ga.i.f7134g.offer(channelBean2);
            da.c cVar = Spark.f8663d2;
            String str = ga.i.d;
            cVar.g(str);
            Spark.f8663d2.d(str, ga.i.f7134g, 315360000);
            ga.o.a();
            x0 x0Var6 = this.d;
            if (x0Var6.f6974l == -5) {
                x0Var6.notifyDataSetChanged();
            }
            x0 x0Var7 = this.d;
            x0Var7.notifyItemChanged(x0Var7.f6926b);
            x0 x0Var8 = this.d;
            x0Var8.d = x0Var8.f6928e.getChildLayoutPosition(view);
            x0 x0Var9 = this.d;
            x0Var9.f6926b = x0Var9.f6928e.getChildLayoutPosition(view);
            x0 x0Var10 = this.d;
            x0Var10.notifyItemChanged(x0Var10.f6926b);
        }
        ka.m0.F0 = ea.d.f6633e;
        return true;
    }
}
