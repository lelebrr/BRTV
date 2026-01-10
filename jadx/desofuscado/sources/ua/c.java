package ua;

import org.greenrobot.eventbus.ThreadMode;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public abstract /* synthetic */ class c {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f10466a;

    static {
        int[] iArr = new int[ThreadMode.values().length];
        f10466a = iArr;
        try {
            iArr[ThreadMode.POSTING.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f10466a[ThreadMode.MAIN.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f10466a[ThreadMode.BACKGROUND.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            f10466a[ThreadMode.ASYNC.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
    }
}
