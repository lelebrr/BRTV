package androidx.media;

import a2.b;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class AudioAttributesImplBaseParcelizer {
    public static AudioAttributesImplBase read(b bVar) {
        AudioAttributesImplBase audioAttributesImplBase = new AudioAttributesImplBase();
        audioAttributesImplBase.f2030a = bVar.f(audioAttributesImplBase.f2030a, 1);
        audioAttributesImplBase.f2031b = bVar.f(audioAttributesImplBase.f2031b, 2);
        audioAttributesImplBase.f2032c = bVar.f(audioAttributesImplBase.f2032c, 3);
        audioAttributesImplBase.d = bVar.f(audioAttributesImplBase.d, 4);
        return audioAttributesImplBase;
    }

    public static void write(AudioAttributesImplBase audioAttributesImplBase, b bVar) {
        bVar.getClass();
        bVar.j(audioAttributesImplBase.f2030a, 1);
        bVar.j(audioAttributesImplBase.f2031b, 2);
        bVar.j(audioAttributesImplBase.f2032c, 3);
        bVar.j(audioAttributesImplBase.d, 4);
    }
}
