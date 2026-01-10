package ka;

import android.content.DialogInterface;
import org.bitspark.android.Spark;
import org.bitspark.android.beans.ChannelBean;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class m implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ChannelBean f7815a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ r f7816b;

    public m(r rVar, ChannelBean channelBean) {
        this.f7816b = rVar;
        this.f7815a = channelBean;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i6) {
        Spark.f8662c2 = true;
        r rVar = this.f7816b;
        rVar.c0();
        fa.g0 g0Var = rVar.X;
        if (g0Var != null) {
            g0Var.notifyDataSetChanged();
        }
        rVar.b0(this.f7815a);
    }
}
