package androidx.media3.extractor.mp4;

import android.support.v4.media.session.PlaybackStateCompat;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.container.Mp4Box;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.SniffFailure;
import java.io.IOException;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public final class Sniffer {
    public static final int BRAND_HEIC = 1751476579;
    public static final int BRAND_QUICKTIME = 1903435808;
    private static final int[] COMPATIBLE_BRANDS = {1769172845, 1769172786, 1769172787, 1769172788, 1769172789, 1769172790, 1769172793, Mp4Box.TYPE_avc1, Mp4Box.TYPE_hvc1, Mp4Box.TYPE_hev1, Mp4Box.TYPE_av01, 1836069937, 1836069938, 862401121, 862401122, 862417462, 862417718, 862414134, 862414646, 1295275552, 1295270176, 1714714144, 1801741417, 1295275600, BRAND_QUICKTIME, 1297305174, 1684175153, 1769172332, 1885955686};
    private static final int SEARCH_LENGTH = 4096;

    private Sniffer() {
    }

    private static boolean isCompatibleBrand(int i6, boolean z7) {
        if ((i6 >>> 8) == 3368816) {
            return true;
        }
        if (i6 == 1751476579 && z7) {
            return true;
        }
        for (int i10 : COMPATIBLE_BRANDS) {
            if (i10 == i6) {
                return true;
            }
        }
        return false;
    }

    public static SniffFailure sniffFragmented(ExtractorInput extractorInput) throws IOException {
        return sniffInternal(extractorInput, true, false);
    }

    private static SniffFailure sniffInternal(ExtractorInput extractorInput, boolean z7, boolean z10) throws IOException {
        boolean z11;
        long j10;
        int i6;
        boolean z12;
        int[] iArr;
        long length = extractorInput.getLength();
        long j11 = PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM;
        long j12 = -1;
        if (length != -1 && length <= PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM) {
            j11 = length;
        }
        int i10 = (int) j11;
        ParsableByteArray parsableByteArray = new ParsableByteArray(64);
        int i11 = 0;
        int i12 = 0;
        boolean z13 = false;
        while (i12 < i10) {
            parsableByteArray.reset(8);
            if (!extractorInput.peekFully(parsableByteArray.getData(), i11, 8, true)) {
                break;
            }
            long unsignedInt = parsableByteArray.readUnsignedInt();
            int i13 = parsableByteArray.readInt();
            if (unsignedInt == 1) {
                extractorInput.peekFully(parsableByteArray.getData(), 8, 8);
                i6 = 16;
                parsableByteArray.setLimit(16);
                j10 = parsableByteArray.readLong();
            } else {
                if (unsignedInt == 0) {
                    long length2 = extractorInput.getLength();
                    if (length2 != j12) {
                        unsignedInt = (length2 - extractorInput.getPeekPosition()) + 8;
                    }
                }
                j10 = unsignedInt;
                i6 = 8;
            }
            long j13 = i6;
            if (j10 < j13) {
                return new AtomSizeTooSmallSniffFailure(i13, j10, i6);
            }
            i12 += i6;
            if (i13 == 1836019574) {
                i10 += (int) j10;
                if (length != -1 && i10 > length) {
                    i10 = (int) length;
                }
                j12 = -1;
            } else {
                if (i13 == 1836019558 || i13 == 1836475768) {
                    z11 = true;
                    break;
                }
                long j14 = length;
                if (i13 == 1835295092) {
                    z13 = true;
                }
                if ((i12 + j10) - j13 >= i10) {
                    break;
                }
                int i14 = (int) (j10 - j13);
                i12 += i14;
                if (i13 == 1718909296) {
                    if (i14 < 8) {
                        return new AtomSizeTooSmallSniffFailure(i13, i14, 8);
                    }
                    parsableByteArray.reset(i14);
                    extractorInput.peekFully(parsableByteArray.getData(), 0, i14);
                    int i15 = parsableByteArray.readInt();
                    if (isCompatibleBrand(i15, z10)) {
                        z13 = true;
                    }
                    parsableByteArray.skipBytes(4);
                    int iBytesLeft = parsableByteArray.bytesLeft() / 4;
                    if (!z13 && iBytesLeft > 0) {
                        iArr = new int[iBytesLeft];
                        int i16 = 0;
                        while (true) {
                            if (i16 >= iBytesLeft) {
                                z12 = z13;
                                break;
                            }
                            int i17 = parsableByteArray.readInt();
                            iArr[i16] = i17;
                            if (isCompatibleBrand(i17, z10)) {
                                z12 = true;
                                break;
                            }
                            i16++;
                        }
                    } else {
                        z12 = z13;
                        iArr = null;
                    }
                    if (!z12) {
                        return new UnsupportedBrandsSniffFailure(i15, iArr);
                    }
                    z13 = z12;
                } else if (i14 != 0) {
                    extractorInput.advancePeekPosition(i14);
                }
                length = j14;
                j12 = -1;
                i11 = 0;
            }
        }
        z11 = false;
        if (!z13) {
            return NoDeclaredBrandSniffFailure.INSTANCE;
        }
        if (z7 != z11) {
            return z11 ? IncorrectFragmentationSniffFailure.FILE_FRAGMENTED : IncorrectFragmentationSniffFailure.FILE_NOT_FRAGMENTED;
        }
        return null;
    }

    public static SniffFailure sniffUnfragmented(ExtractorInput extractorInput, boolean z7) throws IOException {
        return sniffInternal(extractorInput, false, z7);
    }
}
