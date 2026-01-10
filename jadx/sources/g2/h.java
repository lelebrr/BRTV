package g2;

import android.webkit.MimeTypeMap;
import java.io.File;
import okio.FileSystem;
import okio.Path;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class h implements g {

    /* renamed from: a, reason: collision with root package name */
    public final File f7074a;

    public h(File file) {
        this.f7074a = file;
    }

    @Override // g2.g
    public final Object a(a9.d dVar) {
        Path.Companion companion = Path.Companion;
        File file = this.f7074a;
        d2.m mVar = new d2.m(Path.Companion.get$default(companion, file, false, 1, (Object) null), FileSystem.SYSTEM, null, null);
        MimeTypeMap singleton = MimeTypeMap.getSingleton();
        String name = file.getName();
        j9.i.e(name, "getName(...)");
        return new m(mVar, singleton.getMimeTypeFromExtension(r9.f.k0('.', name, "")), d2.f.f6027c);
    }
}
