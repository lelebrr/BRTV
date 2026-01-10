package androidx.media3.exoplayer.util;

import a.e;
import android.os.SystemClock;
import androidx.media3.common.C;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.exoplayer.upstream.Loader;
import androidx.media3.exoplayer.upstream.i;
import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.SocketTimeoutException;
import java.util.Arrays;
import java.util.ConcurrentModificationException;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public final class SntpClient {
    public static final String DEFAULT_NTP_HOST = "time.android.com";
    public static final int DEFAULT_TIMEOUT_MS = 1000;
    private static final int MAX_RETRY_COUNT = 10;
    private static final int NTP_LEAP_NOSYNC = 3;
    private static final int NTP_MODE_BROADCAST = 5;
    private static final int NTP_MODE_CLIENT = 3;
    private static final int NTP_MODE_SERVER = 4;
    private static final int NTP_PACKET_SIZE = 48;
    private static final int NTP_PORT = 123;
    private static final int NTP_STRATUM_DEATH = 0;
    private static final int NTP_STRATUM_MAX = 15;
    private static final int NTP_VERSION = 3;
    private static final long OFFSET_1900_TO_1970 = 2208988800L;
    private static final int ORIGINATE_TIME_OFFSET = 24;
    private static final int RECEIVE_TIME_OFFSET = 32;
    private static final int TRANSMIT_TIME_OFFSET = 40;
    private static long elapsedRealtimeOffsetMs = 0;
    private static boolean isInitialized = false;
    private static long lastUpdateElapsedRealtime = -9223372036854775807L;
    private static long maxElapsedTimeUntilUpdateMs = -9223372036854775807L;
    private static String ntpHost = "time.android.com";
    private static int timeoutMs = 1000;
    private static final Object loaderLock = new Object();
    private static final Object valueLock = new Object();

    /* compiled from: MyApplication */
    public interface InitializationCallback {
        void onInitializationFailed(IOException iOException);

        void onInitialized();
    }

    private SntpClient() {
    }

    private static void checkValidServerReply(byte b8, byte b10, int i6, long j10) throws IOException {
        if (b8 == 3) {
            throw new IOException("SNTP: Unsynchronized server");
        }
        if (b10 != 4 && b10 != 5) {
            throw new IOException(e.n(b10, "SNTP: Untrusted mode: "));
        }
        if (i6 == 0 || i6 > 15) {
            throw new IOException(e.n(i6, "SNTP: Untrusted stratum: "));
        }
        if (j10 == 0) {
            throw new IOException("SNTP: Zero transmitTime");
        }
    }

    public static long getElapsedRealtimeOffsetMs() {
        long j10;
        synchronized (valueLock) {
            try {
                j10 = isInitialized ? elapsedRealtimeOffsetMs : C.TIME_UNSET;
            } catch (Throwable th) {
                throw th;
            }
        }
        return j10;
    }

    public static long getMaxElapsedTimeUntilUpdateMs() {
        long j10;
        synchronized (valueLock) {
            j10 = maxElapsedTimeUntilUpdateMs;
        }
        return j10;
    }

    public static String getNtpHost() {
        String str;
        synchronized (valueLock) {
            str = ntpHost;
        }
        return str;
    }

    public static int getTimeoutMs() {
        int i6;
        synchronized (valueLock) {
            i6 = timeoutMs;
        }
        return i6;
    }

    public static void initialize(Loader loader, InitializationCallback initializationCallback) {
        if (isInitialized()) {
            if (initializationCallback != null) {
                initializationCallback.onInitialized();
            }
        } else {
            if (loader == null) {
                loader = new Loader("SntpClient");
            }
            loader.startLoading(new NtpTimeLoadable(), new NtpTimeCallback(initializationCallback), 1);
        }
    }

    public static boolean isInitialized() {
        boolean z7;
        synchronized (valueLock) {
            try {
                if (lastUpdateElapsedRealtime != C.TIME_UNSET && maxElapsedTimeUntilUpdateMs != C.TIME_UNSET) {
                    isInitialized = isInitialized && SystemClock.elapsedRealtime() - lastUpdateElapsedRealtime < maxElapsedTimeUntilUpdateMs;
                }
                z7 = isInitialized;
            } catch (Throwable th) {
                throw th;
            }
        }
        return z7;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long loadNtpTimeOffsetMs() throws IOException {
        DatagramSocket datagramSocket = new DatagramSocket();
        try {
            datagramSocket.setSoTimeout(getTimeoutMs());
            InetAddress[] allByName = InetAddress.getAllByName(getNtpHost());
            int length = allByName.length;
            SocketTimeoutException socketTimeoutException = null;
            int i6 = 0;
            int i10 = 0;
            while (i6 < length) {
                byte[] bArr = new byte[48];
                DatagramPacket datagramPacket = new DatagramPacket(bArr, 48, allByName[i6], NTP_PORT);
                bArr[0] = 27;
                long jCurrentTimeMillis = System.currentTimeMillis();
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                writeTimestamp(bArr, 40, jCurrentTimeMillis);
                datagramSocket.send(datagramPacket);
                try {
                    datagramSocket.receive(new DatagramPacket(bArr, 48));
                    long jElapsedRealtime2 = SystemClock.elapsedRealtime();
                    long j10 = (jElapsedRealtime2 - jElapsedRealtime) + jCurrentTimeMillis;
                    byte b8 = bArr[0];
                    int i11 = bArr[1] & 255;
                    long timestamp = readTimestamp(bArr, 24);
                    long timestamp2 = readTimestamp(bArr, 32);
                    long timestamp3 = readTimestamp(bArr, 40);
                    checkValidServerReply((byte) ((b8 >> 6) & 3), (byte) (b8 & 7), i11, timestamp3);
                    long j11 = (j10 + (((timestamp3 - j10) + (timestamp2 - timestamp)) / 2)) - jElapsedRealtime2;
                    datagramSocket.close();
                    return j11;
                } catch (SocketTimeoutException e5) {
                    if (socketTimeoutException == null) {
                        socketTimeoutException = e5;
                    } else {
                        socketTimeoutException.addSuppressed(e5);
                    }
                    int i12 = i10 + 1;
                    if (i10 >= 10) {
                        break;
                    }
                    i6++;
                    i10 = i12;
                }
            }
            throw ((SocketTimeoutException) Assertions.checkNotNull(socketTimeoutException));
        } catch (Throwable th) {
            try {
                datagramSocket.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    private static long read32(byte[] bArr, int i6) {
        int i10 = bArr[i6];
        int i11 = bArr[i6 + 1];
        int i12 = bArr[i6 + 2];
        int i13 = bArr[i6 + 3];
        if ((i10 & 128) == 128) {
            i10 = (i10 & 127) + 128;
        }
        if ((i11 & 128) == 128) {
            i11 = (i11 & 127) + 128;
        }
        if ((i12 & 128) == 128) {
            i12 = (i12 & 127) + 128;
        }
        if ((i13 & 128) == 128) {
            i13 = (i13 & 127) + 128;
        }
        return (i10 << 24) + (i11 << 16) + (i12 << 8) + i13;
    }

    private static long readTimestamp(byte[] bArr, int i6) {
        long j10 = read32(bArr, i6);
        long j11 = read32(bArr, i6 + 4);
        if (j10 == 0 && j11 == 0) {
            return 0L;
        }
        return ((j11 * 1000) / 4294967296L) + ((j10 - OFFSET_1900_TO_1970) * 1000);
    }

    public static void setMaxElapsedTimeUntilUpdateMs(long j10) {
        synchronized (valueLock) {
            maxElapsedTimeUntilUpdateMs = j10;
        }
    }

    public static void setNtpHost(String str) {
        synchronized (valueLock) {
            try {
                if (!ntpHost.equals(str)) {
                    ntpHost = str;
                    isInitialized = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void setTimeoutMs(int i6) {
        synchronized (valueLock) {
            try {
                if (timeoutMs != i6) {
                    timeoutMs = i6;
                    isInitialized = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static void writeTimestamp(byte[] bArr, int i6, long j10) {
        if (j10 == 0) {
            Arrays.fill(bArr, i6, i6 + 8, (byte) 0);
            return;
        }
        long j11 = j10 / 1000;
        long j12 = j10 - (j11 * 1000);
        long j13 = j11 + OFFSET_1900_TO_1970;
        bArr[i6] = (byte) (j13 >> 24);
        bArr[i6 + 1] = (byte) (j13 >> 16);
        bArr[i6 + 2] = (byte) (j13 >> 8);
        bArr[i6 + 3] = (byte) j13;
        long j14 = (j12 * 4294967296L) / 1000;
        bArr[i6 + 4] = (byte) (j14 >> 24);
        bArr[i6 + 5] = (byte) (j14 >> 16);
        bArr[i6 + 6] = (byte) (j14 >> 8);
        bArr[i6 + 7] = (byte) (Math.random() * 255.0d);
    }

    /* compiled from: MyApplication */
    public static final class NtpTimeLoadable implements Loader.Loadable {
        private NtpTimeLoadable() {
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.Loadable
        public void load() throws IOException {
            synchronized (SntpClient.loaderLock) {
                synchronized (SntpClient.valueLock) {
                    if (SntpClient.isInitialized) {
                        return;
                    }
                    long jLoadNtpTimeOffsetMs = SntpClient.loadNtpTimeOffsetMs();
                    synchronized (SntpClient.valueLock) {
                        long unused = SntpClient.lastUpdateElapsedRealtime = SystemClock.elapsedRealtime();
                        long unused2 = SntpClient.elapsedRealtimeOffsetMs = jLoadNtpTimeOffsetMs;
                        boolean unused3 = SntpClient.isInitialized = true;
                    }
                }
            }
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.Loadable
        public void cancelLoad() {
        }
    }

    /* compiled from: MyApplication */
    public static final class NtpTimeCallback implements Loader.Callback<Loader.Loadable> {
        private final InitializationCallback callback;

        public NtpTimeCallback(InitializationCallback initializationCallback) {
            this.callback = initializationCallback;
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.Callback
        public void onLoadCompleted(Loader.Loadable loadable, long j10, long j11) {
            if (this.callback != null) {
                if (SntpClient.isInitialized()) {
                    this.callback.onInitialized();
                } else {
                    this.callback.onInitializationFailed(new IOException(new ConcurrentModificationException()));
                }
            }
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.Callback
        public Loader.LoadErrorAction onLoadError(Loader.Loadable loadable, long j10, long j11, IOException iOException, int i6) {
            InitializationCallback initializationCallback = this.callback;
            if (initializationCallback != null) {
                initializationCallback.onInitializationFailed(iOException);
            }
            return Loader.DONT_RETRY;
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.Callback
        public final /* synthetic */ void onLoadStarted(Loader.Loadable loadable, long j10, long j11, int i6) {
            i.a(this, loadable, j10, j11, i6);
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.Callback
        public void onLoadCanceled(Loader.Loadable loadable, long j10, long j11, boolean z7) {
        }
    }
}
