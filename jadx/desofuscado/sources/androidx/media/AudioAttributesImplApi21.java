package androidx.media;

import android.media.AudioAttributes;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class AudioAttributesImplApi21 implements AudioAttributesImpl {

    /* renamed from: a, reason: collision with root package name */
    public AudioAttributes f2028a;

    /* renamed from: b, reason: collision with root package name */
    public int f2029b = -1;

    public AudioAttributesImplApi21() {
    }

    @Override // androidx.media.AudioAttributesImpl
    public final int a() {
        int i6 = this.f2029b;
        return i6 != -1 ? i6 : AudioAttributesCompat.b(this.f2028a.getFlags(), this.f2028a.getUsage());
    }

    public final boolean equals(Object obj) {
        if (obj instanceof AudioAttributesImplApi21) {
            return this.f2028a.equals(((AudioAttributesImplApi21) obj).f2028a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f2028a.hashCode();
    }

    public final String toString() {
        return "AudioAttributesCompat: audioattributes=" + this.f2028a;
    }

    public AudioAttributesImplApi21(AudioAttributes audioAttributes) {
        this.f2028a = audioAttributes;
    }
}
