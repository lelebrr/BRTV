package b1;

import android.content.pm.PackageManager;
import android.content.pm.Signature;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c extends x4.e {
    @Override // x4.e
    public final Signature[] m(PackageManager packageManager, String str) {
        return packageManager.getPackageInfo(str, 64).signatures;
    }
}
