package j7;

import h7.g;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d implements h7.f {

    /* renamed from: a, reason: collision with root package name */
    public static final SimpleDateFormat f7445a;

    static {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", Locale.US);
        f7445a = simpleDateFormat;
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
    }

    @Override // h7.a
    public final void a(Object obj, Object obj2) {
        ((g) obj2).b(f7445a.format((Date) obj));
    }
}
