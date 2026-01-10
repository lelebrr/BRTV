package qa;

import android.view.View;
import i9.q;
import org.bitspark.android.beans.SettingBean;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class i implements q {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ l f9395a;

    public final void a(Object obj, Object obj2, Object obj3) {
        SettingBean settingBean = (SettingBean) obj3;
        j9.i.f((View) obj, a2.a.s("oA==\n", "1k0JXnvqQ54=\n"));
        j9.i.f(settingBean, a2.a.s("hJ7O6XSqKdGSmtQ=\n", "9/u6nR3ETpM=\n"));
        l lVar = this.f9395a;
        int iIndexOf = lVar.C.indexOf(settingBean);
        if (iIndexOf < 0) {
            iIndexOf = 0;
        }
        lVar.G = iIndexOf;
    }
}
