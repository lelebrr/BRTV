package com.lzy.okgo.convert;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.widget.ImageView;
import okhttp3.Response;
import okhttp3.ResponseBody;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class BitmapConvert implements Converter<Bitmap> {
    private Bitmap.Config decodeConfig;
    private int maxHeight;
    private int maxWidth;
    private ImageView.ScaleType scaleType;

    public BitmapConvert() {
        this(1000, 1000, Bitmap.Config.ARGB_8888, ImageView.ScaleType.CENTER_INSIDE);
    }

    private static int findBestSampleSize(int i6, int i10, int i11, int i12) {
        double dMin = Math.min(i6 / i11, i10 / i12);
        float f = 1.0f;
        while (true) {
            float f3 = 2.0f * f;
            if (f3 > dMin) {
                return (int) f;
            }
            f = f3;
        }
    }

    private static int getResizedDimension(int i6, int i10, int i11, int i12, ImageView.ScaleType scaleType) {
        if (i6 == 0 && i10 == 0) {
            return i11;
        }
        if (scaleType == ImageView.ScaleType.FIT_XY) {
            return i6 == 0 ? i11 : i6;
        }
        if (i6 == 0) {
            return (int) (i11 * (i10 / i12));
        }
        if (i10 == 0) {
            return i6;
        }
        double d = i12 / i11;
        if (scaleType == ImageView.ScaleType.CENTER_CROP) {
            double d10 = i10;
            return ((double) i6) * d < d10 ? (int) (d10 / d) : i6;
        }
        double d11 = i10;
        return ((double) i6) * d > d11 ? (int) (d11 / d) : i6;
    }

    private Bitmap parse(byte[] bArr) throws OutOfMemoryError {
        BitmapFactory.Options options = new BitmapFactory.Options();
        if (this.maxWidth == 0 && this.maxHeight == 0) {
            options.inPreferredConfig = this.decodeConfig;
            return BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
        }
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
        int i6 = options.outWidth;
        int i10 = options.outHeight;
        int resizedDimension = getResizedDimension(this.maxWidth, this.maxHeight, i6, i10, this.scaleType);
        int resizedDimension2 = getResizedDimension(this.maxHeight, this.maxWidth, i10, i6, this.scaleType);
        options.inJustDecodeBounds = false;
        options.inSampleSize = findBestSampleSize(i6, i10, resizedDimension, resizedDimension2);
        Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
        if (bitmapDecodeByteArray == null) {
            return bitmapDecodeByteArray;
        }
        if (bitmapDecodeByteArray.getWidth() <= resizedDimension && bitmapDecodeByteArray.getHeight() <= resizedDimension2) {
            return bitmapDecodeByteArray;
        }
        Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmapDecodeByteArray, resizedDimension, resizedDimension2, true);
        bitmapDecodeByteArray.recycle();
        return bitmapCreateScaledBitmap;
    }

    public BitmapConvert(int i6, int i10) {
        this(i6, i10, Bitmap.Config.ARGB_8888, ImageView.ScaleType.CENTER_INSIDE);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.lzy.okgo.convert.Converter
    public Bitmap convertResponse(Response response) throws Throwable {
        ResponseBody responseBodyBody = response.body();
        if (responseBodyBody == null) {
            return null;
        }
        return parse(responseBodyBody.bytes());
    }

    public BitmapConvert(int i6, int i10, Bitmap.Config config, ImageView.ScaleType scaleType) {
        this.maxWidth = i6;
        this.maxHeight = i10;
        this.decodeConfig = config;
        this.scaleType = scaleType;
    }
}
