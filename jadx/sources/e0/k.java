package e0;

import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class k {

    /* renamed from: a, reason: collision with root package name */
    public final ColorStateList f6389a;

    /* renamed from: b, reason: collision with root package name */
    public final Configuration f6390b;

    /* renamed from: c, reason: collision with root package name */
    public final int f6391c;

    public k(ColorStateList colorStateList, Configuration configuration, Resources.Theme theme) {
        this.f6389a = colorStateList;
        this.f6390b = configuration;
        this.f6391c = theme == null ? 0 : theme.hashCode();
    }
}
