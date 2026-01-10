package t1;

import android.content.res.AssetManager;
import android.os.Build;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.Serializable;
import java.util.concurrent.Executor;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final Executor f10060a;

    /* renamed from: b, reason: collision with root package name */
    public final c f10061b;

    /* renamed from: c, reason: collision with root package name */
    public final byte[] f10062c;
    public final File d;

    /* renamed from: e, reason: collision with root package name */
    public final String f10063e;
    public boolean f = false;

    /* renamed from: g, reason: collision with root package name */
    public b[] f10064g;

    /* renamed from: h, reason: collision with root package name */
    public byte[] f10065h;

    public a(AssetManager assetManager, Executor executor, c cVar, String str, File file) {
        this.f10060a = executor;
        this.f10061b = cVar;
        this.f10063e = str;
        this.d = file;
        int i6 = Build.VERSION.SDK_INT;
        byte[] bArr = null;
        if (i6 >= 24 && i6 <= 34) {
            switch (i6) {
                case 24:
                case 25:
                    bArr = d.f10078h;
                    break;
                case 26:
                    bArr = d.f10077g;
                    break;
                case 27:
                    bArr = d.f;
                    break;
                case 28:
                case 29:
                case 30:
                    bArr = d.f10076e;
                    break;
                case 31:
                case 32:
                case 33:
                case 34:
                    bArr = d.d;
                    break;
            }
        }
        this.f10062c = bArr;
    }

    public final FileInputStream a(AssetManager assetManager, String str) {
        try {
            return assetManager.openFd(str).createInputStream();
        } catch (FileNotFoundException e5) {
            String message = e5.getMessage();
            if (message != null && message.contains("compressed")) {
                this.f10061b.i();
            }
            return null;
        }
    }

    public final void b(int i6, Serializable serializable) {
        this.f10060a.execute(new androidx.media3.common.util.d(this, i6, serializable, 2));
    }
}
