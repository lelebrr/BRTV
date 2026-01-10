package okhttp3.internal.ws;

import j9.f;
import j9.i;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class WebSocketExtensions {
    public static final Companion Companion = new Companion(null);
    private static final String HEADER_WEB_SOCKET_EXTENSION = "Sec-WebSocket-Extensions";
    public final Integer clientMaxWindowBits;
    public final boolean clientNoContextTakeover;
    public final boolean perMessageDeflate;
    public final Integer serverMaxWindowBits;
    public final boolean serverNoContextTakeover;
    public final boolean unknownValues;

    /* compiled from: MyApplication */
    public static final class Companion {
        public /* synthetic */ Companion(f fVar) {
            this();
        }

        /* JADX WARN: Removed duplicated region for block: B:37:0x00be A[PHI: r7 r9 r11
  0x00be: PHI (r7v5 java.lang.Integer) = (r7v4 java.lang.Integer), (r7v9 java.lang.Integer) binds: [B:52:0x00e5, B:34:0x00b7] A[DONT_GENERATE, DONT_INLINE]
  0x00be: PHI (r9v8 java.lang.Integer) = (r9v6 java.lang.Integer), (r9v4 java.lang.Integer) binds: [B:52:0x00e5, B:34:0x00b7] A[DONT_GENERATE, DONT_INLINE]
  0x00be: PHI (r11v16 boolean) = (r11v10 boolean), (r11v19 boolean) binds: [B:52:0x00e5, B:34:0x00b7] A[DONT_GENERATE, DONT_INLINE]] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final okhttp3.internal.ws.WebSocketExtensions parse(okhttp3.Headers r20) throws java.io.IOException {
            /*
                Method dump skipped, instructions count: 269
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.ws.WebSocketExtensions.Companion.parse(okhttp3.Headers):okhttp3.internal.ws.WebSocketExtensions");
        }

        private Companion() {
        }
    }

    public WebSocketExtensions() {
        this(false, null, false, null, false, false, 63, null);
    }

    public static /* synthetic */ WebSocketExtensions copy$default(WebSocketExtensions webSocketExtensions, boolean z7, Integer num, boolean z10, Integer num2, boolean z11, boolean z12, int i6, Object obj) {
        if ((i6 & 1) != 0) {
            z7 = webSocketExtensions.perMessageDeflate;
        }
        if ((i6 & 2) != 0) {
            num = webSocketExtensions.clientMaxWindowBits;
        }
        Integer num3 = num;
        if ((i6 & 4) != 0) {
            z10 = webSocketExtensions.clientNoContextTakeover;
        }
        boolean z13 = z10;
        if ((i6 & 8) != 0) {
            num2 = webSocketExtensions.serverMaxWindowBits;
        }
        Integer num4 = num2;
        if ((i6 & 16) != 0) {
            z11 = webSocketExtensions.serverNoContextTakeover;
        }
        boolean z14 = z11;
        if ((i6 & 32) != 0) {
            z12 = webSocketExtensions.unknownValues;
        }
        return webSocketExtensions.copy(z7, num3, z13, num4, z14, z12);
    }

    public final boolean component1() {
        return this.perMessageDeflate;
    }

    public final Integer component2() {
        return this.clientMaxWindowBits;
    }

    public final boolean component3() {
        return this.clientNoContextTakeover;
    }

    public final Integer component4() {
        return this.serverMaxWindowBits;
    }

    public final boolean component5() {
        return this.serverNoContextTakeover;
    }

    public final boolean component6() {
        return this.unknownValues;
    }

    public final WebSocketExtensions copy(boolean z7, Integer num, boolean z10, Integer num2, boolean z11, boolean z12) {
        return new WebSocketExtensions(z7, num, z10, num2, z11, z12);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WebSocketExtensions)) {
            return false;
        }
        WebSocketExtensions webSocketExtensions = (WebSocketExtensions) obj;
        return this.perMessageDeflate == webSocketExtensions.perMessageDeflate && i.a(this.clientMaxWindowBits, webSocketExtensions.clientMaxWindowBits) && this.clientNoContextTakeover == webSocketExtensions.clientNoContextTakeover && i.a(this.serverMaxWindowBits, webSocketExtensions.serverMaxWindowBits) && this.serverNoContextTakeover == webSocketExtensions.serverNoContextTakeover && this.unknownValues == webSocketExtensions.unknownValues;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r2v3, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v6, types: [boolean] */
    public int hashCode() {
        boolean z7 = this.perMessageDeflate;
        ?? r02 = z7;
        if (z7) {
            r02 = 1;
        }
        int i6 = r02 * 31;
        Integer num = this.clientMaxWindowBits;
        int iHashCode = (i6 + (num == null ? 0 : num.hashCode())) * 31;
        ?? r22 = this.clientNoContextTakeover;
        int i10 = r22;
        if (r22 != 0) {
            i10 = 1;
        }
        int i11 = (iHashCode + i10) * 31;
        Integer num2 = this.serverMaxWindowBits;
        int iHashCode2 = (i11 + (num2 != null ? num2.hashCode() : 0)) * 31;
        ?? r23 = this.serverNoContextTakeover;
        int i12 = r23;
        if (r23 != 0) {
            i12 = 1;
        }
        int i13 = (iHashCode2 + i12) * 31;
        boolean z10 = this.unknownValues;
        return i13 + (z10 ? 1 : z10 ? 1 : 0);
    }

    public final boolean noContextTakeover(boolean z7) {
        return z7 ? this.clientNoContextTakeover : this.serverNoContextTakeover;
    }

    public String toString() {
        return "WebSocketExtensions(perMessageDeflate=" + this.perMessageDeflate + ", clientMaxWindowBits=" + this.clientMaxWindowBits + ", clientNoContextTakeover=" + this.clientNoContextTakeover + ", serverMaxWindowBits=" + this.serverMaxWindowBits + ", serverNoContextTakeover=" + this.serverNoContextTakeover + ", unknownValues=" + this.unknownValues + ')';
    }

    public WebSocketExtensions(boolean z7, Integer num, boolean z10, Integer num2, boolean z11, boolean z12) {
        this.perMessageDeflate = z7;
        this.clientMaxWindowBits = num;
        this.clientNoContextTakeover = z10;
        this.serverMaxWindowBits = num2;
        this.serverNoContextTakeover = z11;
        this.unknownValues = z12;
    }

    public /* synthetic */ WebSocketExtensions(boolean z7, Integer num, boolean z10, Integer num2, boolean z11, boolean z12, int i6, f fVar) {
        this((i6 & 1) != 0 ? false : z7, (i6 & 2) != 0 ? null : num, (i6 & 4) != 0 ? false : z10, (i6 & 8) == 0 ? num2 : null, (i6 & 16) != 0 ? false : z11, (i6 & 32) != 0 ? false : z12);
    }
}
