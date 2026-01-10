package d7;

import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public enum h4 extends i4 {
    public h4() {
        super("VALUE", 1);
    }

    @Override // b7.i
    public final Object apply(Object obj) {
        return ((Map.Entry) obj).getValue();
    }
}
