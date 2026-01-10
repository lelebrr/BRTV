package c3;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Environment;
import android.provider.MediaStore;
import android.text.TextUtils;
import b3.t;
import b3.u;
import com.bumptech.glide.g;
import java.io.File;
import java.io.FileNotFoundException;
import v2.h;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c implements com.bumptech.glide.load.data.e {

    /* renamed from: k, reason: collision with root package name */
    public static final String[] f3377k = {"_data"};

    /* renamed from: a, reason: collision with root package name */
    public final Context f3378a;

    /* renamed from: b, reason: collision with root package name */
    public final u f3379b;

    /* renamed from: c, reason: collision with root package name */
    public final u f3380c;
    public final Uri d;

    /* renamed from: e, reason: collision with root package name */
    public final int f3381e;
    public final int f;

    /* renamed from: g, reason: collision with root package name */
    public final h f3382g;

    /* renamed from: h, reason: collision with root package name */
    public final Class f3383h;

    /* renamed from: i, reason: collision with root package name */
    public volatile boolean f3384i;

    /* renamed from: j, reason: collision with root package name */
    public volatile com.bumptech.glide.load.data.e f3385j;

    public c(Context context, u uVar, u uVar2, Uri uri, int i6, int i10, h hVar, Class cls) {
        this.f3378a = context.getApplicationContext();
        this.f3379b = uVar;
        this.f3380c = uVar2;
        this.d = uri;
        this.f3381e = i6;
        this.f = i10;
        this.f3382g = hVar;
        this.f3383h = cls;
    }

    @Override // com.bumptech.glide.load.data.e
    public final Class a() {
        return this.f3383h;
    }

    @Override // com.bumptech.glide.load.data.e
    public final void b() {
        com.bumptech.glide.load.data.e eVar = this.f3385j;
        if (eVar != null) {
            eVar.b();
        }
    }

    public final com.bumptech.glide.load.data.e c() throws Throwable {
        t tVarA;
        boolean zIsExternalStorageLegacy = Environment.isExternalStorageLegacy();
        Cursor cursor = null;
        Context context = this.f3378a;
        h hVar = this.f3382g;
        int i6 = this.f;
        int i10 = this.f3381e;
        if (zIsExternalStorageLegacy) {
            Uri uri = this.d;
            try {
                Cursor cursorQuery = context.getContentResolver().query(uri, f3377k, null, null, null);
                if (cursorQuery != null) {
                    try {
                        if (cursorQuery.moveToFirst()) {
                            String string = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("_data"));
                            if (TextUtils.isEmpty(string)) {
                                throw new FileNotFoundException("File path was empty in media store for: " + uri);
                            }
                            File file = new File(string);
                            cursorQuery.close();
                            tVarA = this.f3379b.a(file, i10, i6, hVar);
                        }
                    } catch (Throwable th) {
                        th = th;
                        cursor = cursorQuery;
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                }
                throw new FileNotFoundException("Failed to media store entry for: " + uri);
            } catch (Throwable th2) {
                th = th2;
            }
        } else {
            Uri requireOriginal = this.d;
            boolean zI = com.bumptech.glide.c.i(requireOriginal);
            u uVar = this.f3380c;
            if (zI && requireOriginal.getPathSegments().contains("picker")) {
                tVarA = uVar.a(requireOriginal, i10, i6, hVar);
            } else {
                if (context.checkSelfPermission("android.permission.ACCESS_MEDIA_LOCATION") == 0) {
                    requireOriginal = MediaStore.setRequireOriginal(requireOriginal);
                }
                tVarA = uVar.a(requireOriginal, i10, i6, hVar);
            }
        }
        if (tVarA != null) {
            return tVarA.f3220c;
        }
        return null;
    }

    @Override // com.bumptech.glide.load.data.e
    public final void cancel() {
        this.f3384i = true;
        com.bumptech.glide.load.data.e eVar = this.f3385j;
        if (eVar != null) {
            eVar.cancel();
        }
    }

    @Override // com.bumptech.glide.load.data.e
    public final int e() {
        return 1;
    }

    @Override // com.bumptech.glide.load.data.e
    public final void f(g gVar, com.bumptech.glide.load.data.d dVar) throws Throwable {
        try {
            com.bumptech.glide.load.data.e eVarC = c();
            if (eVarC == null) {
                dVar.c(new IllegalArgumentException("Failed to build fetcher for: " + this.d));
            } else {
                this.f3385j = eVarC;
                if (this.f3384i) {
                    cancel();
                } else {
                    eVarC.f(gVar, dVar);
                }
            }
        } catch (FileNotFoundException e5) {
            dVar.c(e5);
        }
    }
}
