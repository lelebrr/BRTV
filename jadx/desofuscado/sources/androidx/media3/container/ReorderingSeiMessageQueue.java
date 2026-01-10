package androidx.media3.container;

import androidx.media3.common.C;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import java.util.PriorityQueue;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public final class ReorderingSeiMessageQueue {
    private SampleSeiMessages lastQueuedMessage;
    private final SeiConsumer seiConsumer;
    private final ArrayDeque<ParsableByteArray> unusedParsableByteArrays = new ArrayDeque<>();
    private final ArrayDeque<SampleSeiMessages> unusedSampleSeiMessages = new ArrayDeque<>();
    private final PriorityQueue<SampleSeiMessages> pendingSeiMessages = new PriorityQueue<>();
    private int reorderingQueueSize = -1;

    /* compiled from: MyApplication */
    public static final class SampleSeiMessages implements Comparable<SampleSeiMessages> {
        public long presentationTimeUs = C.TIME_UNSET;
        public final List<ParsableByteArray> nalBuffers = new ArrayList();

        public void init(long j10, ParsableByteArray parsableByteArray) {
            Assertions.checkArgument(j10 != C.TIME_UNSET);
            Assertions.checkState(this.nalBuffers.isEmpty());
            this.presentationTimeUs = j10;
            this.nalBuffers.add(parsableByteArray);
        }

        @Override // java.lang.Comparable
        public int compareTo(SampleSeiMessages sampleSeiMessages) {
            return Long.compare(this.presentationTimeUs, sampleSeiMessages.presentationTimeUs);
        }
    }

    /* compiled from: MyApplication */
    public interface SeiConsumer {
        void consume(long j10, ParsableByteArray parsableByteArray);
    }

    public ReorderingSeiMessageQueue(SeiConsumer seiConsumer) {
        this.seiConsumer = seiConsumer;
    }

    private ParsableByteArray copy(ParsableByteArray parsableByteArray) {
        ParsableByteArray parsableByteArray2 = this.unusedParsableByteArrays.isEmpty() ? new ParsableByteArray() : this.unusedParsableByteArrays.pop();
        parsableByteArray2.reset(parsableByteArray.bytesLeft());
        System.arraycopy(parsableByteArray.getData(), parsableByteArray.getPosition(), parsableByteArray2.getData(), 0, parsableByteArray2.bytesLeft());
        return parsableByteArray2;
    }

    private void flushQueueDownToSize(int i6) {
        while (this.pendingSeiMessages.size() > i6) {
            SampleSeiMessages sampleSeiMessages = (SampleSeiMessages) Util.castNonNull(this.pendingSeiMessages.poll());
            for (int i10 = 0; i10 < sampleSeiMessages.nalBuffers.size(); i10++) {
                this.seiConsumer.consume(sampleSeiMessages.presentationTimeUs, sampleSeiMessages.nalBuffers.get(i10));
                this.unusedParsableByteArrays.push(sampleSeiMessages.nalBuffers.get(i10));
            }
            sampleSeiMessages.nalBuffers.clear();
            SampleSeiMessages sampleSeiMessages2 = this.lastQueuedMessage;
            if (sampleSeiMessages2 != null && sampleSeiMessages2.presentationTimeUs == sampleSeiMessages.presentationTimeUs) {
                this.lastQueuedMessage = null;
            }
            this.unusedSampleSeiMessages.push(sampleSeiMessages);
        }
    }

    public void add(long j10, ParsableByteArray parsableByteArray) {
        int i6 = this.reorderingQueueSize;
        if (i6 == 0 || (i6 != -1 && this.pendingSeiMessages.size() >= this.reorderingQueueSize && j10 < ((SampleSeiMessages) Util.castNonNull(this.pendingSeiMessages.peek())).presentationTimeUs)) {
            this.seiConsumer.consume(j10, parsableByteArray);
            return;
        }
        ParsableByteArray parsableByteArrayCopy = copy(parsableByteArray);
        SampleSeiMessages sampleSeiMessages = this.lastQueuedMessage;
        if (sampleSeiMessages != null && j10 == sampleSeiMessages.presentationTimeUs) {
            sampleSeiMessages.nalBuffers.add(parsableByteArrayCopy);
            return;
        }
        SampleSeiMessages sampleSeiMessages2 = this.unusedSampleSeiMessages.isEmpty() ? new SampleSeiMessages() : this.unusedSampleSeiMessages.pop();
        sampleSeiMessages2.init(j10, parsableByteArrayCopy);
        this.pendingSeiMessages.add(sampleSeiMessages2);
        this.lastQueuedMessage = sampleSeiMessages2;
        int i10 = this.reorderingQueueSize;
        if (i10 != -1) {
            flushQueueDownToSize(i10);
        }
    }

    public void clear() {
        this.pendingSeiMessages.clear();
    }

    public void flush() {
        flushQueueDownToSize(0);
    }

    public int getMaxSize() {
        return this.reorderingQueueSize;
    }

    public void setMaxSize(int i6) {
        Assertions.checkState(i6 >= 0);
        this.reorderingQueueSize = i6;
        flushQueueDownToSize(i6);
    }
}
