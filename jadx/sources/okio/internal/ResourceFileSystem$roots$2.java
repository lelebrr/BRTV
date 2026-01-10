package okio.internal;

import i9.a;
import j9.j;
import java.util.List;
import w8.f;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class ResourceFileSystem$roots$2 extends j implements a {
    final /* synthetic */ ResourceFileSystem this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ResourceFileSystem$roots$2(ResourceFileSystem resourceFileSystem) {
        super(0);
        this.this$0 = resourceFileSystem;
    }

    @Override // i9.a
    public final List<f> invoke() {
        ResourceFileSystem resourceFileSystem = this.this$0;
        return resourceFileSystem.toClasspathRoots(resourceFileSystem.classLoader);
    }
}
