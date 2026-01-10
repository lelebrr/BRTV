package h8;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import i8.f;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class a {

    /* renamed from: a, reason: collision with root package name */
    public static final e f7273a;

    static {
        Looper mainLooper = Looper.getMainLooper();
        f fVar = b.f7274a;
        boolean z7 = true;
        if (Build.VERSION.SDK_INT < 22) {
            Message messageObtain = Message.obtain();
            try {
                messageObtain.setAsynchronous(true);
            } catch (NoSuchMethodError unused) {
                z7 = false;
            }
            messageObtain.recycle();
        }
        f7273a = new e(new Handler(mainLooper), z7);
    }
}
