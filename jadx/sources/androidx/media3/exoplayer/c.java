package androidx.media3.exoplayer;

import android.media.AudioManager;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class c implements AudioManager.OnAudioFocusChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AudioFocusManager f2228a;

    public /* synthetic */ c(AudioFocusManager audioFocusManager) {
        this.f2228a = audioFocusManager;
    }

    @Override // android.media.AudioManager.OnAudioFocusChangeListener
    public final void onAudioFocusChange(int i6) {
        this.f2228a.handlePlatformAudioFocusChange(i6);
    }
}
