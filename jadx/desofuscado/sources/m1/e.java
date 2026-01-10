package m1;

import android.os.Messenger;
import androidx.media.MediaBrowserServiceCompat;
import java.util.ArrayList;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class e implements c {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f8121a = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    public d f8122b;

    /* renamed from: c, reason: collision with root package name */
    public Messenger f8123c;
    public final /* synthetic */ MediaBrowserServiceCompat d;

    public e(MediaBrowserServiceCompat mediaBrowserServiceCompat) {
        this.d = mediaBrowserServiceCompat;
    }

    @Override // m1.c
    public void a() {
        d dVar = new d(this, this.d);
        this.f8122b = dVar;
        dVar.onCreate();
    }
}
