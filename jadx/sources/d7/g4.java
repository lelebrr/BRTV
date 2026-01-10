package d7;

import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public enum g4 extends i4 {
    public g4() {
        super("KEY", 0);
    }

    @Override // b7.i
    public final Object apply(Object obj) {
        return ((Map.Entry) obj).getKey();
    }
}
