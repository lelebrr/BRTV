package aa;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageManager;
import e2.h;
import i9.l;
import j9.i;
import j9.j;
import java.util.Locale;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c extends j implements l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f181a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f182b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ c(int i6, Object obj) {
        super(1);
        this.f181a = i6;
        this.f182b = obj;
    }

    @Override // i9.l
    public final Object invoke(Object obj) {
        switch (this.f181a) {
            case 0:
                ((e) this.f182b).b();
                break;
            case 1:
                ((h) this.f182b).f6471k = true;
                break;
            default:
                Activity activity = (Activity) obj;
                i.g(activity, "it");
                Locale localeB = ((f8.b) this.f182b).f6802b.B();
                i.g(localeB, "locale");
                u6.e.j(activity, localeB);
                Context applicationContext = activity.getApplicationContext();
                if (applicationContext != activity) {
                    i.b(applicationContext, "appContext");
                    u6.e.j(applicationContext, localeB);
                }
                try {
                    int i6 = activity.getPackageManager().getActivityInfo(activity.getComponentName(), 128).labelRes;
                    if (i6 != 0) {
                        activity.setTitle(i6);
                    }
                } catch (PackageManager.NameNotFoundException e5) {
                    e5.printStackTrace();
                }
                break;
        }
        return w8.l.f10832a;
    }
}
