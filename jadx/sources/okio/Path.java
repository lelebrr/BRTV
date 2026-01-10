package okio;

import j9.f;
import j9.i;
import java.io.File;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import x8.l;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class Path implements Comparable<Path> {
    public static final Companion Companion = new Companion(null);
    public static final String DIRECTORY_SEPARATOR;
    private final ByteString bytes;

    /* compiled from: MyApplication */
    public static final class Companion {
        public /* synthetic */ Companion(f fVar) {
            this();
        }

        public static /* synthetic */ Path get$default(Companion companion, String str, boolean z7, int i6, Object obj) {
            if ((i6 & 1) != 0) {
                z7 = false;
            }
            return companion.get(str, z7);
        }

        public final Path get(File file) {
            i.f(file, "<this>");
            return get$default(this, file, false, 1, (Object) null);
        }

        private Companion() {
        }

        public static /* synthetic */ Path get$default(Companion companion, File file, boolean z7, int i6, Object obj) {
            if ((i6 & 1) != 0) {
                z7 = false;
            }
            return companion.get(file, z7);
        }

        public final Path get(String str) {
            i.f(str, "<this>");
            return get$default(this, str, false, 1, (Object) null);
        }

        public static /* synthetic */ Path get$default(Companion companion, java.nio.file.Path path, boolean z7, int i6, Object obj) {
            if ((i6 & 1) != 0) {
                z7 = false;
            }
            return companion.get(path, z7);
        }

        public final Path get(java.nio.file.Path path) {
            i.f(path, "<this>");
            return get$default(this, path, false, 1, (Object) null);
        }

        public final Path get(String str, boolean z7) {
            i.f(str, "<this>");
            return okio.internal.Path.commonToPath(str, z7);
        }

        public final Path get(File file, boolean z7) {
            i.f(file, "<this>");
            String string = file.toString();
            i.e(string, "toString(...)");
            return get(string, z7);
        }

        public final Path get(java.nio.file.Path path, boolean z7) {
            i.f(path, "<this>");
            return get(path.toString(), z7);
        }
    }

    static {
        String str = File.separator;
        i.e(str, "separator");
        DIRECTORY_SEPARATOR = str;
    }

    public Path(ByteString byteString) {
        i.f(byteString, "bytes");
        this.bytes = byteString;
    }

    public static final Path get(File file) {
        return Companion.get(file);
    }

    public static /* synthetic */ Path resolve$default(Path path, String str, boolean z7, int i6, Object obj) {
        if ((i6 & 2) != 0) {
            z7 = false;
        }
        return path.resolve(str, z7);
    }

    public boolean equals(Object obj) {
        return (obj instanceof Path) && i.a(((Path) obj).getBytes$okio(), getBytes$okio());
    }

    public final ByteString getBytes$okio() {
        return this.bytes;
    }

    public final Path getRoot() {
        int iRootLength = okio.internal.Path.rootLength(this);
        if (iRootLength == -1) {
            return null;
        }
        return new Path(getBytes$okio().substring(0, iRootLength));
    }

    public final List<String> getSegments() {
        ArrayList arrayList = new ArrayList();
        int iRootLength = okio.internal.Path.rootLength(this);
        if (iRootLength == -1) {
            iRootLength = 0;
        } else if (iRootLength < getBytes$okio().size() && getBytes$okio().getByte(iRootLength) == 92) {
            iRootLength++;
        }
        int size = getBytes$okio().size();
        int i6 = iRootLength;
        while (iRootLength < size) {
            if (getBytes$okio().getByte(iRootLength) == 47 || getBytes$okio().getByte(iRootLength) == 92) {
                arrayList.add(getBytes$okio().substring(i6, iRootLength));
                i6 = iRootLength + 1;
            }
            iRootLength++;
        }
        if (i6 < getBytes$okio().size()) {
            arrayList.add(getBytes$okio().substring(i6, getBytes$okio().size()));
        }
        ArrayList arrayList2 = new ArrayList(l.Q(arrayList));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(((ByteString) it.next()).utf8());
        }
        return arrayList2;
    }

    public final List<ByteString> getSegmentsBytes() {
        ArrayList arrayList = new ArrayList();
        int iRootLength = okio.internal.Path.rootLength(this);
        if (iRootLength == -1) {
            iRootLength = 0;
        } else if (iRootLength < getBytes$okio().size() && getBytes$okio().getByte(iRootLength) == 92) {
            iRootLength++;
        }
        int size = getBytes$okio().size();
        int i6 = iRootLength;
        while (iRootLength < size) {
            if (getBytes$okio().getByte(iRootLength) == 47 || getBytes$okio().getByte(iRootLength) == 92) {
                arrayList.add(getBytes$okio().substring(i6, iRootLength));
                i6 = iRootLength + 1;
            }
            iRootLength++;
        }
        if (i6 < getBytes$okio().size()) {
            arrayList.add(getBytes$okio().substring(i6, getBytes$okio().size()));
        }
        return arrayList;
    }

    public int hashCode() {
        return getBytes$okio().hashCode();
    }

    public final boolean isAbsolute() {
        return okio.internal.Path.rootLength(this) != -1;
    }

    public final boolean isRelative() {
        return okio.internal.Path.rootLength(this) == -1;
    }

    public final boolean isRoot() {
        return okio.internal.Path.rootLength(this) == getBytes$okio().size();
    }

    public final String name() {
        return nameBytes().utf8();
    }

    public final ByteString nameBytes() {
        int indexOfLastSlash = okio.internal.Path.getIndexOfLastSlash(this);
        return indexOfLastSlash != -1 ? ByteString.substring$default(getBytes$okio(), indexOfLastSlash + 1, 0, 2, null) : (volumeLetter() == null || getBytes$okio().size() != 2) ? getBytes$okio() : ByteString.EMPTY;
    }

    public final Path normalized() {
        return Companion.get(toString(), true);
    }

    public final Path parent() {
        Path path;
        if (i.a(getBytes$okio(), okio.internal.Path.DOT) || i.a(getBytes$okio(), okio.internal.Path.SLASH) || i.a(getBytes$okio(), okio.internal.Path.BACKSLASH) || okio.internal.Path.lastSegmentIsDotDot(this)) {
            return null;
        }
        int indexOfLastSlash = okio.internal.Path.getIndexOfLastSlash(this);
        if (indexOfLastSlash != 2 || volumeLetter() == null) {
            if (indexOfLastSlash == 1 && getBytes$okio().startsWith(okio.internal.Path.BACKSLASH)) {
                return null;
            }
            if (indexOfLastSlash != -1 || volumeLetter() == null) {
                if (indexOfLastSlash == -1) {
                    return new Path(okio.internal.Path.DOT);
                }
                if (indexOfLastSlash != 0) {
                    return new Path(ByteString.substring$default(getBytes$okio(), 0, indexOfLastSlash, 1, null));
                }
                path = new Path(ByteString.substring$default(getBytes$okio(), 0, 1, 1, null));
            } else {
                if (getBytes$okio().size() == 2) {
                    return null;
                }
                path = new Path(ByteString.substring$default(getBytes$okio(), 0, 2, 1, null));
            }
        } else {
            if (getBytes$okio().size() == 3) {
                return null;
            }
            path = new Path(ByteString.substring$default(getBytes$okio(), 0, 3, 1, null));
        }
        return path;
    }

    public final Path relativeTo(Path path) {
        i.f(path, "other");
        if (!i.a(getRoot(), path.getRoot())) {
            throw new IllegalArgumentException(("Paths of different roots cannot be relative to each other: " + this + " and " + path).toString());
        }
        List<ByteString> segmentsBytes = getSegmentsBytes();
        List<ByteString> segmentsBytes2 = path.getSegmentsBytes();
        int iMin = Math.min(segmentsBytes.size(), segmentsBytes2.size());
        int i6 = 0;
        while (i6 < iMin && i.a(segmentsBytes.get(i6), segmentsBytes2.get(i6))) {
            i6++;
        }
        if (i6 == iMin && getBytes$okio().size() == path.getBytes$okio().size()) {
            return Companion.get$default(Companion, ".", false, 1, (Object) null);
        }
        if (segmentsBytes2.subList(i6, segmentsBytes2.size()).indexOf(okio.internal.Path.DOT_DOT) != -1) {
            throw new IllegalArgumentException(("Impossible relative path to resolve: " + this + " and " + path).toString());
        }
        Buffer buffer = new Buffer();
        ByteString slash = okio.internal.Path.getSlash(path);
        if (slash == null && (slash = okio.internal.Path.getSlash(this)) == null) {
            slash = okio.internal.Path.toSlash(DIRECTORY_SEPARATOR);
        }
        int size = segmentsBytes2.size();
        for (int i10 = i6; i10 < size; i10++) {
            buffer.write(okio.internal.Path.DOT_DOT);
            buffer.write(slash);
        }
        int size2 = segmentsBytes.size();
        while (i6 < size2) {
            buffer.write(segmentsBytes.get(i6));
            buffer.write(slash);
            i6++;
        }
        return okio.internal.Path.toPath(buffer, false);
    }

    public final Path resolve(Path path) {
        i.f(path, "child");
        return okio.internal.Path.commonResolve(this, path, false);
    }

    public final File toFile() {
        return new File(toString());
    }

    public final java.nio.file.Path toNioPath() {
        java.nio.file.Path path = Paths.get(toString(), new String[0]);
        i.e(path, "get(...)");
        return path;
    }

    public String toString() {
        return getBytes$okio().utf8();
    }

    public final Character volumeLetter() {
        if (ByteString.indexOf$default(getBytes$okio(), okio.internal.Path.SLASH, 0, 2, (Object) null) != -1 || getBytes$okio().size() < 2 || getBytes$okio().getByte(1) != 58) {
            return null;
        }
        char c5 = (char) getBytes$okio().getByte(0);
        if (('a' > c5 || c5 >= '{') && ('A' > c5 || c5 >= '[')) {
            return null;
        }
        return Character.valueOf(c5);
    }

    public static final Path get(File file, boolean z7) {
        return Companion.get(file, z7);
    }

    public static /* synthetic */ Path resolve$default(Path path, ByteString byteString, boolean z7, int i6, Object obj) {
        if ((i6 & 2) != 0) {
            z7 = false;
        }
        return path.resolve(byteString, z7);
    }

    @Override // java.lang.Comparable
    public int compareTo(Path path) {
        i.f(path, "other");
        return getBytes$okio().compareTo(path.getBytes$okio());
    }

    public final Path resolve(Path path, boolean z7) {
        i.f(path, "child");
        return okio.internal.Path.commonResolve(this, path, z7);
    }

    public static final Path get(String str) {
        return Companion.get(str);
    }

    public static /* synthetic */ Path resolve$default(Path path, Path path2, boolean z7, int i6, Object obj) {
        if ((i6 & 2) != 0) {
            z7 = false;
        }
        return path.resolve(path2, z7);
    }

    public final Path resolve(String str) {
        i.f(str, "child");
        return okio.internal.Path.commonResolve(this, okio.internal.Path.toPath(new Buffer().writeUtf8(str), false), false);
    }

    public static final Path get(String str, boolean z7) {
        return Companion.get(str, z7);
    }

    public static final Path get(java.nio.file.Path path) {
        return Companion.get(path);
    }

    public final Path resolve(ByteString byteString) {
        i.f(byteString, "child");
        return okio.internal.Path.commonResolve(this, okio.internal.Path.toPath(new Buffer().write(byteString), false), false);
    }

    public static final Path get(java.nio.file.Path path, boolean z7) {
        return Companion.get(path, z7);
    }

    public final Path resolve(String str, boolean z7) {
        i.f(str, "child");
        return okio.internal.Path.commonResolve(this, okio.internal.Path.toPath(new Buffer().writeUtf8(str), false), z7);
    }

    public final Path resolve(ByteString byteString, boolean z7) {
        i.f(byteString, "child");
        return okio.internal.Path.commonResolve(this, okio.internal.Path.toPath(new Buffer().write(byteString), false), z7);
    }
}
