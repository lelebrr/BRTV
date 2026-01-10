package com.bumptech.glide.integration.okhttp3;

import android.content.Context;
import com.bumptech.glide.e;
import com.bumptech.glide.j;
import l3.a;
import okhttp3.OkHttpClient;
import u2.b;

/* compiled from: MyApplication */
@Deprecated
/* loaded from: classes.dex */
public class OkHttpGlideModule implements a {
    @Override // l3.a
    public final void a(j jVar) {
        if (b.f10327b == null) {
            synchronized (b.class) {
                try {
                    if (b.f10327b == null) {
                        b.f10327b = new OkHttpClient();
                    }
                } finally {
                }
            }
        }
        jVar.l(new b(b.f10327b));
    }

    @Override // l3.a
    public final void b(Context context, e eVar) {
    }
}
