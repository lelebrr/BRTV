package okio.internal;

import a9.d;
import androidx.media3.container.MdtaMetadataEntry;
import b9.a;
import c9.e;
import c9.h;
import i9.p;
import okio.FileSystem;
import okio.Path;
import w8.l;

/* compiled from: MyApplication */
@e(c = "okio.internal.-FileSystem$commonDeleteRecursively$sequence$1", f = "FileSystem.kt", l = {MdtaMetadataEntry.TYPE_INDICATOR_8_BIT_UNSIGNED_INT}, m = "invokeSuspend")
/* renamed from: okio.internal.-FileSystem$commonDeleteRecursively$sequence$1, reason: invalid class name */
/* loaded from: classes.dex */
public final class FileSystem$commonDeleteRecursively$sequence$1 extends h implements p {
    final /* synthetic */ Path $fileOrDirectory;
    final /* synthetic */ FileSystem $this_commonDeleteRecursively;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FileSystem$commonDeleteRecursively$sequence$1(FileSystem fileSystem, Path path, d<? super FileSystem$commonDeleteRecursively$sequence$1> dVar) {
        super(dVar);
        this.$this_commonDeleteRecursively = fileSystem;
        this.$fileOrDirectory = path;
    }

    @Override // c9.a
    public final d<l> create(Object obj, d<?> dVar) {
        FileSystem$commonDeleteRecursively$sequence$1 fileSystem$commonDeleteRecursively$sequence$1 = new FileSystem$commonDeleteRecursively$sequence$1(this.$this_commonDeleteRecursively, this.$fileOrDirectory, dVar);
        fileSystem$commonDeleteRecursively$sequence$1.L$0 = obj;
        return fileSystem$commonDeleteRecursively$sequence$1;
    }

    @Override // c9.a
    public final Object invokeSuspend(Object obj) {
        a aVar = a.f3322a;
        int i6 = this.label;
        if (i6 == 0) {
            o9.d.I(obj);
            q9.e eVar = (q9.e) this.L$0;
            FileSystem fileSystem = this.$this_commonDeleteRecursively;
            x8.h hVar = new x8.h();
            Path path = this.$fileOrDirectory;
            this.label = 1;
            if (FileSystem.collectRecursively(eVar, fileSystem, hVar, path, false, true, this) == aVar) {
                return aVar;
            }
        } else {
            if (i6 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            o9.d.I(obj);
        }
        return l.f10832a;
    }

    @Override // i9.p
    public final Object invoke(q9.e eVar, d<? super l> dVar) {
        return ((FileSystem$commonDeleteRecursively$sequence$1) create(eVar, dVar)).invokeSuspend(l.f10832a);
    }
}
