package b3;

import android.content.Context;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class f implements com.bumptech.glide.load.data.e {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3181a;

    /* renamed from: b, reason: collision with root package name */
    public final Comparable f3182b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f3183c;
    public Object d;

    public /* synthetic */ f(int i6, Comparable comparable, Object obj) {
        this.f3181a = i6;
        this.f3182b = comparable;
        this.f3183c = obj;
    }

    public static f c(Context context, Uri uri, w2.b bVar) {
        return new f(2, uri, new w2.c(com.bumptech.glide.b.a(context).f3496c.b().f(), bVar, com.bumptech.glide.b.a(context).d, context.getContentResolver()));
    }

    @Override // com.bumptech.glide.load.data.e
    public final Class a() {
        switch (this.f3181a) {
            case 0:
                ((c) this.f3183c).getClass();
                return InputStream.class;
            case 1:
                return ((c) this.f3183c).b();
            default:
                return InputStream.class;
        }
    }

    @Override // com.bumptech.glide.load.data.e
    public final void b() throws IOException {
        switch (this.f3181a) {
            case 0:
                try {
                    ((ByteArrayInputStream) this.d).close();
                    break;
                } catch (IOException unused) {
                    return;
                }
            case 1:
                Object obj = this.d;
                if (obj != null) {
                    try {
                        switch (((c) this.f3183c).f3170a) {
                            case 4:
                                ((ParcelFileDescriptor) obj).close();
                                break;
                            default:
                                ((InputStream) obj).close();
                                break;
                        }
                        break;
                    } catch (IOException unused2) {
                        return;
                    }
                }
                break;
            default:
                InputStream inputStream = (InputStream) this.d;
                if (inputStream != null) {
                    try {
                        inputStream.close();
                        break;
                    } catch (IOException unused3) {
                        return;
                    }
                }
                break;
        }
    }

    @Override // com.bumptech.glide.load.data.e
    public final void cancel() {
        int i6 = this.f3181a;
    }

    @Override // com.bumptech.glide.load.data.e
    public final int e() {
        switch (this.f3181a) {
        }
        return 1;
    }

    @Override // com.bumptech.glide.load.data.e
    public final void f(com.bumptech.glide.g gVar, com.bumptech.glide.load.data.d dVar) throws Throwable {
        Object objOpen;
        switch (this.f3181a) {
            case 0:
                try {
                    ByteArrayInputStream byteArrayInputStreamA = c.a((String) this.f3182b);
                    this.d = byteArrayInputStreamA;
                    dVar.d(byteArrayInputStreamA);
                    break;
                } catch (IllegalArgumentException e5) {
                    dVar.c(e5);
                }
            case 1:
                try {
                    c cVar = (c) this.f3183c;
                    File file = (File) this.f3182b;
                    switch (cVar.f3170a) {
                        case 4:
                            objOpen = ParcelFileDescriptor.open(file, 268435456);
                            break;
                        default:
                            objOpen = new FileInputStream(file);
                            break;
                    }
                    this.d = objOpen;
                    dVar.d(objOpen);
                    break;
                } catch (FileNotFoundException e10) {
                    if (Log.isLoggable("FileLoader", 3)) {
                        Log.d("FileLoader", "Failed to open file", e10);
                    }
                    dVar.c(e10);
                    return;
                }
            default:
                try {
                    InputStream inputStreamI = i();
                    this.d = inputStreamI;
                    dVar.d(inputStreamI);
                    break;
                } catch (FileNotFoundException e11) {
                    if (Log.isLoggable("MediaStoreThumbFetcher", 3)) {
                        Log.d("MediaStoreThumbFetcher", "Failed to find thumbnail file", e11);
                    }
                    dVar.c(e11);
                    return;
                }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 6, insn: 0x0026: MOVE (r5 I:??[OBJECT, ARRAY]) = (r6 I:??[OBJECT, ARRAY]) (LINE:39), block:B:10:0x0026 */
    /* JADX WARN: Removed duplicated region for block: B:14:0x002d A[PHI: r6
  0x002d: PHI (r6v6 android.database.Cursor) = (r6v2 android.database.Cursor), (r6v8 android.database.Cursor) binds: [B:23:0x004c, B:13:0x002b] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:83:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.io.IOException, java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r5v0, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r5v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r6v1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.io.InputStream i() throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 235
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: b3.f.i():java.io.InputStream");
    }

    private final void d() {
    }

    private final void g() {
    }

    private final void h() {
    }
}
