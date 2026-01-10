package androidx.media3.extractor.text.ttml;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
final class TtmlRegion {
    public final float height;
    public final String id;
    public final float line;
    public final int lineAnchor;
    public final int lineType;
    public final float position;
    public final float textSize;
    public final int textSizeType;
    public final int verticalType;
    public final float width;

    public TtmlRegion(String str) {
        this(str, -3.4028235E38f, -3.4028235E38f, Integer.MIN_VALUE, Integer.MIN_VALUE, -3.4028235E38f, -3.4028235E38f, Integer.MIN_VALUE, -3.4028235E38f, Integer.MIN_VALUE);
    }

    public TtmlRegion(String str, float f, float f3, int i6, int i10, float f4, float f5, int i11, float f10, int i12) {
        this.id = str;
        this.position = f;
        this.line = f3;
        this.lineType = i6;
        this.lineAnchor = i10;
        this.width = f4;
        this.height = f5;
        this.textSizeType = i11;
        this.textSize = f10;
        this.verticalType = i12;
    }
}
