package m7;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* compiled from: MyApplication */
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface a {
    boolean nullSafe() default true;

    Class value();
}
