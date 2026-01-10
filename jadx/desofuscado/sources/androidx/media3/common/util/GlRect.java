package androidx.media3.common.util;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public final class GlRect {
    public int bottom;
    public int left;
    public int right;
    public int top;

    public GlRect(int i6, int i10) {
        this(0, 0, i6, i10);
    }

    public GlRect(int i6, int i10, int i11, int i12) {
        Assertions.checkArgument(i6 <= i11 && i10 <= i12);
        this.left = i6;
        this.bottom = i10;
        this.right = i11;
        this.top = i12;
    }
}
