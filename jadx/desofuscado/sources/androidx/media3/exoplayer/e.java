package androidx.media3.exoplayer;

import androidx.media3.common.text.CueGroup;
import androidx.media3.exoplayer.DefaultRendererCapabilitiesList;
import androidx.media3.exoplayer.text.TextOutput;
import java.util.List;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class e implements TextOutput {
    @Override // androidx.media3.exoplayer.text.TextOutput
    public final void onCues(CueGroup cueGroup) {
        DefaultRendererCapabilitiesList.Factory.lambda$createRendererCapabilitiesList$0(cueGroup);
    }

    @Override // androidx.media3.exoplayer.text.TextOutput
    public final /* synthetic */ void onCues(List list) {
        androidx.media3.exoplayer.text.b.a(this, list);
    }
}
