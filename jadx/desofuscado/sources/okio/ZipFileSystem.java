package okio;

import ea.q;
import j9.f;
import j9.i;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.zip.Inflater;
import l5.a;
import okio.Path;
import okio.internal.FixedLengthSource;
import okio.internal.ZipEntry;
import okio.internal.ZipFilesKt;
import x8.j;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class ZipFileSystem extends FileSystem {
    private static final Companion Companion = new Companion(null);
    private static final Path ROOT = Path.Companion.get$default(Path.Companion, "/", false, 1, (Object) null);
    private final String comment;
    private final Map<Path, ZipEntry> entries;
    private final FileSystem fileSystem;
    private final Path zipPath;

    /* compiled from: MyApplication */
    public static final class Companion {
        public /* synthetic */ Companion(f fVar) {
            this();
        }

        public final Path getROOT() {
            return ZipFileSystem.ROOT;
        }

        private Companion() {
        }
    }

    public ZipFileSystem(Path path, FileSystem fileSystem, Map<Path, ZipEntry> map, String str) {
        i.f(path, "zipPath");
        i.f(fileSystem, "fileSystem");
        i.f(map, "entries");
        this.zipPath = path;
        this.fileSystem = fileSystem;
        this.entries = map;
        this.comment = str;
    }

    private final Path canonicalizeInternal(Path path) {
        return ROOT.resolve(path, true);
    }

    @Override // okio.FileSystem
    public Sink appendingSink(Path path, boolean z7) throws IOException {
        i.f(path, "file");
        throw new IOException("zip file systems are read-only");
    }

    @Override // okio.FileSystem
    public void atomicMove(Path path, Path path2) throws IOException {
        i.f(path, "source");
        i.f(path2, "target");
        throw new IOException("zip file systems are read-only");
    }

    @Override // okio.FileSystem
    public Path canonicalize(Path path) throws FileNotFoundException {
        i.f(path, "path");
        Path pathCanonicalizeInternal = canonicalizeInternal(path);
        if (this.entries.containsKey(pathCanonicalizeInternal)) {
            return pathCanonicalizeInternal;
        }
        throw new FileNotFoundException(String.valueOf(path));
    }

    @Override // okio.FileSystem
    public void createDirectory(Path path, boolean z7) throws IOException {
        i.f(path, "dir");
        throw new IOException("zip file systems are read-only");
    }

    @Override // okio.FileSystem
    public void createSymlink(Path path, Path path2) throws IOException {
        i.f(path, "source");
        i.f(path2, "target");
        throw new IOException("zip file systems are read-only");
    }

    @Override // okio.FileSystem
    public void delete(Path path, boolean z7) throws IOException {
        i.f(path, "path");
        throw new IOException("zip file systems are read-only");
    }

    @Override // okio.FileSystem
    public List<Path> list(Path path) throws IOException {
        i.f(path, "dir");
        List<Path> list = list(path, true);
        i.c(list);
        return list;
    }

    @Override // okio.FileSystem
    public List<Path> listOrNull(Path path) {
        i.f(path, "dir");
        return list(path, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0080 A[Catch: all -> 0x007a, TRY_LEAVE, TryCatch #4 {all -> 0x007a, blocks: (B:13:0x0054, B:31:0x0080, B:37:0x008b, B:26:0x0076, B:23:0x0071, B:14:0x0060), top: B:56:0x0054, inners: #1, #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x008b A[Catch: all -> 0x007a, TRY_ENTER, TRY_LEAVE, TryCatch #4 {all -> 0x007a, blocks: (B:13:0x0054, B:31:0x0080, B:37:0x008b, B:26:0x0076, B:23:0x0071, B:14:0x0060), top: B:56:0x0054, inners: #1, #5 }] */
    @Override // okio.FileSystem
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public okio.FileMetadata metadataOrNull(okio.Path r14) throws java.lang.Throwable {
        /*
            r13 = this;
            java.lang.String r0 = "path"
            j9.i.f(r14, r0)
            okio.Path r14 = r13.canonicalizeInternal(r14)
            java.util.Map<okio.Path, okio.internal.ZipEntry> r0 = r13.entries
            java.lang.Object r14 = r0.get(r14)
            okio.internal.ZipEntry r14 = (okio.internal.ZipEntry) r14
            r0 = 0
            if (r14 != 0) goto L15
            return r0
        L15:
            okio.FileMetadata r12 = new okio.FileMetadata
            boolean r1 = r14.isDirectory()
            r2 = r1 ^ 1
            boolean r3 = r14.isDirectory()
            boolean r1 = r14.isDirectory()
            if (r1 == 0) goto L29
            r5 = r0
            goto L32
        L29:
            long r4 = r14.getSize()
            java.lang.Long r1 = java.lang.Long.valueOf(r4)
            r5 = r1
        L32:
            java.lang.Long r7 = r14.getLastModifiedAtMillis()
            r10 = 128(0x80, float:1.8E-43)
            r11 = 0
            r4 = 0
            r6 = 0
            r8 = 0
            r9 = 0
            r1 = r12
            r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9, r10, r11)
            long r1 = r14.getOffset()
            r3 = -1
            int r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r5 != 0) goto L4c
            return r12
        L4c:
            okio.FileSystem r1 = r13.fileSystem
            okio.Path r2 = r13.zipPath
            okio.FileHandle r1 = r1.openReadOnly(r2)
            long r2 = r14.getOffset()     // Catch: java.lang.Throwable -> L7a
            okio.Source r14 = r1.source(r2)     // Catch: java.lang.Throwable -> L7a
            okio.BufferedSource r14 = okio.Okio.buffer(r14)     // Catch: java.lang.Throwable -> L7a
            okio.FileMetadata r2 = okio.internal.ZipFilesKt.readLocalHeader(r14, r12)     // Catch: java.lang.Throwable -> L6e
            if (r14 == 0) goto L6c
            r14.close()     // Catch: java.lang.Throwable -> L6a
            goto L6c
        L6a:
            r14 = move-exception
            goto L7e
        L6c:
            r14 = r0
            goto L7e
        L6e:
            r2 = move-exception
            if (r14 == 0) goto L7c
            r14.close()     // Catch: java.lang.Throwable -> L75
            goto L7c
        L75:
            r14 = move-exception
            l5.a.a(r2, r14)     // Catch: java.lang.Throwable -> L7a
            goto L7c
        L7a:
            r14 = move-exception
            goto L8c
        L7c:
            r14 = r2
            r2 = r0
        L7e:
            if (r14 != 0) goto L8b
            j9.i.c(r2)     // Catch: java.lang.Throwable -> L7a
            if (r1 == 0) goto L98
            r1.close()     // Catch: java.lang.Throwable -> L89
            goto L98
        L89:
            r0 = move-exception
            goto L98
        L8b:
            throw r14     // Catch: java.lang.Throwable -> L7a
        L8c:
            if (r1 == 0) goto L96
            r1.close()     // Catch: java.lang.Throwable -> L92
            goto L96
        L92:
            r1 = move-exception
            l5.a.a(r14, r1)
        L96:
            r2 = r0
            r0 = r14
        L98:
            if (r0 != 0) goto L9e
            j9.i.c(r2)
            return r2
        L9e:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.ZipFileSystem.metadataOrNull(okio.Path):okio.FileMetadata");
    }

    @Override // okio.FileSystem
    public FileHandle openReadOnly(Path path) {
        i.f(path, "file");
        throw new UnsupportedOperationException("not implemented yet!");
    }

    @Override // okio.FileSystem
    public FileHandle openReadWrite(Path path, boolean z7, boolean z10) throws IOException {
        i.f(path, "file");
        throw new IOException("zip entries are not writable");
    }

    @Override // okio.FileSystem
    public Sink sink(Path path, boolean z7) throws IOException {
        i.f(path, "file");
        throw new IOException("zip file systems are read-only");
    }

    @Override // okio.FileSystem
    public Source source(Path path) throws Throwable {
        BufferedSource bufferedSourceBuffer;
        i.f(path, "file");
        ZipEntry zipEntry = this.entries.get(canonicalizeInternal(path));
        if (zipEntry == null) {
            throw new FileNotFoundException(q.l(path, "no such file: "));
        }
        FileHandle fileHandleOpenReadOnly = this.fileSystem.openReadOnly(this.zipPath);
        Throwable th = null;
        try {
            bufferedSourceBuffer = Okio.buffer(fileHandleOpenReadOnly.source(zipEntry.getOffset()));
            if (fileHandleOpenReadOnly != null) {
                try {
                    fileHandleOpenReadOnly.close();
                } catch (Throwable th2) {
                    th = th2;
                }
            }
        } catch (Throwable th3) {
            if (fileHandleOpenReadOnly != null) {
                try {
                    fileHandleOpenReadOnly.close();
                } catch (Throwable th4) {
                    a.a(th3, th4);
                }
            }
            bufferedSourceBuffer = null;
            th = th3;
        }
        if (th != null) {
            throw th;
        }
        i.c(bufferedSourceBuffer);
        ZipFilesKt.skipLocalHeader(bufferedSourceBuffer);
        return zipEntry.getCompressionMethod() == 0 ? new FixedLengthSource(bufferedSourceBuffer, zipEntry.getSize(), true) : new FixedLengthSource(new InflaterSource(new FixedLengthSource(bufferedSourceBuffer, zipEntry.getCompressedSize(), true), new Inflater(true)), zipEntry.getSize(), false);
    }

    private final List<Path> list(Path path, boolean z7) throws IOException {
        ZipEntry zipEntry = this.entries.get(canonicalizeInternal(path));
        if (zipEntry != null) {
            return j.c0(zipEntry.getChildren());
        }
        if (z7) {
            throw new IOException(q.l(path, "not a directory: "));
        }
        return null;
    }
}
