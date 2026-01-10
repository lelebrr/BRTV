package b3;

import android.net.Uri;
import android.text.TextUtils;
import java.io.File;
import java.net.URL;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d0 implements u {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3175a;

    /* renamed from: b, reason: collision with root package name */
    public final u f3176b;

    public /* synthetic */ d0(u uVar, int i6) {
        this.f3175a = i6;
        this.f3176b = uVar;
    }

    @Override // b3.u
    public final t a(Object obj, int i6, int i10, v2.h hVar) {
        Uri uriFromFile;
        switch (this.f3175a) {
            case 0:
                String str = (String) obj;
                if (TextUtils.isEmpty(str)) {
                    uriFromFile = null;
                } else if (str.charAt(0) == '/') {
                    uriFromFile = Uri.fromFile(new File(str));
                } else {
                    Uri uri = Uri.parse(str);
                    uriFromFile = uri.getScheme() == null ? Uri.fromFile(new File(str)) : uri;
                }
                if (uriFromFile == null) {
                    return null;
                }
                u uVar = this.f3176b;
                if (uVar.b(uriFromFile)) {
                    return uVar.a(uriFromFile, i6, i10, hVar);
                }
                return null;
            default:
                return this.f3176b.a(new k((URL) obj), i6, i10, hVar);
        }
    }

    @Override // b3.u
    public final /* bridge */ /* synthetic */ boolean b(Object obj) {
        switch (this.f3175a) {
            case 0:
                break;
            default:
                break;
        }
        return true;
    }
}
