package com.bumptech.glide.load.data;

import android.content.ContentResolver;
import android.content.res.AssetManager;
import android.net.Uri;
import android.util.Log;
import java.io.FileNotFoundException;
import java.io.IOException;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class b implements e {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3546a;

    /* renamed from: b, reason: collision with root package name */
    public Object f3547b;

    /* renamed from: c, reason: collision with root package name */
    public final Comparable f3548c;
    public final Object d;

    public /* synthetic */ b(int i6, Comparable comparable, Object obj) {
        this.f3546a = i6;
        this.d = obj;
        this.f3548c = comparable;
    }

    @Override // com.bumptech.glide.load.data.e
    public final void b() {
        switch (this.f3546a) {
            case 0:
                Object obj = this.f3547b;
                if (obj != null) {
                    try {
                        g(obj);
                        break;
                    } catch (IOException unused) {
                        return;
                    }
                }
                break;
            default:
                Object obj2 = this.f3547b;
                if (obj2 != null) {
                    try {
                        g(obj2);
                        break;
                    } catch (IOException unused2) {
                        return;
                    }
                }
                break;
        }
    }

    @Override // com.bumptech.glide.load.data.e
    public final void cancel() {
        int i6 = this.f3546a;
    }

    @Override // com.bumptech.glide.load.data.e
    public final int e() {
        switch (this.f3546a) {
        }
        return 1;
    }

    @Override // com.bumptech.glide.load.data.e
    public final void f(com.bumptech.glide.g gVar, d dVar) {
        switch (this.f3546a) {
            case 0:
                try {
                    Object objH = h((AssetManager) this.d, (String) this.f3548c);
                    this.f3547b = objH;
                    dVar.d(objH);
                    break;
                } catch (IOException e5) {
                    if (Log.isLoggable("AssetPathFetcher", 3)) {
                        Log.d("AssetPathFetcher", "Failed to load data from asset manager", e5);
                    }
                    dVar.c(e5);
                    return;
                }
            default:
                try {
                    Object objI = i((Uri) this.f3548c, (ContentResolver) this.d);
                    this.f3547b = objI;
                    dVar.d(objI);
                    break;
                } catch (FileNotFoundException e10) {
                    if (Log.isLoggable("LocalUriFetcher", 3)) {
                        Log.d("LocalUriFetcher", "Failed to open Uri", e10);
                    }
                    dVar.c(e10);
                }
        }
    }

    public abstract void g(Object obj);

    public abstract Object h(AssetManager assetManager, String str);

    public abstract Object i(Uri uri, ContentResolver contentResolver);

    private final void c() {
    }

    private final void d() {
    }
}
