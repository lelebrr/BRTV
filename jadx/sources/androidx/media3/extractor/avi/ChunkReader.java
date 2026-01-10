package androidx.media3.extractor.avi;

import androidx.media3.common.DataReader;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.SeekPoint;
import androidx.media3.extractor.TrackOutput;
import java.io.IOException;
import java.util.Arrays;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
final class ChunkReader {
    private static final int CHUNK_TYPE_AUDIO = 1651965952;
    private static final int CHUNK_TYPE_VIDEO_COMPRESSED = 1667497984;
    private static final int CHUNK_TYPE_VIDEO_UNCOMPRESSED = 1650720768;
    private static final int INITIAL_INDEX_SIZE = 512;
    private final int alternativeChunkId;
    private int bytesRemainingInCurrentChunk;
    private int chunkCount;
    private final int chunkId;
    private int currentChunkIndex;
    private int currentChunkSize;
    private final long durationUs;
    private long firstIndexChunkOffset;
    private int indexChunkCount;
    private int indexSize;
    private int[] keyFrameIndices;
    private long[] keyFrameOffsets;
    private final AviStreamHeaderChunk streamHeaderChunk;
    private final TrackOutput trackOutput;

    public ChunkReader(int i6, AviStreamHeaderChunk aviStreamHeaderChunk, TrackOutput trackOutput) {
        this.streamHeaderChunk = aviStreamHeaderChunk;
        int trackType = aviStreamHeaderChunk.getTrackType();
        boolean z7 = true;
        if (trackType != 1 && trackType != 2) {
            z7 = false;
        }
        Assertions.checkArgument(z7);
        this.chunkId = getChunkIdFourCc(i6, trackType == 2 ? CHUNK_TYPE_VIDEO_COMPRESSED : CHUNK_TYPE_AUDIO);
        this.durationUs = aviStreamHeaderChunk.getDurationUs();
        this.trackOutput = trackOutput;
        this.alternativeChunkId = trackType == 2 ? getChunkIdFourCc(i6, CHUNK_TYPE_VIDEO_UNCOMPRESSED) : -1;
        this.firstIndexChunkOffset = -1L;
        this.keyFrameOffsets = new long[512];
        this.keyFrameIndices = new int[512];
        this.chunkCount = aviStreamHeaderChunk.length;
    }

    private static int getChunkIdFourCc(int i6, int i10) {
        return (((i6 % 10) + 48) << 8) | ((i6 / 10) + 48) | i10;
    }

    private long getChunkTimestampUs(int i6) {
        return (this.durationUs * i6) / this.chunkCount;
    }

    private SeekPoint getSeekPoint(int i6) {
        return new SeekPoint(this.keyFrameIndices[i6] * getFrameDurationUs(), this.keyFrameOffsets[i6]);
    }

    public void advanceCurrentChunk() {
        this.currentChunkIndex++;
    }

    public void appendIndexChunk(long j10, boolean z7) {
        if (this.firstIndexChunkOffset == -1) {
            this.firstIndexChunkOffset = j10;
        }
        if (z7) {
            if (this.indexSize == this.keyFrameIndices.length) {
                long[] jArr = this.keyFrameOffsets;
                this.keyFrameOffsets = Arrays.copyOf(jArr, (jArr.length * 3) / 2);
                int[] iArr = this.keyFrameIndices;
                this.keyFrameIndices = Arrays.copyOf(iArr, (iArr.length * 3) / 2);
            }
            long[] jArr2 = this.keyFrameOffsets;
            int i6 = this.indexSize;
            jArr2[i6] = j10;
            this.keyFrameIndices[i6] = this.indexChunkCount;
            this.indexSize = i6 + 1;
        }
        this.indexChunkCount++;
    }

    public void commitIndex() {
        int i6;
        this.keyFrameOffsets = Arrays.copyOf(this.keyFrameOffsets, this.indexSize);
        this.keyFrameIndices = Arrays.copyOf(this.keyFrameIndices, this.indexSize);
        if (!isAudio() || this.streamHeaderChunk.sampleSize == 0 || (i6 = this.indexSize) <= 0) {
            return;
        }
        this.chunkCount = i6;
    }

    public long getCurrentChunkTimestampUs() {
        return getChunkTimestampUs(this.currentChunkIndex);
    }

    public long getFrameDurationUs() {
        return getChunkTimestampUs(1);
    }

    public SeekMap.SeekPoints getSeekPoints(long j10) {
        if (this.indexSize == 0) {
            return new SeekMap.SeekPoints(new SeekPoint(0L, this.firstIndexChunkOffset));
        }
        int frameDurationUs = (int) (j10 / getFrameDurationUs());
        int iBinarySearchFloor = Util.binarySearchFloor(this.keyFrameIndices, frameDurationUs, true, true);
        if (this.keyFrameIndices[iBinarySearchFloor] == frameDurationUs) {
            return new SeekMap.SeekPoints(getSeekPoint(iBinarySearchFloor));
        }
        SeekPoint seekPoint = getSeekPoint(iBinarySearchFloor);
        int i6 = iBinarySearchFloor + 1;
        return i6 < this.keyFrameOffsets.length ? new SeekMap.SeekPoints(seekPoint, getSeekPoint(i6)) : new SeekMap.SeekPoints(seekPoint);
    }

    public boolean handlesChunkId(int i6) {
        return this.chunkId == i6 || this.alternativeChunkId == i6;
    }

    public boolean isAudio() {
        return (this.chunkId & CHUNK_TYPE_AUDIO) == CHUNK_TYPE_AUDIO;
    }

    public boolean isCurrentFrameAKeyFrame() {
        return Arrays.binarySearch(this.keyFrameIndices, this.currentChunkIndex) >= 0;
    }

    public boolean isVideo() {
        return (this.chunkId & CHUNK_TYPE_VIDEO_COMPRESSED) == CHUNK_TYPE_VIDEO_COMPRESSED;
    }

    public boolean onChunkData(ExtractorInput extractorInput) throws IOException {
        int i6 = this.bytesRemainingInCurrentChunk;
        int iSampleData = i6 - this.trackOutput.sampleData((DataReader) extractorInput, i6, false);
        this.bytesRemainingInCurrentChunk = iSampleData;
        boolean z7 = iSampleData == 0;
        if (z7) {
            if (this.currentChunkSize > 0) {
                this.trackOutput.sampleMetadata(getCurrentChunkTimestampUs(), isCurrentFrameAKeyFrame() ? 1 : 0, this.currentChunkSize, 0, null);
            }
            advanceCurrentChunk();
        }
        return z7;
    }

    public void onChunkStart(int i6) {
        this.currentChunkSize = i6;
        this.bytesRemainingInCurrentChunk = i6;
    }

    public void seekToPosition(long j10) {
        if (this.indexSize == 0) {
            this.currentChunkIndex = 0;
        } else {
            this.currentChunkIndex = this.keyFrameIndices[Util.binarySearchFloor(this.keyFrameOffsets, j10, true, true)];
        }
    }
}
