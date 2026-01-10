package b7;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class c implements n {
    public abstract boolean a(char c5);

    @Override // b7.n
    public final boolean apply(Object obj) {
        return a(((Character) obj).charValue());
    }
}
