package okio;

import ea.q;
import j9.i;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.List;
import okio.Path;
import x8.o;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class JvmSystemFileSystem extends FileSystem {
    private final void requireCreate(Path path) throws IOException {
        if (exists(path)) {
            throw new IOException(path + " already exists.");
        }
    }

    private final void requireExist(Path path) throws IOException {
        if (exists(path)) {
            return;
        }
        throw new IOException(path + " doesn't exist.");
    }

    @Override // okio.FileSystem
    public Sink appendingSink(Path path, boolean z7) throws IOException {
        i.f(path, "file");
        if (z7) {
            requireExist(path);
        }
        return Okio.sink(path.toFile(), true);
    }

    @Override // okio.FileSystem
    public void atomicMove(Path path, Path path2) throws IOException {
        i.f(path, "source");
        i.f(path2, "target");
        if (path.toFile().renameTo(path2.toFile())) {
            return;
        }
        throw new IOException("failed to move " + path + " to " + path2);
    }

    @Override // okio.FileSystem
    public Path canonicalize(Path path) throws IOException {
        i.f(path, "path");
        File canonicalFile = path.toFile().getCanonicalFile();
        if (canonicalFile.exists()) {
            return Path.Companion.get$default(Path.Companion, canonicalFile, false, 1, (Object) null);
        }
        throw new FileNotFoundException("no such file");
    }

    @Override // okio.FileSystem
    public void createDirectory(Path path, boolean z7) throws IOException {
        i.f(path, "dir");
        if (path.toFile().mkdir()) {
            return;
        }
        FileMetadata fileMetadataMetadataOrNull = metadataOrNull(path);
        if (fileMetadataMetadataOrNull == null || !fileMetadataMetadataOrNull.isDirectory()) {
            throw new IOException(q.l(path, "failed to create directory: "));
        }
        if (z7) {
            throw new IOException(path + " already exists.");
        }
    }

    @Override // okio.FileSystem
    public void createSymlink(Path path, Path path2) throws IOException {
        i.f(path, "source");
        i.f(path2, "target");
        throw new IOException("unsupported");
    }

    @Override // okio.FileSystem
    public void delete(Path path, boolean z7) throws IOException {
        i.f(path, "path");
        if (Thread.interrupted()) {
            throw new InterruptedIOException("interrupted");
        }
        File file = path.toFile();
        if (file.delete()) {
            return;
        }
        if (file.exists()) {
            throw new IOException(q.l(path, "failed to delete "));
        }
        if (z7) {
            throw new FileNotFoundException(q.l(path, "no such file: "));
        }
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

    @Override // okio.FileSystem
    public FileMetadata metadataOrNull(Path path) {
        i.f(path, "path");
        File file = path.toFile();
        boolean zIsFile = file.isFile();
        boolean zIsDirectory = file.isDirectory();
        long jLastModified = file.lastModified();
        long length = file.length();
        if (!zIsFile && !zIsDirectory && jLastModified == 0 && length == 0 && !file.exists()) {
            return null;
        }
        return new FileMetadata(zIsFile, zIsDirectory, null, Long.valueOf(length), null, Long.valueOf(jLastModified), null, null, 128, null);
    }

    @Override // okio.FileSystem
    public FileHandle openReadOnly(Path path) {
        i.f(path, "file");
        return new JvmFileHandle(false, new RandomAccessFile(path.toFile(), "r"));
    }

    @Override // okio.FileSystem
    public FileHandle openReadWrite(Path path, boolean z7, boolean z10) throws IOException {
        i.f(path, "file");
        if (z7 && z10) {
            throw new IllegalArgumentException("Cannot require mustCreate and mustExist at the same time.");
        }
        if (z7) {
            requireCreate(path);
        }
        if (z10) {
            requireExist(path);
        }
        return new JvmFileHandle(true, new RandomAccessFile(path.toFile(), "rw"));
    }

    @Override // okio.FileSystem
    public Sink sink(Path path, boolean z7) throws IOException {
        i.f(path, "file");
        if (z7) {
            requireCreate(path);
        }
        return Okio__JvmOkioKt.sink$default(path.toFile(), false, 1, null);
    }

    @Override // okio.FileSystem
    public Source source(Path path) {
        i.f(path, "file");
        return Okio.source(path.toFile());
    }

    public String toString() {
        return "JvmSystemFileSystem";
    }

    private final List<Path> list(Path path, boolean z7) throws IOException {
        File file = path.toFile();
        String[] list = file.list();
        if (list == null) {
            if (!z7) {
                return null;
            }
            if (file.exists()) {
                throw new IOException(q.l(path, "failed to list "));
            }
            throw new FileNotFoundException(q.l(path, "no such file: "));
        }
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            i.c(str);
            arrayList.add(path.resolve(str));
        }
        o.R(arrayList);
        return arrayList;
    }
}
