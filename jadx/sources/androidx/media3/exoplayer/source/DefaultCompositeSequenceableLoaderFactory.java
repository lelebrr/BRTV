package androidx.media3.exoplayer.source;

import androidx.media3.common.util.UnstableApi;
import d7.c5;
import d7.g1;
import d7.u1;
import java.util.List;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public final class DefaultCompositeSequenceableLoaderFactory implements CompositeSequenceableLoaderFactory {
    @Override // androidx.media3.exoplayer.source.CompositeSequenceableLoaderFactory
    public SequenceableLoader create(List<? extends SequenceableLoader> list, List<List<Integer>> list2) {
        return new CompositeSequenceableLoader(list, list2);
    }

    @Override // androidx.media3.exoplayer.source.CompositeSequenceableLoaderFactory
    @Deprecated
    public SequenceableLoader createCompositeSequenceableLoader(SequenceableLoader... sequenceableLoaderArr) {
        return new CompositeSequenceableLoader(sequenceableLoaderArr);
    }

    @Override // androidx.media3.exoplayer.source.CompositeSequenceableLoaderFactory
    public SequenceableLoader empty() {
        g1 g1Var = u1.f6276b;
        c5 c5Var = c5.f6115e;
        return new CompositeSequenceableLoader(c5Var, c5Var);
    }
}
