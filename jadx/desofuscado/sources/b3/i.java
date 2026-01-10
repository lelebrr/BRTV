package b3;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class i implements com.bumptech.glide.load.data.e {

    /* renamed from: a, reason: collision with root package name */
    public final Resources.Theme f3194a;

    /* renamed from: b, reason: collision with root package name */
    public final Resources f3195b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f3196c;
    public final int d;

    /* renamed from: e, reason: collision with root package name */
    public Object f3197e;

    public i(Resources.Theme theme, Resources resources, h hVar, int i6) {
        this.f3194a = theme;
        this.f3195b = resources;
        this.f3196c = hVar;
        this.d = i6;
    }

    @Override // com.bumptech.glide.load.data.e
    public final Class a() {
        switch (((h) this.f3196c).f3190a) {
            case 0:
                return AssetFileDescriptor.class;
            case 1:
                return Drawable.class;
            default:
                return InputStream.class;
        }
    }

    @Override // com.bumptech.glide.load.data.e
    public final void b() throws IOException {
        Object obj = this.f3197e;
        if (obj != null) {
            try {
                switch (((h) this.f3196c).f3190a) {
                    case 0:
                        ((AssetFileDescriptor) obj).close();
                        break;
                    case 1:
                        break;
                    default:
                        ((InputStream) obj).close();
                        break;
                }
            } catch (IOException unused) {
            }
        }
    }

    @Override // com.bumptech.glide.load.data.e
    public final int e() {
        return 1;
    }

    @Override // com.bumptech.glide.load.data.e
    public final void f(com.bumptech.glide.g gVar, com.bumptech.glide.load.data.d dVar) throws Resources.NotFoundException {
        Object objOpenRawResourceFd;
        try {
            Object obj = this.f3196c;
            Resources.Theme theme = this.f3194a;
            Resources resources = this.f3195b;
            int i6 = this.d;
            h hVar = (h) obj;
            switch (hVar.f3190a) {
                case 0:
                    objOpenRawResourceFd = resources.openRawResourceFd(i6);
                    break;
                case 1:
                    Context context = hVar.f3191b;
                    objOpenRawResourceFd = o9.d.n(context, context, i6, theme);
                    break;
                default:
                    objOpenRawResourceFd = resources.openRawResource(i6);
                    break;
            }
            this.f3197e = objOpenRawResourceFd;
            dVar.d(objOpenRawResourceFd);
        } catch (Resources.NotFoundException e5) {
            dVar.c(e5);
        }
    }

    @Override // com.bumptech.glide.load.data.e
    public final void cancel() {
    }
}
