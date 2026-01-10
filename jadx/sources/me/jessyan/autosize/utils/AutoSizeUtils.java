package me.jessyan.autosize.utils;

import android.app.Application;
import android.content.Context;
import android.util.TypedValue;
import java.lang.reflect.InvocationTargetException;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class AutoSizeUtils {
    private AutoSizeUtils() {
        throw new IllegalStateException("you can't instantiate me!");
    }

    public static int dp2px(Context context, float f) {
        return (int) (TypedValue.applyDimension(1, f, context.getResources().getDisplayMetrics()) + 0.5f);
    }

    public static Application getApplicationByReflect() throws IllegalAccessException, ClassNotFoundException, IllegalArgumentException, InvocationTargetException {
        try {
            Class<?> cls = Class.forName("android.app.ActivityThread");
            Object objInvoke = cls.getMethod("getApplication", null).invoke(cls.getMethod("currentActivityThread", null).invoke(null, null), null);
            if (objInvoke != null) {
                return (Application) objInvoke;
            }
            throw new NullPointerException("you should init first");
        } catch (ClassNotFoundException e5) {
            e5.printStackTrace();
            throw new NullPointerException("you should init first");
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            throw new NullPointerException("you should init first");
        } catch (NoSuchMethodException e11) {
            e11.printStackTrace();
            throw new NullPointerException("you should init first");
        } catch (InvocationTargetException e12) {
            e12.printStackTrace();
            throw new NullPointerException("you should init first");
        }
    }

    public static int in2px(Context context, float f) {
        return (int) (TypedValue.applyDimension(4, f, context.getResources().getDisplayMetrics()) + 0.5f);
    }

    public static int mm2px(Context context, float f) {
        return (int) (TypedValue.applyDimension(5, f, context.getResources().getDisplayMetrics()) + 0.5f);
    }

    public static int pt2px(Context context, float f) {
        return (int) (TypedValue.applyDimension(3, f, context.getResources().getDisplayMetrics()) + 0.5f);
    }

    public static int sp2px(Context context, float f) {
        return (int) (TypedValue.applyDimension(2, f, context.getResources().getDisplayMetrics()) + 0.5f);
    }
}
