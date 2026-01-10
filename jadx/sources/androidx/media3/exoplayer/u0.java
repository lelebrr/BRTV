package androidx.media3.exoplayer;

import androidx.media3.exoplayer.RendererCapabilities;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract /* synthetic */ class u0 {
    public static int c(int i6) {
        return e(i6, 0, 0, 0);
    }

    public static int d(int i6, int i10, int i11) {
        return g(i6, i10, i11, 0, 128, 0);
    }

    public static int e(int i6, int i10, int i11, int i12) {
        return g(i6, i10, i11, 0, 128, i12);
    }

    public static int f(int i6, int i10, int i11, int i12, int i13) {
        return g(i6, i10, i11, i12, i13, 0);
    }

    public static int g(int i6, int i10, int i11, int i12, int i13, int i14) {
        return i6 | i10 | i11 | i12 | i13 | i14;
    }

    public static int h(int i6) {
        return i6 & 24;
    }

    public static int i(int i6) {
        return i6 & RendererCapabilities.AUDIO_OFFLOAD_SUPPORT_MASK;
    }

    public static int j(int i6) {
        return i6 & RendererCapabilities.DECODER_SUPPORT_MASK;
    }

    public static int k(int i6) {
        return i6 & 7;
    }

    public static int l(int i6) {
        return i6 & 64;
    }

    public static int m(int i6) {
        return i6 & 32;
    }

    public static boolean n(int i6, boolean z7) {
        int iK = k(i6);
        return iK == 4 || (z7 && iK == 3);
    }

    public static void a(RendererCapabilities rendererCapabilities) {
    }

    public static void b(RendererCapabilities rendererCapabilities, RendererCapabilities.Listener listener) {
    }
}
