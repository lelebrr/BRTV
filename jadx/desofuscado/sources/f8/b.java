package f8;

import a7.f;
import android.content.Context;
import android.content.SharedPreferences;
import j9.i;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;
import u6.e;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b {

    /* renamed from: c, reason: collision with root package name */
    public static final Locale f6800c;
    public static b d;

    /* renamed from: a, reason: collision with root package name */
    public Locale f6801a = f6800c;

    /* renamed from: b, reason: collision with root package name */
    public final f f6802b;

    static {
        Locale locale = Locale.getDefault();
        i.b(locale, "Locale.getDefault()");
        f6800c = locale;
    }

    public b(f fVar, e eVar) {
        this.f6802b = fVar;
    }

    public final void a(Context context, Locale locale) throws JSONException {
        f fVar = this.f6802b;
        i.g(locale, "locale");
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("language", locale.getLanguage());
        jSONObject.put("country", locale.getCountry());
        jSONObject.put("variant", locale.getVariant());
        ((SharedPreferences) fVar.f169b).edit().putString("language_key", jSONObject.toString()).apply();
        i.g(context, "context");
        e.j(context, locale);
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != context) {
            i.b(applicationContext, "appContext");
            e.j(applicationContext, locale);
        }
    }
}
