package i2;

import java.io.File;
import m2.m;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a implements b {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f7299a;

    public a(boolean z7) {
        this.f7299a = z7;
    }

    @Override // i2.b
    public final String a(Object obj, m mVar) {
        File file = (File) obj;
        if (!this.f7299a) {
            return file.getPath();
        }
        return file.getPath() + ':' + file.lastModified();
    }
}
