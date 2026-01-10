package w2;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.provider.MediaStore;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class a implements b {

    /* renamed from: c, reason: collision with root package name */
    public static final String[] f10805c = {"_data"};
    public static final String[] d = {"_data"};

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10806a;

    /* renamed from: b, reason: collision with root package name */
    public final ContentResolver f10807b;

    public /* synthetic */ a(ContentResolver contentResolver, int i6) {
        this.f10806a = i6;
        this.f10807b = contentResolver;
    }

    @Override // w2.b
    public final Cursor a(Uri uri) {
        switch (this.f10806a) {
            case 0:
                String lastPathSegment = uri.getLastPathSegment();
                return this.f10807b.query(MediaStore.Images.Thumbnails.EXTERNAL_CONTENT_URI, f10805c, "kind = 1 AND image_id = ?", new String[]{lastPathSegment}, null);
            default:
                String lastPathSegment2 = uri.getLastPathSegment();
                return this.f10807b.query(MediaStore.Video.Thumbnails.EXTERNAL_CONTENT_URI, d, "kind = 1 AND video_id = ?", new String[]{lastPathSegment2}, null);
        }
    }
}
