package e2;

import android.os.StatFs;
import java.io.File;
import okio.FileSystem;
import okio.Path;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public Path f6444a;

    /* renamed from: b, reason: collision with root package name */
    public FileSystem f6445b;

    /* renamed from: c, reason: collision with root package name */
    public double f6446c;
    public long d;

    /* renamed from: e, reason: collision with root package name */
    public long f6447e;
    public z9.c f;

    public final k a() {
        long j10 = this.d;
        Path path = this.f6444a;
        if (path == null) {
            throw new IllegalStateException("directory == null");
        }
        double d = this.f6446c;
        if (d > 0.0d) {
            try {
                File file = path.toFile();
                file.mkdir();
                StatFs statFs = new StatFs(file.getAbsolutePath());
                long blockCountLong = (long) (d * statFs.getBlockCountLong() * statFs.getBlockSizeLong());
                long j11 = this.f6447e;
                if (j10 > j11) {
                    throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + j11 + " is less than minimum " + j10 + '.');
                }
                if (blockCountLong >= j10) {
                    j10 = blockCountLong > j11 ? j11 : blockCountLong;
                }
            } catch (Exception unused) {
            }
        } else {
            j10 = 0;
        }
        return new k(j10, this.f6445b, path, this.f);
    }
}
