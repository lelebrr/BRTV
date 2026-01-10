package i3;

import android.util.Log;
import com.bumptech.glide.load.ImageHeaderParser$ImageType;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import x2.x;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class k implements v2.j {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f7337a;

    /* renamed from: b, reason: collision with root package name */
    public final b f7338b;

    /* renamed from: c, reason: collision with root package name */
    public final y2.f f7339c;

    public k(ArrayList arrayList, b bVar, y2.f fVar) {
        this.f7337a = arrayList;
        this.f7338b = bVar;
        this.f7339c = fVar;
    }

    @Override // v2.j
    public final x a(Object obj, int i6, int i10, v2.h hVar) throws IOException {
        byte[] byteArray;
        InputStream inputStream = (InputStream) obj;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(16384);
        try {
            byte[] bArr = new byte[16384];
            while (true) {
                int i11 = inputStream.read(bArr);
                if (i11 == -1) {
                    break;
                }
                byteArrayOutputStream.write(bArr, 0, i11);
            }
            byteArrayOutputStream.flush();
            byteArray = byteArrayOutputStream.toByteArray();
        } catch (IOException e5) {
            if (Log.isLoggable("StreamGifDecoder", 5)) {
                Log.w("StreamGifDecoder", "Error reading data from stream", e5);
            }
            byteArray = null;
        }
        if (byteArray == null) {
            return null;
        }
        return this.f7338b.a(ByteBuffer.wrap(byteArray), i6, i10, hVar);
    }

    @Override // v2.j
    public final boolean b(Object obj, v2.h hVar) {
        return !((Boolean) hVar.c(j.f7336b)).booleanValue() && u7.d.p(this.f7337a, (InputStream) obj, this.f7339c) == ImageHeaderParser$ImageType.GIF;
    }
}
