package androidx.media;

import a2.b;
import android.media.AudioAttributes;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class AudioAttributesImplApi21Parcelizer {
    public static AudioAttributesImplApi21 read(b bVar) {
        AudioAttributesImplApi21 audioAttributesImplApi21 = new AudioAttributesImplApi21();
        audioAttributesImplApi21.f2028a = (AudioAttributes) bVar.g(audioAttributesImplApi21.f2028a, 1);
        audioAttributesImplApi21.f2029b = bVar.f(audioAttributesImplApi21.f2029b, 2);
        return audioAttributesImplApi21;
    }

    public static void write(AudioAttributesImplApi21 audioAttributesImplApi21, b bVar) {
        bVar.getClass();
        bVar.k(audioAttributesImplApi21.f2028a, 1);
        bVar.j(audioAttributesImplApi21.f2029b, 2);
    }
}
