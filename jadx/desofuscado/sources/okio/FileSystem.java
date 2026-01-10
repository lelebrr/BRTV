package okio;

import i9.l;
import j9.f;
import j9.i;
import java.io.IOException;
import java.util.List;
import l5.a;
import okio.Path;
import okio.internal.ResourceFileSystem;
import q9.c;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class FileSystem {
    public static final Companion Companion = new Companion(null);
    public static final FileSystem RESOURCES;
    public static final FileSystem SYSTEM;
    public static final Path SYSTEM_TEMPORARY_DIRECTORY;

    /* compiled from: MyApplication */
    public static final class Companion {
        public /* synthetic */ Companion(f fVar) {
            this();
        }

        public final FileSystem get(java.nio.file.FileSystem fileSystem) {
            i.f(fileSystem, "<this>");
            return new NioFileSystemWrappingFileSystem(fileSystem);
        }

        private Companion() {
        }
    }

    /* renamed from: -write$default, reason: not valid java name */
    public static /* synthetic */ Object m152write$default(FileSystem fileSystem, Path path, boolean z7, l lVar, int i6, Object obj) throws Throwable {
        Object objInvoke;
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: write");
        }
        if ((i6 & 2) != 0) {
            z7 = false;
        }
        i.f(path, "file");
        i.f(lVar, "writerAction");
        BufferedSink bufferedSinkBuffer = Okio.buffer(fileSystem.sink(path, z7));
        Throwable th = null;
        try {
            objInvoke = lVar.invoke(bufferedSinkBuffer);
            if (bufferedSinkBuffer != null) {
                try {
                    bufferedSinkBuffer.close();
                } catch (Throwable th2) {
                    th = th2;
                }
            }
        } catch (Throwable th3) {
            if (bufferedSinkBuffer != null) {
                try {
                    bufferedSinkBuffer.close();
                } catch (Throwable th4) {
                    a.a(th3, th4);
                }
            }
            objInvoke = null;
            th = th3;
        }
        if (th != null) {
            throw th;
        }
        i.c(objInvoke);
        return objInvoke;
    }

    static {
        FileSystem jvmSystemFileSystem;
        try {
            Class.forName("java.nio.file.Files");
            jvmSystemFileSystem = new NioSystemFileSystem();
        } catch (ClassNotFoundException unused) {
            jvmSystemFileSystem = new JvmSystemFileSystem();
        }
        SYSTEM = jvmSystemFileSystem;
        Path.Companion companion = Path.Companion;
        String property = System.getProperty("java.io.tmpdir");
        i.e(property, "getProperty(...)");
        SYSTEM_TEMPORARY_DIRECTORY = Path.Companion.get$default(companion, property, false, 1, (Object) null);
        ClassLoader classLoader = ResourceFileSystem.class.getClassLoader();
        i.e(classLoader, "getClassLoader(...)");
        RESOURCES = new ResourceFileSystem(classLoader, false, null, 4, null);
    }

    public static /* synthetic */ Sink appendingSink$default(FileSystem fileSystem, Path path, boolean z7, int i6, Object obj) throws IOException {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: appendingSink");
        }
        if ((i6 & 2) != 0) {
            z7 = false;
        }
        return fileSystem.appendingSink(path, z7);
    }

    public static /* synthetic */ void createDirectories$default(FileSystem fileSystem, Path path, boolean z7, int i6, Object obj) throws IOException {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: createDirectories");
        }
        if ((i6 & 2) != 0) {
            z7 = false;
        }
        fileSystem.createDirectories(path, z7);
    }

    public static /* synthetic */ void createDirectory$default(FileSystem fileSystem, Path path, boolean z7, int i6, Object obj) throws IOException {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: createDirectory");
        }
        if ((i6 & 2) != 0) {
            z7 = false;
        }
        fileSystem.createDirectory(path, z7);
    }

    public static /* synthetic */ void delete$default(FileSystem fileSystem, Path path, boolean z7, int i6, Object obj) throws IOException {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: delete");
        }
        if ((i6 & 2) != 0) {
            z7 = false;
        }
        fileSystem.delete(path, z7);
    }

    public static /* synthetic */ void deleteRecursively$default(FileSystem fileSystem, Path path, boolean z7, int i6, Object obj) throws IOException {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: deleteRecursively");
        }
        if ((i6 & 2) != 0) {
            z7 = false;
        }
        fileSystem.deleteRecursively(path, z7);
    }

    public static final FileSystem get(java.nio.file.FileSystem fileSystem) {
        return Companion.get(fileSystem);
    }

    public static /* synthetic */ c listRecursively$default(FileSystem fileSystem, Path path, boolean z7, int i6, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: listRecursively");
        }
        if ((i6 & 2) != 0) {
            z7 = false;
        }
        return fileSystem.listRecursively(path, z7);
    }

    public static /* synthetic */ FileHandle openReadWrite$default(FileSystem fileSystem, Path path, boolean z7, boolean z10, int i6, Object obj) throws IOException {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: openReadWrite");
        }
        if ((i6 & 2) != 0) {
            z7 = false;
        }
        if ((i6 & 4) != 0) {
            z10 = false;
        }
        return fileSystem.openReadWrite(path, z7, z10);
    }

    public static /* synthetic */ Sink sink$default(FileSystem fileSystem, Path path, boolean z7, int i6, Object obj) throws IOException {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: sink");
        }
        if ((i6 & 2) != 0) {
            z7 = false;
        }
        return fileSystem.sink(path, z7);
    }

    /* renamed from: -read, reason: not valid java name */
    public final <T> T m153read(Path path, l lVar) throws Throwable {
        T t5;
        i.f(path, "file");
        i.f(lVar, "readerAction");
        BufferedSource bufferedSourceBuffer = Okio.buffer(source(path));
        Throwable th = null;
        try {
            t5 = (T) lVar.invoke(bufferedSourceBuffer);
            if (bufferedSourceBuffer != null) {
                try {
                    bufferedSourceBuffer.close();
                } catch (Throwable th2) {
                    th = th2;
                }
            }
        } catch (Throwable th3) {
            if (bufferedSourceBuffer != null) {
                try {
                    bufferedSourceBuffer.close();
                } catch (Throwable th4) {
                    a.a(th3, th4);
                }
            }
            th = th3;
            t5 = null;
        }
        if (th != null) {
            throw th;
        }
        i.c(t5);
        return t5;
    }

    /* renamed from: -write, reason: not valid java name */
    public final <T> T m154write(Path path, boolean z7, l lVar) throws Throwable {
        T t5;
        i.f(path, "file");
        i.f(lVar, "writerAction");
        BufferedSink bufferedSinkBuffer = Okio.buffer(sink(path, z7));
        Throwable th = null;
        try {
            t5 = (T) lVar.invoke(bufferedSinkBuffer);
            if (bufferedSinkBuffer != null) {
                try {
                    bufferedSinkBuffer.close();
                } catch (Throwable th2) {
                    th = th2;
                }
            }
        } catch (Throwable th3) {
            if (bufferedSinkBuffer != null) {
                try {
                    bufferedSinkBuffer.close();
                } catch (Throwable th4) {
                    a.a(th3, th4);
                }
            }
            t5 = null;
            th = th3;
        }
        if (th != null) {
            throw th;
        }
        i.c(t5);
        return t5;
    }

    public final Sink appendingSink(Path path) throws IOException {
        i.f(path, "file");
        return appendingSink(path, false);
    }

    public abstract Sink appendingSink(Path path, boolean z7) throws IOException;

    public abstract void atomicMove(Path path, Path path2) throws IOException;

    public abstract Path canonicalize(Path path) throws IOException;

    public void copy(Path path, Path path2) throws IOException {
        i.f(path, "source");
        i.f(path2, "target");
        okio.internal.FileSystem.commonCopy(this, path, path2);
    }

    public final void createDirectories(Path path, boolean z7) throws IOException {
        i.f(path, "dir");
        okio.internal.FileSystem.commonCreateDirectories(this, path, z7);
    }

    public final void createDirectory(Path path) throws IOException {
        i.f(path, "dir");
        createDirectory(path, false);
    }

    public abstract void createDirectory(Path path, boolean z7) throws IOException;

    public abstract void createSymlink(Path path, Path path2) throws IOException;

    public final void delete(Path path) throws IOException {
        i.f(path, "path");
        delete(path, false);
    }

    public abstract void delete(Path path, boolean z7) throws IOException;

    public void deleteRecursively(Path path, boolean z7) throws IOException {
        i.f(path, "fileOrDirectory");
        okio.internal.FileSystem.commonDeleteRecursively(this, path, z7);
    }

    public final boolean exists(Path path) throws IOException {
        i.f(path, "path");
        return okio.internal.FileSystem.commonExists(this, path);
    }

    public abstract List<Path> list(Path path) throws IOException;

    public abstract List<Path> listOrNull(Path path);

    public c listRecursively(Path path, boolean z7) {
        i.f(path, "dir");
        return okio.internal.FileSystem.commonListRecursively(this, path, z7);
    }

    public final FileMetadata metadata(Path path) throws IOException {
        i.f(path, "path");
        return okio.internal.FileSystem.commonMetadata(this, path);
    }

    public abstract FileMetadata metadataOrNull(Path path) throws IOException;

    public abstract FileHandle openReadOnly(Path path) throws IOException;

    public final FileHandle openReadWrite(Path path) throws IOException {
        i.f(path, "file");
        return openReadWrite(path, false, false);
    }

    public abstract FileHandle openReadWrite(Path path, boolean z7, boolean z10) throws IOException;

    public final Sink sink(Path path) throws IOException {
        i.f(path, "file");
        return sink(path, false);
    }

    public abstract Sink sink(Path path, boolean z7) throws IOException;

    public abstract Source source(Path path) throws IOException;

    public final void createDirectories(Path path) throws IOException {
        i.f(path, "dir");
        createDirectories(path, false);
    }

    public final void deleteRecursively(Path path) throws IOException {
        i.f(path, "fileOrDirectory");
        deleteRecursively(path, false);
    }

    public final c listRecursively(Path path) {
        i.f(path, "dir");
        return listRecursively(path, false);
    }
}
