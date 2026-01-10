package androidx.media3.decoder;

import androidx.media3.common.C;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.decoder.DecoderException;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.decoder.DecoderOutputBuffer;
import java.util.ArrayDeque;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public abstract class SimpleDecoder<I extends DecoderInputBuffer, O extends DecoderOutputBuffer, E extends DecoderException> implements Decoder<I, O, E> {
    private int availableInputBufferCount;
    private final I[] availableInputBuffers;
    private int availableOutputBufferCount;
    private final O[] availableOutputBuffers;
    private final Thread decodeThread;
    private I dequeuedInputBuffer;
    private E exception;
    private boolean flushed;
    private final Object lock = new Object();
    private long outputStartTimeUs = C.TIME_UNSET;
    private final ArrayDeque<I> queuedInputBuffers = new ArrayDeque<>();
    private final ArrayDeque<O> queuedOutputBuffers = new ArrayDeque<>();
    private boolean released;
    private int skippedOutputBufferCount;

    public SimpleDecoder(I[] iArr, O[] oArr) {
        this.availableInputBuffers = iArr;
        this.availableInputBufferCount = iArr.length;
        for (int i6 = 0; i6 < this.availableInputBufferCount; i6++) {
            ((I[]) this.availableInputBuffers)[i6] = createInputBuffer();
        }
        this.availableOutputBuffers = oArr;
        this.availableOutputBufferCount = oArr.length;
        for (int i10 = 0; i10 < this.availableOutputBufferCount; i10++) {
            ((O[]) this.availableOutputBuffers)[i10] = createOutputBuffer();
        }
        Thread thread = new Thread("ExoPlayer:SimpleDecoder") { // from class: androidx.media3.decoder.SimpleDecoder.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                SimpleDecoder.this.run();
            }
        };
        this.decodeThread = thread;
        thread.start();
    }

    private boolean canDecodeBuffer() {
        return !this.queuedInputBuffers.isEmpty() && this.availableOutputBufferCount > 0;
    }

    private boolean decode() throws InterruptedException {
        E e5;
        synchronized (this.lock) {
            while (!this.released && !canDecodeBuffer()) {
                try {
                    this.lock.wait();
                } finally {
                }
            }
            if (this.released) {
                return false;
            }
            I iRemoveFirst = this.queuedInputBuffers.removeFirst();
            O[] oArr = this.availableOutputBuffers;
            int i6 = this.availableOutputBufferCount - 1;
            this.availableOutputBufferCount = i6;
            O o6 = oArr[i6];
            boolean z7 = this.flushed;
            this.flushed = false;
            if (iRemoveFirst.isEndOfStream()) {
                o6.addFlag(4);
            } else {
                o6.timeUs = iRemoveFirst.timeUs;
                if (iRemoveFirst.isFirstSample()) {
                    o6.addFlag(C.BUFFER_FLAG_FIRST_SAMPLE);
                }
                if (!isAtLeastOutputStartTimeUs(iRemoveFirst.timeUs)) {
                    o6.shouldBeSkipped = true;
                }
                try {
                    e5 = (E) decode(iRemoveFirst, o6, z7);
                } catch (OutOfMemoryError e10) {
                    e5 = (E) createUnexpectedDecodeException(e10);
                } catch (RuntimeException e11) {
                    e5 = (E) createUnexpectedDecodeException(e11);
                }
                if (e5 != null) {
                    synchronized (this.lock) {
                        this.exception = e5;
                    }
                    return false;
                }
            }
            synchronized (this.lock) {
                try {
                    if (this.flushed) {
                        o6.release();
                    } else if (o6.shouldBeSkipped) {
                        this.skippedOutputBufferCount++;
                        o6.release();
                    } else {
                        o6.skippedOutputBufferCount = this.skippedOutputBufferCount;
                        this.skippedOutputBufferCount = 0;
                        this.queuedOutputBuffers.addLast(o6);
                    }
                    releaseInputBufferInternal(iRemoveFirst);
                } finally {
                }
            }
            return true;
        }
    }

    private void maybeNotifyDecodeLoop() {
        if (canDecodeBuffer()) {
            this.lock.notify();
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: E extends androidx.media3.decoder.DecoderException */
    private void maybeThrowException() throws E, DecoderException {
        E e5 = this.exception;
        if (e5 != null) {
            throw e5;
        }
    }

    private void releaseInputBufferInternal(I i6) {
        i6.clear();
        I[] iArr = this.availableInputBuffers;
        int i10 = this.availableInputBufferCount;
        this.availableInputBufferCount = i10 + 1;
        iArr[i10] = i6;
    }

    private void releaseOutputBufferInternal(O o6) {
        o6.clear();
        O[] oArr = this.availableOutputBuffers;
        int i6 = this.availableOutputBufferCount;
        this.availableOutputBufferCount = i6 + 1;
        oArr[i6] = o6;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void run() {
        do {
            try {
            } catch (InterruptedException e5) {
                throw new IllegalStateException(e5);
            }
        } while (decode());
    }

    public abstract I createInputBuffer();

    public abstract O createOutputBuffer();

    public abstract E createUnexpectedDecodeException(Throwable th);

    public abstract E decode(I i6, O o6, boolean z7);

    @Override // androidx.media3.decoder.Decoder
    public final void flush() {
        synchronized (this.lock) {
            try {
                this.flushed = true;
                this.skippedOutputBufferCount = 0;
                I i6 = this.dequeuedInputBuffer;
                if (i6 != null) {
                    releaseInputBufferInternal(i6);
                    this.dequeuedInputBuffer = null;
                }
                while (!this.queuedInputBuffers.isEmpty()) {
                    releaseInputBufferInternal(this.queuedInputBuffers.removeFirst());
                }
                while (!this.queuedOutputBuffers.isEmpty()) {
                    this.queuedOutputBuffers.removeFirst().release();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean isAtLeastOutputStartTimeUs(long j10) {
        boolean z7;
        synchronized (this.lock) {
            long j11 = this.outputStartTimeUs;
            z7 = j11 == C.TIME_UNSET || j10 >= j11;
        }
        return z7;
    }

    @Override // androidx.media3.decoder.Decoder
    public void release() throws InterruptedException {
        synchronized (this.lock) {
            this.released = true;
            this.lock.notify();
        }
        try {
            this.decodeThread.join();
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
        }
    }

    public void releaseOutputBuffer(O o6) {
        synchronized (this.lock) {
            releaseOutputBufferInternal(o6);
            maybeNotifyDecodeLoop();
        }
    }

    public final void setInitialInputBufferSize(int i6) {
        Assertions.checkState(this.availableInputBufferCount == this.availableInputBuffers.length);
        for (I i10 : this.availableInputBuffers) {
            i10.ensureSpaceForWrite(i6);
        }
    }

    @Override // androidx.media3.decoder.Decoder
    public final void setOutputStartTimeUs(long j10) {
        synchronized (this.lock) {
            try {
                Assertions.checkState(this.availableInputBufferCount == this.availableInputBuffers.length || this.flushed);
                this.outputStartTimeUs = j10;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.media3.decoder.Decoder
    public final I dequeueInputBuffer() throws DecoderException {
        I i6;
        synchronized (this.lock) {
            maybeThrowException();
            Assertions.checkState(this.dequeuedInputBuffer == null);
            int i10 = this.availableInputBufferCount;
            if (i10 == 0) {
                i6 = null;
            } else {
                I[] iArr = this.availableInputBuffers;
                int i11 = i10 - 1;
                this.availableInputBufferCount = i11;
                i6 = iArr[i11];
            }
            this.dequeuedInputBuffer = i6;
        }
        return i6;
    }

    @Override // androidx.media3.decoder.Decoder
    public final O dequeueOutputBuffer() throws DecoderException {
        synchronized (this.lock) {
            try {
                maybeThrowException();
                if (this.queuedOutputBuffers.isEmpty()) {
                    return null;
                }
                return this.queuedOutputBuffers.removeFirst();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.media3.decoder.Decoder
    public final void queueInputBuffer(I i6) throws DecoderException {
        synchronized (this.lock) {
            maybeThrowException();
            Assertions.checkArgument(i6 == this.dequeuedInputBuffer);
            this.queuedInputBuffers.addLast(i6);
            maybeNotifyDecodeLoop();
            this.dequeuedInputBuffer = null;
        }
    }
}
