package android.support.v4.media;

import android.graphics.drawable.Icon;
import android.media.AudioDeviceCallback;
import android.media.MediaDrmResetException;
import android.os.Parcelable;
import android.widget.SpinnerAdapter;
import android.widget.ThemedSpinnerAdapter;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract /* synthetic */ class a {
    public static /* bridge */ /* synthetic */ Icon g(Parcelable parcelable) {
        return (Icon) parcelable;
    }

    public static /* bridge */ /* synthetic */ AudioDeviceCallback h(Object obj) {
        return (AudioDeviceCallback) obj;
    }

    public static /* bridge */ /* synthetic */ ThemedSpinnerAdapter l(SpinnerAdapter spinnerAdapter) {
        return (ThemedSpinnerAdapter) spinnerAdapter;
    }

    public static /* bridge */ /* synthetic */ boolean w(Parcelable parcelable) {
        return parcelable instanceof Icon;
    }

    public static /* bridge */ /* synthetic */ boolean x(SpinnerAdapter spinnerAdapter) {
        return spinnerAdapter instanceof ThemedSpinnerAdapter;
    }

    public static /* bridge */ /* synthetic */ boolean y(Throwable th) {
        return th instanceof MediaDrmResetException;
    }
}
