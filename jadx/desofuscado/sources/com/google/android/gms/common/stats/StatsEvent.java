package com.google.android.gms.common.stats;

import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* compiled from: MyApplication */
@Deprecated
/* loaded from: classes.dex */
public abstract class StatsEvent extends AbstractSafeParcelable implements ReflectedParcelable {
    public abstract int j();

    public abstract long l();

    public abstract String m();

    public final String toString() {
        return l() + "\t" + j() + "\t-1" + m();
    }
}
