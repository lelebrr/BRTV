package x4;

import java.util.Arrays;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class j extends i {
    public final byte[] f;

    public j(byte[] bArr) {
        super(Arrays.copyOfRange(bArr, 0, 25));
        this.f = bArr;
    }

    @Override // x4.i
    public final byte[] y() {
        return this.f;
    }
}
