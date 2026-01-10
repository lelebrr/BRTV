package androidx.media3.common;

import android.view.ViewGroup;
import java.util.List;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public interface AdViewProvider {
    List<AdOverlayInfo> getAdOverlayInfos();

    ViewGroup getAdViewGroup();
}
