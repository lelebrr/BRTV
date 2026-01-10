package d7;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class u2 implements Iterator {

    /* renamed from: a, reason: collision with root package name */
    public static final u2 f6277a;

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ u2[] f6278b;

    static {
        u2 u2Var = new u2("INSTANCE", 0);
        f6277a = u2Var;
        f6278b = new u2[]{u2Var};
    }

    public static u2 valueOf(String str) {
        return (u2) Enum.valueOf(u2.class, str);
    }

    public static u2[] values() {
        return (u2[]) f6278b.clone();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return false;
    }

    @Override // java.util.Iterator
    public final Object next() {
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public final void remove() {
        b7.b.n("no calls to next() since the last call to remove()", false);
    }
}
