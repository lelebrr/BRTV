package androidx.media3.common;

import android.view.View;
import androidx.media3.common.util.UnstableApi;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class AdOverlayInfo {
    public static final int PURPOSE_CLOSE_AD = 2;
    public static final int PURPOSE_CONTROLS = 1;
    public static final int PURPOSE_NOT_VISIBLE = 4;
    public static final int PURPOSE_OTHER = 3;
    public final int purpose;
    public final String reasonDetail;
    public final View view;

    /* compiled from: MyApplication */
    public static final class Builder {
        private String detailedReason;
        private final int purpose;
        private final View view;

        public Builder(View view, int i6) {
            this.view = view;
            this.purpose = i6;
        }

        public AdOverlayInfo build() {
            return new AdOverlayInfo(this.view, this.purpose, this.detailedReason);
        }

        public Builder setDetailedReason(String str) {
            this.detailedReason = str;
            return this;
        }
    }

    /* compiled from: MyApplication */
    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface Purpose {
    }

    @UnstableApi
    @Deprecated
    public AdOverlayInfo(View view, int i6) {
        this(view, i6, null);
    }

    @UnstableApi
    @Deprecated
    public AdOverlayInfo(View view, int i6, String str) {
        this.view = view;
        this.purpose = i6;
        this.reasonDetail = str;
    }
}
