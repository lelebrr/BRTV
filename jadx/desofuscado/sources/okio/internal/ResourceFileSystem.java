package okio.internal;

import androidx.media3.extractor.text.ttml.TtmlNode;
import ea.q;
import j9.f;
import j9.i;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.net.URI;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import okio.FileHandle;
import okio.FileMetadata;
import okio.FileSystem;
import okio.Okio;
import okio.Path;
import okio.Sink;
import okio.Source;
import r9.n;
import w8.c;
import x8.j;
import x8.l;
import x8.p;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class ResourceFileSystem extends FileSystem {
    private static final Companion Companion = new Companion(null);
    private static final Path ROOT = Path.Companion.get$default(Path.Companion, "/", false, 1, (Object) null);
    private final ClassLoader classLoader;
    private final c roots$delegate;
    private final FileSystem systemFileSystem;

    /* compiled from: MyApplication */
    public static final class Companion {
        public /* synthetic */ Companion(f fVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean keepPath(Path path) {
            return !n.O(path.name(), ".class", true);
        }

        public final Path getROOT() {
            return ResourceFileSystem.ROOT;
        }

        public final Path removeBase(Path path, Path path2) {
            i.f(path, "<this>");
            i.f(path2, TtmlNode.RUBY_BASE);
            return getROOT().resolve(n.S('\\', r9.f.g0(path.toString(), path2.toString()), '/'));
        }

        private Companion() {
        }
    }

    public /* synthetic */ ResourceFileSystem(ClassLoader classLoader, boolean z7, FileSystem fileSystem, int i6, f fVar) {
        this(classLoader, z7, (i6 & 4) != 0 ? FileSystem.SYSTEM : fileSystem);
    }

    private final Path canonicalizeInternal(Path path) {
        return ROOT.resolve(path, true);
    }

    private final List<w8.f> getRoots() {
        return (List) this.roots$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<w8.f> toClasspathRoots(ClassLoader classLoader) throws IOException {
        Enumeration<URL> resources = classLoader.getResources("");
        i.e(resources, "getResources(...)");
        ArrayList<URL> list = Collections.list(resources);
        i.e(list, "list(...)");
        ArrayList arrayList = new ArrayList();
        for (URL url : list) {
            i.c(url);
            w8.f fileRoot = toFileRoot(url);
            if (fileRoot != null) {
                arrayList.add(fileRoot);
            }
        }
        Enumeration<URL> resources2 = classLoader.getResources("META-INF/MANIFEST.MF");
        i.e(resources2, "getResources(...)");
        ArrayList<URL> list2 = Collections.list(resources2);
        i.e(list2, "list(...)");
        ArrayList arrayList2 = new ArrayList();
        for (URL url2 : list2) {
            i.c(url2);
            w8.f jarRoot = toJarRoot(url2);
            if (jarRoot != null) {
                arrayList2.add(jarRoot);
            }
        }
        return j.Z(arrayList, arrayList2);
    }

    private final w8.f toFileRoot(URL url) {
        if (i.a(url.getProtocol(), "file")) {
            return new w8.f(this.systemFileSystem, Path.Companion.get$default(Path.Companion, new File(url.toURI()), false, 1, (Object) null));
        }
        return null;
    }

    private final w8.f toJarRoot(URL url) {
        String string = url.toString();
        i.e(string, "toString(...)");
        if (!n.V(string, "jar:file:", false)) {
            return null;
        }
        int iZ = r9.f.Z(string);
        i.f(string, "<this>");
        int iLastIndexOf = string.lastIndexOf("!", iZ);
        if (iLastIndexOf == -1) {
            return null;
        }
        Path.Companion companion = Path.Companion;
        String strSubstring = string.substring(4, iLastIndexOf);
        i.e(strSubstring, "substring(...)");
        return new w8.f(ZipFilesKt.openZip(Path.Companion.get$default(companion, new File(URI.create(strSubstring)), false, 1, (Object) null), this.systemFileSystem, ResourceFileSystem$toJarRoot$zip$1.INSTANCE), ROOT);
    }

    private final String toRelativePath(Path path) {
        return canonicalizeInternal(path).relativeTo(ROOT).toString();
    }

    @Override // okio.FileSystem
    public Sink appendingSink(Path path, boolean z7) throws IOException {
        i.f(path, "file");
        throw new IOException(this + " is read-only");
    }

    @Override // okio.FileSystem
    public void atomicMove(Path path, Path path2) throws IOException {
        i.f(path, "source");
        i.f(path2, "target");
        throw new IOException(this + " is read-only");
    }

    @Override // okio.FileSystem
    public Path canonicalize(Path path) {
        i.f(path, "path");
        return canonicalizeInternal(path);
    }

    @Override // okio.FileSystem
    public void createDirectory(Path path, boolean z7) throws IOException {
        i.f(path, "dir");
        throw new IOException(this + " is read-only");
    }

    @Override // okio.FileSystem
    public void createSymlink(Path path, Path path2) throws IOException {
        i.f(path, "source");
        i.f(path2, "target");
        throw new IOException(this + " is read-only");
    }

    @Override // okio.FileSystem
    public void delete(Path path, boolean z7) throws IOException {
        i.f(path, "path");
        throw new IOException(this + " is read-only");
    }

    @Override // okio.FileSystem
    public List<Path> list(Path path) throws FileNotFoundException {
        i.f(path, "dir");
        String relativePath = toRelativePath(path);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        boolean z7 = false;
        for (w8.f fVar : getRoots()) {
            FileSystem fileSystem = (FileSystem) fVar.f10825a;
            Path path2 = (Path) fVar.f10826b;
            try {
                List<Path> list = fileSystem.list(path2.resolve(relativePath));
                ArrayList arrayList = new ArrayList();
                for (Object obj : list) {
                    if (Companion.keepPath((Path) obj)) {
                        arrayList.add(obj);
                    }
                }
                ArrayList arrayList2 = new ArrayList(l.Q(arrayList));
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    arrayList2.add(Companion.removeBase((Path) it.next(), path2));
                }
                p.S(linkedHashSet, arrayList2);
                z7 = true;
            } catch (IOException unused) {
            }
        }
        if (z7) {
            return j.c0(linkedHashSet);
        }
        throw new FileNotFoundException(q.l(path, "file not found: "));
    }

    @Override // okio.FileSystem
    public List<Path> listOrNull(Path path) {
        i.f(path, "dir");
        String relativePath = toRelativePath(path);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator<w8.f> it = getRoots().iterator();
        boolean z7 = false;
        while (true) {
            ArrayList arrayList = null;
            if (!it.hasNext()) {
                break;
            }
            w8.f next = it.next();
            FileSystem fileSystem = (FileSystem) next.f10825a;
            Path path2 = (Path) next.f10826b;
            List<Path> listListOrNull = fileSystem.listOrNull(path2.resolve(relativePath));
            if (listListOrNull != null) {
                ArrayList arrayList2 = new ArrayList();
                for (Object obj : listListOrNull) {
                    if (Companion.keepPath((Path) obj)) {
                        arrayList2.add(obj);
                    }
                }
                ArrayList arrayList3 = new ArrayList(l.Q(arrayList2));
                Iterator it2 = arrayList2.iterator();
                while (it2.hasNext()) {
                    arrayList3.add(Companion.removeBase((Path) it2.next(), path2));
                }
                arrayList = arrayList3;
            }
            if (arrayList != null) {
                p.S(linkedHashSet, arrayList);
                z7 = true;
            }
        }
        if (z7) {
            return j.c0(linkedHashSet);
        }
        return null;
    }

    @Override // okio.FileSystem
    public FileMetadata metadataOrNull(Path path) throws IOException {
        i.f(path, "path");
        if (!Companion.keepPath(path)) {
            return null;
        }
        String relativePath = toRelativePath(path);
        for (w8.f fVar : getRoots()) {
            FileMetadata fileMetadataMetadataOrNull = ((FileSystem) fVar.f10825a).metadataOrNull(((Path) fVar.f10826b).resolve(relativePath));
            if (fileMetadataMetadataOrNull != null) {
                return fileMetadataMetadataOrNull;
            }
        }
        return null;
    }

    @Override // okio.FileSystem
    public FileHandle openReadOnly(Path path) throws FileNotFoundException {
        i.f(path, "file");
        if (!Companion.keepPath(path)) {
            throw new FileNotFoundException(q.l(path, "file not found: "));
        }
        String relativePath = toRelativePath(path);
        for (w8.f fVar : getRoots()) {
            try {
                return ((FileSystem) fVar.f10825a).openReadOnly(((Path) fVar.f10826b).resolve(relativePath));
            } catch (FileNotFoundException unused) {
            }
        }
        throw new FileNotFoundException(q.l(path, "file not found: "));
    }

    @Override // okio.FileSystem
    public FileHandle openReadWrite(Path path, boolean z7, boolean z10) throws IOException {
        i.f(path, "file");
        throw new IOException("resources are not writable");
    }

    @Override // okio.FileSystem
    public Sink sink(Path path, boolean z7) throws IOException {
        i.f(path, "file");
        throw new IOException(this + " is read-only");
    }

    @Override // okio.FileSystem
    public Source source(Path path) throws FileNotFoundException {
        Source source;
        i.f(path, "file");
        if (!Companion.keepPath(path)) {
            throw new FileNotFoundException(q.l(path, "file not found: "));
        }
        Path path2 = ROOT;
        InputStream resourceAsStream = this.classLoader.getResourceAsStream(Path.resolve$default(path2, path, false, 2, (Object) null).relativeTo(path2).toString());
        if (resourceAsStream == null || (source = Okio.source(resourceAsStream)) == null) {
            throw new FileNotFoundException(q.l(path, "file not found: "));
        }
        return source;
    }

    public ResourceFileSystem(ClassLoader classLoader, boolean z7, FileSystem fileSystem) {
        i.f(classLoader, "classLoader");
        i.f(fileSystem, "systemFileSystem");
        this.classLoader = classLoader;
        this.systemFileSystem = fileSystem;
        this.roots$delegate = new w8.i(new ResourceFileSystem$roots$2(this));
        if (z7) {
            getRoots().size();
        }
    }
}
