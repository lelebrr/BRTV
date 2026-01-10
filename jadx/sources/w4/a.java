package w4;

import com.google.android.gms.common.images.WebImage;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import v4.b;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public abstract class a {

    /* renamed from: a, reason: collision with root package name */
    public static final b f10812a = new b("MetadataUtils", null);

    /* renamed from: b, reason: collision with root package name */
    public static final String[] f10813b;

    /* renamed from: c, reason: collision with root package name */
    public static final String f10814c;

    static {
        String[] strArr = {"Z", "+hh", "+hhmm", "+hh:mm"};
        f10813b = strArr;
        f10814c = "yyyyMMdd'T'HHmmss".concat(String.valueOf(strArr[0]));
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00fa  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.util.Calendar a(java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 284
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: w4.a.a(java.lang.String):java.util.Calendar");
    }

    public static void b(ArrayList arrayList, JSONArray jSONArray) {
        try {
            arrayList.clear();
            for (int i6 = 0; i6 < jSONArray.length(); i6++) {
                try {
                    arrayList.add(new WebImage(jSONArray.getJSONObject(i6)));
                } catch (IllegalArgumentException unused) {
                }
            }
        } catch (JSONException unused2) {
        }
    }
}
