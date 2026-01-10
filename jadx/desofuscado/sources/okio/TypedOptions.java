package okio;

import i9.l;
import j9.f;
import j9.i;
import java.util.List;
import java.util.RandomAccess;
import okio.Options;
import x8.e;
import x8.j;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class TypedOptions<T> extends e implements RandomAccess {
    public static final Companion Companion = new Companion(null);
    private final List<T> list;
    private final Options options;

    /* compiled from: MyApplication */
    public static final class Companion {
        public /* synthetic */ Companion(f fVar) {
            this();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final <T> TypedOptions<T> of(Iterable<? extends T> iterable, l lVar) {
            i.f(iterable, "values");
            i.f(lVar, "encode");
            List listC0 = j.c0(iterable);
            Options.Companion companion = Options.Companion;
            int size = listC0.size();
            ByteString[] byteStringArr = new ByteString[size];
            for (int i6 = 0; i6 < size; i6++) {
                byteStringArr[i6] = lVar.invoke(listC0.get(i6));
            }
            return new TypedOptions<>(listC0, companion.of(byteStringArr));
        }

        private Companion() {
        }
    }

    public TypedOptions(List<? extends T> list, Options options) {
        i.f(list, "list");
        i.f(options, "options");
        this.options = options;
        List<T> listC0 = j.c0(list);
        this.list = listC0;
        if (listC0.size() != options.size()) {
            throw new IllegalArgumentException("Failed requirement.");
        }
    }

    public static final <T> TypedOptions<T> of(Iterable<? extends T> iterable, l lVar) {
        return Companion.of(iterable, lVar);
    }

    @Override // java.util.List
    public T get(int i6) {
        return this.list.get(i6);
    }

    public final List<T> getList$okio() {
        return this.list;
    }

    public final Options getOptions$okio() {
        return this.options;
    }

    @Override // x8.a
    public int getSize() {
        return this.list.size();
    }
}
