package d1;

import android.text.Editable;
import b1.s;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a extends Editable.Factory {

    /* renamed from: a, reason: collision with root package name */
    public static final Object f5996a = new Object();

    /* renamed from: b, reason: collision with root package name */
    public static volatile a f5997b;

    /* renamed from: c, reason: collision with root package name */
    public static Class f5998c;

    @Override // android.text.Editable.Factory
    public final Editable newEditable(CharSequence charSequence) {
        Class cls = f5998c;
        return cls != null ? new s(cls, charSequence) : super.newEditable(charSequence);
    }
}
