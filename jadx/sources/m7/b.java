package m7;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* compiled from: MyApplication */
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface b {
    String[] alternate() default {};

    String value();
}
