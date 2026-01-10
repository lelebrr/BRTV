package okio.internal;

import j9.f;
import j9.i;
import java.util.ArrayList;
import java.util.List;
import okio.Path;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class ZipEntry {
    private final Path canonicalPath;
    private final List<Path> children;
    private final String comment;
    private final long compressedSize;
    private final int compressionMethod;
    private final long crc;
    private final boolean isDirectory;
    private final Long lastModifiedAtMillis;
    private final long offset;
    private final long size;

    public ZipEntry(Path path, boolean z7, String str, long j10, long j11, long j12, int i6, Long l9, long j13) {
        i.f(path, "canonicalPath");
        i.f(str, "comment");
        this.canonicalPath = path;
        this.isDirectory = z7;
        this.comment = str;
        this.crc = j10;
        this.compressedSize = j11;
        this.size = j12;
        this.compressionMethod = i6;
        this.lastModifiedAtMillis = l9;
        this.offset = j13;
        this.children = new ArrayList();
    }

    public final Path getCanonicalPath() {
        return this.canonicalPath;
    }

    public final List<Path> getChildren() {
        return this.children;
    }

    public final String getComment() {
        return this.comment;
    }

    public final long getCompressedSize() {
        return this.compressedSize;
    }

    public final int getCompressionMethod() {
        return this.compressionMethod;
    }

    public final long getCrc() {
        return this.crc;
    }

    public final Long getLastModifiedAtMillis() {
        return this.lastModifiedAtMillis;
    }

    public final long getOffset() {
        return this.offset;
    }

    public final long getSize() {
        return this.size;
    }

    public final boolean isDirectory() {
        return this.isDirectory;
    }

    public /* synthetic */ ZipEntry(Path path, boolean z7, String str, long j10, long j11, long j12, int i6, Long l9, long j13, int i10, f fVar) {
        this(path, (i10 & 2) != 0 ? false : z7, (i10 & 4) != 0 ? "" : str, (i10 & 8) != 0 ? -1L : j10, (i10 & 16) != 0 ? -1L : j11, (i10 & 32) != 0 ? -1L : j12, (i10 & 64) != 0 ? -1 : i6, (i10 & 128) != 0 ? null : l9, (i10 & 256) == 0 ? j13 : -1L);
    }
}
