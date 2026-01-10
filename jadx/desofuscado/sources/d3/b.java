package d3;

import android.graphics.ColorSpace;
import android.graphics.ImageDecoder;
import android.os.Build;
import android.util.Log;
import android.util.Size;
import e3.n;
import e3.p;
import e3.v;
import v2.g;
import v2.h;
import v2.i;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b implements ImageDecoder.OnHeaderDecodedListener {

    /* renamed from: a, reason: collision with root package name */
    public final v f6049a = v.a();

    /* renamed from: b, reason: collision with root package name */
    public final int f6050b;

    /* renamed from: c, reason: collision with root package name */
    public final int f6051c;
    public final v2.a d;

    /* renamed from: e, reason: collision with root package name */
    public final n f6052e;
    public final boolean f;

    /* renamed from: g, reason: collision with root package name */
    public final i f6053g;

    public b(int i6, int i10, h hVar) {
        this.f6050b = i6;
        this.f6051c = i10;
        this.d = (v2.a) hVar.c(p.f);
        this.f6052e = (n) hVar.c(n.f6515g);
        g gVar = p.f6520i;
        this.f = hVar.c(gVar) != null && ((Boolean) hVar.c(gVar)).booleanValue();
        this.f6053g = (i) hVar.c(p.f6518g);
    }

    @Override // android.graphics.ImageDecoder.OnHeaderDecodedListener
    public final void onHeaderDecoded(ImageDecoder imageDecoder, ImageDecoder.ImageInfo imageInfo, ImageDecoder.Source source) {
        if (this.f6049a.c(this.f6050b, this.f6051c, this.f, false)) {
            imageDecoder.setAllocator(3);
        } else {
            imageDecoder.setAllocator(1);
        }
        if (this.d == v2.a.f10657b) {
            imageDecoder.setMemorySizePolicy(0);
        }
        imageDecoder.setOnPartialImageListener(new a());
        Size size = imageInfo.getSize();
        int width = this.f6050b;
        if (width == Integer.MIN_VALUE) {
            width = size.getWidth();
        }
        int height = this.f6051c;
        if (height == Integer.MIN_VALUE) {
            height = size.getHeight();
        }
        float fB = this.f6052e.b(size.getWidth(), size.getHeight(), width, height);
        int iRound = Math.round(size.getWidth() * fB);
        int iRound2 = Math.round(size.getHeight() * fB);
        if (Log.isLoggable("ImageDecoder", 2)) {
            Log.v("ImageDecoder", "Resizing from [" + size.getWidth() + "x" + size.getHeight() + "] to [" + iRound + "x" + iRound2 + "] scaleFactor: " + fB);
        }
        imageDecoder.setTargetSize(iRound, iRound2);
        i iVar = this.f6053g;
        if (iVar != null) {
            int i6 = Build.VERSION.SDK_INT;
            if (i6 >= 28) {
                imageDecoder.setTargetColorSpace(ColorSpace.get((iVar == i.f10666a && imageInfo.getColorSpace() != null && imageInfo.getColorSpace().isWideGamut()) ? ColorSpace.Named.DISPLAY_P3 : ColorSpace.Named.SRGB));
            } else if (i6 >= 26) {
                imageDecoder.setTargetColorSpace(ColorSpace.get(ColorSpace.Named.SRGB));
            }
        }
    }
}
