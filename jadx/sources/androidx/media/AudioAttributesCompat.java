package androidx.media;

import a2.d;
import android.media.AudioAttributes;
import android.os.Build;
import android.util.SparseIntArray;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class AudioAttributesCompat implements d {

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int f2026b = 0;

    /* renamed from: a, reason: collision with root package name */
    public AudioAttributesImpl f2027a;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sparseIntArray.put(5, 1);
        sparseIntArray.put(6, 2);
        sparseIntArray.put(7, 2);
        sparseIntArray.put(8, 1);
        sparseIntArray.put(9, 1);
        sparseIntArray.put(10, 1);
    }

    public AudioAttributesCompat() {
    }

    public static int b(int i6, int i10) {
        if ((i6 & 1) == 1) {
            return 7;
        }
        if ((i6 & 4) == 4) {
            return 6;
        }
        switch (i10) {
            case 0:
            case 1:
            case 12:
            case 14:
            case 16:
                return 3;
            case 2:
                return 0;
            case 3:
                return 8;
            case 4:
                return 4;
            case 5:
            case 7:
            case 8:
            case 9:
            case 10:
                return 5;
            case 6:
                return 2;
            case 11:
                return 10;
            case 13:
                return 1;
            case 15:
            default:
                return 3;
        }
    }

    public static AudioAttributesCompat c(AudioAttributes audioAttributes) {
        return Build.VERSION.SDK_INT >= 26 ? new AudioAttributesCompat(new AudioAttributesImplApi26(audioAttributes)) : new AudioAttributesCompat(new AudioAttributesImplApi21(audioAttributes));
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof AudioAttributesCompat)) {
            return false;
        }
        AudioAttributesCompat audioAttributesCompat = (AudioAttributesCompat) obj;
        AudioAttributesImpl audioAttributesImpl = this.f2027a;
        return audioAttributesImpl == null ? audioAttributesCompat.f2027a == null : audioAttributesImpl.equals(audioAttributesCompat.f2027a);
    }

    public final int hashCode() {
        return this.f2027a.hashCode();
    }

    public final String toString() {
        return this.f2027a.toString();
    }

    public AudioAttributesCompat(AudioAttributesImpl audioAttributesImpl) {
        this.f2027a = audioAttributesImpl;
    }
}
