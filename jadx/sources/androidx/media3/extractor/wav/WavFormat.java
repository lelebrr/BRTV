package androidx.media3.extractor.wav;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
final class WavFormat {
    public final int averageBytesPerSecond;
    public final int bitsPerSample;
    public final int blockSize;
    public final byte[] extraData;
    public final int formatType;
    public final int frameRateHz;
    public final int numChannels;

    public WavFormat(int i6, int i10, int i11, int i12, int i13, int i14, byte[] bArr) {
        this.formatType = i6;
        this.numChannels = i10;
        this.frameRateHz = i11;
        this.averageBytesPerSecond = i12;
        this.blockSize = i13;
        this.bitsPerSample = i14;
        this.extraData = bArr;
    }
}
