package androidx.media3.exoplayer.drm;

import android.media.DeniedByServerException;
import android.media.MediaDrm;
import android.media.NotProvisionedException;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.HttpDataSource;
import androidx.media3.exoplayer.drm.DefaultDrmSessionManager;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.List;
import java.util.Map;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public final class DrmUtil {
    public static final int ERROR_SOURCE_EXO_MEDIA_DRM = 1;
    public static final int ERROR_SOURCE_LICENSE_ACQUISITION = 2;
    public static final int ERROR_SOURCE_PROVISIONING = 3;
    private static final int MAX_MANUAL_REDIRECTS = 5;

    /* compiled from: MyApplication */
    public static final class Api23 {
        private Api23() {
        }

        public static boolean isMediaDrmResetException(Throwable th) {
            return android.support.v4.media.a.y(th);
        }
    }

    /* compiled from: MyApplication */
    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface ErrorSource {
    }

    private DrmUtil() {
    }

    /* JADX WARN: Can't wrap try/catch for region: R(4:11|22|12|(2:14|15)(2:27|17)) */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0038, code lost:
    
        r11 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0039, code lost:
    
        r1 = getRedirectUrl(r11, r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x003d, code lost:
    
        if (r1 != null) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x003f, code lost:
    
        r8 = r8 + 1;
        r9 = r9.buildUpon().setUri(r1).build();
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0051, code lost:
    
        throw r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0052, code lost:
    
        androidx.media3.common.util.Util.closeQuietly(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0055, code lost:
    
        throw r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0036, code lost:
    
        r8 = move-exception;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static byte[] executePost(androidx.media3.datasource.DataSource r8, java.lang.String r9, byte[] r10, java.util.Map<java.lang.String, java.lang.String> r11) throws androidx.media3.exoplayer.drm.MediaDrmCallbackException {
        /*
            androidx.media3.datasource.StatsDataSource r0 = new androidx.media3.datasource.StatsDataSource
            r0.<init>(r8)
            androidx.media3.datasource.DataSpec$Builder r8 = new androidx.media3.datasource.DataSpec$Builder
            r8.<init>()
            androidx.media3.datasource.DataSpec$Builder r8 = r8.setUri(r9)
            androidx.media3.datasource.DataSpec$Builder r8 = r8.setHttpRequestHeaders(r11)
            r9 = 2
            androidx.media3.datasource.DataSpec$Builder r8 = r8.setHttpMethod(r9)
            androidx.media3.datasource.DataSpec$Builder r8 = r8.setHttpBody(r10)
            r9 = 1
            androidx.media3.datasource.DataSpec$Builder r8 = r8.setFlags(r9)
            androidx.media3.datasource.DataSpec r2 = r8.build()
            r8 = 0
            r9 = r2
        L26:
            androidx.media3.datasource.DataSourceInputStream r10 = new androidx.media3.datasource.DataSourceInputStream     // Catch: java.lang.Exception -> L33
            r10.<init>(r0, r9)     // Catch: java.lang.Exception -> L33
            byte[] r8 = e7.b.b(r10)     // Catch: java.lang.Throwable -> L36 androidx.media3.datasource.HttpDataSource.InvalidResponseCodeException -> L38
            androidx.media3.common.util.Util.closeQuietly(r10)     // Catch: java.lang.Exception -> L33
            return r8
        L33:
            r8 = move-exception
            r7 = r8
            goto L56
        L36:
            r8 = move-exception
            goto L52
        L38:
            r11 = move-exception
            java.lang.String r1 = getRedirectUrl(r11, r8)     // Catch: java.lang.Throwable -> L36
            if (r1 == 0) goto L51
            int r8 = r8 + 1
            androidx.media3.datasource.DataSpec$Builder r9 = r9.buildUpon()     // Catch: java.lang.Throwable -> L36
            androidx.media3.datasource.DataSpec$Builder r9 = r9.setUri(r1)     // Catch: java.lang.Throwable -> L36
            androidx.media3.datasource.DataSpec r9 = r9.build()     // Catch: java.lang.Throwable -> L36
            androidx.media3.common.util.Util.closeQuietly(r10)     // Catch: java.lang.Exception -> L33
            goto L26
        L51:
            throw r11     // Catch: java.lang.Throwable -> L36
        L52:
            androidx.media3.common.util.Util.closeQuietly(r10)     // Catch: java.lang.Exception -> L33
            throw r8     // Catch: java.lang.Exception -> L33
        L56:
            androidx.media3.exoplayer.drm.MediaDrmCallbackException r8 = new androidx.media3.exoplayer.drm.MediaDrmCallbackException
            android.net.Uri r3 = r0.getLastOpenedUri()
            java.util.Map r4 = r0.getResponseHeaders()
            long r5 = r0.getBytesRead()
            r1 = r8
            r1.<init>(r2, r3, r4, r5, r7)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.exoplayer.drm.DrmUtil.executePost(androidx.media3.datasource.DataSource, java.lang.String, byte[], java.util.Map):byte[]");
    }

    public static int getErrorCodeForMediaDrmException(Throwable th, int i6) {
        if (th instanceof MediaDrm.MediaDrmStateException) {
            return Util.getErrorCodeForMediaDrmErrorCode(Util.getErrorCodeFromPlatformDiagnosticsInfo(((MediaDrm.MediaDrmStateException) th).getDiagnosticInfo()));
        }
        if (Util.SDK_INT >= 23 && Api23.isMediaDrmResetException(th)) {
            return PlaybackException.ERROR_CODE_DRM_SYSTEM_ERROR;
        }
        if ((th instanceof NotProvisionedException) || isFailureToConstructNotProvisionedException(th)) {
            return PlaybackException.ERROR_CODE_DRM_PROVISIONING_FAILED;
        }
        if (th instanceof DeniedByServerException) {
            return PlaybackException.ERROR_CODE_DRM_DEVICE_REVOKED;
        }
        if (th instanceof UnsupportedDrmException) {
            return PlaybackException.ERROR_CODE_DRM_SCHEME_UNSUPPORTED;
        }
        if (th instanceof DefaultDrmSessionManager.MissingSchemeDataException) {
            return PlaybackException.ERROR_CODE_DRM_CONTENT_ERROR;
        }
        if (th instanceof KeysExpiredException) {
            return PlaybackException.ERROR_CODE_DRM_LICENSE_EXPIRED;
        }
        if (i6 == 1) {
            return PlaybackException.ERROR_CODE_DRM_SYSTEM_ERROR;
        }
        if (i6 == 2) {
            return PlaybackException.ERROR_CODE_DRM_LICENSE_ACQUISITION_FAILED;
        }
        if (i6 == 3) {
            return PlaybackException.ERROR_CODE_DRM_PROVISIONING_FAILED;
        }
        throw new IllegalArgumentException();
    }

    private static String getRedirectUrl(HttpDataSource.InvalidResponseCodeException invalidResponseCodeException, int i6) {
        Map<String, List<String>> map;
        List<String> list;
        int i10 = invalidResponseCodeException.responseCode;
        if ((i10 != 307 && i10 != 308) || i6 >= 5 || (map = invalidResponseCodeException.headerFields) == null || (list = map.get("Location")) == null || list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    public static boolean isFailureToConstructNotProvisionedException(Throwable th) {
        return Util.SDK_INT == 34 && (th instanceof NoSuchMethodError) && th.getMessage() != null && th.getMessage().contains("Landroid/media/NotProvisionedException;.<init>(");
    }

    public static boolean isFailureToConstructResourceBusyException(Throwable th) {
        return Util.SDK_INT == 34 && (th instanceof NoSuchMethodError) && th.getMessage() != null && th.getMessage().contains("Landroid/media/ResourceBusyException;.<init>(");
    }
}
