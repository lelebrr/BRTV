package z2;

import java.security.MessageDigest;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class g implements s3.b {

    /* renamed from: a, reason: collision with root package name */
    public final MessageDigest f11522a;

    /* renamed from: b, reason: collision with root package name */
    public final s3.d f11523b = new s3.d();

    public g(MessageDigest messageDigest) {
        this.f11522a = messageDigest;
    }

    @Override // s3.b
    public final s3.d b() {
        return this.f11523b;
    }
}
