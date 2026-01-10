package ga;

import java.util.Comparator;
import org.bitspark.android.beans.EpgBeans;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class f implements Comparator {
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        EpgBeans.EpgBean epgBean = (EpgBeans.EpgBean) obj;
        EpgBeans.EpgBean epgBean2 = (EpgBeans.EpgBean) obj2;
        if (epgBean.getTime() == epgBean2.getTime()) {
            return 0;
        }
        String str = ea.h.f6672a;
        return epgBean.getTime().longValue() < epgBean2.getTime().longValue() ? -1 : 1;
    }
}
