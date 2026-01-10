package ga;

import java.util.Comparator;
import org.bitspark.android.beans.ChannelBean;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class n implements Comparator {
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return Integer.compare(((ChannelBean.TagsBean) obj).getId(), ((ChannelBean.TagsBean) obj2).getId());
    }
}
