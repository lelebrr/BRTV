package l7;

import java.io.IOException;
import java.io.StringWriter;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class m {
    public final String toString() {
        try {
            StringWriter stringWriter = new StringWriter();
            t7.b bVar = new t7.b(stringWriter);
            bVar.f10173e = true;
            n7.d.l(this, bVar);
            return stringWriter.toString();
        } catch (IOException e5) {
            throw new AssertionError(e5);
        }
    }
}
