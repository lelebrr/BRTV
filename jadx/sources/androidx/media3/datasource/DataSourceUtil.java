package androidx.media3.datasource;

import androidx.media3.common.util.UnstableApi;
import java.io.IOException;
import java.util.Arrays;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public final class DataSourceUtil {
    private DataSourceUtil() {
    }

    public static void closeQuietly(DataSource dataSource) {
        if (dataSource != null) {
            try {
                dataSource.close();
            } catch (IOException unused) {
            }
        }
    }

    public static byte[] readExactly(DataSource dataSource, int i6) throws IOException {
        byte[] bArr = new byte[i6];
        int i10 = 0;
        while (i10 < i6) {
            int i11 = dataSource.read(bArr, i10, i6 - i10);
            if (i11 == -1) {
                throw new IllegalStateException(a.e.m(i10, i6, "Not enough data could be read: ", " < "));
            }
            i10 += i11;
        }
        return bArr;
    }

    public static byte[] readToEnd(DataSource dataSource) throws IOException {
        byte[] bArrCopyOf = new byte[1024];
        int i6 = 0;
        int i10 = 0;
        while (i6 != -1) {
            if (i10 == bArrCopyOf.length) {
                bArrCopyOf = Arrays.copyOf(bArrCopyOf, bArrCopyOf.length * 2);
            }
            i6 = dataSource.read(bArrCopyOf, i10, bArrCopyOf.length - i10);
            if (i6 != -1) {
                i10 += i6;
            }
        }
        return Arrays.copyOf(bArrCopyOf, i10);
    }
}
