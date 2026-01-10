package ka;

import java.util.Comparator;
import org.bitspark.android.beans.ChannelBean;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class l implements Comparator {
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return ((ChannelBean) obj).getName().getInit().compareTo(((ChannelBean) obj2).getName().getInit()) >= 0 ? 1 : -1;
    }
}
