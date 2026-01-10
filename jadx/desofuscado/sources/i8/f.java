package i8;

import java.util.concurrent.TimeUnit;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class f {
    static {
        Boolean.getBoolean("rx3.scheduler.use-nanotime");
        long jLongValue = Long.getLong("rx3.scheduler.drift-tolerance", 15L).longValue();
        String property = System.getProperty("rx3.scheduler.drift-tolerance-unit", "minutes");
        if ("seconds".equalsIgnoreCase(property)) {
            TimeUnit.SECONDS.toNanos(jLongValue);
        } else if ("milliseconds".equalsIgnoreCase(property)) {
            TimeUnit.MILLISECONDS.toNanos(jLongValue);
        } else {
            TimeUnit.MINUTES.toNanos(jLongValue);
        }
    }

    public abstract e a();

    public j8.b b(a3.c cVar, TimeUnit timeUnit) {
        e eVarA = a();
        d dVar = new d(cVar, eVarA);
        eVarA.b(dVar, timeUnit);
        return dVar;
    }
}
