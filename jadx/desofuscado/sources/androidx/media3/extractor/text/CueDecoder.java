package androidx.media3.extractor.text;

import android.os.Bundle;
import android.os.Parcel;
import androidx.media3.common.g;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.BundleCollectionUtil;
import androidx.media3.common.util.UnstableApi;
import java.util.ArrayList;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public final class CueDecoder {
    static final String BUNDLE_FIELD_CUES = "c";
    static final String BUNDLE_FIELD_DURATION_US = "d";

    public CuesWithTiming decode(long j10, byte[] bArr, int i6, int i10) {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.unmarshall(bArr, i6, i10);
        parcelObtain.setDataPosition(0);
        Bundle bundle = parcelObtain.readBundle(Bundle.class.getClassLoader());
        parcelObtain.recycle();
        return new CuesWithTiming(BundleCollectionUtil.fromBundleList(new g(14), (ArrayList) Assertions.checkNotNull(bundle.getParcelableArrayList(BUNDLE_FIELD_CUES))), j10, bundle.getLong("d"));
    }
}
