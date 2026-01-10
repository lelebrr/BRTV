package androidx.media3.exoplayer.upstream.experimental;

import android.content.Context;
import android.os.Handler;
import androidx.media3.common.C;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.BackgroundExecutor;
import androidx.media3.common.util.NetworkTypeObserver;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DataSpec;
import androidx.media3.datasource.TransferListener;
import androidx.media3.exoplayer.audio.SilenceSkippingAudioProcessor;
import androidx.media3.exoplayer.upstream.BandwidthMeter;
import androidx.media3.exoplayer.upstream.TimeToFirstByteEstimator;
import androidx.media3.exoplayer.upstream.experimental.SplitParallelSampleBandwidthEstimator;
import androidx.media3.exoplayer.upstream.f;
import b7.b;
import d7.u1;
import d7.z1;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public final class ExperimentalBandwidthMeter implements BandwidthMeter, TransferListener {
    private static final int COUNTRY_GROUP_INDEX_2G = 1;
    private static final int COUNTRY_GROUP_INDEX_3G = 2;
    private static final int COUNTRY_GROUP_INDEX_4G = 3;
    private static final int COUNTRY_GROUP_INDEX_5G_NSA = 4;
    private static final int COUNTRY_GROUP_INDEX_5G_SA = 5;
    private static final int COUNTRY_GROUP_INDEX_WIFI = 0;
    public static final long DEFAULT_INITIAL_BITRATE_ESTIMATE = 1000000;
    public static final u1 DEFAULT_INITIAL_BITRATE_ESTIMATES_3G;
    public static final u1 DEFAULT_INITIAL_BITRATE_ESTIMATES_4G;
    public static final u1 DEFAULT_INITIAL_BITRATE_ESTIMATES_5G_NSA;
    public static final u1 DEFAULT_INITIAL_BITRATE_ESTIMATES_5G_SA;
    public static final float DEFAULT_TIME_TO_FIRST_BYTE_PERCENTILE = 0.5f;
    public static final int DEFAULT_TIME_TO_FIRST_BYTE_SAMPLES = 20;
    private final BandwidthEstimator bandwidthEstimator;
    private final Context context;
    private String countryCode;
    private long initialBitrateEstimate;
    private final z1 initialBitrateEstimates;
    private int networkType;
    private int networkTypeOverride;
    private boolean networkTypeOverrideSet;
    private final boolean resetOnNetworkTypeChange;
    private final TimeToFirstByteEstimator timeToFirstByteEstimator;
    public static final u1 DEFAULT_INITIAL_BITRATE_ESTIMATES_WIFI = u1.u(4300000L, 3200000L, 2400000L, 1700000L, 860000L);
    public static final u1 DEFAULT_INITIAL_BITRATE_ESTIMATES_2G = u1.u(1500000L, 980000L, 750000L, 520000L, 290000L);

    static {
        Long lValueOf = Long.valueOf(SilenceSkippingAudioProcessor.DEFAULT_MAX_SILENCE_TO_KEEP_DURATION_US);
        DEFAULT_INITIAL_BITRATE_ESTIMATES_3G = u1.u(lValueOf, 1300000L, 1000000L, 860000L, 610000L);
        DEFAULT_INITIAL_BITRATE_ESTIMATES_4G = u1.u(2500000L, 1700000L, 1200000L, 970000L, 680000L);
        DEFAULT_INITIAL_BITRATE_ESTIMATES_5G_NSA = u1.u(4700000L, 2800000L, 2100000L, 1700000L, 980000L);
        DEFAULT_INITIAL_BITRATE_ESTIMATES_5G_SA = u1.u(2700000L, lValueOf, 1600000L, 1300000L, 1000000L);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:4:0x0011  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static int[] getInitialBitrateCountryGroupAssignment(java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 8432
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.exoplayer.upstream.experimental.ExperimentalBandwidthMeter.getInitialBitrateCountryGroupAssignment(java.lang.String):int[]");
    }

    private long getInitialBitrateEstimateForNetworkType(int i6) {
        Long lValueOf = (Long) this.initialBitrateEstimates.get(Integer.valueOf(i6));
        if (lValueOf == null) {
            lValueOf = (Long) this.initialBitrateEstimates.get(0);
        } else if (lValueOf.longValue() == C.TIME_UNSET) {
            lValueOf = Long.valueOf(getInitialBitrateEstimatesForCountry(this.countryCode, i6));
        }
        if (lValueOf == null) {
            lValueOf = 1000000L;
        }
        return lValueOf.longValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long getInitialBitrateEstimatesForCountry(String str, int i6) {
        int[] initialBitrateCountryGroupAssignment = getInitialBitrateCountryGroupAssignment(b.u(str));
        if (i6 != 2) {
            if (i6 == 3) {
                return ((Long) DEFAULT_INITIAL_BITRATE_ESTIMATES_2G.get(initialBitrateCountryGroupAssignment[1])).longValue();
            }
            if (i6 == 4) {
                return ((Long) DEFAULT_INITIAL_BITRATE_ESTIMATES_3G.get(initialBitrateCountryGroupAssignment[2])).longValue();
            }
            if (i6 == 5) {
                return ((Long) DEFAULT_INITIAL_BITRATE_ESTIMATES_4G.get(initialBitrateCountryGroupAssignment[3])).longValue();
            }
            if (i6 != 7) {
                if (i6 == 9) {
                    return ((Long) DEFAULT_INITIAL_BITRATE_ESTIMATES_5G_SA.get(initialBitrateCountryGroupAssignment[5])).longValue();
                }
                if (i6 != 10) {
                    return 1000000L;
                }
                return ((Long) DEFAULT_INITIAL_BITRATE_ESTIMATES_5G_NSA.get(initialBitrateCountryGroupAssignment[4])).longValue();
            }
        }
        return ((Long) DEFAULT_INITIAL_BITRATE_ESTIMATES_WIFI.get(initialBitrateCountryGroupAssignment[0])).longValue();
    }

    private static boolean isTransferAtFullNetworkSpeed(DataSpec dataSpec, boolean z7) {
        return z7 && !dataSpec.isFlagSet(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void onNetworkTypeChanged(int i6) {
        int i10 = this.networkType;
        if (i10 == 0 || this.resetOnNetworkTypeChange) {
            if (this.networkTypeOverrideSet) {
                i6 = this.networkTypeOverride;
            }
            if (i10 != i6 || this.countryCode == null) {
                this.networkType = i6;
                if (i6 != 1 && i6 != 0 && i6 != 8) {
                    if (this.countryCode == null) {
                        this.countryCode = Util.getCountryCode(this.context);
                    }
                    long initialBitrateEstimateForNetworkType = getInitialBitrateEstimateForNetworkType(i6);
                    this.initialBitrateEstimate = initialBitrateEstimateForNetworkType;
                    this.bandwidthEstimator.onNetworkTypeChange(initialBitrateEstimateForNetworkType);
                    this.timeToFirstByteEstimator.reset();
                }
            }
        }
    }

    @Override // androidx.media3.exoplayer.upstream.BandwidthMeter
    public synchronized void addEventListener(Handler handler, BandwidthMeter.EventListener eventListener) {
        Assertions.checkNotNull(handler);
        Assertions.checkNotNull(eventListener);
        this.bandwidthEstimator.addEventListener(handler, eventListener);
    }

    @Override // androidx.media3.exoplayer.upstream.BandwidthMeter
    public synchronized long getBitrateEstimate() {
        long bandwidthEstimate;
        bandwidthEstimate = this.bandwidthEstimator.getBandwidthEstimate();
        if (bandwidthEstimate == Long.MIN_VALUE) {
            bandwidthEstimate = this.initialBitrateEstimate;
        }
        return bandwidthEstimate;
    }

    @Override // androidx.media3.exoplayer.upstream.BandwidthMeter
    public synchronized long getTimeToFirstByteEstimateUs() {
        return this.timeToFirstByteEstimator.getTimeToFirstByteEstimateUs();
    }

    @Override // androidx.media3.datasource.TransferListener
    public synchronized void onBytesTransferred(DataSource dataSource, DataSpec dataSpec, boolean z7, int i6) {
        if (isTransferAtFullNetworkSpeed(dataSpec, z7)) {
            this.bandwidthEstimator.onBytesTransferred(dataSource, i6);
        }
    }

    @Override // androidx.media3.datasource.TransferListener
    public synchronized void onTransferEnd(DataSource dataSource, DataSpec dataSpec, boolean z7) {
        if (isTransferAtFullNetworkSpeed(dataSpec, z7)) {
            this.bandwidthEstimator.onTransferEnd(dataSource);
        }
    }

    @Override // androidx.media3.datasource.TransferListener
    public synchronized void onTransferInitializing(DataSource dataSource, DataSpec dataSpec, boolean z7) {
        if (isTransferAtFullNetworkSpeed(dataSpec, z7)) {
            this.timeToFirstByteEstimator.onTransferInitializing(dataSpec);
            this.bandwidthEstimator.onTransferInitializing(dataSource);
        }
    }

    @Override // androidx.media3.datasource.TransferListener
    public synchronized void onTransferStart(DataSource dataSource, DataSpec dataSpec, boolean z7) {
        if (isTransferAtFullNetworkSpeed(dataSpec, z7)) {
            this.timeToFirstByteEstimator.onTransferStart(dataSpec);
            this.bandwidthEstimator.onTransferStart(dataSource);
        }
    }

    @Override // androidx.media3.exoplayer.upstream.BandwidthMeter
    public synchronized void removeEventListener(BandwidthMeter.EventListener eventListener) {
        this.bandwidthEstimator.removeEventListener(eventListener);
    }

    public synchronized void setNetworkTypeOverride(int i6) {
        this.networkTypeOverride = i6;
        this.networkTypeOverrideSet = true;
        onNetworkTypeChanged(i6);
    }

    /* compiled from: MyApplication */
    public static final class Builder {
        private final Context context;
        private final Map<Integer, Long> initialBitrateEstimates;
        private TimeToFirstByteEstimator timeToFirstByteEstimator = new PercentileTimeToFirstByteEstimator(20, 0.5f);
        private BandwidthEstimator bandwidthEstimator = new SplitParallelSampleBandwidthEstimator.Builder().build();
        private boolean resetOnNetworkTypeChange = true;

        public Builder(Context context) {
            this.context = context.getApplicationContext();
            HashMap map = new HashMap(8);
            this.initialBitrateEstimates = map;
            map.put(0, 1000000L);
            Long lValueOf = Long.valueOf(C.TIME_UNSET);
            map.put(2, lValueOf);
            map.put(3, lValueOf);
            map.put(4, lValueOf);
            map.put(5, lValueOf);
            map.put(10, lValueOf);
            map.put(9, lValueOf);
            map.put(7, lValueOf);
        }

        public ExperimentalBandwidthMeter build() {
            return new ExperimentalBandwidthMeter(this.context, this.initialBitrateEstimates, this.timeToFirstByteEstimator, this.bandwidthEstimator, this.resetOnNetworkTypeChange);
        }

        public Builder setBandwidthEstimator(BandwidthEstimator bandwidthEstimator) {
            this.bandwidthEstimator = bandwidthEstimator;
            return this;
        }

        public Builder setInitialBitrateEstimate(long j10) {
            Iterator<Integer> it = this.initialBitrateEstimates.keySet().iterator();
            while (it.hasNext()) {
                setInitialBitrateEstimate(it.next().intValue(), j10);
            }
            return this;
        }

        public Builder setResetOnNetworkTypeChange(boolean z7) {
            this.resetOnNetworkTypeChange = z7;
            return this;
        }

        public Builder setTimeToFirstByteEstimator(TimeToFirstByteEstimator timeToFirstByteEstimator) {
            this.timeToFirstByteEstimator = timeToFirstByteEstimator;
            return this;
        }

        public Builder setInitialBitrateEstimate(int i6, long j10) {
            this.initialBitrateEstimates.put(Integer.valueOf(i6), Long.valueOf(j10));
            return this;
        }

        public Builder setInitialBitrateEstimate(String str) {
            String strX = b.x(str);
            for (Integer num : this.initialBitrateEstimates.keySet()) {
                setInitialBitrateEstimate(num.intValue(), ExperimentalBandwidthMeter.getInitialBitrateEstimatesForCountry(strX, num.intValue()));
            }
            return this;
        }
    }

    private ExperimentalBandwidthMeter(Context context, Map<Integer, Long> map, TimeToFirstByteEstimator timeToFirstByteEstimator, BandwidthEstimator bandwidthEstimator, boolean z7) {
        this.context = context == null ? null : context.getApplicationContext();
        this.initialBitrateEstimates = z1.b(map);
        this.timeToFirstByteEstimator = timeToFirstByteEstimator;
        this.bandwidthEstimator = bandwidthEstimator;
        this.resetOnNetworkTypeChange = z7;
        NetworkTypeObserver networkTypeObserver = NetworkTypeObserver.getInstance(context);
        int networkType = networkTypeObserver.getNetworkType();
        this.networkType = networkType;
        this.initialBitrateEstimate = getInitialBitrateEstimateForNetworkType(networkType);
        networkTypeObserver.register(new f(1, this), BackgroundExecutor.get());
    }

    @Override // androidx.media3.exoplayer.upstream.BandwidthMeter
    public TransferListener getTransferListener() {
        return this;
    }
}
