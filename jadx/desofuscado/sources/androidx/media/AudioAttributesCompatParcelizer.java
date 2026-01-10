package androidx.media;

import a2.b;
import a2.d;
import java.lang.reflect.InvocationTargetException;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class AudioAttributesCompatParcelizer {
    public static AudioAttributesCompat read(b bVar) {
        AudioAttributesCompat audioAttributesCompat = new AudioAttributesCompat();
        d dVarH = audioAttributesCompat.f2027a;
        if (bVar.e(1)) {
            dVarH = bVar.h();
        }
        audioAttributesCompat.f2027a = (AudioAttributesImpl) dVarH;
        return audioAttributesCompat;
    }

    public static void write(AudioAttributesCompat audioAttributesCompat, b bVar) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        bVar.getClass();
        AudioAttributesImpl audioAttributesImpl = audioAttributesCompat.f2027a;
        bVar.i(1);
        bVar.l(audioAttributesImpl);
    }
}
