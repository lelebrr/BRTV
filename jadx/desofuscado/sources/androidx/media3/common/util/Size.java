package androidx.media3.common.util;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public final class Size {
    public static final Size UNKNOWN = new Size(-1, -1);
    public static final Size ZERO = new Size(0, 0);
    private final int height;
    private final int width;

    public Size(int i6, int i10) {
        Assertions.checkArgument((i6 == -1 || i6 >= 0) && (i10 == -1 || i10 >= 0));
        this.width = i6;
        this.height = i10;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Size)) {
            return false;
        }
        Size size = (Size) obj;
        return this.width == size.width && this.height == size.height;
    }

    public int getHeight() {
        return this.height;
    }

    public int getWidth() {
        return this.width;
    }

    public int hashCode() {
        int i6 = this.height;
        int i10 = this.width;
        return i6 ^ ((i10 >>> 16) | (i10 << 16));
    }

    public String toString() {
        return this.width + "x" + this.height;
    }
}
