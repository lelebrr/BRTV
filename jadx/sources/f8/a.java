package f8;

import a7.f;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import i9.l;
import j9.i;
import j9.j;
import java.util.Locale;
import org.bitspark.android.SpkApplication;
import org.json.JSONException;
import u6.e;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a extends j implements l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ b f6798a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SpkApplication f6799b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(b bVar, SpkApplication spkApplication) {
        super(1);
        this.f6798a = bVar;
        this.f6799b = spkApplication;
    }

    @Override // i9.l
    public final Object invoke(Object obj) throws JSONException {
        Configuration configuration = (Configuration) obj;
        i.g(configuration, "it");
        b bVar = this.f6798a;
        bVar.f6801a = com.bumptech.glide.d.q(configuration);
        f fVar = bVar.f6802b;
        boolean z7 = ((SharedPreferences) fVar.f169b).getBoolean("follow_system_locale_key", false);
        SpkApplication spkApplication = this.f6799b;
        if (z7) {
            bVar.a(spkApplication, bVar.f6801a);
        } else {
            Locale localeB = fVar.B();
            i.g(localeB, "locale");
            e.j(spkApplication, localeB);
            Context applicationContext = spkApplication.getApplicationContext();
            if (applicationContext != spkApplication) {
                i.b(applicationContext, "appContext");
                e.j(applicationContext, localeB);
            }
        }
        return w8.l.f10832a;
    }
}
