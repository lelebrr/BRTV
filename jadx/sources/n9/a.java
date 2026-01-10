package n9;

import j9.i;
import java.util.Random;
import java.util.concurrent.ThreadLocalRandom;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a extends m9.a {
    @Override // m9.a
    public final Random a() {
        ThreadLocalRandom threadLocalRandomCurrent = ThreadLocalRandom.current();
        i.e(threadLocalRandomCurrent, "current(...)");
        return threadLocalRandomCurrent;
    }
}
