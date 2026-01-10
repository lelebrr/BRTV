package m1;

import android.media.AudioAttributes;
import androidx.media.AudioAttributesImpl;
import androidx.media.AudioAttributesImplApi26;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a extends j7.c {
    @Override // j7.c
    public final AudioAttributesImpl s() {
        return new AudioAttributesImplApi26(((AudioAttributes.Builder) this.f7444b).build());
    }
}
