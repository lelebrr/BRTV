package androidx.media3.extractor.avi;

import androidx.media3.common.util.ParsableByteArray;
import d7.d0;
import d7.g1;
import d7.p1;
import d7.u1;
import java.util.Arrays;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
final class ListChunk implements AviChunk {
    public final u1 children;
    private final int type;

    private ListChunk(int i6, u1 u1Var) {
        this.type = i6;
        this.children = u1Var;
    }

    private static AviChunk createBox(int i6, int i10, ParsableByteArray parsableByteArray) {
        switch (i6) {
            case AviExtractor.FOURCC_strf /* 1718776947 */:
                return StreamFormatChunk.parseFrom(i10, parsableByteArray);
            case AviExtractor.FOURCC_avih /* 1751742049 */:
                return AviMainHeaderChunk.parseFrom(parsableByteArray);
            case AviExtractor.FOURCC_strh /* 1752331379 */:
                return AviStreamHeaderChunk.parseFrom(parsableByteArray);
            case AviExtractor.FOURCC_strn /* 1852994675 */:
                return StreamNameChunk.parseFrom(parsableByteArray);
            default:
                return null;
        }
    }

    public static ListChunk parseFrom(int i6, ParsableByteArray parsableByteArray) {
        d0.d(4, "initialCapacity");
        Object[] objArrCopyOf = new Object[4];
        int iLimit = parsableByteArray.limit();
        int i10 = 0;
        int trackType = -2;
        while (parsableByteArray.bytesLeft() > 8) {
            int littleEndianInt = parsableByteArray.readLittleEndianInt();
            int position = parsableByteArray.getPosition() + parsableByteArray.readLittleEndianInt();
            parsableByteArray.setLimit(position);
            AviChunk from = littleEndianInt == 1414744396 ? parseFrom(parsableByteArray.readLittleEndianInt(), parsableByteArray) : createBox(littleEndianInt, trackType, parsableByteArray);
            if (from != null) {
                if (from.getType() == 1752331379) {
                    trackType = ((AviStreamHeaderChunk) from).getTrackType();
                }
                int i11 = i10 + 1;
                int iF = p1.f(objArrCopyOf.length, i11);
                if (iF > objArrCopyOf.length) {
                    objArrCopyOf = Arrays.copyOf(objArrCopyOf, iF);
                }
                objArrCopyOf[i10] = from;
                i10 = i11;
            }
            parsableByteArray.setPosition(position);
            parsableByteArray.setLimit(iLimit);
        }
        return new ListChunk(i6, u1.j(objArrCopyOf, i10));
    }

    public <T extends AviChunk> T getChild(Class<T> cls) {
        g1 g1VarListIterator = this.children.listIterator(0);
        while (g1VarListIterator.hasNext()) {
            T t5 = (T) g1VarListIterator.next();
            if (t5.getClass() == cls) {
                return t5;
            }
        }
        return null;
    }

    @Override // androidx.media3.extractor.avi.AviChunk
    public int getType() {
        return this.type;
    }
}
