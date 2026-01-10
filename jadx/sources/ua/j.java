package ua;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import org.greenrobot.eventbus.ThreadMode;

/* compiled from: MyApplication */
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes2.dex */
public @interface j {
    int priority() default 0;

    boolean sticky() default false;

    ThreadMode threadMode() default ThreadMode.POSTING;
}
