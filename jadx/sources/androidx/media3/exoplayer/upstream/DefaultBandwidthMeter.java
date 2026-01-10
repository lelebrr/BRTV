package androidx.media3.exoplayer.upstream;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Handler;
import android.support.v4.media.session.PlaybackStateCompat;
import androidx.media3.common.C;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.BackgroundExecutor;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.NetworkTypeObserver;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DataSpec;
import androidx.media3.datasource.TransferListener;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.exoplayer.audio.SilenceSkippingAudioProcessor;
import androidx.media3.exoplayer.upstream.BandwidthMeter;
import d7.u1;
import d7.z1;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public final class DefaultBandwidthMeter implements BandwidthMeter, TransferListener {
    private static final int BYTES_TRANSFERRED_FOR_ESTIMATE = 524288;
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
    public static final int DEFAULT_SLIDING_WINDOW_MAX_WEIGHT = 2000;
    private static final int ELAPSED_MILLIS_FOR_ESTIMATE = 2000;

    @SuppressLint({"NonFinalStaticField", "StaticFieldLeak"})
    private static DefaultBandwidthMeter singletonInstance;
    private long bitrateEstimate;
    private final Clock clock;
    private final Context context;
    private String countryCode;
    private final BandwidthMeter.EventListener.EventDispatcher eventDispatcher;
    private final z1 initialBitrateEstimates;
    private long lastReportedBitrateEstimate;
    private int networkType;
    private int networkTypeOverride;
    private boolean networkTypeOverrideSet;
    private final boolean resetOnNetworkTypeChange;
    private long sampleBytesTransferred;
    private long sampleStartTimeMs;
    private final SlidingPercentile slidingPercentile;
    private int streamCount;
    private long totalBytesTransferred;
    private long totalElapsedTimeMs;
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
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.exoplayer.upstream.DefaultBandwidthMeter.getInitialBitrateCountryGroupAssignment(java.lang.String):int[]");
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
        int[] initialBitrateCountryGroupAssignment = getInitialBitrateCountryGroupAssignment(b7.b.u(str));
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

    public static synchronized DefaultBandwidthMeter getSingletonInstance(Context context) {
        try {
            if (singletonInstance == null) {
                singletonInstance = new Builder(context).build();
            }
        } catch (Throwable th) {
            throw th;
        }
        return singletonInstance;
    }

    private static boolean isTransferAtFullNetworkSpeed(DataSpec dataSpec, boolean z7) {
        return z7 && !dataSpec.isFlagSet(8);
    }

    private void maybeNotifyBandwidthSample(int i6, long j10, long j11) {
        if (i6 == 0 && j10 == 0 && j11 == this.lastReportedBitrateEstimate) {
            return;
        }
        this.lastReportedBitrateEstimate = j11;
        this.eventDispatcher.bandwidthSample(i6, j10, j11);
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
                    this.bitrateEstimate = getInitialBitrateEstimateForNetworkType(i6);
                    long jElapsedRealtime = this.clock.elapsedRealtime();
                    maybeNotifyBandwidthSample(this.streamCount > 0 ? (int) (jElapsedRealtime - this.sampleStartTimeMs) : 0, this.sampleBytesTransferred, this.bitrateEstimate);
                    this.sampleStartTimeMs = jElapsedRealtime;
                    this.sampleBytesTransferred = 0L;
                    this.totalBytesTransferred = 0L;
                    this.totalElapsedTimeMs = 0L;
                    this.slidingPercentile.reset();
                }
            }
        }
    }

    @Override // androidx.media3.exoplayer.upstream.BandwidthMeter
    public void addEventListener(Handler handler, BandwidthMeter.EventListener eventListener) {
        Assertions.checkNotNull(handler);
        Assertions.checkNotNull(eventListener);
        this.eventDispatcher.addListener(handler, eventListener);
    }

    @Override // androidx.media3.exoplayer.upstream.BandwidthMeter
    public synchronized long getBitrateEstimate() {
        return this.bitrateEstimate;
    }

    @Override // androidx.media3.exoplayer.upstream.BandwidthMeter
    public final /* synthetic */ long getTimeToFirstByteEstimateUs() {
        return a.a(this);
    }

    @Override // androidx.media3.datasource.TransferListener
    public synchronized void onBytesTransferred(DataSource dataSource, DataSpec dataSpec, boolean z7, int i6) {
        if (isTransferAtFullNetworkSpeed(dataSpec, z7)) {
            this.sampleBytesTransferred += i6;
        }
    }

    @Override // androidx.media3.datasource.TransferListener
    public synchronized void onTransferEnd(DataSource dataSource, DataSpec dataSpec, boolean z7) {
        try {
            if (isTransferAtFullNetworkSpeed(dataSpec, z7)) {
                Assertions.checkState(this.streamCount > 0);
                long jElapsedRealtime = this.clock.elapsedRealtime();
                int i6 = (int) (jElapsedRealtime - this.sampleStartTimeMs);
                this.totalElapsedTimeMs += i6;
                long j10 = this.totalBytesTransferred;
                long j11 = this.sampleBytesTransferred;
                this.totalBytesTransferred = j10 + j11;
                if (i6 > 0) {
                    this.slidingPercentile.addSample((int) Math.sqrt(j11), (j11 * 8000.0f) / i6);
                    if (this.totalElapsedTimeMs >= ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS || this.totalBytesTransferred >= PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE_ENABLED) {
                        this.bitrateEstimate = (long) this.slidingPercentile.getPercentile(0.5f);
                    }
                    maybeNotifyBandwidthSample(i6, this.sampleBytesTransferred, this.bitrateEstimate);
                    this.sampleStartTimeMs = jElapsedRealtime;
                    this.sampleBytesTransferred = 0L;
                }
                this.streamCount--;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // androidx.media3.datasource.TransferListener
    public synchronized void onTransferStart(DataSource dataSource, DataSpec dataSpec, boolean z7) {
        try {
            if (isTransferAtFullNetworkSpeed(dataSpec, z7)) {
                if (this.streamCount == 0) {
                    this.sampleStartTimeMs = this.clock.elapsedRealtime();
                }
                this.streamCount++;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // androidx.media3.exoplayer.upstream.BandwidthMeter
    public void removeEventListener(BandwidthMeter.EventListener eventListener) {
        this.eventDispatcher.removeListener(eventListener);
    }

    public synchronized void setNetworkTypeOverride(int i6) {
        this.networkTypeOverride = i6;
        this.networkTypeOverrideSet = true;
        onNetworkTypeChanged(i6);
    }

    /* compiled from: MyApplication */
    public static final class Builder {
        private Clock clock;
        private final Context context;
        private final Map<Integer, Long> initialBitrateEstimates;
        private boolean resetOnNetworkTypeChange;
        private int slidingWindowMaxWeight;

        public Builder(Context context) {
            this.context = context == null ? null : context.getApplicationContext();
            this.slidingWindowMaxWeight = 2000;
            this.clock = Clock.DEFAULT;
            this.resetOnNetworkTypeChange = true;
            HashMap map = new HashMap(8);
            this.initialBitrateEstimates = map;
            map.put(0, 1000000L);
            map.put(2, Long.valueOf(C.TIME_UNSET));
            map.put(3, Long.valueOf(C.TIME_UNSET));
            map.put(4, Long.valueOf(C.TIME_UNSET));
            map.put(5, Long.valueOf(C.TIME_UNSET));
            map.put(10, Long.valueOf(C.TIME_UNSET));
            map.put(9, Long.valueOf(C.TIME_UNSET));
            map.put(7, Long.valueOf(C.TIME_UNSET));
        }

        public DefaultBandwidthMeter build() {
            return new DefaultBandwidthMeter(this.context, this.initialBitrateEstimates, this.slidingWindowMaxWeight, this.clock, this.resetOnNetworkTypeChange);
        }

        public Builder setClock(Clock clock) {
            this.clock = clock;
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

        public Builder setSlidingWindowMaxWeight(int i6) {
            this.slidingWindowMaxWeight = i6;
            return this;
        }

        public Builder setInitialBitrateEstimate(int i6, long j10) {
            this.initialBitrateEstimates.put(Integer.valueOf(i6), Long.valueOf(j10));
            return this;
        }

        public Builder setInitialBitrateEstimate(String str) {
            String strX = b7.b.x(str);
            for (Integer num : this.initialBitrateEstimates.keySet()) {
                setInitialBitrateEstimate(num.intValue(), DefaultBandwidthMeter.getInitialBitrateEstimatesForCountry(strX, num.intValue()));
            }
            return this;
        }
    }

    private DefaultBandwidthMeter(Context context, Map<Integer, Long> map, int i6, Clock clock, boolean z7) {
        this.context = context == null ? null : context.getApplicationContext();
        this.initialBitrateEstimates = z1.b(map);
        this.eventDispatcher = new BandwidthMeter.EventListener.EventDispatcher();
        this.slidingPercentile = new SlidingPercentile(i6);
        this.clock = clock;
        this.resetOnNetworkTypeChange = z7;
        if (context == null) {
            this.networkType = 0;
            this.bitrateEstimate = 1000000L;
            return;
        }
        NetworkTypeObserver networkTypeObserver = NetworkTypeObserver.getInstance(context);
        int networkType = networkTypeObserver.getNetworkType();
        this.networkType = networkType;
        this.bitrateEstimate = getInitialBitrateEstimateForNetworkType(networkType);
        networkTypeObserver.register(new f(0, this), BackgroundExecutor.get());
    }

    @Override // androidx.media3.exoplayer.upstream.BandwidthMeter
    public TransferListener getTransferListener() {
        return this;
    }

    @Override // androidx.media3.datasource.TransferListener
    public void onTransferInitializing(DataSource dataSource, DataSpec dataSpec, boolean z7) {
    }
}
