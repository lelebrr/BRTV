package androidx.media3.exoplayer.rtsp;

import androidx.media3.exoplayer.rtsp.RtspMessageChannel;
import java.io.IOException;
import java.io.Serializable;
import java.util.List;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class b implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2354a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f2355b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Serializable f2356c;
    public final /* synthetic */ Object d;

    public /* synthetic */ b(Object obj, Serializable serializable, Object obj2, int i6) {
        this.f2354a = i6;
        this.f2355b = obj;
        this.f2356c = serializable;
        this.d = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() throws IOException {
        switch (this.f2354a) {
            case 0:
                ((RtpDataLoadable) this.f2355b).lambda$load$0((String) this.f2356c, (RtpDataChannel) this.d);
                break;
            default:
                ((RtspMessageChannel.Sender) this.f2355b).lambda$send$0((byte[]) this.f2356c, (List) this.d);
                break;
        }
    }
}
