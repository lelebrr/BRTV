package d2;

import okio.Buffer;
import okio.ForwardingSource;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b extends ForwardingSource {

    /* renamed from: a, reason: collision with root package name */
    public Exception f6015a;

    @Override // okio.ForwardingSource, okio.Source
    public final long read(Buffer buffer, long j10) throws Exception {
        try {
            return super.read(buffer, j10);
        } catch (Exception e5) {
            this.f6015a = e5;
            throw e5;
        }
    }
}
