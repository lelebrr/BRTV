package d2;

import androidx.media3.common.MimeTypes;
import java.util.LinkedHashSet;
import x8.u;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class l {

    /* renamed from: a, reason: collision with root package name */
    public static final LinkedHashSet f6040a;

    static {
        String[] strArr = {MimeTypes.IMAGE_JPEG, MimeTypes.IMAGE_WEBP, MimeTypes.IMAGE_HEIC, MimeTypes.IMAGE_HEIF};
        LinkedHashSet linkedHashSet = new LinkedHashSet(u.p(4));
        for (int i6 = 0; i6 < 4; i6++) {
            linkedHashSet.add(strArr[i6]);
        }
        f6040a = linkedHashSet;
    }
}
