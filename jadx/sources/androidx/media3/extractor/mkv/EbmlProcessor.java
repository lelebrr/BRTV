package androidx.media3.extractor.mkv;

import androidx.media3.common.ParserException;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.extractor.ExtractorInput;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public interface EbmlProcessor {
    public static final int ELEMENT_TYPE_BINARY = 4;
    public static final int ELEMENT_TYPE_FLOAT = 5;
    public static final int ELEMENT_TYPE_MASTER = 1;
    public static final int ELEMENT_TYPE_STRING = 3;
    public static final int ELEMENT_TYPE_UNKNOWN = 0;
    public static final int ELEMENT_TYPE_UNSIGNED_INT = 2;

    /* compiled from: MyApplication */
    @Target({java.lang.annotation.ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface ElementType {
    }

    void binaryElement(int i6, int i10, ExtractorInput extractorInput) throws IOException;

    void endMasterElement(int i6) throws ParserException;

    void floatElement(int i6, double d) throws ParserException;

    int getElementType(int i6);

    void integerElement(int i6, long j10) throws ParserException;

    boolean isLevel1Element(int i6);

    void startMasterElement(int i6, long j10, long j11) throws ParserException;

    void stringElement(int i6, String str) throws ParserException;
}
