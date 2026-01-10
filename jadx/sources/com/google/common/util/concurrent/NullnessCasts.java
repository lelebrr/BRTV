package com.google.common.util.concurrent;

/* compiled from: MyApplication */
@ElementTypesAreNonnullByDefault
/* loaded from: classes.dex */
final class NullnessCasts {
    private NullnessCasts() {
    }

    @ParametricNullness
    public static <T> T uncheckedNull() {
        return null;
    }

    @ParametricNullness
    public static <T> T uncheckedCastNullableTToT(T t5) {
        return t5;
    }
}
