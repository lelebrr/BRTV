package androidx.appcompat.widget;

import android.widget.AbsListView;
import java.lang.reflect.Field;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class r1 {

    /* renamed from: a, reason: collision with root package name */
    public static final Field f819a;

    static {
        Field declaredField = null;
        try {
            declaredField = AbsListView.class.getDeclaredField("mIsChildViewEnabled");
            declaredField.setAccessible(true);
        } catch (NoSuchFieldException e5) {
            e5.printStackTrace();
        }
        f819a = declaredField;
    }
}
