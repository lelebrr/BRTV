package com.alibaba.fastjson.asm;

import okio.Utf8;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class ClassReader {

    /* renamed from: b, reason: collision with root package name */
    public final byte[] f3490b;
    public final int header;
    private final int[] items;
    private final int maxStringLength;
    private boolean readAnnotations;
    private final String[] strings;

    /* JADX WARN: Removed duplicated region for block: B:21:0x005d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public ClassReader(java.io.InputStream r9, boolean r10) throws java.io.IOException {
        /*
            r8 = this;
            r8.<init>()
            r8.readAnnotations = r10
            java.io.ByteArrayOutputStream r10 = new java.io.ByteArrayOutputStream
            r10.<init>()
            r0 = 1024(0x400, float:1.435E-42)
            byte[] r0 = new byte[r0]
        Le:
            int r1 = r9.read(r0)
            r2 = -1
            r3 = 0
            if (r1 != r2) goto L71
            r9.close()
            byte[] r9 = r10.toByteArray()
            r8.f3490b = r9
            r9 = 8
            int r9 = r8.readUnsignedShort(r9)
            int[] r9 = new int[r9]
            r8.items = r9
            int r9 = r9.length
            java.lang.String[] r10 = new java.lang.String[r9]
            r8.strings = r10
            r10 = 1
            r0 = 10
            r1 = 1
        L32:
            if (r1 >= r9) goto L6c
            int[] r2 = r8.items
            int r4 = r0 + 1
            r2[r1] = r4
            byte[] r2 = r8.f3490b
            r2 = r2[r0]
            r5 = 3
            if (r2 == r10) goto L61
            r4 = 15
            r6 = 4
            if (r2 == r4) goto L5f
            r4 = 18
            r7 = 5
            if (r2 == r4) goto L5d
            if (r2 == r5) goto L5d
            if (r2 == r6) goto L5d
            if (r2 == r7) goto L58
            r4 = 6
            if (r2 == r4) goto L58
            switch(r2) {
                case 9: goto L5d;
                case 10: goto L5d;
                case 11: goto L5d;
                case 12: goto L5d;
                default: goto L57;
            }
        L57:
            goto L69
        L58:
            int r1 = r1 + 1
            r5 = 9
            goto L69
        L5d:
            r5 = 5
            goto L69
        L5f:
            r5 = 4
            goto L69
        L61:
            int r2 = r8.readUnsignedShort(r4)
            int r5 = r5 + r2
            if (r5 <= r3) goto L69
            r3 = r5
        L69:
            int r0 = r0 + r5
            int r1 = r1 + r10
            goto L32
        L6c:
            r8.maxStringLength = r3
            r8.header = r0
            return
        L71:
            if (r1 <= 0) goto Le
            r10.write(r0, r3, r1)
            goto Le
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.asm.ClassReader.<init>(java.io.InputStream, boolean):void");
    }

    private int getAttributes() {
        int i6 = this.header;
        int unsignedShort = (readUnsignedShort(i6 + 6) * 2) + i6 + 8;
        for (int unsignedShort2 = readUnsignedShort(unsignedShort); unsignedShort2 > 0; unsignedShort2--) {
            for (int unsignedShort3 = readUnsignedShort(unsignedShort + 8); unsignedShort3 > 0; unsignedShort3--) {
                unsignedShort += readInt(unsignedShort + 12) + 6;
            }
            unsignedShort += 8;
        }
        int i10 = unsignedShort + 2;
        for (int unsignedShort4 = readUnsignedShort(i10); unsignedShort4 > 0; unsignedShort4--) {
            for (int unsignedShort5 = readUnsignedShort(i10 + 8); unsignedShort5 > 0; unsignedShort5--) {
                i10 += readInt(i10 + 12) + 6;
            }
            i10 += 8;
        }
        return i10 + 2;
    }

    private int readInt(int i6) {
        byte[] bArr = this.f3490b;
        return (bArr[i6 + 3] & 255) | ((bArr[i6] & 255) << 24) | ((bArr[i6 + 1] & 255) << 16) | ((bArr[i6 + 2] & 255) << 8);
    }

    private int readMethod(TypeCollector typeCollector, char[] cArr, int i6) {
        int unsignedShort = readUnsignedShort(i6);
        String utf8 = readUTF8(i6 + 2, cArr);
        String utf82 = readUTF8(i6 + 4, cArr);
        int i10 = i6 + 8;
        int i11 = 0;
        int i12 = 0;
        for (int unsignedShort2 = readUnsignedShort(i6 + 6); unsignedShort2 > 0; unsignedShort2--) {
            String utf83 = readUTF8(i10, cArr);
            int i13 = readInt(i10 + 2);
            int i14 = i10 + 6;
            if (utf83.equals("Code")) {
                i12 = i14;
            }
            i10 = i14 + i13;
        }
        MethodCollector methodCollectorVisitMethod = typeCollector.visitMethod(unsignedShort, utf8, utf82);
        if (methodCollectorVisitMethod != null && i12 != 0) {
            int i15 = i12 + 8 + readInt(i12 + 4);
            int i16 = i15 + 2;
            for (int unsignedShort3 = readUnsignedShort(i15); unsignedShort3 > 0; unsignedShort3--) {
                i16 += 8;
            }
            int i17 = i16 + 2;
            int i18 = 0;
            for (int unsignedShort4 = readUnsignedShort(i16); unsignedShort4 > 0; unsignedShort4--) {
                String utf84 = readUTF8(i17, cArr);
                if (utf84.equals("LocalVariableTable")) {
                    i11 = i17 + 6;
                } else if (utf84.equals("LocalVariableTypeTable")) {
                    i18 = i17 + 6;
                }
                i17 += readInt(i17 + 2) + 6;
            }
            if (i11 != 0) {
                if (i18 != 0) {
                    int unsignedShort5 = readUnsignedShort(i18) * 3;
                    int i19 = i18 + 2;
                    int[] iArr = new int[unsignedShort5];
                    while (unsignedShort5 > 0) {
                        iArr[unsignedShort5 - 1] = i19 + 6;
                        iArr[unsignedShort5 - 2] = readUnsignedShort(i19 + 8);
                        unsignedShort5 -= 3;
                        iArr[unsignedShort5] = readUnsignedShort(i19);
                        i19 += 10;
                    }
                }
                int i20 = i11 + 2;
                for (int unsignedShort6 = readUnsignedShort(i11); unsignedShort6 > 0; unsignedShort6--) {
                    methodCollectorVisitMethod.visitLocalVariable(readUTF8(i20 + 4, cArr), readUnsignedShort(i20 + 8));
                    i20 += 10;
                }
            }
        }
        return i10;
    }

    private String readUTF(int i6, int i10, char[] cArr) {
        int i11;
        int i12 = i10 + i6;
        byte[] bArr = this.f3490b;
        int i13 = 0;
        char c5 = 0;
        char c8 = 0;
        while (i6 < i12) {
            int i14 = i6 + 1;
            byte b8 = bArr[i6];
            if (c5 == 0) {
                int i15 = b8 & 255;
                if (i15 < 128) {
                    cArr[i13] = (char) i15;
                    i13++;
                } else if (i15 >= 224 || i15 <= 191) {
                    c8 = (char) (b8 & 15);
                    c5 = 2;
                } else {
                    i11 = b8 & 31;
                    c8 = (char) i11;
                    c5 = 1;
                }
            } else if (c5 == 1) {
                cArr[i13] = (char) ((b8 & Utf8.REPLACEMENT_BYTE) | (c8 << 6));
                i13++;
                c5 = 0;
            } else if (c5 == 2) {
                i11 = (b8 & Utf8.REPLACEMENT_BYTE) | (c8 << 6);
                c8 = (char) i11;
                c5 = 1;
            }
            i6 = i14;
        }
        return new String(cArr, 0, i13);
    }

    private String readUTF8(int i6, char[] cArr) {
        int unsignedShort = readUnsignedShort(i6);
        String[] strArr = this.strings;
        String str = strArr[unsignedShort];
        if (str != null) {
            return str;
        }
        int i10 = this.items[unsignedShort];
        String utf = readUTF(i10 + 2, readUnsignedShort(i10), cArr);
        strArr[unsignedShort] = utf;
        return utf;
    }

    private int readUnsignedShort(int i6) {
        byte[] bArr = this.f3490b;
        return (bArr[i6 + 1] & 255) | ((bArr[i6] & 255) << 8);
    }

    public void accept(TypeCollector typeCollector) {
        int i6;
        char[] cArr = new char[this.maxStringLength];
        if (this.readAnnotations) {
            int attributes = getAttributes();
            for (int unsignedShort = readUnsignedShort(attributes); unsignedShort > 0; unsignedShort--) {
                if ("RuntimeVisibleAnnotations".equals(readUTF8(attributes + 2, cArr))) {
                    i6 = attributes + 8;
                    break;
                }
                attributes += readInt(attributes + 4) + 6;
            }
            i6 = 0;
        } else {
            i6 = 0;
        }
        int i10 = this.header;
        int unsignedShort2 = readUnsignedShort(i10 + 6);
        int i11 = i10 + 8;
        for (int i12 = 0; i12 < unsignedShort2; i12++) {
            i11 += 2;
        }
        int i13 = i11 + 2;
        int i14 = i13;
        for (int unsignedShort3 = readUnsignedShort(i11); unsignedShort3 > 0; unsignedShort3--) {
            i14 += 8;
            for (int unsignedShort4 = readUnsignedShort(i14 + 6); unsignedShort4 > 0; unsignedShort4--) {
                i14 += readInt(i14 + 2) + 6;
            }
        }
        int i15 = i14 + 2;
        for (int unsignedShort5 = readUnsignedShort(i14); unsignedShort5 > 0; unsignedShort5--) {
            i15 += 8;
            for (int unsignedShort6 = readUnsignedShort(i15 + 6); unsignedShort6 > 0; unsignedShort6--) {
                i15 += readInt(i15 + 2) + 6;
            }
        }
        int i16 = i15 + 2;
        for (int unsignedShort7 = readUnsignedShort(i15); unsignedShort7 > 0; unsignedShort7--) {
            i16 += readInt(i16 + 2) + 6;
        }
        if (i6 != 0) {
            int i17 = i6 + 2;
            for (int unsignedShort8 = readUnsignedShort(i6); unsignedShort8 > 0; unsignedShort8--) {
                typeCollector.visitAnnotation(readUTF8(i17, cArr));
            }
        }
        for (int unsignedShort9 = readUnsignedShort(i11); unsignedShort9 > 0; unsignedShort9--) {
            i13 += 8;
            for (int unsignedShort10 = readUnsignedShort(i13 + 6); unsignedShort10 > 0; unsignedShort10--) {
                i13 += readInt(i13 + 2) + 6;
            }
        }
        int method = i13 + 2;
        for (int unsignedShort11 = readUnsignedShort(i13); unsignedShort11 > 0; unsignedShort11--) {
            method = readMethod(typeCollector, cArr, method);
        }
    }
}
