package androidx.core.app;

import android.os.Bundle;
import androidx.core.graphics.drawable.IconCompat;
import com.lzy.okgo.cache.CacheEntity;
import com.lzy.okgo.cookie.SerializableCookie;
import java.util.Objects;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b1 {

    /* renamed from: a, reason: collision with root package name */
    public CharSequence f1153a;

    /* renamed from: b, reason: collision with root package name */
    public IconCompat f1154b;

    /* renamed from: c, reason: collision with root package name */
    public String f1155c;
    public String d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f1156e;
    public boolean f;

    public static b1 a(Bundle bundle) {
        Bundle bundle2 = bundle.getBundle("icon");
        CharSequence charSequence = bundle.getCharSequence(SerializableCookie.NAME);
        IconCompat iconCompatB = bundle2 != null ? IconCompat.b(bundle2) : null;
        String string = bundle.getString("uri");
        String string2 = bundle.getString(CacheEntity.KEY);
        boolean z7 = bundle.getBoolean("isBot");
        boolean z10 = bundle.getBoolean("isImportant");
        b1 b1Var = new b1();
        b1Var.f1153a = charSequence;
        b1Var.f1154b = iconCompatB;
        b1Var.f1155c = string;
        b1Var.d = string2;
        b1Var.f1156e = z7;
        b1Var.f = z10;
        return b1Var;
    }

    public final Bundle b() {
        Bundle bundle = new Bundle();
        bundle.putCharSequence(SerializableCookie.NAME, this.f1153a);
        IconCompat iconCompat = this.f1154b;
        bundle.putBundle("icon", iconCompat != null ? iconCompat.m() : null);
        bundle.putString("uri", this.f1155c);
        bundle.putString(CacheEntity.KEY, this.d);
        bundle.putBoolean("isBot", this.f1156e);
        bundle.putBoolean("isImportant", this.f);
        return bundle;
    }

    public final boolean equals(Object obj) {
        if (obj == null || !(obj instanceof b1)) {
            return false;
        }
        b1 b1Var = (b1) obj;
        String str = this.d;
        String str2 = b1Var.d;
        return (str == null && str2 == null) ? Objects.equals(Objects.toString(this.f1153a), Objects.toString(b1Var.f1153a)) && Objects.equals(this.f1155c, b1Var.f1155c) && Boolean.valueOf(this.f1156e).equals(Boolean.valueOf(b1Var.f1156e)) && Boolean.valueOf(this.f).equals(Boolean.valueOf(b1Var.f)) : Objects.equals(str, str2);
    }

    public final int hashCode() {
        String str = this.d;
        if (str != null) {
            return str.hashCode();
        }
        return Objects.hash(this.f1153a, this.f1155c, Boolean.valueOf(this.f1156e), Boolean.valueOf(this.f));
    }
}
