package androidx.media3.common.text;

import android.os.Bundle;
import androidx.media3.common.g;
import androidx.media3.common.util.BundleCollectionUtil;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import d7.c5;
import d7.g1;
import d7.s1;
import d7.u1;
import java.util.ArrayList;
import java.util.List;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class CueGroup {

    @UnstableApi
    public static final CueGroup EMPTY_TIME_ZERO;
    private static final String FIELD_CUES;
    private static final String FIELD_PRESENTATION_TIME_US;
    public final u1 cues;

    @UnstableApi
    public final long presentationTimeUs;

    static {
        g1 g1Var = u1.f6276b;
        EMPTY_TIME_ZERO = new CueGroup(c5.f6115e, 0L);
        FIELD_CUES = Util.intToStringMaxRadix(0);
        FIELD_PRESENTATION_TIME_US = Util.intToStringMaxRadix(1);
    }

    @UnstableApi
    public CueGroup(List<Cue> list, long j10) {
        this.cues = u1.n(list);
        this.presentationTimeUs = j10;
    }

    private static u1 filterOutBitmapCues(List<Cue> list) {
        s1 s1VarK = u1.k();
        for (int i6 = 0; i6 < list.size(); i6++) {
            if (list.get(i6).bitmap == null) {
                s1VarK.a(list.get(i6));
            }
        }
        return s1VarK.g();
    }

    @UnstableApi
    public static CueGroup fromBundle(Bundle bundle) {
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(FIELD_CUES);
        return new CueGroup(parcelableArrayList == null ? c5.f6115e : BundleCollectionUtil.fromBundleList(new g(14), parcelableArrayList), bundle.getLong(FIELD_PRESENTATION_TIME_US));
    }

    @UnstableApi
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList(FIELD_CUES, BundleCollectionUtil.toBundleArrayList(filterOutBitmapCues(this.cues), new g(15)));
        bundle.putLong(FIELD_PRESENTATION_TIME_US, this.presentationTimeUs);
        return bundle;
    }
}
