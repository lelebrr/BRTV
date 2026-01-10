package qa;

import android.app.Activity;
import androidx.appcompat.app.m0;
import com.p2elite.brtv2.R;
import org.bitspark.android.Spark;
import org.bitspark.android.beans.Menu;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class d implements i9.l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f9383a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f9384b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f9385c;

    public /* synthetic */ d(Object obj, int i6, Object obj2) {
        this.f9383a = i6;
        this.f9385c = obj;
        this.f9384b = obj2;
    }

    @Override // i9.l
    public final Object invoke(Object obj) {
        switch (this.f9383a) {
            case 0:
                String str = (String) obj;
                j9.i.f(str, a2.a.s("c0o4jP6gDhQ=\n", "HyVb7YrJYXo=\n"));
                Spark spark = (Spark) this.f9385c;
                int i6 = !str.equals(spark.getString(R.string.Top)) ? 1 : 0;
                g gVar = (g) this.f9384b;
                gVar.f9390a.i0.f = i6;
                spark.f8719s0.post(new m0(gVar, 16, str));
                gVar.a().a();
                break;
            case 1:
                Menu menu = (Menu) obj;
                j9.i.f(menu, a2.a.s("JeE=\n", "TJXQJQ/6um4=\n"));
                g gVar2 = (g) this.f9384b;
                int resizeMode = gVar2.f9390a.K1.getResizeMode();
                boolean zA = j9.i.a(menu.getName(), ((Spark) this.f9385c).getResources().getString(R.string.original));
                Spark spark2 = gVar2.f9390a;
                if (zA) {
                    if (2 != resizeMode) {
                        spark2.K1.setResizeMode(2);
                    }
                } else if (1 != resizeMode) {
                    spark2.K1.setResizeMode(1);
                }
                gVar2.a().a();
                break;
            default:
                String str2 = (String) obj;
                j9.i.f(str2, a2.a.s("+5gH9x3B5KXpkBY=\n", "iP1zg3Svg+s=\n"));
                Activity activity = ((o) this.f9385c).f9431a;
                boolean zEquals = str2.equals(activity.getString(R.string.Source));
                b bVar = (b) this.f9384b;
                if (zEquals || str2.equals(activity.getString(R.string.Subtitles_Language)) || str2.equals(activity.getString(R.string.Display_mode))) {
                    bVar.invoke(str2);
                }
                break;
        }
        return w8.l.f10832a;
    }

    public /* synthetic */ d(g gVar, Spark spark) {
        this.f9383a = 1;
        this.f9384b = gVar;
        this.f9385c = spark;
    }
}
