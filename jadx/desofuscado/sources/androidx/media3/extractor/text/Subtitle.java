package androidx.media3.extractor.text;

import androidx.media3.common.text.Cue;
import androidx.media3.common.util.UnstableApi;
import java.util.List;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public interface Subtitle {
    List<Cue> getCues(long j10);

    long getEventTime(int i6);

    int getEventTimeCount();

    int getNextEventTimeIndex(long j10);
}
