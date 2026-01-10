package androidx.media3.common.util;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public interface TimestampIterator {
    TimestampIterator copyOf();

    long getLastTimestampUs();

    boolean hasNext();

    long next();
}
