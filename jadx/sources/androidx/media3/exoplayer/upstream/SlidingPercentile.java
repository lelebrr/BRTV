package androidx.media3.exoplayer.upstream;

import androidx.media3.common.util.UnstableApi;
import androidx.media3.exoplayer.upstream.SlidingPercentile;
import ea.q;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public class SlidingPercentile {
    private static final Comparator<Sample> INDEX_COMPARATOR;
    private static final int MAX_RECYCLED_SAMPLES = 5;
    private static final int SORT_ORDER_BY_INDEX = 1;
    private static final int SORT_ORDER_BY_VALUE = 0;
    private static final int SORT_ORDER_NONE = -1;
    private static final Comparator<Sample> VALUE_COMPARATOR;
    private final int maxWeight;
    private int nextSampleIndex;
    private int recycledSampleCount;
    private int totalWeight;
    private final Sample[] recycledSamples = new Sample[5];
    private final ArrayList<Sample> samples = new ArrayList<>();
    private int currentSortOrder = -1;

    /* compiled from: MyApplication */
    public static class Sample {
        public int index;
        public float value;
        public int weight;

        private Sample() {
        }
    }

    static {
        final int i6 = 0;
        INDEX_COMPARATOR = new Comparator() { // from class: androidx.media3.exoplayer.upstream.j
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                SlidingPercentile.Sample sample = (SlidingPercentile.Sample) obj;
                SlidingPercentile.Sample sample2 = (SlidingPercentile.Sample) obj2;
                switch (i6) {
                    case 0:
                        return SlidingPercentile.lambda$static$0(sample, sample2);
                    default:
                        return SlidingPercentile.lambda$static$1(sample, sample2);
                }
            }
        };
        final int i10 = 1;
        VALUE_COMPARATOR = new Comparator() { // from class: androidx.media3.exoplayer.upstream.j
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                SlidingPercentile.Sample sample = (SlidingPercentile.Sample) obj;
                SlidingPercentile.Sample sample2 = (SlidingPercentile.Sample) obj2;
                switch (i10) {
                    case 0:
                        return SlidingPercentile.lambda$static$0(sample, sample2);
                    default:
                        return SlidingPercentile.lambda$static$1(sample, sample2);
                }
            }
        };
    }

    public SlidingPercentile(int i6) {
        this.maxWeight = i6;
    }

    private void ensureSortedByIndex() {
        if (this.currentSortOrder != 1) {
            Collections.sort(this.samples, INDEX_COMPARATOR);
            this.currentSortOrder = 1;
        }
    }

    private void ensureSortedByValue() {
        if (this.currentSortOrder != 0) {
            Collections.sort(this.samples, VALUE_COMPARATOR);
            this.currentSortOrder = 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$static$0(Sample sample, Sample sample2) {
        return sample.index - sample2.index;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$static$1(Sample sample, Sample sample2) {
        return Float.compare(sample.value, sample2.value);
    }

    public void addSample(int i6, float f) {
        Sample sample;
        ensureSortedByIndex();
        int i10 = this.recycledSampleCount;
        if (i10 > 0) {
            Sample[] sampleArr = this.recycledSamples;
            int i11 = i10 - 1;
            this.recycledSampleCount = i11;
            sample = sampleArr[i11];
        } else {
            sample = new Sample();
        }
        int i12 = this.nextSampleIndex;
        this.nextSampleIndex = i12 + 1;
        sample.index = i12;
        sample.weight = i6;
        sample.value = f;
        this.samples.add(sample);
        this.totalWeight += i6;
        while (true) {
            int i13 = this.totalWeight;
            int i14 = this.maxWeight;
            if (i13 <= i14) {
                return;
            }
            int i15 = i13 - i14;
            Sample sample2 = this.samples.get(0);
            int i16 = sample2.weight;
            if (i16 <= i15) {
                this.totalWeight -= i16;
                this.samples.remove(0);
                int i17 = this.recycledSampleCount;
                if (i17 < 5) {
                    Sample[] sampleArr2 = this.recycledSamples;
                    this.recycledSampleCount = i17 + 1;
                    sampleArr2[i17] = sample2;
                }
            } else {
                sample2.weight = i16 - i15;
                this.totalWeight -= i15;
            }
        }
    }

    public float getPercentile(float f) {
        ensureSortedByValue();
        float f3 = f * this.totalWeight;
        int i6 = 0;
        for (int i10 = 0; i10 < this.samples.size(); i10++) {
            Sample sample = this.samples.get(i10);
            i6 += sample.weight;
            if (i6 >= f3) {
                return sample.value;
            }
        }
        if (this.samples.isEmpty()) {
            return Float.NaN;
        }
        return ((Sample) q.e(1, this.samples)).value;
    }

    public void reset() {
        this.samples.clear();
        this.currentSortOrder = -1;
        this.nextSampleIndex = 0;
        this.totalWeight = 0;
    }
}
