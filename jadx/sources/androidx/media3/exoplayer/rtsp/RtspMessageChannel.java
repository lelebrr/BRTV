package androidx.media3.exoplayer.rtsp;

import android.os.Handler;
import android.os.HandlerThread;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.Assertions;
import androidx.media3.exoplayer.upstream.Loader;
import androidx.media3.exoplayer.upstream.i;
import d7.u1;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
final class RtspMessageChannel implements Closeable {
    public static final Charset CHARSET = StandardCharsets.UTF_8;
    public static final int DEFAULT_RTSP_PORT = 554;
    private static final String TAG = "RtspMessageChannel";
    private volatile boolean closed;
    private final MessageListener messageListener;
    private Sender sender;
    private Socket socket;
    private final Loader receiverLoader = new Loader("ExoPlayer:RtspMessageChannel:ReceiverLoader");
    private final Map<Integer, InterleavedBinaryDataListener> interleavedBinaryDataListeners = Collections.synchronizedMap(new HashMap());

    /* compiled from: MyApplication */
    public interface InterleavedBinaryDataListener {
        void onInterleavedBinaryDataReceived(byte[] bArr);
    }

    /* compiled from: MyApplication */
    public final class LoaderCallbackImpl implements Loader.Callback<Receiver> {
        private LoaderCallbackImpl() {
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.Callback
        public void onLoadCanceled(Receiver receiver, long j10, long j11, boolean z7) {
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.Callback
        public void onLoadCompleted(Receiver receiver, long j10, long j11) {
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.Callback
        public final /* synthetic */ void onLoadStarted(Loader.Loadable loadable, long j10, long j11, int i6) {
            i.a(this, loadable, j10, j11, i6);
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.Callback
        public Loader.LoadErrorAction onLoadError(Receiver receiver, long j10, long j11, IOException iOException, int i6) {
            if (!RtspMessageChannel.this.closed) {
                RtspMessageChannel.this.messageListener.onReceivingFailed(iOException);
            }
            return Loader.DONT_RETRY;
        }
    }

    /* compiled from: MyApplication */
    public interface MessageListener {
        void onReceivingFailed(Exception exc);

        void onRtspMessageReceived(List<String> list);

        void onSendingFailed(List<String> list, Exception exc);
    }

    /* compiled from: MyApplication */
    public static final class MessageParser {
        private static final int STATE_READING_BODY = 3;
        private static final int STATE_READING_FIRST_LINE = 1;
        private static final int STATE_READING_HEADER = 2;
        private long messageBodyLength;
        private final List<String> messageLines = new ArrayList();
        private int state = 1;

        private u1 addMessageBody(byte[] bArr) {
            Assertions.checkState(this.state == 3);
            if (bArr.length <= 0 || bArr[bArr.length - 1] != 10) {
                throw new IllegalArgumentException("Message body is empty or does not end with a LF.");
            }
            this.messageLines.add((bArr.length <= 1 || bArr[bArr.length + (-2)] != 13) ? new String(bArr, 0, bArr.length - 1, RtspMessageChannel.CHARSET) : new String(bArr, 0, bArr.length - 2, RtspMessageChannel.CHARSET));
            u1 u1VarN = u1.n(this.messageLines);
            reset();
            return u1VarN;
        }

        private u1 addMessageLine(byte[] bArr) throws ParserException {
            Assertions.checkArgument(bArr.length >= 2 && bArr[bArr.length - 2] == 13 && bArr[bArr.length - 1] == 10);
            String str = new String(bArr, 0, bArr.length - 2, RtspMessageChannel.CHARSET);
            this.messageLines.add(str);
            int i6 = this.state;
            if (i6 == 1) {
                if (!RtspMessageUtil.isRtspStartLine(str)) {
                    return null;
                }
                this.state = 2;
                return null;
            }
            if (i6 != 2) {
                throw new IllegalStateException();
            }
            long contentLengthHeader = RtspMessageUtil.parseContentLengthHeader(str);
            if (contentLengthHeader != -1) {
                this.messageBodyLength = contentLengthHeader;
            }
            if (!str.isEmpty()) {
                return null;
            }
            if (this.messageBodyLength > 0) {
                this.state = 3;
                return null;
            }
            u1 u1VarN = u1.n(this.messageLines);
            reset();
            return u1VarN;
        }

        private static byte[] parseNextLine(byte b8, DataInputStream dataInputStream) throws IOException {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr = {b8, dataInputStream.readByte()};
            byteArrayOutputStream.write(bArr);
            while (true) {
                if (bArr[0] == 13 && bArr[1] == 10) {
                    return byteArrayOutputStream.toByteArray();
                }
                bArr[0] = bArr[1];
                byte b10 = dataInputStream.readByte();
                bArr[1] = b10;
                byteArrayOutputStream.write(b10);
            }
        }

        private void reset() {
            this.messageLines.clear();
            this.state = 1;
            this.messageBodyLength = 0L;
        }

        public u1 parseNext(byte b8, DataInputStream dataInputStream) throws IOException {
            u1 u1VarAddMessageLine = addMessageLine(parseNextLine(b8, dataInputStream));
            while (u1VarAddMessageLine == null) {
                if (this.state == 3) {
                    long j10 = this.messageBodyLength;
                    if (j10 <= 0) {
                        throw new IllegalStateException("Expects a greater than zero Content-Length.");
                    }
                    int iC = r4.b.c(j10);
                    Assertions.checkState(iC != -1);
                    byte[] bArr = new byte[iC];
                    dataInputStream.readFully(bArr, 0, iC);
                    u1VarAddMessageLine = addMessageBody(bArr);
                } else {
                    u1VarAddMessageLine = addMessageLine(parseNextLine(dataInputStream.readByte(), dataInputStream));
                }
            }
            return u1VarAddMessageLine;
        }
    }

    /* compiled from: MyApplication */
    public final class Receiver implements Loader.Loadable {
        private static final byte INTERLEAVED_MESSAGE_MARKER = 36;
        private final DataInputStream dataInputStream;
        private volatile boolean loadCanceled;
        private final MessageParser messageParser = new MessageParser();

        public Receiver(InputStream inputStream) {
            this.dataInputStream = new DataInputStream(inputStream);
        }

        private void handleInterleavedBinaryData() throws IOException {
            int unsignedByte = this.dataInputStream.readUnsignedByte();
            int unsignedShort = this.dataInputStream.readUnsignedShort();
            byte[] bArr = new byte[unsignedShort];
            this.dataInputStream.readFully(bArr, 0, unsignedShort);
            InterleavedBinaryDataListener interleavedBinaryDataListener = (InterleavedBinaryDataListener) RtspMessageChannel.this.interleavedBinaryDataListeners.get(Integer.valueOf(unsignedByte));
            if (interleavedBinaryDataListener == null || RtspMessageChannel.this.closed) {
                return;
            }
            interleavedBinaryDataListener.onInterleavedBinaryDataReceived(bArr);
        }

        private void handleRtspMessage(byte b8) throws IOException {
            if (RtspMessageChannel.this.closed) {
                return;
            }
            RtspMessageChannel.this.messageListener.onRtspMessageReceived(this.messageParser.parseNext(b8, this.dataInputStream));
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.Loadable
        public void cancelLoad() {
            this.loadCanceled = true;
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.Loadable
        public void load() throws IOException {
            while (!this.loadCanceled) {
                byte b8 = this.dataInputStream.readByte();
                if (b8 == 36) {
                    handleInterleavedBinaryData();
                } else {
                    handleRtspMessage(b8);
                }
            }
        }
    }

    /* compiled from: MyApplication */
    public final class Sender implements Closeable {
        private final OutputStream outputStream;
        private final HandlerThread senderThread;
        private final Handler senderThreadHandler;

        public Sender(OutputStream outputStream) {
            this.outputStream = outputStream;
            HandlerThread handlerThread = new HandlerThread("ExoPlayer:RtspMessageChannel:Sender");
            this.senderThread = handlerThread;
            handlerThread.start();
            this.senderThreadHandler = new Handler(handlerThread.getLooper());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$send$0(byte[] bArr, List list) throws IOException {
            try {
                this.outputStream.write(bArr);
            } catch (Exception e5) {
                if (RtspMessageChannel.this.closed) {
                    return;
                }
                RtspMessageChannel.this.messageListener.onSendingFailed(list, e5);
            }
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() throws InterruptedException {
            Handler handler = this.senderThreadHandler;
            HandlerThread handlerThread = this.senderThread;
            Objects.requireNonNull(handlerThread);
            handler.post(new e(2, handlerThread));
            try {
                this.senderThread.join();
            } catch (InterruptedException unused) {
                this.senderThread.interrupt();
            }
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [byte[], java.io.Serializable] */
        public void send(List<String> list) {
            this.senderThreadHandler.post(new b(this, RtspMessageUtil.convertMessageToByteArray(list), list, 1));
        }
    }

    public RtspMessageChannel(MessageListener messageListener) {
        this.messageListener = messageListener;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.closed) {
            return;
        }
        try {
            Sender sender = this.sender;
            if (sender != null) {
                sender.close();
            }
            this.receiverLoader.release();
            Socket socket = this.socket;
            if (socket != null) {
                socket.close();
            }
            this.closed = true;
        } catch (Throwable th) {
            this.closed = true;
            throw th;
        }
    }

    public void open(Socket socket) throws IOException {
        this.socket = socket;
        this.sender = new Sender(socket.getOutputStream());
        this.receiverLoader.startLoading(new Receiver(socket.getInputStream()), new LoaderCallbackImpl(), 0);
    }

    public void registerInterleavedBinaryDataListener(int i6, InterleavedBinaryDataListener interleavedBinaryDataListener) {
        this.interleavedBinaryDataListeners.put(Integer.valueOf(i6), interleavedBinaryDataListener);
    }

    public void send(List<String> list) {
        Assertions.checkStateNotNull(this.sender);
        this.sender.send(list);
    }
}
