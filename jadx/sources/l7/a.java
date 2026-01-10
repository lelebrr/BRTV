package l7;

import java.lang.reflect.Field;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public enum a extends g {
    public a() {
        super("IDENTITY", 0);
    }

    @Override // l7.g
    public final String b(Field field) {
        return field.getName();
    }
}
