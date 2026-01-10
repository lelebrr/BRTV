package okio.internal;

import a9.d;
import androidx.media3.extractor.metadata.dvbsi.AppInfoTableDecoder;
import androidx.media3.extractor.ts.TsExtractor;
import b9.a;
import c9.c;
import c9.e;
import c9.h;
import com.alibaba.fastjson.asm.Opcodes;
import ea.q;
import i9.p;
import j9.i;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Iterator;
import okio.FileMetadata;
import okio.Path;
import q9.g;
import w8.l;

/* compiled from: MyApplication */
/* renamed from: okio.internal.-FileSystem, reason: invalid class name */
/* loaded from: classes.dex */
public final class FileSystem {

    /* compiled from: MyApplication */
    @e(c = "okio.internal.-FileSystem", f = "FileSystem.kt", l = {AppInfoTableDecoder.APPLICATION_INFORMATION_TABLE_ID, TsExtractor.TS_STREAM_TYPE_E_AC3, 145}, m = "collectRecursively")
    /* renamed from: okio.internal.-FileSystem$collectRecursively$1, reason: invalid class name */
    public static final class AnonymousClass1 extends c {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        boolean Z$0;
        boolean Z$1;
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(d<? super AnonymousClass1> dVar) {
            super(dVar);
        }

        @Override // c9.a
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FileSystem.collectRecursively(null, null, null, null, false, false, this);
        }
    }

    /* compiled from: MyApplication */
    @e(c = "okio.internal.-FileSystem$commonListRecursively$1", f = "FileSystem.kt", l = {Opcodes.IADD}, m = "invokeSuspend")
    /* renamed from: okio.internal.-FileSystem$commonListRecursively$1, reason: invalid class name and case insensitive filesystem */
    public static final class C00061 extends h implements p {
        final /* synthetic */ Path $dir;
        final /* synthetic */ boolean $followSymlinks;
        final /* synthetic */ okio.FileSystem $this_commonListRecursively;
        private /* synthetic */ Object L$0;
        Object L$1;
        Object L$2;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C00061(Path path, okio.FileSystem fileSystem, boolean z7, d<? super C00061> dVar) {
            super(dVar);
            this.$dir = path;
            this.$this_commonListRecursively = fileSystem;
            this.$followSymlinks = z7;
        }

        @Override // c9.a
        public final d<l> create(Object obj, d<?> dVar) {
            C00061 c00061 = new C00061(this.$dir, this.$this_commonListRecursively, this.$followSymlinks, dVar);
            c00061.L$0 = obj;
            return c00061;
        }

        @Override // c9.a
        public final Object invokeSuspend(Object obj) {
            q9.e eVar;
            x8.h hVar;
            Iterator<Path> it;
            a aVar = a.f3322a;
            int i6 = this.label;
            if (i6 == 0) {
                o9.d.I(obj);
                q9.e eVar2 = (q9.e) this.L$0;
                x8.h hVar2 = new x8.h();
                hVar2.addLast(this.$dir);
                eVar = eVar2;
                hVar = hVar2;
                it = this.$this_commonListRecursively.list(this.$dir).iterator();
            } else {
                if (i6 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                it = (Iterator) this.L$2;
                x8.h hVar3 = (x8.h) this.L$1;
                q9.e eVar3 = (q9.e) this.L$0;
                o9.d.I(obj);
                hVar = hVar3;
                eVar = eVar3;
            }
            while (it.hasNext()) {
                Path next = it.next();
                okio.FileSystem fileSystem = this.$this_commonListRecursively;
                boolean z7 = this.$followSymlinks;
                this.L$0 = eVar;
                this.L$1 = hVar;
                this.L$2 = it;
                this.label = 1;
                if (FileSystem.collectRecursively(eVar, fileSystem, hVar, next, z7, false, this) == aVar) {
                    return aVar;
                }
            }
            return l.f10832a;
        }

        @Override // i9.p
        public final Object invoke(q9.e eVar, d<? super l> dVar) {
            return ((C00061) create(eVar, dVar)).invokeSuspend(l.f10832a);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x00d2, code lost:
    
        if (r0 != false) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00d4, code lost:
    
        if (r12 != 0) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00d6, code lost:
    
        r6.addLast(r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00dd, code lost:
    
        r12 = r11;
        r11 = r3;
        r15 = r1;
        r1 = r0;
        r0 = r2;
        r2 = r8.iterator();
        r8 = r6;
        r6 = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x011d, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x011e, code lost:
    
        r8 = r6;
     */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0129  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x013f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object collectRecursively(q9.e r16, okio.FileSystem r17, x8.h r18, okio.Path r19, boolean r20, boolean r21, a9.d<? super w8.l> r22) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 320
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.internal.FileSystem.collectRecursively(q9.e, okio.FileSystem, x8.h, okio.Path, boolean, boolean, a9.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0040 A[Catch: all -> 0x003a, TRY_LEAVE, TryCatch #4 {all -> 0x003a, blocks: (B:3:0x0014, B:21:0x0040, B:27:0x0053, B:16:0x0036, B:13:0x0031, B:4:0x001c), top: B:46:0x0014, inners: #1, #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0053 A[Catch: all -> 0x003a, TRY_ENTER, TRY_LEAVE, TryCatch #4 {all -> 0x003a, blocks: (B:3:0x0014, B:21:0x0040, B:27:0x0053, B:16:0x0036, B:13:0x0031, B:4:0x001c), top: B:46:0x0014, inners: #1, #5 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final void commonCopy(okio.FileSystem r4, okio.Path r5, okio.Path r6) throws java.io.IOException {
        /*
            java.lang.String r0 = "<this>"
            j9.i.f(r4, r0)
            java.lang.String r0 = "source"
            j9.i.f(r5, r0)
            java.lang.String r0 = "target"
            j9.i.f(r6, r0)
            okio.Source r5 = r4.source(r5)
            r0 = 0
            okio.Sink r4 = r4.sink(r6)     // Catch: java.lang.Throwable -> L3a
            okio.BufferedSink r4 = okio.Okio.buffer(r4)     // Catch: java.lang.Throwable -> L3a
            long r1 = r4.writeAll(r5)     // Catch: java.lang.Throwable -> L2e
            java.lang.Long r6 = java.lang.Long.valueOf(r1)     // Catch: java.lang.Throwable -> L2e
            if (r4 == 0) goto L2c
            r4.close()     // Catch: java.lang.Throwable -> L2a
            goto L2c
        L2a:
            r4 = move-exception
            goto L3e
        L2c:
            r4 = r0
            goto L3e
        L2e:
            r6 = move-exception
            if (r4 == 0) goto L3c
            r4.close()     // Catch: java.lang.Throwable -> L35
            goto L3c
        L35:
            r4 = move-exception
            l5.a.a(r6, r4)     // Catch: java.lang.Throwable -> L3a
            goto L3c
        L3a:
            r4 = move-exception
            goto L54
        L3c:
            r4 = r6
            r6 = r0
        L3e:
            if (r4 != 0) goto L53
            j9.i.c(r6)     // Catch: java.lang.Throwable -> L3a
            long r1 = r6.longValue()     // Catch: java.lang.Throwable -> L3a
            java.lang.Long r4 = java.lang.Long.valueOf(r1)     // Catch: java.lang.Throwable -> L3a
            if (r5 == 0) goto L61
            r5.close()     // Catch: java.lang.Throwable -> L51
            goto L61
        L51:
            r0 = move-exception
            goto L61
        L53:
            throw r4     // Catch: java.lang.Throwable -> L3a
        L54:
            if (r5 == 0) goto L5e
            r5.close()     // Catch: java.lang.Throwable -> L5a
            goto L5e
        L5a:
            r5 = move-exception
            l5.a.a(r4, r5)
        L5e:
            r3 = r0
            r0 = r4
            r4 = r3
        L61:
            if (r0 != 0) goto L67
            j9.i.c(r4)
            return
        L67:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.internal.FileSystem.commonCopy(okio.FileSystem, okio.Path, okio.Path):void");
    }

    public static final void commonCreateDirectories(okio.FileSystem fileSystem, Path path, boolean z7) throws IOException {
        i.f(fileSystem, "<this>");
        i.f(path, "dir");
        x8.h hVar = new x8.h();
        for (Path pathParent = path; pathParent != null && !fileSystem.exists(pathParent); pathParent = pathParent.parent()) {
            hVar.addFirst(pathParent);
        }
        if (z7 && hVar.isEmpty()) {
            throw new IOException(path + " already exists.");
        }
        Iterator<E> it = hVar.iterator();
        while (it.hasNext()) {
            fileSystem.createDirectory((Path) it.next());
        }
    }

    public static final void commonDeleteRecursively(okio.FileSystem fileSystem, Path path, boolean z7) throws IOException {
        i.f(fileSystem, "<this>");
        i.f(path, "fileOrDirectory");
        FileSystem$commonDeleteRecursively$sequence$1 fileSystem$commonDeleteRecursively$sequence$1 = new FileSystem$commonDeleteRecursively$sequence$1(fileSystem, path, null);
        q9.d dVar = new q9.d();
        dVar.d = fileSystem$commonDeleteRecursively$sequence$1.create(dVar, dVar);
        while (dVar.hasNext()) {
            fileSystem.delete((Path) dVar.next(), z7 && !dVar.hasNext());
        }
    }

    public static final boolean commonExists(okio.FileSystem fileSystem, Path path) throws IOException {
        i.f(fileSystem, "<this>");
        i.f(path, "path");
        return fileSystem.metadataOrNull(path) != null;
    }

    public static final q9.c commonListRecursively(okio.FileSystem fileSystem, Path path, boolean z7) throws IOException {
        i.f(fileSystem, "<this>");
        i.f(path, "dir");
        return new g(new C00061(path, fileSystem, z7, null));
    }

    public static final FileMetadata commonMetadata(okio.FileSystem fileSystem, Path path) throws IOException {
        i.f(fileSystem, "<this>");
        i.f(path, "path");
        FileMetadata fileMetadataMetadataOrNull = fileSystem.metadataOrNull(path);
        if (fileMetadataMetadataOrNull != null) {
            return fileMetadataMetadataOrNull;
        }
        throw new FileNotFoundException(q.l(path, "no such file: "));
    }

    public static final Path symlinkTarget(okio.FileSystem fileSystem, Path path) throws IOException {
        i.f(fileSystem, "<this>");
        i.f(path, "path");
        Path symlinkTarget = fileSystem.metadata(path).getSymlinkTarget();
        if (symlinkTarget == null) {
            return null;
        }
        Path pathParent = path.parent();
        i.c(pathParent);
        return pathParent.resolve(symlinkTarget);
    }
}
