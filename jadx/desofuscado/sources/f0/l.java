package f0;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.fonts.Font;
import android.graphics.fonts.FontFamily;
import android.graphics.fonts.FontStyle;
import android.os.ParcelFileDescriptor;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class l extends l5.a {
    public static Font V(FontFamily fontFamily, int i6) {
        FontStyle fontStyle = new FontStyle((i6 & 1) != 0 ? 700 : 400, (i6 & 2) != 0 ? 1 : 0);
        Font font = fontFamily.getFont(0);
        int iW = W(fontStyle, font.getStyle());
        for (int i10 = 1; i10 < fontFamily.getSize(); i10++) {
            Font font2 = fontFamily.getFont(i10);
            int iW2 = W(fontStyle, font2.getStyle());
            if (iW2 < iW) {
                font = font2;
                iW = iW2;
            }
        }
        return font;
    }

    public static int W(FontStyle fontStyle, FontStyle fontStyle2) {
        return (Math.abs(fontStyle.getWeight() - fontStyle2.getWeight()) / 100) + (fontStyle.getSlant() == fontStyle2.getSlant() ? 0 : 2);
    }

    @Override // l5.a
    public final Typeface l(Context context, e0.f fVar, Resources resources, int i6) throws IOException {
        try {
            FontFamily.Builder builder = null;
            for (e0.g gVar : fVar.f6381a) {
                try {
                    Font fontBuild = new Font.Builder(resources, gVar.f).setWeight(gVar.f6383b).setSlant(gVar.f6384c ? 1 : 0).setTtcIndex(gVar.f6385e).setFontVariationSettings(gVar.d).build();
                    if (builder == null) {
                        builder = new FontFamily.Builder(fontBuild);
                    } else {
                        builder.addFont(fontBuild);
                    }
                } catch (IOException unused) {
                }
            }
            if (builder == null) {
                return null;
            }
            FontFamily fontFamilyBuild = builder.build();
            return new Typeface.CustomFallbackBuilder(fontFamilyBuild).setStyle(V(fontFamilyBuild, i6).getStyle()).build();
        } catch (Exception unused2) {
            return null;
        }
    }

    @Override // l5.a
    public final Typeface m(Context context, k0.g[] gVarArr, int i6) throws IOException {
        ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor;
        ContentResolver contentResolver = context.getContentResolver();
        try {
            FontFamily.Builder builder = null;
            for (k0.g gVar : gVarArr) {
                try {
                    parcelFileDescriptorOpenFileDescriptor = contentResolver.openFileDescriptor(gVar.f7691a, "r", null);
                } catch (IOException unused) {
                }
                if (parcelFileDescriptorOpenFileDescriptor == null) {
                    if (parcelFileDescriptorOpenFileDescriptor != null) {
                    }
                } else {
                    try {
                        Font fontBuild = new Font.Builder(parcelFileDescriptorOpenFileDescriptor).setWeight(gVar.f7693c).setSlant(gVar.d ? 1 : 0).setTtcIndex(gVar.f7692b).build();
                        if (builder == null) {
                            builder = new FontFamily.Builder(fontBuild);
                        } else {
                            builder.addFont(fontBuild);
                        }
                    } catch (Throwable th) {
                        try {
                            parcelFileDescriptorOpenFileDescriptor.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
                parcelFileDescriptorOpenFileDescriptor.close();
            }
            if (builder == null) {
                return null;
            }
            FontFamily fontFamilyBuild = builder.build();
            return new Typeface.CustomFallbackBuilder(fontFamilyBuild).setStyle(V(fontFamilyBuild, i6).getStyle()).build();
        } catch (Exception unused2) {
            return null;
        }
    }

    @Override // l5.a
    public final Typeface n(Context context, InputStream inputStream) {
        throw new RuntimeException("Do not use this function in API 29 or later.");
    }

    @Override // l5.a
    public final Typeface o(Context context, Resources resources, int i6, String str, int i10) throws IOException {
        try {
            Font fontBuild = new Font.Builder(resources, i6).build();
            return new Typeface.CustomFallbackBuilder(new FontFamily.Builder(fontBuild).build()).setStyle(fontBuild.getStyle()).build();
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // l5.a
    public final k0.g s(int i6, k0.g[] gVarArr) {
        throw new RuntimeException("Do not use this function in API 29 or later.");
    }
}
