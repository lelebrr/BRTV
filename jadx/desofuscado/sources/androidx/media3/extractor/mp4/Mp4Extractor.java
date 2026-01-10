package androidx.media3.extractor.mp4;

import a4.s;
import androidx.media3.common.C;
import androidx.media3.common.DataReader;
import androidx.media3.common.Format;
import androidx.media3.common.Metadata;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.g;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.container.MdtaMetadataEntry;
import androidx.media3.container.Mp4Box;
import androidx.media3.container.NalUnitUtil;
import androidx.media3.extractor.Ac4Util;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.ExtractorsFactory;
import androidx.media3.extractor.GaplessInfoHolder;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.SniffFailure;
import androidx.media3.extractor.TrackOutput;
import androidx.media3.extractor.TrueHdSampleRechunker;
import androidx.media3.extractor.b;
import androidx.media3.extractor.metadata.mp4.MotionPhotoMetadata;
import androidx.media3.extractor.text.SubtitleParser;
import androidx.media3.extractor.text.SubtitleTranscodingExtractorOutput;
import d7.c5;
import d7.g1;
import d7.u1;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Objects;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public final class Mp4Extractor implements Extractor, SeekMap {

    @Deprecated
    public static final ExtractorsFactory FACTORY = new s(17);
    private static final int FILE_TYPE_HEIC = 2;
    private static final int FILE_TYPE_MP4 = 0;
    private static final int FILE_TYPE_QUICKTIME = 1;
    public static final int FLAG_EMIT_RAW_SUBTITLE_DATA = 16;
    public static final int FLAG_MARK_FIRST_VIDEO_TRACK_WITH_MAIN_ROLE = 8;
    public static final int FLAG_READ_AUXILIARY_TRACKS = 64;
    public static final int FLAG_READ_MOTION_PHOTO_METADATA = 2;
    public static final int FLAG_READ_SEF_DATA = 4;
    public static final int FLAG_READ_WITHIN_GOP_SAMPLE_DEPENDENCIES = 32;
    public static final int FLAG_READ_WITHIN_GOP_SAMPLE_DEPENDENCIES_H265 = 128;
    public static final int FLAG_WORKAROUND_IGNORE_EDIT_LISTS = 1;
    private static final long MAXIMUM_READ_AHEAD_BYTES_STREAM = 10485760;
    private static final long RELOAD_MINIMUM_SEEK_DISTANCE = 262144;
    private static final int STATE_READING_ATOM_HEADER = 0;
    private static final int STATE_READING_ATOM_PAYLOAD = 1;
    private static final int STATE_READING_SAMPLE = 2;
    private static final int STATE_READING_SEF = 3;
    private long[][] accumulatedSampleSizes;
    private ParsableByteArray atomData;
    private final ParsableByteArray atomHeader;
    private int atomHeaderBytesRead;
    private long atomSize;
    private int atomType;
    private long axteAtomOffset;
    private final ArrayDeque<Mp4Box.ContainerBox> containerAtoms;
    private long durationUs;
    private ExtractorOutput extractorOutput;
    private int fileType;
    private int firstVideoTrackIndex;
    private final int flags;
    private boolean isSampleDependedOn;
    private u1 lastSniffFailures;
    private MotionPhotoMetadata motionPhotoMetadata;
    private final ParsableByteArray nalPrefix;
    private final ParsableByteArray nalStartCode;
    private int parserState;
    private boolean readingAuxiliaryTracks;
    private int sampleBytesRead;
    private int sampleBytesWritten;
    private int sampleCurrentNalBytesRemaining;
    private long sampleOffsetForAuxiliaryTracks;
    private int sampleTrackIndex;
    private final ParsableByteArray scratch;
    private boolean seekToAxteAtom;
    private boolean seenFtypAtom;
    private final SefReader sefReader;
    private final List<Metadata.Entry> slowMotionMetadataEntries;
    private final SubtitleParser.Factory subtitleParserFactory;
    private Mp4Track[] tracks;

    /* compiled from: MyApplication */
    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface Flags {
    }

    /* compiled from: MyApplication */
    public static final class Mp4Track {
        public int sampleIndex;
        public final TrackSampleTable sampleTable;
        public final Track track;
        public final TrackOutput trackOutput;
        public final TrueHdSampleRechunker trueHdSampleRechunker;

        public Mp4Track(Track track, TrackSampleTable trackSampleTable, TrackOutput trackOutput) {
            this.track = track;
            this.sampleTable = trackSampleTable;
            this.trackOutput = trackOutput;
            this.trueHdSampleRechunker = MimeTypes.AUDIO_TRUEHD.equals(track.format.sampleMimeType) ? new TrueHdSampleRechunker() : null;
        }
    }

    @Deprecated
    public Mp4Extractor() {
        this(SubtitleParser.Factory.UNSUPPORTED, 16);
    }

    private static int brandToFileType(int i6) {
        if (i6 != 1751476579) {
            return i6 != 1903435808 ? 0 : 1;
        }
        return 2;
    }

    private static long[][] calculateAccumulatedSampleSizes(Mp4Track[] mp4TrackArr) {
        long[][] jArr = new long[mp4TrackArr.length][];
        int[] iArr = new int[mp4TrackArr.length];
        long[] jArr2 = new long[mp4TrackArr.length];
        boolean[] zArr = new boolean[mp4TrackArr.length];
        for (int i6 = 0; i6 < mp4TrackArr.length; i6++) {
            jArr[i6] = new long[mp4TrackArr[i6].sampleTable.sampleCount];
            jArr2[i6] = mp4TrackArr[i6].sampleTable.timestampsUs[0];
        }
        long j10 = 0;
        int i10 = 0;
        while (i10 < mp4TrackArr.length) {
            long j11 = Long.MAX_VALUE;
            int i11 = -1;
            for (int i12 = 0; i12 < mp4TrackArr.length; i12++) {
                if (!zArr[i12]) {
                    long j12 = jArr2[i12];
                    if (j12 <= j11) {
                        i11 = i12;
                        j11 = j12;
                    }
                }
            }
            int i13 = iArr[i11];
            long[] jArr3 = jArr[i11];
            jArr3[i13] = j10;
            TrackSampleTable trackSampleTable = mp4TrackArr[i11].sampleTable;
            j10 += trackSampleTable.sizes[i13];
            int i14 = i13 + 1;
            iArr[i11] = i14;
            if (i14 < jArr3.length) {
                jArr2[i11] = trackSampleTable.timestampsUs[i14];
            } else {
                zArr[i11] = true;
                i10++;
            }
        }
        return jArr;
    }

    private boolean canReadWithinGopSampleDependencies(Format format) {
        return Objects.equals(format.sampleMimeType, MimeTypes.VIDEO_H264) ? (this.flags & 32) != 0 : Objects.equals(format.sampleMimeType, MimeTypes.VIDEO_H265) && (this.flags & 128) != 0;
    }

    public static int codecsToParseWithinGopSampleDependenciesAsFlags(int i6) {
        int i10 = (i6 & 1) != 0 ? 32 : 0;
        return (i6 & 2) != 0 ? i10 | 128 : i10;
    }

    private void enterReadingAtomHeaderState() {
        this.parserState = 0;
        this.atomHeaderBytesRead = 0;
    }

    private List<Integer> getAuxiliaryTrackTypesForAuxiliaryTracks(Metadata metadata) {
        List<Integer> auxiliaryTrackTypesFromMap = ((MdtaMetadataEntry) Assertions.checkStateNotNull(MetadataUtil.findMdtaMetadataEntryWithKey(metadata, MdtaMetadataEntry.KEY_AUXILIARY_TRACKS_MAP))).getAuxiliaryTrackTypesFromMap();
        ArrayList arrayList = new ArrayList(auxiliaryTrackTypesFromMap.size());
        for (int i6 = 0; i6 < auxiliaryTrackTypesFromMap.size(); i6++) {
            int iIntValue = auxiliaryTrackTypesFromMap.get(i6).intValue();
            int i10 = 1;
            if (iIntValue != 0) {
                if (iIntValue != 1) {
                    i10 = 3;
                    if (iIntValue != 2) {
                        i10 = iIntValue != 3 ? 0 : 4;
                    }
                } else {
                    i10 = 2;
                }
            }
            arrayList.add(Integer.valueOf(i10));
        }
        return arrayList;
    }

    private static int getSynchronizationSampleIndex(TrackSampleTable trackSampleTable, long j10) {
        int indexOfEarlierOrEqualSynchronizationSample = trackSampleTable.getIndexOfEarlierOrEqualSynchronizationSample(j10);
        return indexOfEarlierOrEqualSynchronizationSample == -1 ? trackSampleTable.getIndexOfLaterOrEqualSynchronizationSample(j10) : indexOfEarlierOrEqualSynchronizationSample;
    }

    private int getTrackIndexOfNextReadSample(long j10) {
        int i6 = -1;
        int i10 = -1;
        int i11 = 0;
        long j11 = Long.MAX_VALUE;
        boolean z7 = true;
        long j12 = Long.MAX_VALUE;
        boolean z10 = true;
        long j13 = Long.MAX_VALUE;
        while (true) {
            Mp4Track[] mp4TrackArr = this.tracks;
            if (i11 >= mp4TrackArr.length) {
                break;
            }
            Mp4Track mp4Track = mp4TrackArr[i11];
            int i12 = mp4Track.sampleIndex;
            TrackSampleTable trackSampleTable = mp4Track.sampleTable;
            if (i12 != trackSampleTable.sampleCount) {
                long j14 = trackSampleTable.offsets[i12];
                long j15 = ((long[][]) Util.castNonNull(this.accumulatedSampleSizes))[i11][i12];
                long j16 = j14 - j10;
                boolean z11 = j16 < 0 || j16 >= 262144;
                if ((!z11 && z10) || (z11 == z10 && j16 < j13)) {
                    z10 = z11;
                    j13 = j16;
                    i10 = i11;
                    j12 = j15;
                }
                if (j15 < j11) {
                    z7 = z11;
                    i6 = i11;
                    j11 = j15;
                }
            }
            i11++;
        }
        return (j11 == Long.MAX_VALUE || !z7 || j12 < j11 + MAXIMUM_READ_AHEAD_BYTES_STREAM) ? i10 : i6;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Extractor[] lambda$newFactory$0(SubtitleParser.Factory factory) {
        return new Extractor[]{new Mp4Extractor(factory)};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Extractor[] lambda$static$1() {
        return new Extractor[]{new Mp4Extractor(SubtitleParser.Factory.UNSUPPORTED, 16)};
    }

    private static long maybeAdjustSeekOffset(TrackSampleTable trackSampleTable, long j10, long j11) {
        int synchronizationSampleIndex = getSynchronizationSampleIndex(trackSampleTable, j10);
        return synchronizationSampleIndex == -1 ? j11 : Math.min(trackSampleTable.offsets[synchronizationSampleIndex], j11);
    }

    private void maybeSetDefaultSampleOffsetForAuxiliaryTracks(Metadata metadata) {
        MdtaMetadataEntry mdtaMetadataEntryFindMdtaMetadataEntryWithKey = MetadataUtil.findMdtaMetadataEntryWithKey(metadata, MdtaMetadataEntry.KEY_AUXILIARY_TRACKS_INTERLEAVED);
        if (mdtaMetadataEntryFindMdtaMetadataEntryWithKey == null || mdtaMetadataEntryFindMdtaMetadataEntryWithKey.value[0] != 0) {
            return;
        }
        this.sampleOffsetForAuxiliaryTracks = this.axteAtomOffset + 16;
    }

    private void maybeSkipRemainingMetaAtomHeaderBytes(ExtractorInput extractorInput) throws IOException {
        this.scratch.reset(8);
        extractorInput.peekFully(this.scratch.getData(), 0, 8);
        BoxParser.maybeSkipRemainingMetaBoxHeaderBytes(this.scratch);
        extractorInput.skipFully(this.scratch.getPosition());
        extractorInput.resetPeekPosition();
    }

    public static ExtractorsFactory newFactory(SubtitleParser.Factory factory) {
        return new androidx.media3.extractor.mkv.a(factory, 2);
    }

    private void processAtomEnded(long j10) throws ParserException {
        while (!this.containerAtoms.isEmpty() && this.containerAtoms.peek().endPosition == j10) {
            Mp4Box.ContainerBox containerBoxPop = this.containerAtoms.pop();
            if (containerBoxPop.type == 1836019574) {
                processMoovAtom(containerBoxPop);
                this.containerAtoms.clear();
                if (!this.seekToAxteAtom) {
                    this.parserState = 2;
                }
            } else if (!this.containerAtoms.isEmpty()) {
                this.containerAtoms.peek().add(containerBoxPop);
            }
        }
        if (this.parserState != 2) {
            enterReadingAtomHeaderState();
        }
    }

    private void processEndOfStreamReadingAtomHeader() {
        if (this.fileType != 2 || (this.flags & 2) == 0) {
            return;
        }
        TrackOutput trackOutputTrack = this.extractorOutput.track(0, 4);
        MotionPhotoMetadata motionPhotoMetadata = this.motionPhotoMetadata;
        trackOutputTrack.format(new Format.Builder().setMetadata(motionPhotoMetadata == null ? null : new Metadata(motionPhotoMetadata)).build());
        this.extractorOutput.endTracks();
        this.extractorOutput.seekMap(new SeekMap.Unseekable(C.TIME_UNSET));
    }

    private static int processFtypAtom(ParsableByteArray parsableByteArray) {
        parsableByteArray.setPosition(8);
        int iBrandToFileType = brandToFileType(parsableByteArray.readInt());
        if (iBrandToFileType != 0) {
            return iBrandToFileType;
        }
        parsableByteArray.skipBytes(4);
        while (parsableByteArray.bytesLeft() > 0) {
            int iBrandToFileType2 = brandToFileType(parsableByteArray.readInt());
            if (iBrandToFileType2 != 0) {
                return iBrandToFileType2;
            }
        }
        return 0;
    }

    private void processMoovAtom(Mp4Box.ContainerBox containerBox) throws ParserException {
        List<Integer> list;
        Metadata metadata;
        Metadata metadata2;
        int i6;
        String str;
        Metadata metadata3;
        List<TrackSampleTable> list2;
        ArrayList arrayList;
        int i10;
        int i11 = 16;
        Mp4Box.ContainerBox containerBoxOfType = containerBox.getContainerBoxOfType(Mp4Box.TYPE_meta);
        List<Integer> arrayList2 = new ArrayList<>();
        if (containerBoxOfType != null) {
            Metadata mdtaFromMeta = BoxParser.parseMdtaFromMeta(containerBoxOfType);
            if (this.readingAuxiliaryTracks) {
                Assertions.checkStateNotNull(mdtaFromMeta);
                maybeSetDefaultSampleOffsetForAuxiliaryTracks(mdtaFromMeta);
                arrayList2 = getAuxiliaryTrackTypesForAuxiliaryTracks(mdtaFromMeta);
            } else if (shouldSeekToAxteAtom(mdtaFromMeta)) {
                this.seekToAxteAtom = true;
                return;
            }
            metadata = mdtaFromMeta;
            list = arrayList2;
        } else {
            list = arrayList2;
            metadata = null;
        }
        ArrayList arrayList3 = new ArrayList();
        boolean z7 = this.fileType == 1;
        GaplessInfoHolder gaplessInfoHolder = new GaplessInfoHolder();
        Mp4Box.LeafBox leafBoxOfType = containerBox.getLeafBoxOfType(Mp4Box.TYPE_udta);
        if (leafBoxOfType != null) {
            Metadata udta = BoxParser.parseUdta(leafBoxOfType);
            gaplessInfoHolder.setFromMetadata(udta);
            metadata2 = udta;
        } else {
            metadata2 = null;
        }
        Metadata metadata4 = new Metadata(BoxParser.parseMvhd(((Mp4Box.LeafBox) Assertions.checkNotNull(containerBox.getLeafBoxOfType(Mp4Box.TYPE_mvhd))).data));
        ArrayList arrayList4 = arrayList3;
        List<TrackSampleTable> traks = BoxParser.parseTraks(containerBox, gaplessInfoHolder, C.TIME_UNSET, null, (this.flags & 1) != 0, z7, new g(i11));
        if (this.readingAuxiliaryTracks) {
            boolean z10 = list.size() == traks.size();
            Locale locale = Locale.US;
            Assertions.checkState(z10, "The number of auxiliary track types from metadata (" + list.size() + ") is not same as the number of auxiliary tracks (" + traks.size() + ")");
        }
        String containerMimeType = MimeTypeResolver.getContainerMimeType(traks);
        int i12 = 0;
        int size = -1;
        int i13 = 0;
        long jMax = C.TIME_UNSET;
        while (i12 < traks.size()) {
            TrackSampleTable trackSampleTable = traks.get(i12);
            if (trackSampleTable.sampleCount == 0) {
                list2 = traks;
                str = containerMimeType;
                i6 = i13;
                i10 = 1;
                arrayList = arrayList4;
            } else {
                Track track = trackSampleTable.track;
                i6 = i13 + 1;
                Mp4Track mp4Track = new Mp4Track(track, trackSampleTable, this.extractorOutput.track(i13, track.type));
                List<TrackSampleTable> list3 = traks;
                str = containerMimeType;
                long j10 = track.durationUs;
                if (j10 == C.TIME_UNSET) {
                    j10 = trackSampleTable.durationUs;
                }
                mp4Track.trackOutput.durationUs(j10);
                jMax = Math.max(jMax, j10);
                int i14 = MimeTypes.AUDIO_TRUEHD.equals(track.format.sampleMimeType) ? trackSampleTable.maximumSize * 16 : trackSampleTable.maximumSize + 30;
                Format.Builder builderBuildUpon = track.format.buildUpon();
                builderBuildUpon.setMaxInputSize(i14);
                if (track.type == 2) {
                    int i15 = track.format.roleFlags;
                    if ((this.flags & 8) != 0) {
                        i15 |= size == -1 ? 1 : 2;
                    }
                    if (this.readingAuxiliaryTracks) {
                        i15 |= 32768;
                        builderBuildUpon.setAuxiliaryTrackType(list.get(i12).intValue());
                    }
                    builderBuildUpon.setRoleFlags(i15);
                }
                MetadataUtil.setFormatGaplessInfo(track.type, gaplessInfoHolder, builderBuildUpon);
                int i16 = track.type;
                Metadata metadata5 = track.format.metadata;
                if (this.slowMotionMetadataEntries.isEmpty()) {
                    list2 = list3;
                    metadata3 = null;
                } else {
                    list2 = list3;
                    metadata3 = new Metadata(this.slowMotionMetadataEntries);
                }
                MetadataUtil.setFormatMetadata(i16, metadata, builderBuildUpon, metadata5, metadata3, metadata2, metadata4);
                builderBuildUpon.setContainerMimeType(str);
                mp4Track.trackOutput.format(builderBuildUpon.build());
                if (track.type == 2 && size == -1) {
                    size = arrayList4.size();
                }
                arrayList = arrayList4;
                arrayList.add(mp4Track);
                i10 = 1;
            }
            i12 += i10;
            arrayList4 = arrayList;
            containerMimeType = str;
            i13 = i6;
            traks = list2;
        }
        this.firstVideoTrackIndex = size;
        this.durationUs = jMax;
        Mp4Track[] mp4TrackArr = (Mp4Track[]) arrayList4.toArray(new Mp4Track[0]);
        this.tracks = mp4TrackArr;
        this.accumulatedSampleSizes = calculateAccumulatedSampleSizes(mp4TrackArr);
        this.extractorOutput.endTracks();
        this.extractorOutput.seekMap(this);
    }

    private void processUnparsedAtom(long j10) {
        if (this.atomType == 1836086884) {
            int i6 = this.atomHeaderBytesRead;
            this.motionPhotoMetadata = new MotionPhotoMetadata(0L, j10, C.TIME_UNSET, j10 + i6, this.atomSize - i6);
        }
    }

    private boolean readAtomHeader(ExtractorInput extractorInput) throws IOException {
        Mp4Box.ContainerBox containerBoxPeek;
        if (this.atomHeaderBytesRead == 0) {
            if (!extractorInput.readFully(this.atomHeader.getData(), 0, 8, true)) {
                processEndOfStreamReadingAtomHeader();
                return false;
            }
            this.atomHeaderBytesRead = 8;
            this.atomHeader.setPosition(0);
            this.atomSize = this.atomHeader.readUnsignedInt();
            this.atomType = this.atomHeader.readInt();
        }
        long j10 = this.atomSize;
        if (j10 == 1) {
            extractorInput.readFully(this.atomHeader.getData(), 8, 8);
            this.atomHeaderBytesRead += 8;
            this.atomSize = this.atomHeader.readUnsignedLongToLong();
        } else if (j10 == 0) {
            long length = extractorInput.getLength();
            if (length == -1 && (containerBoxPeek = this.containerAtoms.peek()) != null) {
                length = containerBoxPeek.endPosition;
            }
            if (length != -1) {
                this.atomSize = (length - extractorInput.getPosition()) + this.atomHeaderBytesRead;
            }
        }
        if (this.atomSize < this.atomHeaderBytesRead) {
            throw ParserException.createForUnsupportedContainerFeature("Atom size less than header length (unsupported).");
        }
        if (shouldParseContainerAtom(this.atomType)) {
            long position = extractorInput.getPosition();
            long j11 = this.atomSize;
            int i6 = this.atomHeaderBytesRead;
            long j12 = (position + j11) - i6;
            if (j11 != i6 && this.atomType == 1835365473) {
                maybeSkipRemainingMetaAtomHeaderBytes(extractorInput);
            }
            this.containerAtoms.push(new Mp4Box.ContainerBox(this.atomType, j12));
            if (this.atomSize == this.atomHeaderBytesRead) {
                processAtomEnded(j12);
            } else {
                enterReadingAtomHeaderState();
            }
        } else if (shouldParseLeafAtom(this.atomType)) {
            Assertions.checkState(this.atomHeaderBytesRead == 8);
            Assertions.checkState(this.atomSize <= 2147483647L);
            ParsableByteArray parsableByteArray = new ParsableByteArray((int) this.atomSize);
            System.arraycopy(this.atomHeader.getData(), 0, parsableByteArray.getData(), 0, 8);
            this.atomData = parsableByteArray;
            this.parserState = 1;
        } else {
            processUnparsedAtom(extractorInput.getPosition() - this.atomHeaderBytesRead);
            this.atomData = null;
            this.parserState = 1;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x006f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean readAtomPayload(androidx.media3.extractor.ExtractorInput r10, androidx.media3.extractor.PositionHolder r11) throws java.io.IOException {
        /*
            r9 = this;
            long r0 = r9.atomSize
            int r2 = r9.atomHeaderBytesRead
            long r2 = (long) r2
            long r0 = r0 - r2
            long r2 = r10.getPosition()
            long r2 = r2 + r0
            androidx.media3.common.util.ParsableByteArray r4 = r9.atomData
            r5 = 1
            r6 = 0
            if (r4 == 0) goto L46
            byte[] r7 = r4.getData()
            int r8 = r9.atomHeaderBytesRead
            int r1 = (int) r0
            r10.readFully(r7, r8, r1)
            int r10 = r9.atomType
            r0 = 1718909296(0x66747970, float:2.8862439E23)
            if (r10 != r0) goto L2b
            r9.seenFtypAtom = r5
            int r10 = processFtypAtom(r4)
            r9.fileType = r10
            goto L5e
        L2b:
            java.util.ArrayDeque<androidx.media3.container.Mp4Box$ContainerBox> r10 = r9.containerAtoms
            boolean r10 = r10.isEmpty()
            if (r10 != 0) goto L5e
            java.util.ArrayDeque<androidx.media3.container.Mp4Box$ContainerBox> r10 = r9.containerAtoms
            java.lang.Object r10 = r10.peek()
            androidx.media3.container.Mp4Box$ContainerBox r10 = (androidx.media3.container.Mp4Box.ContainerBox) r10
            androidx.media3.container.Mp4Box$LeafBox r0 = new androidx.media3.container.Mp4Box$LeafBox
            int r1 = r9.atomType
            r0.<init>(r1, r4)
            r10.add(r0)
            goto L5e
        L46:
            boolean r4 = r9.seenFtypAtom
            if (r4 != 0) goto L53
            int r4 = r9.atomType
            r7 = 1835295092(0x6d646174, float:4.4175247E27)
            if (r4 != r7) goto L53
            r9.fileType = r5
        L53:
            r7 = 262144(0x40000, double:1.295163E-318)
            int r4 = (r0 > r7 ? 1 : (r0 == r7 ? 0 : -1))
            if (r4 >= 0) goto L60
            int r1 = (int) r0
            r10.skipFully(r1)
        L5e:
            r10 = 0
            goto L68
        L60:
            long r7 = r10.getPosition()
            long r7 = r7 + r0
            r11.position = r7
            r10 = 1
        L68:
            r9.processAtomEnded(r2)
            boolean r0 = r9.seekToAxteAtom
            if (r0 == 0) goto L78
            r9.readingAuxiliaryTracks = r5
            long r0 = r9.axteAtomOffset
            r11.position = r0
            r9.seekToAxteAtom = r6
            r10 = 1
        L78:
            if (r10 == 0) goto L80
            int r10 = r9.parserState
            r11 = 2
            if (r10 == r11) goto L80
            goto L81
        L80:
            r5 = 0
        L81:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.extractor.mp4.Mp4Extractor.readAtomPayload(androidx.media3.extractor.ExtractorInput, androidx.media3.extractor.PositionHolder):boolean");
    }

    /* JADX WARN: Type inference failed for: r5v20 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v4, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r5v5 */
    private int readSample(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException {
        int i6;
        PositionHolder positionHolder2;
        TrackOutput.CryptoData cryptoData;
        ?? r52;
        int iNumberOfBytesInNalUnitHeader;
        long position = extractorInput.getPosition();
        if (this.sampleTrackIndex == -1) {
            int trackIndexOfNextReadSample = getTrackIndexOfNextReadSample(position);
            this.sampleTrackIndex = trackIndexOfNextReadSample;
            if (trackIndexOfNextReadSample == -1) {
                return -1;
            }
        }
        Mp4Track mp4Track = this.tracks[this.sampleTrackIndex];
        TrackOutput trackOutput = mp4Track.trackOutput;
        int i10 = mp4Track.sampleIndex;
        TrackSampleTable trackSampleTable = mp4Track.sampleTable;
        long j10 = trackSampleTable.offsets[i10] + this.sampleOffsetForAuxiliaryTracks;
        int i11 = trackSampleTable.sizes[i10];
        TrueHdSampleRechunker trueHdSampleRechunker = mp4Track.trueHdSampleRechunker;
        long j11 = (j10 - position) + this.sampleBytesRead;
        if (j11 < 0) {
            i6 = 1;
            positionHolder2 = positionHolder;
        } else {
            if (j11 < 262144) {
                if (mp4Track.track.sampleTransformation == 1) {
                    j11 += 8;
                    i11 -= 8;
                }
                extractorInput.skipFully((int) j11);
                if (!canReadWithinGopSampleDependencies(mp4Track.track.format)) {
                    this.isSampleDependedOn = true;
                }
                Track track = mp4Track.track;
                if (track.nalUnitLengthFieldLength == 0) {
                    cryptoData = null;
                    if (MimeTypes.AUDIO_AC4.equals(track.format.sampleMimeType)) {
                        if (this.sampleBytesWritten == 0) {
                            Ac4Util.getAc4SampleHeader(i11, this.scratch);
                            trackOutput.sampleData(this.scratch, 7);
                            this.sampleBytesWritten += 7;
                        }
                        i11 += 7;
                    } else if (trueHdSampleRechunker != null) {
                        trueHdSampleRechunker.startSample(extractorInput);
                    }
                    while (true) {
                        int i12 = this.sampleBytesWritten;
                        if (i12 >= i11) {
                            break;
                        }
                        int iSampleData = trackOutput.sampleData((DataReader) extractorInput, i11 - i12, false);
                        this.sampleBytesRead += iSampleData;
                        this.sampleBytesWritten += iSampleData;
                        this.sampleCurrentNalBytesRemaining -= iSampleData;
                    }
                } else {
                    byte[] data = this.nalPrefix.getData();
                    data[0] = 0;
                    data[1] = 0;
                    data[2] = 0;
                    int i13 = 4 - mp4Track.track.nalUnitLengthFieldLength;
                    i11 += i13;
                    while (this.sampleBytesWritten < i11) {
                        int i14 = this.sampleCurrentNalBytesRemaining;
                        if (i14 == 0) {
                            Track track2 = mp4Track.track;
                            int i15 = track2.nalUnitLengthFieldLength;
                            if (this.isSampleDependedOn || NalUnitUtil.numberOfBytesInNalUnitHeader(track2.format) + i15 > mp4Track.sampleTable.sizes[i10] - this.sampleBytesRead) {
                                iNumberOfBytesInNalUnitHeader = 0;
                            } else {
                                iNumberOfBytesInNalUnitHeader = NalUnitUtil.numberOfBytesInNalUnitHeader(mp4Track.track.format);
                                i15 = mp4Track.track.nalUnitLengthFieldLength + iNumberOfBytesInNalUnitHeader;
                            }
                            extractorInput.readFully(data, i13, i15);
                            this.sampleBytesRead += i15;
                            this.nalPrefix.setPosition(0);
                            int i16 = this.nalPrefix.readInt();
                            if (i16 < 0) {
                                throw ParserException.createForMalformedContainer("Invalid NAL length", null);
                            }
                            this.sampleCurrentNalBytesRemaining = i16 - iNumberOfBytesInNalUnitHeader;
                            this.nalStartCode.setPosition(0);
                            trackOutput.sampleData(this.nalStartCode, 4);
                            this.sampleBytesWritten += 4;
                            if (iNumberOfBytesInNalUnitHeader > 0) {
                                trackOutput.sampleData(this.nalPrefix, iNumberOfBytesInNalUnitHeader);
                                this.sampleBytesWritten += iNumberOfBytesInNalUnitHeader;
                                if (NalUnitUtil.isDependedOn(data, 4, iNumberOfBytesInNalUnitHeader, mp4Track.track.format)) {
                                    this.isSampleDependedOn = true;
                                }
                            }
                        } else {
                            int iSampleData2 = trackOutput.sampleData((DataReader) extractorInput, i14, false);
                            this.sampleBytesRead += iSampleData2;
                            this.sampleBytesWritten += iSampleData2;
                            this.sampleCurrentNalBytesRemaining -= iSampleData2;
                        }
                    }
                    cryptoData = null;
                }
                int i17 = i11;
                TrackSampleTable trackSampleTable2 = mp4Track.sampleTable;
                long j12 = trackSampleTable2.timestampsUs[i10];
                int i18 = trackSampleTable2.flags[i10];
                if (!this.isSampleDependedOn) {
                    i18 |= C.BUFFER_FLAG_NOT_DEPENDED_ON;
                }
                if (trueHdSampleRechunker != null) {
                    int i19 = i18;
                    TrackOutput.CryptoData cryptoData2 = cryptoData;
                    r52 = 0;
                    r52 = 0;
                    trueHdSampleRechunker.sampleMetadata(trackOutput, j12, i19, i17, 0, null);
                    if (i10 + 1 == mp4Track.sampleTable.sampleCount) {
                        trueHdSampleRechunker.outputPendingSampleMetadata(trackOutput, cryptoData2);
                    }
                } else {
                    r52 = 0;
                    trackOutput.sampleMetadata(j12, i18, i17, 0, null);
                }
                mp4Track.sampleIndex++;
                this.sampleTrackIndex = -1;
                this.sampleBytesRead = r52;
                this.sampleBytesWritten = r52;
                this.sampleCurrentNalBytesRemaining = r52;
                this.isSampleDependedOn = r52;
                return r52;
            }
            positionHolder2 = positionHolder;
            i6 = 1;
        }
        positionHolder2.position = j10;
        return i6;
    }

    private int readSefData(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException {
        int i6 = this.sefReader.read(extractorInput, positionHolder, this.slowMotionMetadataEntries);
        if (i6 == 1 && positionHolder.position == 0) {
            enterReadingAtomHeaderState();
        }
        return i6;
    }

    private static boolean shouldParseContainerAtom(int i6) {
        return i6 == 1836019574 || i6 == 1953653099 || i6 == 1835297121 || i6 == 1835626086 || i6 == 1937007212 || i6 == 1701082227 || i6 == 1835365473 || i6 == 1635284069;
    }

    private static boolean shouldParseLeafAtom(int i6) {
        return i6 == 1835296868 || i6 == 1836476516 || i6 == 1751411826 || i6 == 1937011556 || i6 == 1937011827 || i6 == 1937011571 || i6 == 1668576371 || i6 == 1701606260 || i6 == 1937011555 || i6 == 1937011578 || i6 == 1937013298 || i6 == 1937007471 || i6 == 1668232756 || i6 == 1953196132 || i6 == 1718909296 || i6 == 1969517665 || i6 == 1801812339 || i6 == 1768715124;
    }

    private boolean shouldSeekToAxteAtom(Metadata metadata) {
        MdtaMetadataEntry mdtaMetadataEntryFindMdtaMetadataEntryWithKey;
        if (metadata != null && (this.flags & 64) != 0 && (mdtaMetadataEntryFindMdtaMetadataEntryWithKey = MetadataUtil.findMdtaMetadataEntryWithKey(metadata, MdtaMetadataEntry.KEY_AUXILIARY_TRACKS_OFFSET)) != null) {
            long unsignedLongToLong = new ParsableByteArray(mdtaMetadataEntryFindMdtaMetadataEntryWithKey.value).readUnsignedLongToLong();
            if (unsignedLongToLong > 0) {
                this.axteAtomOffset = unsignedLongToLong;
                return true;
            }
        }
        return false;
    }

    private void updateSampleIndex(Mp4Track mp4Track, long j10) {
        TrackSampleTable trackSampleTable = mp4Track.sampleTable;
        int indexOfEarlierOrEqualSynchronizationSample = trackSampleTable.getIndexOfEarlierOrEqualSynchronizationSample(j10);
        if (indexOfEarlierOrEqualSynchronizationSample == -1) {
            indexOfEarlierOrEqualSynchronizationSample = trackSampleTable.getIndexOfLaterOrEqualSynchronizationSample(j10);
        }
        mp4Track.sampleIndex = indexOfEarlierOrEqualSynchronizationSample;
    }

    @Override // androidx.media3.extractor.SeekMap
    public long getDurationUs() {
        return this.durationUs;
    }

    public long[] getSampleTimestampsUs(int i6) {
        Mp4Track[] mp4TrackArr = this.tracks;
        return mp4TrackArr.length <= i6 ? new long[0] : mp4TrackArr[i6].sampleTable.timestampsUs;
    }

    @Override // androidx.media3.extractor.SeekMap
    public SeekMap.SeekPoints getSeekPoints(long j10) {
        return getSeekPoints(j10, -1);
    }

    @Override // androidx.media3.extractor.Extractor
    public final /* synthetic */ Extractor getUnderlyingImplementation() {
        return b.b(this);
    }

    @Override // androidx.media3.extractor.Extractor
    public void init(ExtractorOutput extractorOutput) {
        if ((this.flags & 16) == 0) {
            extractorOutput = new SubtitleTranscodingExtractorOutput(extractorOutput, this.subtitleParserFactory);
        }
        this.extractorOutput = extractorOutput;
    }

    @Override // androidx.media3.extractor.SeekMap
    public boolean isSeekable() {
        return true;
    }

    @Override // androidx.media3.extractor.Extractor
    public int read(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException {
        while (true) {
            int i6 = this.parserState;
            if (i6 != 0) {
                if (i6 != 1) {
                    if (i6 == 2) {
                        return readSample(extractorInput, positionHolder);
                    }
                    if (i6 == 3) {
                        return readSefData(extractorInput, positionHolder);
                    }
                    throw new IllegalStateException();
                }
                if (readAtomPayload(extractorInput, positionHolder)) {
                    return 1;
                }
            } else if (!readAtomHeader(extractorInput)) {
                return -1;
            }
        }
    }

    @Override // androidx.media3.extractor.Extractor
    public void seek(long j10, long j11) {
        this.containerAtoms.clear();
        this.atomHeaderBytesRead = 0;
        this.sampleTrackIndex = -1;
        this.sampleBytesRead = 0;
        this.sampleBytesWritten = 0;
        this.sampleCurrentNalBytesRemaining = 0;
        this.isSampleDependedOn = false;
        if (j10 == 0) {
            if (this.parserState != 3) {
                enterReadingAtomHeaderState();
                return;
            } else {
                this.sefReader.reset();
                this.slowMotionMetadataEntries.clear();
                return;
            }
        }
        for (Mp4Track mp4Track : this.tracks) {
            updateSampleIndex(mp4Track, j11);
            TrueHdSampleRechunker trueHdSampleRechunker = mp4Track.trueHdSampleRechunker;
            if (trueHdSampleRechunker != null) {
                trueHdSampleRechunker.reset();
            }
        }
    }

    @Override // androidx.media3.extractor.Extractor
    public boolean sniff(ExtractorInput extractorInput) throws IOException {
        c5 c5VarR;
        SniffFailure sniffFailureSniffUnfragmented = Sniffer.sniffUnfragmented(extractorInput, (this.flags & 2) != 0);
        if (sniffFailureSniffUnfragmented != null) {
            c5VarR = u1.r(sniffFailureSniffUnfragmented);
        } else {
            g1 g1Var = u1.f6276b;
            c5VarR = c5.f6115e;
        }
        this.lastSniffFailures = c5VarR;
        return sniffFailureSniffUnfragmented == null;
    }

    public Mp4Extractor(SubtitleParser.Factory factory) {
        this(factory, 0);
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x008f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public androidx.media3.extractor.SeekMap.SeekPoints getSeekPoints(long r17, int r19) {
        /*
            r16 = this;
            r0 = r16
            r1 = r17
            r3 = r19
            androidx.media3.extractor.mp4.Mp4Extractor$Mp4Track[] r4 = r0.tracks
            int r5 = r4.length
            if (r5 != 0) goto L13
            androidx.media3.extractor.SeekMap$SeekPoints r1 = new androidx.media3.extractor.SeekMap$SeekPoints
            androidx.media3.extractor.SeekPoint r2 = androidx.media3.extractor.SeekPoint.START
            r1.<init>(r2)
            return r1
        L13:
            r5 = -1
            if (r3 == r5) goto L18
            r6 = r3
            goto L1a
        L18:
            int r6 = r0.firstVideoTrackIndex
        L1a:
            r7 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r9 = -1
            if (r6 == r5) goto L58
            r4 = r4[r6]
            androidx.media3.extractor.mp4.TrackSampleTable r4 = r4.sampleTable
            int r6 = getSynchronizationSampleIndex(r4, r1)
            if (r6 != r5) goto L35
            androidx.media3.extractor.SeekMap$SeekPoints r1 = new androidx.media3.extractor.SeekMap$SeekPoints
            androidx.media3.extractor.SeekPoint r2 = androidx.media3.extractor.SeekPoint.START
            r1.<init>(r2)
            return r1
        L35:
            long[] r11 = r4.timestampsUs
            r12 = r11[r6]
            long[] r11 = r4.offsets
            r14 = r11[r6]
            int r11 = (r12 > r1 ? 1 : (r12 == r1 ? 0 : -1))
            if (r11 >= 0) goto L5e
            int r11 = r4.sampleCount
            int r11 = r11 + (-1)
            if (r6 >= r11) goto L5e
            int r1 = r4.getIndexOfLaterOrEqualSynchronizationSample(r1)
            if (r1 == r5) goto L5e
            if (r1 == r6) goto L5e
            long[] r2 = r4.timestampsUs
            r9 = r2[r1]
            long[] r2 = r4.offsets
            r1 = r2[r1]
            goto L60
        L58:
            r14 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            r12 = r1
        L5e:
            r1 = r9
            r9 = r7
        L60:
            if (r3 != r5) goto L80
            r3 = 0
        L63:
            androidx.media3.extractor.mp4.Mp4Extractor$Mp4Track[] r4 = r0.tracks
            int r5 = r4.length
            if (r3 >= r5) goto L80
            int r5 = r0.firstVideoTrackIndex
            if (r3 == r5) goto L7d
            r4 = r4[r3]
            androidx.media3.extractor.mp4.TrackSampleTable r4 = r4.sampleTable
            long r5 = maybeAdjustSeekOffset(r4, r12, r14)
            int r11 = (r9 > r7 ? 1 : (r9 == r7 ? 0 : -1))
            if (r11 == 0) goto L7c
            long r1 = maybeAdjustSeekOffset(r4, r9, r1)
        L7c:
            r14 = r5
        L7d:
            int r3 = r3 + 1
            goto L63
        L80:
            androidx.media3.extractor.SeekPoint r3 = new androidx.media3.extractor.SeekPoint
            r3.<init>(r12, r14)
            int r4 = (r9 > r7 ? 1 : (r9 == r7 ? 0 : -1))
            if (r4 != 0) goto L8f
            androidx.media3.extractor.SeekMap$SeekPoints r1 = new androidx.media3.extractor.SeekMap$SeekPoints
            r1.<init>(r3)
            return r1
        L8f:
            androidx.media3.extractor.SeekPoint r4 = new androidx.media3.extractor.SeekPoint
            r4.<init>(r9, r1)
            androidx.media3.extractor.SeekMap$SeekPoints r1 = new androidx.media3.extractor.SeekMap$SeekPoints
            r1.<init>(r3, r4)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.extractor.mp4.Mp4Extractor.getSeekPoints(long, int):androidx.media3.extractor.SeekMap$SeekPoints");
    }

    @Override // androidx.media3.extractor.Extractor
    public u1 getSniffFailureDetails() {
        return this.lastSniffFailures;
    }

    @Deprecated
    public Mp4Extractor(int i6) {
        this(SubtitleParser.Factory.UNSUPPORTED, i6);
    }

    public Mp4Extractor(SubtitleParser.Factory factory, int i6) {
        this.subtitleParserFactory = factory;
        this.flags = i6;
        g1 g1Var = u1.f6276b;
        this.lastSniffFailures = c5.f6115e;
        this.parserState = (i6 & 4) != 0 ? 3 : 0;
        this.sefReader = new SefReader();
        this.slowMotionMetadataEntries = new ArrayList();
        this.atomHeader = new ParsableByteArray(16);
        this.containerAtoms = new ArrayDeque<>();
        this.nalStartCode = new ParsableByteArray(NalUnitUtil.NAL_START_CODE);
        this.nalPrefix = new ParsableByteArray(6);
        this.scratch = new ParsableByteArray();
        this.sampleTrackIndex = -1;
        this.extractorOutput = ExtractorOutput.PLACEHOLDER;
        this.tracks = new Mp4Track[0];
    }

    @Override // androidx.media3.extractor.Extractor
    public void release() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Track lambda$processMoovAtom$2(Track track) {
        return track;
    }
}
