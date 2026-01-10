package okio.internal;

import i9.l;
import j9.i;
import j9.j;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class ResourceFileSystem$toJarRoot$zip$1 extends j implements l {
    public static final ResourceFileSystem$toJarRoot$zip$1 INSTANCE = new ResourceFileSystem$toJarRoot$zip$1();

    public ResourceFileSystem$toJarRoot$zip$1() {
        super(1);
    }

    @Override // i9.l
    public final Boolean invoke(ZipEntry zipEntry) {
        i.f(zipEntry, "entry");
        return Boolean.valueOf(ResourceFileSystem.Companion.keepPath(zipEntry.getCanonicalPath()));
    }
}
