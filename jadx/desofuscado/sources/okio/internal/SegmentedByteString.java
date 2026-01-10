package okio.internal;

import a.e;
import ea.q;
import j9.i;
import okio.Buffer;
import okio.ByteString;
import okio.C0004SegmentedByteString;
import okio.Segment;

/* compiled from: MyApplication */
/* renamed from: okio.internal.-SegmentedByteString, reason: invalid class name */
/* loaded from: classes.dex */
public final class SegmentedByteString {
    public static final int binarySearch(int[] iArr, int i6, int i10, int i11) {
        i.f(iArr, "<this>");
        int i12 = i11 - 1;
        while (i10 <= i12) {
            int i13 = (i10 + i12) >>> 1;
            int i14 = iArr[i13];
            if (i14 < i6) {
                i10 = i13 + 1;
            } else {
                if (i14 <= i6) {
                    return i13;
                }
                i12 = i13 - 1;
            }
        }
        return (-i10) - 1;
    }

    public static final void commonCopyInto(C0004SegmentedByteString c0004SegmentedByteString, int i6, byte[] bArr, int i10, int i11) {
        i.f(c0004SegmentedByteString, "<this>");
        i.f(bArr, "target");
        long j10 = i11;
        okio.SegmentedByteString.checkOffsetAndCount(c0004SegmentedByteString.size(), i6, j10);
        okio.SegmentedByteString.checkOffsetAndCount(bArr.length, i10, j10);
        int i12 = i11 + i6;
        int iSegment = segment(c0004SegmentedByteString, i6);
        while (i6 < i12) {
            int i13 = iSegment == 0 ? 0 : c0004SegmentedByteString.getDirectory$okio()[iSegment - 1];
            int i14 = c0004SegmentedByteString.getDirectory$okio()[iSegment] - i13;
            int i15 = c0004SegmentedByteString.getDirectory$okio()[c0004SegmentedByteString.getSegments$okio().length + iSegment];
            int iMin = Math.min(i12, i14 + i13) - i6;
            int i16 = (i6 - i13) + i15;
            x8.i.E(c0004SegmentedByteString.getSegments$okio()[iSegment], i10, i16, bArr, i16 + iMin);
            i10 += iMin;
            i6 += iMin;
            iSegment++;
        }
    }

    public static final boolean commonEquals(C0004SegmentedByteString c0004SegmentedByteString, Object obj) {
        i.f(c0004SegmentedByteString, "<this>");
        if (obj == c0004SegmentedByteString) {
            return true;
        }
        if (obj instanceof ByteString) {
            ByteString byteString = (ByteString) obj;
            if (byteString.size() == c0004SegmentedByteString.size() && c0004SegmentedByteString.rangeEquals(0, byteString, 0, c0004SegmentedByteString.size())) {
                return true;
            }
        }
        return false;
    }

    public static final int commonGetSize(C0004SegmentedByteString c0004SegmentedByteString) {
        i.f(c0004SegmentedByteString, "<this>");
        return c0004SegmentedByteString.getDirectory$okio()[c0004SegmentedByteString.getSegments$okio().length - 1];
    }

    public static final int commonHashCode(C0004SegmentedByteString c0004SegmentedByteString) {
        i.f(c0004SegmentedByteString, "<this>");
        int hashCode$okio = c0004SegmentedByteString.getHashCode$okio();
        if (hashCode$okio != 0) {
            return hashCode$okio;
        }
        int length = c0004SegmentedByteString.getSegments$okio().length;
        int i6 = 0;
        int i10 = 0;
        int i11 = 1;
        while (i6 < length) {
            int i12 = c0004SegmentedByteString.getDirectory$okio()[length + i6];
            int i13 = c0004SegmentedByteString.getDirectory$okio()[i6];
            byte[] bArr = c0004SegmentedByteString.getSegments$okio()[i6];
            int i14 = (i13 - i10) + i12;
            while (i12 < i14) {
                i11 = (i11 * 31) + bArr[i12];
                i12++;
            }
            i6++;
            i10 = i13;
        }
        c0004SegmentedByteString.setHashCode$okio(i11);
        return i11;
    }

    public static final byte commonInternalGet(C0004SegmentedByteString c0004SegmentedByteString, int i6) {
        i.f(c0004SegmentedByteString, "<this>");
        okio.SegmentedByteString.checkOffsetAndCount(c0004SegmentedByteString.getDirectory$okio()[c0004SegmentedByteString.getSegments$okio().length - 1], i6, 1L);
        int iSegment = segment(c0004SegmentedByteString, i6);
        return c0004SegmentedByteString.getSegments$okio()[iSegment][(i6 - (iSegment == 0 ? 0 : c0004SegmentedByteString.getDirectory$okio()[iSegment - 1])) + c0004SegmentedByteString.getDirectory$okio()[c0004SegmentedByteString.getSegments$okio().length + iSegment]];
    }

    public static final boolean commonRangeEquals(C0004SegmentedByteString c0004SegmentedByteString, int i6, ByteString byteString, int i10, int i11) {
        i.f(c0004SegmentedByteString, "<this>");
        i.f(byteString, "other");
        if (i6 < 0 || i6 > c0004SegmentedByteString.size() - i11) {
            return false;
        }
        int i12 = i11 + i6;
        int iSegment = segment(c0004SegmentedByteString, i6);
        while (i6 < i12) {
            int i13 = iSegment == 0 ? 0 : c0004SegmentedByteString.getDirectory$okio()[iSegment - 1];
            int i14 = c0004SegmentedByteString.getDirectory$okio()[iSegment] - i13;
            int i15 = c0004SegmentedByteString.getDirectory$okio()[c0004SegmentedByteString.getSegments$okio().length + iSegment];
            int iMin = Math.min(i12, i14 + i13) - i6;
            if (!byteString.rangeEquals(i10, c0004SegmentedByteString.getSegments$okio()[iSegment], (i6 - i13) + i15, iMin)) {
                return false;
            }
            i10 += iMin;
            i6 += iMin;
            iSegment++;
        }
        return true;
    }

    public static final ByteString commonSubstring(C0004SegmentedByteString c0004SegmentedByteString, int i6, int i10) {
        i.f(c0004SegmentedByteString, "<this>");
        int iResolveDefaultParameter = okio.SegmentedByteString.resolveDefaultParameter(c0004SegmentedByteString, i10);
        if (i6 < 0) {
            throw new IllegalArgumentException(q.f(i6, "beginIndex=", " < 0").toString());
        }
        if (iResolveDefaultParameter > c0004SegmentedByteString.size()) {
            StringBuilder sbU = e.u(iResolveDefaultParameter, "endIndex=", " > length(");
            sbU.append(c0004SegmentedByteString.size());
            sbU.append(')');
            throw new IllegalArgumentException(sbU.toString().toString());
        }
        int i11 = iResolveDefaultParameter - i6;
        if (i11 < 0) {
            throw new IllegalArgumentException(e.m(iResolveDefaultParameter, i6, "endIndex=", " < beginIndex=").toString());
        }
        if (i6 == 0 && iResolveDefaultParameter == c0004SegmentedByteString.size()) {
            return c0004SegmentedByteString;
        }
        if (i6 == iResolveDefaultParameter) {
            return ByteString.EMPTY;
        }
        int iSegment = segment(c0004SegmentedByteString, i6);
        int iSegment2 = segment(c0004SegmentedByteString, iResolveDefaultParameter - 1);
        byte[][] bArr = (byte[][]) x8.i.H(c0004SegmentedByteString.getSegments$okio(), iSegment, iSegment2 + 1);
        int[] iArr = new int[bArr.length * 2];
        if (iSegment <= iSegment2) {
            int i12 = iSegment;
            int i13 = 0;
            while (true) {
                iArr[i13] = Math.min(c0004SegmentedByteString.getDirectory$okio()[i12] - i6, i11);
                int i14 = i13 + 1;
                iArr[i13 + bArr.length] = c0004SegmentedByteString.getDirectory$okio()[c0004SegmentedByteString.getSegments$okio().length + i12];
                if (i12 == iSegment2) {
                    break;
                }
                i12++;
                i13 = i14;
            }
        }
        int i15 = iSegment != 0 ? c0004SegmentedByteString.getDirectory$okio()[iSegment - 1] : 0;
        int length = bArr.length;
        iArr[length] = (i6 - i15) + iArr[length];
        return new C0004SegmentedByteString(bArr, iArr);
    }

    public static final byte[] commonToByteArray(C0004SegmentedByteString c0004SegmentedByteString) {
        i.f(c0004SegmentedByteString, "<this>");
        byte[] bArr = new byte[c0004SegmentedByteString.size()];
        int length = c0004SegmentedByteString.getSegments$okio().length;
        int i6 = 0;
        int i10 = 0;
        int i11 = 0;
        while (i6 < length) {
            int i12 = c0004SegmentedByteString.getDirectory$okio()[length + i6];
            int i13 = c0004SegmentedByteString.getDirectory$okio()[i6];
            int i14 = i13 - i10;
            x8.i.E(c0004SegmentedByteString.getSegments$okio()[i6], i11, i12, bArr, i12 + i14);
            i11 += i14;
            i6++;
            i10 = i13;
        }
        return bArr;
    }

    public static final void commonWrite(C0004SegmentedByteString c0004SegmentedByteString, Buffer buffer, int i6, int i10) {
        i.f(c0004SegmentedByteString, "<this>");
        i.f(buffer, "buffer");
        int i11 = i6 + i10;
        int iSegment = segment(c0004SegmentedByteString, i6);
        while (i6 < i11) {
            int i12 = iSegment == 0 ? 0 : c0004SegmentedByteString.getDirectory$okio()[iSegment - 1];
            int i13 = c0004SegmentedByteString.getDirectory$okio()[iSegment] - i12;
            int i14 = c0004SegmentedByteString.getDirectory$okio()[c0004SegmentedByteString.getSegments$okio().length + iSegment];
            int iMin = Math.min(i11, i13 + i12) - i6;
            int i15 = (i6 - i12) + i14;
            Segment segment = new Segment(c0004SegmentedByteString.getSegments$okio()[iSegment], i15, i15 + iMin, true, false);
            Segment segment2 = buffer.head;
            if (segment2 == null) {
                segment.prev = segment;
                segment.next = segment;
                buffer.head = segment;
            } else {
                i.c(segment2);
                Segment segment3 = segment2.prev;
                i.c(segment3);
                segment3.push(segment);
            }
            i6 += iMin;
            iSegment++;
        }
        buffer.setSize$okio(buffer.size() + i10);
    }

    public static final void forEachSegment(C0004SegmentedByteString c0004SegmentedByteString, i9.q qVar) {
        i.f(c0004SegmentedByteString, "<this>");
        i.f(qVar, "action");
        int length = c0004SegmentedByteString.getSegments$okio().length;
        int i6 = 0;
        int i10 = 0;
        while (i6 < length) {
            int i11 = c0004SegmentedByteString.getDirectory$okio()[length + i6];
            int i12 = c0004SegmentedByteString.getDirectory$okio()[i6];
            ((qa.i) qVar).a(c0004SegmentedByteString.getSegments$okio()[i6], Integer.valueOf(i11), Integer.valueOf(i12 - i10));
            i6++;
            i10 = i12;
        }
    }

    public static final int segment(C0004SegmentedByteString c0004SegmentedByteString, int i6) {
        i.f(c0004SegmentedByteString, "<this>");
        int iBinarySearch = binarySearch(c0004SegmentedByteString.getDirectory$okio(), i6 + 1, 0, c0004SegmentedByteString.getSegments$okio().length);
        return iBinarySearch >= 0 ? iBinarySearch : ~iBinarySearch;
    }

    private static final void forEachSegment(C0004SegmentedByteString c0004SegmentedByteString, int i6, int i10, i9.q qVar) {
        int iSegment = segment(c0004SegmentedByteString, i6);
        while (i6 < i10) {
            int i11 = iSegment == 0 ? 0 : c0004SegmentedByteString.getDirectory$okio()[iSegment - 1];
            int i12 = c0004SegmentedByteString.getDirectory$okio()[iSegment] - i11;
            int i13 = c0004SegmentedByteString.getDirectory$okio()[c0004SegmentedByteString.getSegments$okio().length + iSegment];
            int iMin = Math.min(i10, i12 + i11) - i6;
            ((qa.i) qVar).a(c0004SegmentedByteString.getSegments$okio()[iSegment], Integer.valueOf((i6 - i11) + i13), Integer.valueOf(iMin));
            i6 += iMin;
            iSegment++;
        }
    }

    public static final boolean commonRangeEquals(C0004SegmentedByteString c0004SegmentedByteString, int i6, byte[] bArr, int i10, int i11) {
        i.f(c0004SegmentedByteString, "<this>");
        i.f(bArr, "other");
        if (i6 < 0 || i6 > c0004SegmentedByteString.size() - i11 || i10 < 0 || i10 > bArr.length - i11) {
            return false;
        }
        int i12 = i11 + i6;
        int iSegment = segment(c0004SegmentedByteString, i6);
        while (i6 < i12) {
            int i13 = iSegment == 0 ? 0 : c0004SegmentedByteString.getDirectory$okio()[iSegment - 1];
            int i14 = c0004SegmentedByteString.getDirectory$okio()[iSegment] - i13;
            int i15 = c0004SegmentedByteString.getDirectory$okio()[c0004SegmentedByteString.getSegments$okio().length + iSegment];
            int iMin = Math.min(i12, i14 + i13) - i6;
            if (!okio.SegmentedByteString.arrayRangeEquals(c0004SegmentedByteString.getSegments$okio()[iSegment], (i6 - i13) + i15, bArr, i10, iMin)) {
                return false;
            }
            i10 += iMin;
            i6 += iMin;
            iSegment++;
        }
        return true;
    }
}
