package androidx.media;

import a.e;
import java.util.Arrays;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class AudioAttributesImplBase implements AudioAttributesImpl {

    /* renamed from: a, reason: collision with root package name */
    public int f2030a = 0;

    /* renamed from: b, reason: collision with root package name */
    public int f2031b = 0;

    /* renamed from: c, reason: collision with root package name */
    public int f2032c = 0;
    public int d = -1;

    @Override // androidx.media.AudioAttributesImpl
    public final int a() {
        int i6 = this.d;
        return i6 != -1 ? i6 : AudioAttributesCompat.b(this.f2032c, this.f2030a);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof AudioAttributesImplBase)) {
            return false;
        }
        AudioAttributesImplBase audioAttributesImplBase = (AudioAttributesImplBase) obj;
        if (this.f2031b != audioAttributesImplBase.f2031b) {
            return false;
        }
        int i6 = this.f2032c;
        int i10 = audioAttributesImplBase.f2032c;
        int iA = audioAttributesImplBase.a();
        if (iA == 6) {
            i10 |= 4;
        } else if (iA == 7) {
            i10 |= 1;
        }
        return i6 == (i10 & 273) && this.f2030a == audioAttributesImplBase.f2030a && this.d == audioAttributesImplBase.d;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f2031b), Integer.valueOf(this.f2032c), Integer.valueOf(this.f2030a), Integer.valueOf(this.d)});
    }

    public final String toString() {
        String strN;
        StringBuilder sb = new StringBuilder("AudioAttributesCompat:");
        if (this.d != -1) {
            sb.append(" stream=");
            sb.append(this.d);
            sb.append(" derived");
        }
        sb.append(" usage=");
        int i6 = this.f2030a;
        int i10 = AudioAttributesCompat.f2026b;
        switch (i6) {
            case 0:
                strN = "USAGE_UNKNOWN";
                break;
            case 1:
                strN = "USAGE_MEDIA";
                break;
            case 2:
                strN = "USAGE_VOICE_COMMUNICATION";
                break;
            case 3:
                strN = "USAGE_VOICE_COMMUNICATION_SIGNALLING";
                break;
            case 4:
                strN = "USAGE_ALARM";
                break;
            case 5:
                strN = "USAGE_NOTIFICATION";
                break;
            case 6:
                strN = "USAGE_NOTIFICATION_RINGTONE";
                break;
            case 7:
                strN = "USAGE_NOTIFICATION_COMMUNICATION_REQUEST";
                break;
            case 8:
                strN = "USAGE_NOTIFICATION_COMMUNICATION_INSTANT";
                break;
            case 9:
                strN = "USAGE_NOTIFICATION_COMMUNICATION_DELAYED";
                break;
            case 10:
                strN = "USAGE_NOTIFICATION_EVENT";
                break;
            case 11:
                strN = "USAGE_ASSISTANCE_ACCESSIBILITY";
                break;
            case 12:
                strN = "USAGE_ASSISTANCE_NAVIGATION_GUIDANCE";
                break;
            case 13:
                strN = "USAGE_ASSISTANCE_SONIFICATION";
                break;
            case 14:
                strN = "USAGE_GAME";
                break;
            case 15:
            default:
                strN = e.n(i6, "unknown usage ");
                break;
            case 16:
                strN = "USAGE_ASSISTANT";
                break;
        }
        sb.append(strN);
        sb.append(" content=");
        sb.append(this.f2031b);
        sb.append(" flags=0x");
        sb.append(Integer.toHexString(this.f2032c).toUpperCase());
        return sb.toString();
    }
}
