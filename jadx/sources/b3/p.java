package b3;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.nio.ByteBuffer;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class p implements com.bumptech.glide.load.data.e {
    public static final String[] d = {"_data"};

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3211a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f3212b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f3213c;

    public /* synthetic */ p(Object obj, int i6, Object obj2) {
        this.f3211a = i6;
        this.f3212b = obj;
        this.f3213c = obj2;
    }

    @Override // com.bumptech.glide.load.data.e
    public final Class a() {
        switch (this.f3211a) {
            case 0:
                return File.class;
            default:
                return ((c) this.f3213c).b();
        }
    }

    @Override // com.bumptech.glide.load.data.e
    public final void b() {
        int i6 = this.f3211a;
    }

    @Override // com.bumptech.glide.load.data.e
    public final void cancel() {
        int i6 = this.f3211a;
    }

    @Override // com.bumptech.glide.load.data.e
    public final int e() {
        switch (this.f3211a) {
        }
        return 1;
    }

    @Override // com.bumptech.glide.load.data.e
    public final void f(com.bumptech.glide.g gVar, com.bumptech.glide.load.data.d dVar) {
        Object objWrap;
        switch (this.f3211a) {
            case 0:
                Cursor cursorQuery = ((Context) this.f3212b).getContentResolver().query((Uri) this.f3213c, d, null, null, null);
                if (cursorQuery != null) {
                    try {
                        string = cursorQuery.moveToFirst() ? cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("_data")) : null;
                    } finally {
                        cursorQuery.close();
                    }
                }
                if (!TextUtils.isEmpty(string)) {
                    dVar.d(new File(string));
                    return;
                }
                dVar.c(new FileNotFoundException("Failed to find file path for: " + ((Uri) this.f3213c)));
                return;
            default:
                c cVar = (c) this.f3213c;
                byte[] bArr = (byte[]) this.f3212b;
                switch (cVar.f3170a) {
                    case 0:
                        objWrap = ByteBuffer.wrap(bArr);
                        break;
                    default:
                        objWrap = new ByteArrayInputStream(bArr);
                        break;
                }
                dVar.d(objWrap);
                return;
        }
    }

    private final void c() {
    }

    private final void d() {
    }

    private final void g() {
    }

    private final void h() {
    }
}
