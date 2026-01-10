package androidx.media3.common;

import androidx.media3.common.util.GlUtil;
import androidx.media3.common.util.UnstableApi;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public final class GlTextureInfo {
    public static final GlTextureInfo UNSET = new GlTextureInfo(-1, -1, -1, -1, -1);
    public final int fboId;
    public final int height;
    public final int rboId;
    public final int texId;
    public final int width;

    public GlTextureInfo(int i6, int i10, int i11, int i12, int i13) {
        this.texId = i6;
        this.fboId = i10;
        this.rboId = i11;
        this.width = i12;
        this.height = i13;
    }

    public void release() throws GlUtil.GlException {
        int i6 = this.texId;
        if (i6 != -1) {
            GlUtil.deleteTexture(i6);
        }
        int i10 = this.fboId;
        if (i10 != -1) {
            GlUtil.deleteFbo(i10);
        }
        int i11 = this.rboId;
        if (i11 != -1) {
            GlUtil.deleteRbo(i11);
        }
    }
}
