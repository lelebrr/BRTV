package b;

import a4.k;
import java.io.File;
import java.util.concurrent.CopyOnWriteArraySet;
import q1.f0;
import r3.f;
import r3.g;
import z2.c;
import z2.d;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a implements g {

    /* renamed from: a, reason: collision with root package name */
    public volatile Object f3092a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f3093b;

    public /* synthetic */ a(Object obj) {
        this.f3093b = obj;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:8:0x0015. Please report as an issue. */
    public z2.a a() {
        File file;
        File file2;
        if (((z2.a) this.f3092a) == null) {
            synchronized (this) {
                try {
                    if (((z2.a) this.f3092a) == null) {
                        d dVar = (d) this.f3093b;
                        k kVar = dVar.f11517b;
                        switch (kVar.f132a) {
                            case 4:
                                File externalCacheDir = kVar.f133b.getExternalCacheDir();
                                if (externalCacheDir != null) {
                                    file = new File(externalCacheDir, "image_manager_disk_cache");
                                    file2 = file;
                                    break;
                                } else {
                                    file2 = null;
                                    break;
                                }
                            default:
                                File cacheDir = kVar.f133b.getCacheDir();
                                if (cacheDir != null) {
                                    file = new File(cacheDir, "image_manager_disk_cache");
                                    file2 = file;
                                    break;
                                }
                                file2 = null;
                                break;
                        }
                        c cVar = null;
                        if (file2 != null && (file2.isDirectory() || file2.mkdirs())) {
                            cVar = new c(file2, dVar.f11516a);
                        }
                        this.f3092a = cVar;
                    }
                    if (((z2.a) this.f3092a) == null) {
                        this.f3092a = new f0(11);
                    }
                } finally {
                }
            }
        }
        return (z2.a) this.f3092a;
    }

    @Override // r3.g
    public Object get() {
        if (this.f3092a == null) {
            synchronized (this) {
                try {
                    if (this.f3092a == null) {
                        Object obj = ((g) this.f3093b).get();
                        f.c(obj, "Argument must not be null");
                        this.f3092a = obj;
                    }
                } finally {
                }
            }
        }
        return this.f3092a;
    }

    public a() {
        this.f3093b = new CopyOnWriteArraySet();
    }
}
