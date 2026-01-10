package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.drawable.LayerDrawable;
import android.media.AudioDeviceInfo;
import android.media.AudioManager;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class a0 {
    public static boolean a(Context context) {
        for (AudioDeviceInfo audioDeviceInfo : ((AudioManager) context.getSystemService(AudioManager.class)).getDevices(2)) {
            int type = audioDeviceInfo.getType();
            if (type == 3 || type == 4 || type == 5 || type == 6 || type == 8 || type == 11 || type == 30 || type == 22 || type == 23 || type == 26 || type == 27) {
                return true;
            }
        }
        return false;
    }

    public static void b(LayerDrawable layerDrawable, LayerDrawable layerDrawable2, int i6) {
        layerDrawable2.setLayerGravity(i6, layerDrawable.getLayerGravity(i6));
        layerDrawable2.setLayerWidth(i6, layerDrawable.getLayerWidth(i6));
        layerDrawable2.setLayerHeight(i6, layerDrawable.getLayerHeight(i6));
        layerDrawable2.setLayerInsetLeft(i6, layerDrawable.getLayerInsetLeft(i6));
        layerDrawable2.setLayerInsetRight(i6, layerDrawable.getLayerInsetRight(i6));
        layerDrawable2.setLayerInsetTop(i6, layerDrawable.getLayerInsetTop(i6));
        layerDrawable2.setLayerInsetBottom(i6, layerDrawable.getLayerInsetBottom(i6));
        layerDrawable2.setLayerInsetStart(i6, layerDrawable.getLayerInsetStart(i6));
        layerDrawable2.setLayerInsetEnd(i6, layerDrawable.getLayerInsetEnd(i6));
    }
}
