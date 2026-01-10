package ea;

import android.view.KeyEvent;
import android.view.View;
import org.bitspark.android.Spark;
import org.bitspark.android.beans.VodMenu;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b0 implements View.OnKeyListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6622a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Spark f6623b;

    public /* synthetic */ b0(Spark spark, int i6) {
        this.f6622a = i6;
        this.f6623b = spark;
    }

    @Override // android.view.View.OnKeyListener
    public final boolean onKey(View view, int i6, KeyEvent keyEvent) {
        String name;
        switch (this.f6622a) {
            case 0:
                int iD = 0;
                Spark spark = this.f6623b;
                if (19 == i6) {
                    if (keyEvent.getAction() == 0) {
                        ta.a aVar = spark.i0;
                        if (aVar.f10268x < aVar.D.size() && (name = ((VodMenu) aVar.E.get(aVar.f10268x)).getName()) != null) {
                            if (name.equals(e.f6639c.name())) {
                                iD = aVar.f10265u;
                            } else if (name.equals(e.f6638b.name())) {
                                iD = aVar.d(0);
                            } else if (name.equals(e.f6640e.name())) {
                                iD = aVar.f10267w;
                            }
                        }
                        o9.d.z(spark.A0, iD);
                        break;
                    }
                } else if (!spark.K0(i6, keyEvent) && (i6 != 20 || !view.isShown())) {
                }
                break;
            case 1:
                Spark spark2 = this.f6623b;
                if (i6 == 20) {
                    if (keyEvent.getAction() == 0) {
                        o9.d.z(spark2.f8734z0, spark2.f8723u0.f6817e);
                        break;
                    }
                } else if (i6 == 19) {
                    if (spark2.B0.isShown() && keyEvent.getAction() == 0) {
                        o9.d.z(spark2.B0, spark2.i0.f10263s);
                        break;
                    }
                } else if (spark2.K0(i6, keyEvent)) {
                }
                break;
            case 2:
                Spark spark3 = this.f6623b;
                if (i6 == 20) {
                    if (keyEvent.getAction() == 0) {
                        o9.d.z(spark3.A0, spark3.i0.d(0));
                        break;
                    }
                } else if (spark3.K0(i6, keyEvent)) {
                }
                break;
        }
        return this.f6623b.K0(i6, keyEvent);
    }
}
