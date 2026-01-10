package com.lzy.okgo.callback;

import android.graphics.Bitmap;
import android.widget.ImageView;
import com.lzy.okgo.convert.BitmapConvert;
import okhttp3.Response;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class BitmapCallback extends AbsCallback<Bitmap> {
    private BitmapConvert convert;

    public BitmapCallback() {
        this.convert = new BitmapConvert();
    }

    @Override // com.lzy.okgo.convert.Converter
    public Bitmap convertResponse(Response response) throws Throwable {
        Bitmap bitmapConvertResponse = this.convert.convertResponse(response);
        response.close();
        return bitmapConvertResponse;
    }

    public BitmapCallback(int i6, int i10) {
        this.convert = new BitmapConvert(i6, i10);
    }

    public BitmapCallback(int i6, int i10, Bitmap.Config config, ImageView.ScaleType scaleType) {
        this.convert = new BitmapConvert(i6, i10, config, scaleType);
    }
}
