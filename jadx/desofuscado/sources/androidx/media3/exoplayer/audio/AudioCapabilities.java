package androidx.media3.exoplayer.audio;

import android.annotation.SuppressLint;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioDeviceInfo;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.AudioTrack;
import android.net.Uri;
import android.os.Build;
import android.provider.Settings;
import android.util.Pair;
import android.util.SparseArray;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.audio.AudioManagerCompat;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.analytics.b0;
import d7.d0;
import d7.j2;
import d7.k2;
import d7.s1;
import d7.s5;
import d7.u1;
import d7.y1;
import d7.z1;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public final class AudioCapabilities {
    static final z1 ALL_SURROUND_ENCODINGS_AND_MAX_CHANNELS;
    static final int DEFAULT_MAX_CHANNEL_COUNT = 10;
    static final int DEFAULT_SAMPLE_RATE_HZ = 48000;
    private static final String EXTERNAL_SURROUND_SOUND_KEY = "external_surround_sound_enabled";
    private static final String FORCE_EXTERNAL_SURROUND_SOUND_KEY = "use_external_surround_sound_flag";
    private final SparseArray<AudioProfile> encodingToAudioProfile;
    private final int maxChannelCount;
    public static final AudioCapabilities DEFAULT_AUDIO_CAPABILITIES = new AudioCapabilities(u1.r(AudioProfile.DEFAULT_AUDIO_PROFILE));

    @SuppressLint({"InlinedApi"})
    private static final u1 EXTERNAL_SURROUND_SOUND_ENCODINGS = u1.t(2, 5, 6);

    /* compiled from: MyApplication */
    public static final class Api23 {
        private Api23() {
        }

        private static k2 getAllBluetoothDeviceTypes() {
            j2 j2Var = new j2(4);
            Integer[] numArr = {8, 7};
            if (j2Var.d != null) {
                for (int i6 = 0; i6 < 2; i6++) {
                    j2Var.g(numArr[i6]);
                }
            } else {
                d0.b(numArr, 2);
                j2Var.e(2);
                System.arraycopy(numArr, 0, j2Var.f6236a, j2Var.f6237b, 2);
                j2Var.f6237b += 2;
            }
            int i10 = Util.SDK_INT;
            if (i10 >= 31) {
                Integer[] numArr2 = {26, 27};
                if (j2Var.d != null) {
                    for (int i11 = 0; i11 < 2; i11++) {
                        j2Var.g(numArr2[i11]);
                    }
                } else {
                    d0.b(numArr2, 2);
                    j2Var.e(2);
                    System.arraycopy(numArr2, 0, j2Var.f6236a, j2Var.f6237b, 2);
                    j2Var.f6237b += 2;
                }
            }
            if (i10 >= 33) {
                j2Var.g(30);
            }
            return j2Var.i();
        }

        public static boolean isBluetoothConnected(AudioManager audioManager, AudioDeviceInfoApi23 audioDeviceInfoApi23) {
            AudioDeviceInfo[] devices = audioDeviceInfoApi23 == null ? ((AudioManager) Assertions.checkNotNull(audioManager)).getDevices(2) : new AudioDeviceInfo[]{audioDeviceInfoApi23.audioDeviceInfo};
            k2 allBluetoothDeviceTypes = getAllBluetoothDeviceTypes();
            for (AudioDeviceInfo audioDeviceInfo : devices) {
                if (allBluetoothDeviceTypes.contains(Integer.valueOf(audioDeviceInfo.getType()))) {
                    return true;
                }
            }
            return false;
        }
    }

    /* compiled from: MyApplication */
    public static final class Api29 {
        private Api29() {
        }

        public static u1 getDirectPlaybackSupportedEncodings(AudioAttributes audioAttributes) {
            s1 s1VarK = u1.k();
            s5 it = AudioCapabilities.ALL_SURROUND_ENCODINGS_AND_MAX_CHANNELS.keySet().iterator();
            while (it.hasNext()) {
                Integer num = (Integer) it.next();
                int iIntValue = num.intValue();
                if (Util.SDK_INT >= Util.getApiLevelThatAudioFormatIntroducedAudioEncoding(iIntValue) && AudioTrack.isDirectPlaybackSupported(new AudioFormat.Builder().setChannelMask(12).setEncoding(iIntValue).setSampleRate(48000).build(), audioAttributes.getAudioAttributesV21().audioAttributes)) {
                    s1VarK.a(num);
                }
            }
            s1VarK.a(2);
            return s1VarK.g();
        }

        public static int getMaxSupportedChannelCountForPassthrough(int i6, int i10, AudioAttributes audioAttributes) {
            for (int i11 = 10; i11 > 0; i11--) {
                int audioTrackChannelConfig = Util.getAudioTrackChannelConfig(i11);
                if (audioTrackChannelConfig != 0 && AudioTrack.isDirectPlaybackSupported(new AudioFormat.Builder().setEncoding(i6).setSampleRate(i10).setChannelMask(audioTrackChannelConfig).build(), audioAttributes.getAudioAttributesV21().audioAttributes)) {
                    return i11;
                }
            }
            return 0;
        }
    }

    /* compiled from: MyApplication */
    public static final class Api33 {
        private Api33() {
        }

        public static AudioCapabilities getCapabilitiesInternalForDirectPlayback(AudioManager audioManager, AudioAttributes audioAttributes) {
            return new AudioCapabilities(AudioCapabilities.getAudioProfiles(audioManager.getDirectProfilesForAttributes(audioAttributes.getAudioAttributesV21().audioAttributes)));
        }

        public static AudioDeviceInfoApi23 getDefaultRoutedDeviceForAttributes(AudioManager audioManager, AudioAttributes audioAttributes) {
            try {
                List audioDevicesForAttributes = ((AudioManager) Assertions.checkNotNull(audioManager)).getAudioDevicesForAttributes(audioAttributes.getAudioAttributesV21().audioAttributes);
                if (audioDevicesForAttributes.isEmpty()) {
                    return null;
                }
                return new AudioDeviceInfoApi23(a.g(audioDevicesForAttributes.get(0)));
            } catch (RuntimeException unused) {
                return null;
            }
        }
    }

    static {
        y1 y1Var = new y1(4);
        y1Var.b(5, 6);
        y1Var.b(17, 6);
        y1Var.b(7, 6);
        y1Var.b(30, 10);
        y1Var.b(18, 6);
        y1Var.b(6, 8);
        y1Var.b(8, 8);
        y1Var.b(14, 8);
        ALL_SURROUND_ENCODINGS_AND_MAX_CHANNELS = y1Var.a();
    }

    private static boolean deviceMaySetExternalSurroundSoundGlobalSetting() {
        String str = Build.MANUFACTURER;
        return str.equals("Amazon") || str.equals("Xiaomi");
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"WrongConstant"})
    public static u1 getAudioProfiles(List<android.media.AudioProfile> list) {
        HashMap map = new HashMap();
        map.put(2, new HashSet(r4.b.a(12)));
        for (int i6 = 0; i6 < list.size(); i6++) {
            android.media.AudioProfile audioProfileF = b0.f(list.get(i6));
            if (audioProfileF.getEncapsulationType() != 1) {
                int format = audioProfileF.getFormat();
                if (Util.isEncodingLinearPcm(format) || ALL_SURROUND_ENCODINGS_AND_MAX_CHANNELS.containsKey(Integer.valueOf(format))) {
                    if (map.containsKey(Integer.valueOf(format))) {
                        ((Set) Assertions.checkNotNull((Set) map.get(Integer.valueOf(format)))).addAll(r4.b.a(audioProfileF.getChannelMasks()));
                    } else {
                        map.put(Integer.valueOf(format), new HashSet(r4.b.a(audioProfileF.getChannelMasks())));
                    }
                }
            }
        }
        s1 s1VarK = u1.k();
        for (Map.Entry entry : map.entrySet()) {
            s1VarK.a(new AudioProfile(((Integer) entry.getKey()).intValue(), (Set<Integer>) entry.getValue()));
        }
        return s1VarK.g();
    }

    @Deprecated
    public static AudioCapabilities getCapabilities(Context context) {
        return getCapabilities(context, AudioAttributes.DEFAULT, null);
    }

    @SuppressLint({"UnprotectedReceiver"})
    public static AudioCapabilities getCapabilitiesInternal(Context context, AudioAttributes audioAttributes, AudioDeviceInfoApi23 audioDeviceInfoApi23) {
        return getCapabilitiesInternal(context, context.registerReceiver(null, new IntentFilter("android.media.action.HDMI_AUDIO_PLUG")), audioAttributes, audioDeviceInfoApi23);
    }

    private static int getChannelConfigForPassthrough(int i6) {
        int i10 = Util.SDK_INT;
        if (i10 <= 28) {
            if (i6 == 7) {
                i6 = 8;
            } else if (i6 == 3 || i6 == 4 || i6 == 5) {
                i6 = 6;
            }
        }
        if (i10 <= 26 && "fugu".equals(Build.DEVICE) && i6 == 1) {
            i6 = 2;
        }
        return Util.getAudioTrackChannelConfig(i6);
    }

    public static Uri getExternalSurroundSoundGlobalSettingUri() {
        if (deviceMaySetExternalSurroundSoundGlobalSetting()) {
            return Settings.Global.getUriFor(EXTERNAL_SURROUND_SOUND_KEY);
        }
        return null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AudioCapabilities)) {
            return false;
        }
        AudioCapabilities audioCapabilities = (AudioCapabilities) obj;
        return Util.contentEquals(this.encodingToAudioProfile, audioCapabilities.encodingToAudioProfile) && this.maxChannelCount == audioCapabilities.maxChannelCount;
    }

    @Deprecated
    public Pair<Integer, Integer> getEncodingAndChannelConfigForPassthrough(Format format) {
        return getEncodingAndChannelConfigForPassthrough(format, AudioAttributes.DEFAULT);
    }

    public int getMaxChannelCount() {
        return this.maxChannelCount;
    }

    public int hashCode() {
        return (Util.contentHashCode(this.encodingToAudioProfile) * 31) + this.maxChannelCount;
    }

    @Deprecated
    public boolean isPassthroughPlaybackSupported(Format format) {
        return isPassthroughPlaybackSupported(format, AudioAttributes.DEFAULT);
    }

    public boolean supportsEncoding(int i6) {
        return Util.contains(this.encodingToAudioProfile, i6);
    }

    public String toString() {
        return "AudioCapabilities[maxChannelCount=" + this.maxChannelCount + ", audioProfiles=" + this.encodingToAudioProfile + "]";
    }

    @Deprecated
    public AudioCapabilities(int[] iArr, int i6) {
        this(getAudioProfiles(iArr, i6));
    }

    public static AudioCapabilities getCapabilities(Context context, AudioAttributes audioAttributes, AudioDeviceInfo audioDeviceInfo) {
        return getCapabilitiesInternal(context, audioAttributes, (Util.SDK_INT < 23 || audioDeviceInfo == null) ? null : new AudioDeviceInfoApi23(audioDeviceInfo));
    }

    public Pair<Integer, Integer> getEncodingAndChannelConfigForPassthrough(Format format, AudioAttributes audioAttributes) {
        int encoding = MimeTypes.getEncoding((String) Assertions.checkNotNull(format.sampleMimeType), format.codecs);
        if (!ALL_SURROUND_ENCODINGS_AND_MAX_CHANNELS.containsKey(Integer.valueOf(encoding))) {
            return null;
        }
        if (encoding == 18 && !supportsEncoding(18)) {
            encoding = 6;
        } else if ((encoding == 8 && !supportsEncoding(8)) || (encoding == 30 && !supportsEncoding(30))) {
            encoding = 7;
        }
        if (!supportsEncoding(encoding)) {
            return null;
        }
        AudioProfile audioProfile = (AudioProfile) Assertions.checkNotNull(this.encodingToAudioProfile.get(encoding));
        int maxSupportedChannelCountForPassthrough = format.channelCount;
        if (maxSupportedChannelCountForPassthrough == -1 || encoding == 18) {
            int i6 = format.sampleRate;
            if (i6 == -1) {
                i6 = 48000;
            }
            maxSupportedChannelCountForPassthrough = audioProfile.getMaxSupportedChannelCountForPassthrough(i6, audioAttributes);
        } else if (!format.sampleMimeType.equals(MimeTypes.AUDIO_DTS_X) || Util.SDK_INT >= 33) {
            if (!audioProfile.supportsChannelCount(maxSupportedChannelCountForPassthrough)) {
                return null;
            }
        } else if (maxSupportedChannelCountForPassthrough > 10) {
            return null;
        }
        int channelConfigForPassthrough = getChannelConfigForPassthrough(maxSupportedChannelCountForPassthrough);
        if (channelConfigForPassthrough == 0) {
            return null;
        }
        return Pair.create(Integer.valueOf(encoding), Integer.valueOf(channelConfigForPassthrough));
    }

    public boolean isPassthroughPlaybackSupported(Format format, AudioAttributes audioAttributes) {
        return getEncodingAndChannelConfigForPassthrough(format, audioAttributes) != null;
    }

    private AudioCapabilities(List<AudioProfile> list) {
        this.encodingToAudioProfile = new SparseArray<>();
        for (int i6 = 0; i6 < list.size(); i6++) {
            AudioProfile audioProfile = list.get(i6);
            this.encodingToAudioProfile.put(audioProfile.encoding, audioProfile);
        }
        int iMax = 0;
        for (int i10 = 0; i10 < this.encodingToAudioProfile.size(); i10++) {
            iMax = Math.max(iMax, this.encodingToAudioProfile.valueAt(i10).maxChannelCount);
        }
        this.maxChannelCount = iMax;
    }

    @SuppressLint({"InlinedApi"})
    public static AudioCapabilities getCapabilitiesInternal(Context context, Intent intent, AudioAttributes audioAttributes, AudioDeviceInfoApi23 audioDeviceInfoApi23) {
        AudioManager audioManager = AudioManagerCompat.getAudioManager(context);
        if (audioDeviceInfoApi23 == null) {
            audioDeviceInfoApi23 = Util.SDK_INT >= 33 ? Api33.getDefaultRoutedDeviceForAttributes(audioManager, audioAttributes) : null;
        }
        int i6 = Util.SDK_INT;
        if (i6 >= 33 && (Util.isTv(context) || Util.isAutomotive(context))) {
            return Api33.getCapabilitiesInternalForDirectPlayback(audioManager, audioAttributes);
        }
        if (i6 >= 23 && Api23.isBluetoothConnected(audioManager, audioDeviceInfoApi23)) {
            return DEFAULT_AUDIO_CAPABILITIES;
        }
        j2 j2Var = new j2(4);
        j2Var.g(2);
        if (i6 >= 29 && (Util.isTv(context) || Util.isAutomotive(context))) {
            j2Var.h(Api29.getDirectPlaybackSupportedEncodings(audioAttributes));
            return new AudioCapabilities(getAudioProfiles(r4.b.N(j2Var.i()), 10));
        }
        ContentResolver contentResolver = context.getContentResolver();
        boolean z7 = Settings.Global.getInt(contentResolver, FORCE_EXTERNAL_SURROUND_SOUND_KEY, 0) == 1;
        if ((z7 || deviceMaySetExternalSurroundSoundGlobalSetting()) && Settings.Global.getInt(contentResolver, EXTERNAL_SURROUND_SOUND_KEY, 0) == 1) {
            j2Var.h(EXTERNAL_SURROUND_SOUND_ENCODINGS);
        }
        if (intent != null && !z7 && intent.getIntExtra("android.media.extra.AUDIO_PLUG_STATE", 0) == 1) {
            int[] intArrayExtra = intent.getIntArrayExtra("android.media.extra.ENCODINGS");
            if (intArrayExtra != null) {
                j2Var.h(r4.b.a(intArrayExtra));
            }
            return new AudioCapabilities(getAudioProfiles(r4.b.N(j2Var.i()), intent.getIntExtra("android.media.extra.MAX_CHANNEL_COUNT", 10)));
        }
        return new AudioCapabilities(getAudioProfiles(r4.b.N(j2Var.i()), 10));
    }

    /* compiled from: MyApplication */
    public static final class AudioProfile {
        public static final AudioProfile DEFAULT_AUDIO_PROFILE;
        private final k2 channelMasks;
        public final int encoding;
        public final int maxChannelCount;

        static {
            DEFAULT_AUDIO_PROFILE = Util.SDK_INT >= 33 ? new AudioProfile(2, getAllChannelMasksForMaxChannelCount(10)) : new AudioProfile(2, 10);
        }

        public AudioProfile(int i6, Set<Integer> set) {
            this.encoding = i6;
            k2 k2VarL = k2.l(set);
            this.channelMasks = k2VarL;
            s5 it = k2VarL.iterator();
            int iMax = 0;
            while (it.hasNext()) {
                iMax = Math.max(iMax, Integer.bitCount(((Integer) it.next()).intValue()));
            }
            this.maxChannelCount = iMax;
        }

        private static k2 getAllChannelMasksForMaxChannelCount(int i6) {
            j2 j2Var = new j2(4);
            for (int i10 = 1; i10 <= i6; i10++) {
                j2Var.g(Integer.valueOf(Util.getAudioTrackChannelConfig(i10)));
            }
            return j2Var.i();
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof AudioProfile)) {
                return false;
            }
            AudioProfile audioProfile = (AudioProfile) obj;
            return this.encoding == audioProfile.encoding && this.maxChannelCount == audioProfile.maxChannelCount && Objects.equals(this.channelMasks, audioProfile.channelMasks);
        }

        public int getMaxSupportedChannelCountForPassthrough(int i6, AudioAttributes audioAttributes) {
            if (this.channelMasks != null) {
                return this.maxChannelCount;
            }
            if (Util.SDK_INT >= 29) {
                return Api29.getMaxSupportedChannelCountForPassthrough(this.encoding, i6, audioAttributes);
            }
            Object obj = AudioCapabilities.ALL_SURROUND_ENCODINGS_AND_MAX_CHANNELS.get(Integer.valueOf(this.encoding));
            return ((Integer) Assertions.checkNotNull((Integer) (obj != null ? obj : 0))).intValue();
        }

        public int hashCode() {
            int i6 = ((this.encoding * 31) + this.maxChannelCount) * 31;
            k2 k2Var = this.channelMasks;
            return i6 + (k2Var == null ? 0 : k2Var.hashCode());
        }

        public boolean supportsChannelCount(int i6) {
            if (this.channelMasks == null) {
                return i6 <= this.maxChannelCount;
            }
            int audioTrackChannelConfig = Util.getAudioTrackChannelConfig(i6);
            if (audioTrackChannelConfig == 0) {
                return false;
            }
            return this.channelMasks.contains(Integer.valueOf(audioTrackChannelConfig));
        }

        public String toString() {
            return "AudioProfile[format=" + this.encoding + ", maxChannelCount=" + this.maxChannelCount + ", channelMasks=" + this.channelMasks + "]";
        }

        public AudioProfile(int i6, int i10) {
            this.encoding = i6;
            this.maxChannelCount = i10;
            this.channelMasks = null;
        }
    }

    private static u1 getAudioProfiles(int[] iArr, int i6) {
        s1 s1VarK = u1.k();
        if (iArr == null) {
            iArr = new int[0];
        }
        for (int i10 : iArr) {
            s1VarK.a(new AudioProfile(i10, i6));
        }
        return s1VarK.g();
    }
}
