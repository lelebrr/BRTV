package e3;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.MessageDigest;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class j implements l, v2.f, com.bumptech.glide.load.data.g {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6508a;

    /* renamed from: b, reason: collision with root package name */
    public final ByteBuffer f6509b;

    public j(int i6) {
        this.f6508a = i6;
        switch (i6) {
            case 3:
                this.f6509b = ByteBuffer.allocate(4);
                break;
            default:
                this.f6509b = ByteBuffer.allocate(8);
                break;
        }
    }

    private final void g(byte[] bArr, Object obj, MessageDigest messageDigest) {
        Long l9 = (Long) obj;
        messageDigest.update(bArr);
        synchronized (this.f6509b) {
            this.f6509b.position(0);
            messageDigest.update(this.f6509b.putLong(l9.longValue()).array());
        }
    }

    @Override // v2.f
    public void a(byte[] bArr, Object obj, MessageDigest messageDigest) {
        switch (this.f6508a) {
            case 2:
                g(bArr, obj, messageDigest);
                return;
            default:
                Integer num = (Integer) obj;
                if (num == null) {
                    return;
                }
                messageDigest.update(bArr);
                synchronized (this.f6509b) {
                    this.f6509b.position(0);
                    messageDigest.update(this.f6509b.putInt(num.intValue()).array());
                }
                return;
        }
    }

    @Override // e3.l
    public int c(byte[] bArr, int i6) {
        ByteBuffer byteBuffer = this.f6509b;
        int iMin = Math.min(i6, byteBuffer.remaining());
        if (iMin == 0) {
            return -1;
        }
        byteBuffer.get(bArr, 0, iMin);
        return iMin;
    }

    @Override // e3.l
    public short d() throws k {
        ByteBuffer byteBuffer = this.f6509b;
        if (byteBuffer.remaining() >= 1) {
            return (short) (byteBuffer.get() & 255);
        }
        throw new k();
    }

    @Override // com.bumptech.glide.load.data.g
    public Object e() {
        ByteBuffer byteBuffer = this.f6509b;
        byteBuffer.position(0);
        return byteBuffer;
    }

    public short f(int i6) {
        ByteBuffer byteBuffer = this.f6509b;
        if (byteBuffer.remaining() - i6 >= 2) {
            return byteBuffer.getShort(i6);
        }
        return (short) -1;
    }

    @Override // e3.l
    public int h() {
        return (d() << 8) | d();
    }

    @Override // e3.l
    public long skip(long j10) {
        ByteBuffer byteBuffer = this.f6509b;
        int iMin = (int) Math.min(byteBuffer.remaining(), j10);
        byteBuffer.position(byteBuffer.position() + iMin);
        return iMin;
    }

    public j(byte[] bArr, int i6) {
        this.f6508a = 1;
        this.f6509b = (ByteBuffer) ByteBuffer.wrap(bArr).order(ByteOrder.BIG_ENDIAN).limit(i6);
    }

    public j(ByteBuffer byteBuffer, int i6) {
        this.f6508a = i6;
        switch (i6) {
            case 4:
                this.f6509b = byteBuffer;
                break;
            default:
                this.f6509b = byteBuffer;
                byteBuffer.order(ByteOrder.BIG_ENDIAN);
                break;
        }
    }

    @Override // com.bumptech.glide.load.data.g
    public void b() {
    }
}
