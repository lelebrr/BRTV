package okio.internal;

import j9.i;
import java.io.IOException;
import okio.TypedOptions;

/* compiled from: MyApplication */
/* renamed from: okio.internal.-BufferedSource, reason: invalid class name */
/* loaded from: classes.dex */
public final class BufferedSource {
    public static final <T> T commonSelect(okio.BufferedSource bufferedSource, TypedOptions<T> typedOptions) throws IOException {
        i.f(bufferedSource, "<this>");
        i.f(typedOptions, "options");
        int iSelect = bufferedSource.select(typedOptions.getOptions$okio());
        if (iSelect == -1) {
            return null;
        }
        return typedOptions.get(iSelect);
    }
}
