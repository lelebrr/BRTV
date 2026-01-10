package v7;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.net.IDN;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class b extends a {

    /* renamed from: e, reason: collision with root package name */
    public final String f10728e;

    public b(short s10, String str) {
        this.f10725a = s10;
        this.f10726b = 0;
        this.f10727c = 1;
        this.f10728e = str;
    }

    public final byte[] a() throws IOException {
        String str = this.f10728e;
        if (str == null || str.length() == 0) {
            throw new IOException("host can not empty");
        }
        int i6 = this.f10726b;
        if (i6 != 0 && i6 != 1 && i6 != 2 && i6 != 5) {
            throw new IOException("opCode is not valid");
        }
        int i10 = this.f10727c;
        if (i10 != 0 && i10 != 1) {
            throw new IOException("rd is not valid");
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(512);
        DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
        dataOutputStream.writeShort(this.f10725a);
        dataOutputStream.writeByte((this.f10726b << 3) + this.f10727c);
        dataOutputStream.writeByte(0);
        dataOutputStream.writeByte(0);
        dataOutputStream.writeByte(1);
        dataOutputStream.writeByte(0);
        dataOutputStream.writeByte(0);
        dataOutputStream.writeByte(0);
        dataOutputStream.writeByte(0);
        dataOutputStream.writeByte(0);
        dataOutputStream.writeByte(0);
        for (String str2 : str.split("[.。．｡]")) {
            if (str2.length() > 63) {
                throw new IOException("host part is too long");
            }
            byte[] bytes = IDN.toASCII(str2).getBytes();
            dataOutputStream.write(bytes.length);
            dataOutputStream.write(bytes, 0, bytes.length);
        }
        dataOutputStream.writeByte(0);
        dataOutputStream.writeByte(0);
        dataOutputStream.writeByte(1);
        dataOutputStream.writeByte(0);
        dataOutputStream.writeByte(1);
        return byteArrayOutputStream.toByteArray();
    }
}
