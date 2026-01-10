package okio;

import i9.l;
import j9.i;
import j9.j;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import q9.c;
import x8.o;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class ForwardingFileSystem extends FileSystem {
    private final FileSystem delegate;

    /* compiled from: MyApplication */
    /* renamed from: okio.ForwardingFileSystem$listRecursively$1, reason: invalid class name */
    public static final class AnonymousClass1 extends j implements l {
        public AnonymousClass1() {
            super(1);
        }

        @Override // i9.l
        public final Path invoke(Path path) {
            i.f(path, "it");
            return ForwardingFileSystem.this.onPathResult(path, "listRecursively");
        }
    }

    public ForwardingFileSystem(FileSystem fileSystem) {
        i.f(fileSystem, "delegate");
        this.delegate = fileSystem;
    }

    @Override // okio.FileSystem
    public Sink appendingSink(Path path, boolean z7) throws IOException {
        i.f(path, "file");
        return this.delegate.appendingSink(onPathParameter(path, "appendingSink", "file"), z7);
    }

    @Override // okio.FileSystem
    public void atomicMove(Path path, Path path2) throws IOException {
        i.f(path, "source");
        i.f(path2, "target");
        this.delegate.atomicMove(onPathParameter(path, "atomicMove", "source"), onPathParameter(path2, "atomicMove", "target"));
    }

    @Override // okio.FileSystem
    public Path canonicalize(Path path) throws IOException {
        i.f(path, "path");
        return onPathResult(this.delegate.canonicalize(onPathParameter(path, "canonicalize", "path")), "canonicalize");
    }

    @Override // okio.FileSystem
    public void createDirectory(Path path, boolean z7) throws IOException {
        i.f(path, "dir");
        this.delegate.createDirectory(onPathParameter(path, "createDirectory", "dir"), z7);
    }

    @Override // okio.FileSystem
    public void createSymlink(Path path, Path path2) throws IOException {
        i.f(path, "source");
        i.f(path2, "target");
        this.delegate.createSymlink(onPathParameter(path, "createSymlink", "source"), onPathParameter(path2, "createSymlink", "target"));
    }

    public final FileSystem delegate() {
        return this.delegate;
    }

    @Override // okio.FileSystem
    public void delete(Path path, boolean z7) throws IOException {
        i.f(path, "path");
        this.delegate.delete(onPathParameter(path, "delete", "path"), z7);
    }

    @Override // okio.FileSystem
    public List<Path> list(Path path) throws IOException {
        i.f(path, "dir");
        List<Path> list = this.delegate.list(onPathParameter(path, "list", "dir"));
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(onPathResult((Path) it.next(), "list"));
        }
        o.R(arrayList);
        return arrayList;
    }

    @Override // okio.FileSystem
    public List<Path> listOrNull(Path path) {
        i.f(path, "dir");
        List<Path> listListOrNull = this.delegate.listOrNull(onPathParameter(path, "listOrNull", "dir"));
        if (listListOrNull == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = listListOrNull.iterator();
        while (it.hasNext()) {
            arrayList.add(onPathResult((Path) it.next(), "listOrNull"));
        }
        o.R(arrayList);
        return arrayList;
    }

    @Override // okio.FileSystem
    public c listRecursively(Path path, boolean z7) {
        i.f(path, "dir");
        c cVarListRecursively = this.delegate.listRecursively(onPathParameter(path, "listRecursively", "dir"), z7);
        AnonymousClass1 anonymousClass1 = new AnonymousClass1();
        i.f(cVarListRecursively, "<this>");
        return new q9.j(cVarListRecursively, anonymousClass1);
    }

    @Override // okio.FileSystem
    public FileMetadata metadataOrNull(Path path) throws IOException {
        i.f(path, "path");
        FileMetadata fileMetadataMetadataOrNull = this.delegate.metadataOrNull(onPathParameter(path, "metadataOrNull", "path"));
        if (fileMetadataMetadataOrNull == null) {
            return null;
        }
        return fileMetadataMetadataOrNull.getSymlinkTarget() == null ? fileMetadataMetadataOrNull : fileMetadataMetadataOrNull.copy((251 & 1) != 0 ? fileMetadataMetadataOrNull.isRegularFile : false, (251 & 2) != 0 ? fileMetadataMetadataOrNull.isDirectory : false, (251 & 4) != 0 ? fileMetadataMetadataOrNull.symlinkTarget : onPathResult(fileMetadataMetadataOrNull.getSymlinkTarget(), "metadataOrNull"), (251 & 8) != 0 ? fileMetadataMetadataOrNull.size : null, (251 & 16) != 0 ? fileMetadataMetadataOrNull.createdAtMillis : null, (251 & 32) != 0 ? fileMetadataMetadataOrNull.lastModifiedAtMillis : null, (251 & 64) != 0 ? fileMetadataMetadataOrNull.lastAccessedAtMillis : null, (251 & 128) != 0 ? fileMetadataMetadataOrNull.extras : null);
    }

    public Path onPathParameter(Path path, String str, String str2) {
        i.f(path, "path");
        i.f(str, "functionName");
        i.f(str2, "parameterName");
        return path;
    }

    public Path onPathResult(Path path, String str) {
        i.f(path, "path");
        i.f(str, "functionName");
        return path;
    }

    @Override // okio.FileSystem
    public FileHandle openReadOnly(Path path) throws IOException {
        i.f(path, "file");
        return this.delegate.openReadOnly(onPathParameter(path, "openReadOnly", "file"));
    }

    @Override // okio.FileSystem
    public FileHandle openReadWrite(Path path, boolean z7, boolean z10) throws IOException {
        i.f(path, "file");
        return this.delegate.openReadWrite(onPathParameter(path, "openReadWrite", "file"), z7, z10);
    }

    @Override // okio.FileSystem
    public Sink sink(Path path, boolean z7) throws IOException {
        i.f(path, "file");
        return this.delegate.sink(onPathParameter(path, "sink", "file"), z7);
    }

    @Override // okio.FileSystem
    public Source source(Path path) throws IOException {
        i.f(path, "file");
        return this.delegate.source(onPathParameter(path, "source", "file"));
    }

    public String toString() {
        return j9.o.a(getClass()).b() + '(' + this.delegate + ')';
    }
}
