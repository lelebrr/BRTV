package b3;

import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class e implements com.bumptech.glide.load.data.e {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3177a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f3178b;

    public /* synthetic */ e(int i6, Object obj) {
        this.f3177a = i6;
        this.f3178b = obj;
    }

    @Override // com.bumptech.glide.load.data.e
    public final Class a() {
        switch (this.f3177a) {
            case 0:
                return ByteBuffer.class;
            default:
                return this.f3178b.getClass();
        }
    }

    @Override // com.bumptech.glide.load.data.e
    public final void b() {
        int i6 = this.f3177a;
    }

    @Override // com.bumptech.glide.load.data.e
    public final void cancel() {
        int i6 = this.f3177a;
    }

    @Override // com.bumptech.glide.load.data.e
    public final int e() {
        switch (this.f3177a) {
        }
        return 1;
    }

    @Override // com.bumptech.glide.load.data.e
    public final void f(com.bumptech.glide.g gVar, com.bumptech.glide.load.data.d dVar) {
        switch (this.f3177a) {
            case 0:
                try {
                    dVar.d(r3.a.a((File) this.f3178b));
                    break;
                } catch (IOException e5) {
                    if (Log.isLoggable("ByteBufferFileLoader", 3)) {
                        Log.d("ByteBufferFileLoader", "Failed to obtain ByteBuffer for file", e5);
                    }
                    dVar.c(e5);
                    return;
                }
            default:
                dVar.d(this.f3178b);
                break;
        }
    }

    private final void c() {
    }

    private final void d() {
    }

    private final void g() {
    }

    private final void h() {
    }
}
