package s2;

import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class e extends ByteArrayOutputStream {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ f f9758a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(f fVar, int i6) {
        super(i6);
        this.f9758a = fVar;
    }

    @Override // java.io.ByteArrayOutputStream
    public final String toString() {
        int i6 = ((ByteArrayOutputStream) this).count;
        if (i6 > 0 && ((ByteArrayOutputStream) this).buf[i6 - 1] == 13) {
            i6--;
        }
        try {
            return new String(((ByteArrayOutputStream) this).buf, 0, i6, this.f9758a.f9760b.name());
        } catch (UnsupportedEncodingException e5) {
            throw new AssertionError(e5);
        }
    }
}
