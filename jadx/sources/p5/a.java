package p5;

import android.content.SharedPreferences;
import java.util.concurrent.Callable;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a implements Callable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f8909a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SharedPreferences f8910b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f8911c;
    public final /* synthetic */ Object d;

    public /* synthetic */ a(SharedPreferences sharedPreferences, String str, Object obj, int i6) {
        this.f8909a = i6;
        this.f8910b = sharedPreferences;
        this.f8911c = str;
        this.d = obj;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() {
        switch (this.f8909a) {
            case 0:
                return Boolean.valueOf(this.f8910b.getBoolean(this.f8911c, ((Boolean) this.d).booleanValue()));
            case 1:
                return Integer.valueOf(this.f8910b.getInt(this.f8911c, ((Integer) this.d).intValue()));
            case 2:
                return Long.valueOf(this.f8910b.getLong(this.f8911c, ((Long) this.d).longValue()));
            default:
                return this.f8910b.getString(this.f8911c, (String) this.d);
        }
    }
}
