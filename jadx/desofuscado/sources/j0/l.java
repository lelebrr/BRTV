package j0;

import android.os.LocaleList;
import java.util.Locale;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class l implements k {

    /* renamed from: a, reason: collision with root package name */
    public final LocaleList f7424a;

    public l(Object obj) {
        this.f7424a = com.alibaba.fastjson.parser.deserializer.d.h(obj);
    }

    @Override // j0.k
    public final String a() {
        return this.f7424a.toLanguageTags();
    }

    @Override // j0.k
    public final Object b() {
        return this.f7424a;
    }

    public final boolean equals(Object obj) {
        return this.f7424a.equals(((k) obj).b());
    }

    @Override // j0.k
    public final Locale get(int i6) {
        return this.f7424a.get(i6);
    }

    public final int hashCode() {
        return this.f7424a.hashCode();
    }

    @Override // j0.k
    public final boolean isEmpty() {
        return this.f7424a.isEmpty();
    }

    @Override // j0.k
    public final int size() {
        return this.f7424a.size();
    }

    public final String toString() {
        return this.f7424a.toString();
    }
}
