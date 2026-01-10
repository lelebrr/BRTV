package androidx.media3.datasource;

import android.text.TextUtils;
import androidx.media3.common.MimeTypes;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract /* synthetic */ class g {
    public static /* synthetic */ boolean a(String str) {
        if (str == null) {
            return false;
        }
        String strV = b7.b.v(str);
        if (TextUtils.isEmpty(strV)) {
            return false;
        }
        return ((strV.contains("text") && !strV.contains(MimeTypes.TEXT_VTT)) || strV.contains("html") || strV.contains("xml")) ? false : true;
    }
}
