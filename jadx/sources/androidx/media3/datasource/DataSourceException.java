package androidx.media3.datasource;

import androidx.media3.common.util.UnstableApi;
import java.io.IOException;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class DataSourceException extends IOException {

    @UnstableApi
    @Deprecated
    public static final int POSITION_OUT_OF_RANGE = 2008;
    public final int reason;

    @UnstableApi
    public DataSourceException(int i6) {
        this.reason = i6;
    }

    @UnstableApi
    public static boolean isCausedByPositionOutOfRange(IOException iOException) {
        for (IOException cause = iOException; cause != null; cause = cause.getCause()) {
            if ((cause instanceof DataSourceException) && ((DataSourceException) cause).reason == 2008) {
                return true;
            }
        }
        return false;
    }

    @UnstableApi
    public DataSourceException(Throwable th, int i6) {
        super(th);
        this.reason = i6;
    }

    @UnstableApi
    public DataSourceException(String str, int i6) {
        super(str);
        this.reason = i6;
    }

    @UnstableApi
    public DataSourceException(String str, Throwable th, int i6) {
        super(str, th);
        this.reason = i6;
    }
}
