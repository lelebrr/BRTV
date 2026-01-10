package androidx.media3.exoplayer;

import androidx.media3.common.Metadata;
import androidx.media3.exoplayer.DefaultRendererCapabilitiesList;
import androidx.media3.exoplayer.metadata.MetadataOutput;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class f implements MetadataOutput {
    @Override // androidx.media3.exoplayer.metadata.MetadataOutput
    public final void onMetadata(Metadata metadata) {
        DefaultRendererCapabilitiesList.Factory.lambda$createRendererCapabilitiesList$1(metadata);
    }
}
