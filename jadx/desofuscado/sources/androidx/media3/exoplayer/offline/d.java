package androidx.media3.exoplayer.offline;

import android.os.Handler;
import android.os.Message;
import androidx.media3.exoplayer.offline.DownloadHelper;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class d implements Handler.Callback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2331a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f2332b;

    public /* synthetic */ d(int i6, Object obj) {
        this.f2331a = i6;
        this.f2332b = obj;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        switch (this.f2331a) {
            case 0:
                return ((DownloadHelper.MediaPreparer) this.f2332b).handleDownloadHelperCallbackMessage(message);
            default:
                return ((DownloadManager) this.f2332b).handleMainMessage(message);
        }
    }
}
