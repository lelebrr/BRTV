package k0;

import android.content.ContentProviderClient;
import android.content.Context;
import android.net.Uri;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7677a;

    /* renamed from: b, reason: collision with root package name */
    public final ContentProviderClient f7678b;

    public a(Context context, Uri uri, int i6) {
        this.f7677a = i6;
        switch (i6) {
            case 1:
                this.f7678b = context.getContentResolver().acquireUnstableContentProviderClient(uri);
                break;
            default:
                this.f7678b = context.getContentResolver().acquireUnstableContentProviderClient(uri);
                break;
        }
    }

    public final void a() {
        switch (this.f7677a) {
            case 0:
                ContentProviderClient contentProviderClient = this.f7678b;
                if (contentProviderClient != null) {
                    contentProviderClient.release();
                    break;
                }
                break;
            default:
                ContentProviderClient contentProviderClient2 = this.f7678b;
                if (contentProviderClient2 != null) {
                    contentProviderClient2.release();
                    break;
                }
                break;
        }
    }
}
