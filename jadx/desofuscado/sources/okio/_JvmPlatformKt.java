package okio;

import j9.i;
import java.util.concurrent.locks.ReentrantLock;
import r9.a;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class _JvmPlatformKt {
    public static final byte[] asUtf8ToByteArray(String str) {
        i.f(str, "<this>");
        byte[] bytes = str.getBytes(a.f9611a);
        i.e(bytes, "getBytes(...)");
        return bytes;
    }

    public static final ReentrantLock newLock() {
        return new ReentrantLock();
    }

    public static final String toUtf8String(byte[] bArr) {
        i.f(bArr, "<this>");
        return new String(bArr, a.f9611a);
    }

    public static final <T> T withLock(ReentrantLock reentrantLock, i9.a aVar) {
        i.f(reentrantLock, "<this>");
        i.f(aVar, "action");
        reentrantLock.lock();
        try {
            return (T) aVar.invoke();
        } finally {
            reentrantLock.unlock();
        }
    }
}
