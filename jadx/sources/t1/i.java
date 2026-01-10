package t1;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Objects;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class i {

    /* renamed from: a, reason: collision with root package name */
    public final int f10082a;

    /* renamed from: b, reason: collision with root package name */
    public final int f10083b;

    /* renamed from: c, reason: collision with root package name */
    public final long f10084c;
    public final long d;

    public i(long j10, int i6, int i10, long j11) {
        this.f10082a = i6;
        this.f10083b = i10;
        this.f10084c = j10;
        this.d = j11;
    }

    public static i a(File file) throws IOException {
        DataInputStream dataInputStream = new DataInputStream(new FileInputStream(file));
        try {
            i iVar = new i(dataInputStream.readLong(), dataInputStream.readInt(), dataInputStream.readInt(), dataInputStream.readLong());
            dataInputStream.close();
            return iVar;
        } catch (Throwable th) {
            try {
                dataInputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public final void b(File file) throws IOException {
        file.delete();
        DataOutputStream dataOutputStream = new DataOutputStream(new FileOutputStream(file));
        try {
            dataOutputStream.writeInt(this.f10082a);
            dataOutputStream.writeInt(this.f10083b);
            dataOutputStream.writeLong(this.f10084c);
            dataOutputStream.writeLong(this.d);
            dataOutputStream.close();
        } catch (Throwable th) {
            try {
                dataOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        return this.f10083b == iVar.f10083b && this.f10084c == iVar.f10084c && this.f10082a == iVar.f10082a && this.d == iVar.d;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(this.f10083b), Long.valueOf(this.f10084c), Integer.valueOf(this.f10082a), Long.valueOf(this.d));
    }
}
