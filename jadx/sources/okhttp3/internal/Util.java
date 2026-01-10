package okhttp3.internal;

import android.support.v4.media.session.PlaybackStateCompat;
import androidx.media3.common.x;
import androidx.media3.exoplayer.rtsp.RtspHeaders;
import com.bumptech.glide.c;
import com.lzy.okgo.cookie.SerializableCookie;
import com.lzy.okgo.model.HttpHeaders;
import i9.a;
import i9.l;
import j9.i;
import j9.q;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.lang.reflect.Field;
import java.net.InetSocketAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.SocketAddress;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.TimeZone;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import o9.g;
import o9.h;
import okhttp3.Call;
import okhttp3.EventListener;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.Util;
import okhttp3.internal.http2.Header;
import okhttp3.internal.io.FileSystem;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ByteString;
import okio.Options;
import okio.Sink;
import okio.Source;
import r9.e;
import r9.f;
import r9.n;
import x8.j;
import x8.r;
import x8.s;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class Util {
    public static final byte[] EMPTY_BYTE_ARRAY;
    public static final Headers EMPTY_HEADERS = Headers.Companion.of(new String[0]);
    public static final RequestBody EMPTY_REQUEST;
    public static final ResponseBody EMPTY_RESPONSE;
    private static final Options UNICODE_BOMS;
    public static final TimeZone UTC;
    private static final e VERIFY_AS_IP_ADDRESS;
    public static final boolean assertionsEnabled;
    public static final String okHttpName;
    public static final String userAgent = "okhttp/4.12.0";

    static {
        byte[] bArr = new byte[0];
        EMPTY_BYTE_ARRAY = bArr;
        EMPTY_RESPONSE = ResponseBody.Companion.create$default(ResponseBody.Companion, bArr, (MediaType) null, 1, (Object) null);
        EMPTY_REQUEST = RequestBody.Companion.create$default(RequestBody.Companion, bArr, (MediaType) null, 0, 0, 7, (Object) null);
        Options.Companion companion = Options.Companion;
        ByteString.Companion companion2 = ByteString.Companion;
        UNICODE_BOMS = companion.of(companion2.decodeHex("efbbbf"), companion2.decodeHex("feff"), companion2.decodeHex("fffe"), companion2.decodeHex("0000ffff"), companion2.decodeHex("ffff0000"));
        TimeZone timeZone = TimeZone.getTimeZone("GMT");
        i.c(timeZone);
        UTC = timeZone;
        VERIFY_AS_IP_ADDRESS = new e("([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)");
        assertionsEnabled = false;
        String strG0 = f.g0(OkHttpClient.class.getName(), "okhttp3.");
        if (n.O(strG0, "Client", false)) {
            strG0 = strG0.substring(0, strG0.length() - 6);
            i.e(strG0, "substring(...)");
        }
        okHttpName = strG0;
    }

    public static final <E> void addIfAbsent(List<E> list, E e5) {
        i.f(list, "<this>");
        if (list.contains(e5)) {
            return;
        }
        list.add(e5);
    }

    public static final int and(byte b8, int i6) {
        return b8 & i6;
    }

    public static final EventListener.Factory asFactory(EventListener eventListener) {
        i.f(eventListener, "<this>");
        return new x(10, eventListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final EventListener asFactory$lambda$8(EventListener eventListener, Call call) {
        i.f(eventListener, "$this_asFactory");
        i.f(call, "it");
        return eventListener;
    }

    public static final void assertThreadDoesntHoldLock(Object obj) {
        i.f(obj, "<this>");
        if (assertionsEnabled && Thread.holdsLock(obj)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST NOT hold lock on " + obj);
        }
    }

    public static final void assertThreadHoldsLock(Object obj) {
        i.f(obj, "<this>");
        if (!assertionsEnabled || Thread.holdsLock(obj)) {
            return;
        }
        throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST hold lock on " + obj);
    }

    public static final boolean canParseAsIpAddress(String str) {
        i.f(str, "<this>");
        e eVar = VERIFY_AS_IP_ADDRESS;
        eVar.getClass();
        return eVar.f9625a.matcher(str).matches();
    }

    public static final boolean canReuseConnectionFor(HttpUrl httpUrl, HttpUrl httpUrl2) {
        i.f(httpUrl, "<this>");
        i.f(httpUrl2, "other");
        return i.a(httpUrl.host(), httpUrl2.host()) && httpUrl.port() == httpUrl2.port() && i.a(httpUrl.scheme(), httpUrl2.scheme());
    }

    public static final int checkDuration(String str, long j10, TimeUnit timeUnit) {
        i.f(str, SerializableCookie.NAME);
        if (j10 < 0) {
            throw new IllegalStateException(str.concat(" < 0").toString());
        }
        if (timeUnit == null) {
            throw new IllegalStateException("unit == null");
        }
        long millis = timeUnit.toMillis(j10);
        if (millis > 2147483647L) {
            throw new IllegalArgumentException(str.concat(" too large.").toString());
        }
        if (millis != 0 || j10 <= 0) {
            return (int) millis;
        }
        throw new IllegalArgumentException(str.concat(" too small.").toString());
    }

    public static final void checkOffsetAndCount(long j10, long j11, long j12) {
        if ((j11 | j12) < 0 || j11 > j10 || j10 - j11 < j12) {
            throw new ArrayIndexOutOfBoundsException();
        }
    }

    public static final void closeQuietly(Closeable closeable) throws IOException {
        i.f(closeable, "<this>");
        try {
            closeable.close();
        } catch (RuntimeException e5) {
            throw e5;
        } catch (Exception unused) {
        }
    }

    public static final String[] concat(String[] strArr, String str) {
        i.f(strArr, "<this>");
        i.f(str, "value");
        Object[] objArrCopyOf = Arrays.copyOf(strArr, strArr.length + 1);
        i.e(objArrCopyOf, "copyOf(this, newSize)");
        String[] strArr2 = (String[]) objArrCopyOf;
        strArr2[strArr2.length - 1] = str;
        return strArr2;
    }

    public static final int delimiterOffset(String str, String str2, int i6, int i10) {
        i.f(str, "<this>");
        i.f(str2, "delimiters");
        while (i6 < i10) {
            if (f.W(str2, str.charAt(i6))) {
                return i6;
            }
            i6++;
        }
        return i10;
    }

    public static /* synthetic */ int delimiterOffset$default(String str, String str2, int i6, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i6 = 0;
        }
        if ((i11 & 4) != 0) {
            i10 = str.length();
        }
        return delimiterOffset(str, str2, i6, i10);
    }

    public static final boolean discard(Source source, int i6, TimeUnit timeUnit) {
        i.f(source, "<this>");
        i.f(timeUnit, "timeUnit");
        try {
            return skipAll(source, i6, timeUnit);
        } catch (IOException unused) {
            return false;
        }
    }

    public static final <T> List<T> filterList(Iterable<? extends T> iterable, l lVar) {
        i.f(iterable, "<this>");
        i.f(lVar, "predicate");
        ArrayList arrayList = r.f11098a;
        for (T t5 : iterable) {
            if (((Boolean) lVar.invoke(t5)).booleanValue()) {
                if (arrayList.isEmpty()) {
                    arrayList = new ArrayList();
                }
                q.a(arrayList).add(t5);
            }
        }
        return arrayList;
    }

    public static final String format(String str, Object... objArr) {
        i.f(str, "format");
        i.f(objArr, "args");
        Locale locale = Locale.US;
        Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
        return String.format(locale, str, Arrays.copyOf(objArrCopyOf, objArrCopyOf.length));
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x003d, code lost:
    
        r2 = r2 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final boolean hasIntersection(java.lang.String[] r7, java.lang.String[] r8, java.util.Comparator<? super java.lang.String> r9) {
        /*
            java.lang.String r0 = "<this>"
            j9.i.f(r7, r0)
            java.lang.String r0 = "comparator"
            j9.i.f(r9, r0)
            int r0 = r7.length
            r1 = 0
            if (r0 != 0) goto Lf
            goto L40
        Lf:
            if (r8 == 0) goto L40
            int r0 = r8.length
            if (r0 != 0) goto L15
            goto L40
        L15:
            int r0 = r7.length
            r2 = 0
        L17:
            if (r2 >= r0) goto L40
            r3 = r7[r2]
            r4 = 0
        L1c:
            int r5 = r8.length
            r6 = 1
            if (r4 >= r5) goto L22
            r5 = 1
            goto L23
        L22:
            r5 = 0
        L23:
            if (r5 == 0) goto L3d
            int r5 = r4 + 1
            r4 = r8[r4]     // Catch: java.lang.ArrayIndexOutOfBoundsException -> L32
            int r4 = r9.compare(r3, r4)
            if (r4 != 0) goto L30
            return r6
        L30:
            r4 = r5
            goto L1c
        L32:
            r7 = move-exception
            java.util.NoSuchElementException r8 = new java.util.NoSuchElementException
            java.lang.String r7 = r7.getMessage()
            r8.<init>(r7)
            throw r8
        L3d:
            int r2 = r2 + 1
            goto L17
        L40:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.Util.hasIntersection(java.lang.String[], java.lang.String[], java.util.Comparator):boolean");
    }

    public static final long headersContentLength(Response response) {
        i.f(response, "<this>");
        String str = response.headers().get("Content-Length");
        if (str != null) {
            return toLongOrDefault(str, -1L);
        }
        return -1L;
    }

    public static final void ignoreIoExceptions(a aVar) {
        i.f(aVar, "block");
        try {
            aVar.invoke();
        } catch (IOException unused) {
        }
    }

    @SafeVarargs
    public static final <T> List<T> immutableListOf(T... tArr) {
        List listAsList;
        i.f(tArr, "elements");
        Object[] objArr = (Object[]) tArr.clone();
        Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
        i.f(objArrCopyOf, "elements");
        if (objArrCopyOf.length > 0) {
            listAsList = Arrays.asList(objArrCopyOf);
            i.e(listAsList, "asList(...)");
        } else {
            listAsList = r.f11098a;
        }
        List<T> listUnmodifiableList = Collections.unmodifiableList(listAsList);
        i.e(listUnmodifiableList, "unmodifiableList(listOf(*elements.clone()))");
        return listUnmodifiableList;
    }

    public static final int indexOf(String[] strArr, String str, Comparator<String> comparator) {
        i.f(strArr, "<this>");
        i.f(str, "value");
        i.f(comparator, "comparator");
        int length = strArr.length;
        for (int i6 = 0; i6 < length; i6++) {
            if (comparator.compare(strArr[i6], str) == 0) {
                return i6;
            }
        }
        return -1;
    }

    public static final int indexOfControlOrNonAscii(String str) {
        i.f(str, "<this>");
        int length = str.length();
        for (int i6 = 0; i6 < length; i6++) {
            char cCharAt = str.charAt(i6);
            if (i.h(cCharAt, 31) <= 0 || i.h(cCharAt, 127) >= 0) {
                return i6;
            }
        }
        return -1;
    }

    public static final int indexOfFirstNonAsciiWhitespace(String str, int i6, int i10) {
        i.f(str, "<this>");
        while (i6 < i10) {
            char cCharAt = str.charAt(i6);
            if (cCharAt != '\t' && cCharAt != '\n' && cCharAt != '\f' && cCharAt != '\r' && cCharAt != ' ') {
                return i6;
            }
            i6++;
        }
        return i10;
    }

    public static /* synthetic */ int indexOfFirstNonAsciiWhitespace$default(String str, int i6, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i6 = 0;
        }
        if ((i11 & 2) != 0) {
            i10 = str.length();
        }
        return indexOfFirstNonAsciiWhitespace(str, i6, i10);
    }

    public static final int indexOfLastNonAsciiWhitespace(String str, int i6, int i10) {
        i.f(str, "<this>");
        int i11 = i10 - 1;
        if (i6 <= i11) {
            while (true) {
                char cCharAt = str.charAt(i11);
                if (cCharAt != '\t' && cCharAt != '\n' && cCharAt != '\f' && cCharAt != '\r' && cCharAt != ' ') {
                    return i11 + 1;
                }
                if (i11 == i6) {
                    break;
                }
                i11--;
            }
        }
        return i6;
    }

    public static /* synthetic */ int indexOfLastNonAsciiWhitespace$default(String str, int i6, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i6 = 0;
        }
        if ((i11 & 2) != 0) {
            i10 = str.length();
        }
        return indexOfLastNonAsciiWhitespace(str, i6, i10);
    }

    public static final int indexOfNonWhitespace(String str, int i6) {
        i.f(str, "<this>");
        int length = str.length();
        while (i6 < length) {
            char cCharAt = str.charAt(i6);
            if (cCharAt != ' ' && cCharAt != '\t') {
                return i6;
            }
            i6++;
        }
        return str.length();
    }

    public static /* synthetic */ int indexOfNonWhitespace$default(String str, int i6, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i6 = 0;
        }
        return indexOfNonWhitespace(str, i6);
    }

    public static final String[] intersect(String[] strArr, String[] strArr2, Comparator<? super String> comparator) {
        i.f(strArr, "<this>");
        i.f(strArr2, "other");
        i.f(comparator, "comparator");
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            int length = strArr2.length;
            int i6 = 0;
            while (true) {
                if (i6 >= length) {
                    break;
                }
                if (comparator.compare(str, strArr2[i6]) == 0) {
                    arrayList.add(str);
                    break;
                }
                i6++;
            }
        }
        return (String[]) arrayList.toArray(new String[0]);
    }

    public static final boolean isCivilized(FileSystem fileSystem, File file) throws IOException {
        i.f(fileSystem, "<this>");
        i.f(file, "file");
        Sink sink = fileSystem.sink(file);
        try {
            fileSystem.delete(file);
            a2.a.r(sink, null);
            return true;
        } catch (IOException unused) {
            a2.a.r(sink, null);
            fileSystem.delete(file);
            return false;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                a2.a.r(sink, th);
                throw th2;
            }
        }
    }

    public static final boolean isHealthy(Socket socket, BufferedSource bufferedSource) throws SocketException {
        i.f(socket, "<this>");
        i.f(bufferedSource, "source");
        try {
            int soTimeout = socket.getSoTimeout();
            try {
                socket.setSoTimeout(1);
                boolean z7 = !bufferedSource.exhausted();
                socket.setSoTimeout(soTimeout);
                return z7;
            } catch (Throwable th) {
                socket.setSoTimeout(soTimeout);
                throw th;
            }
        } catch (SocketTimeoutException unused) {
            return true;
        } catch (IOException unused2) {
            return false;
        }
    }

    public static final boolean isSensitiveHeader(String str) {
        i.f(str, SerializableCookie.NAME);
        return str.equalsIgnoreCase(RtspHeaders.AUTHORIZATION) || str.equalsIgnoreCase(HttpHeaders.HEAD_KEY_COOKIE) || str.equalsIgnoreCase("Proxy-Authorization") || str.equalsIgnoreCase(HttpHeaders.HEAD_KEY_SET_COOKIE);
    }

    public static final void notify(Object obj) {
        i.f(obj, "<this>");
        obj.notify();
    }

    public static final void notifyAll(Object obj) {
        i.f(obj, "<this>");
        obj.notifyAll();
    }

    public static final int parseHexDigit(char c5) {
        if ('0' <= c5 && c5 < ':') {
            return c5 - '0';
        }
        if ('a' <= c5 && c5 < 'g') {
            return c5 - 'W';
        }
        if ('A' > c5 || c5 >= 'G') {
            return -1;
        }
        return c5 - '7';
    }

    public static final String peerName(Socket socket) {
        i.f(socket, "<this>");
        SocketAddress remoteSocketAddress = socket.getRemoteSocketAddress();
        if (!(remoteSocketAddress instanceof InetSocketAddress)) {
            return remoteSocketAddress.toString();
        }
        String hostName = ((InetSocketAddress) remoteSocketAddress).getHostName();
        i.e(hostName, "address.hostName");
        return hostName;
    }

    public static final Charset readBomAsCharset(BufferedSource bufferedSource, Charset charset) throws IOException {
        Charset charsetForName;
        i.f(bufferedSource, "<this>");
        i.f(charset, "default");
        int iSelect = bufferedSource.select(UNICODE_BOMS);
        if (iSelect == -1) {
            return charset;
        }
        if (iSelect == 0) {
            Charset charset2 = StandardCharsets.UTF_8;
            i.e(charset2, "UTF_8");
            return charset2;
        }
        if (iSelect == 1) {
            Charset charset3 = StandardCharsets.UTF_16BE;
            i.e(charset3, "UTF_16BE");
            return charset3;
        }
        if (iSelect == 2) {
            Charset charset4 = StandardCharsets.UTF_16LE;
            i.e(charset4, "UTF_16LE");
            return charset4;
        }
        if (iSelect == 3) {
            Charset charset5 = r9.a.f9611a;
            charsetForName = r9.a.f9613c;
            if (charsetForName == null) {
                charsetForName = Charset.forName("UTF-32BE");
                i.e(charsetForName, "forName(...)");
                r9.a.f9613c = charsetForName;
            }
        } else {
            if (iSelect != 4) {
                throw new AssertionError();
            }
            Charset charset6 = r9.a.f9611a;
            charsetForName = r9.a.f9612b;
            if (charsetForName == null) {
                charsetForName = Charset.forName("UTF-32LE");
                i.e(charsetForName, "forName(...)");
                r9.a.f9612b = charsetForName;
            }
        }
        return charsetForName;
    }

    public static final <T> T readFieldOrNull(Object obj, Class<T> cls, String str) throws IllegalAccessException, NoSuchFieldException, SecurityException, IllegalArgumentException {
        T tCast;
        Object fieldOrNull;
        i.f(obj, "instance");
        i.f(cls, "fieldType");
        i.f(str, "fieldName");
        Class<?> superclass = obj.getClass();
        while (true) {
            tCast = null;
            if (superclass.equals(Object.class)) {
                if (str.equals("delegate") || (fieldOrNull = readFieldOrNull(obj, Object.class, "delegate")) == null) {
                    return null;
                }
                return (T) readFieldOrNull(fieldOrNull, cls, str);
            }
            try {
                Field declaredField = superclass.getDeclaredField(str);
                declaredField.setAccessible(true);
                Object obj2 = declaredField.get(obj);
                if (!cls.isInstance(obj2)) {
                    break;
                }
                tCast = cls.cast(obj2);
                break;
            } catch (NoSuchFieldException unused) {
                superclass = superclass.getSuperclass();
                i.e(superclass, "c.superclass");
            }
        }
        return tCast;
    }

    public static final int readMedium(BufferedSource bufferedSource) throws IOException {
        i.f(bufferedSource, "<this>");
        return and(bufferedSource.readByte(), 255) | (and(bufferedSource.readByte(), 255) << 16) | (and(bufferedSource.readByte(), 255) << 8);
    }

    public static final boolean skipAll(Source source, int i6, TimeUnit timeUnit) throws IOException {
        i.f(source, "<this>");
        i.f(timeUnit, "timeUnit");
        long jNanoTime = System.nanoTime();
        long jDeadlineNanoTime = source.timeout().hasDeadline() ? source.timeout().deadlineNanoTime() - jNanoTime : Long.MAX_VALUE;
        source.timeout().deadlineNanoTime(Math.min(jDeadlineNanoTime, timeUnit.toNanos(i6)) + jNanoTime);
        try {
            Buffer buffer = new Buffer();
            while (source.read(buffer, PlaybackStateCompat.ACTION_PLAY_FROM_URI) != -1) {
                buffer.clear();
            }
            if (jDeadlineNanoTime == Long.MAX_VALUE) {
                source.timeout().clearDeadline();
            } else {
                source.timeout().deadlineNanoTime(jNanoTime + jDeadlineNanoTime);
            }
            return true;
        } catch (InterruptedIOException unused) {
            if (jDeadlineNanoTime == Long.MAX_VALUE) {
                source.timeout().clearDeadline();
            } else {
                source.timeout().deadlineNanoTime(jNanoTime + jDeadlineNanoTime);
            }
            return false;
        } catch (Throwable th) {
            if (jDeadlineNanoTime == Long.MAX_VALUE) {
                source.timeout().clearDeadline();
            } else {
                source.timeout().deadlineNanoTime(jNanoTime + jDeadlineNanoTime);
            }
            throw th;
        }
    }

    public static final ThreadFactory threadFactory(final String str, final boolean z7) {
        i.f(str, SerializableCookie.NAME);
        return new ThreadFactory() { // from class: ca.a
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                return Util.threadFactory$lambda$1(str, z7, runnable);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Thread threadFactory$lambda$1(String str, boolean z7, Runnable runnable) {
        i.f(str, "$name");
        Thread thread = new Thread(runnable, str);
        thread.setDaemon(z7);
        return thread;
    }

    public static final void threadName(String str, a aVar) {
        i.f(str, SerializableCookie.NAME);
        i.f(aVar, "block");
        Thread threadCurrentThread = Thread.currentThread();
        String name = threadCurrentThread.getName();
        threadCurrentThread.setName(str);
        try {
            aVar.invoke();
        } finally {
            threadCurrentThread.setName(name);
        }
    }

    public static final List<Header> toHeaderList(Headers headers) {
        i.f(headers, "<this>");
        h hVarO = c.o(0, headers.size());
        ArrayList arrayList = new ArrayList(x8.l.Q(hVarO));
        Iterator it = hVarO.iterator();
        while (((g) it).f8656c) {
            g gVar = (g) it;
            int i6 = gVar.d;
            if (i6 != gVar.f8655b) {
                gVar.d = gVar.f8654a + i6;
            } else {
                if (!gVar.f8656c) {
                    throw new NoSuchElementException();
                }
                gVar.f8656c = false;
            }
            arrayList.add(new Header(headers.name(i6), headers.value(i6)));
        }
        return arrayList;
    }

    public static final Headers toHeaders(List<Header> list) {
        i.f(list, "<this>");
        Headers.Builder builder = new Headers.Builder();
        for (Header header : list) {
            builder.addLenient$okhttp(header.component1().utf8(), header.component2().utf8());
        }
        return builder.build();
    }

    public static final String toHexString(long j10) {
        String hexString = Long.toHexString(j10);
        i.e(hexString, "toHexString(this)");
        return hexString;
    }

    public static final String toHostHeader(HttpUrl httpUrl, boolean z7) {
        String strHost;
        i.f(httpUrl, "<this>");
        if (f.X(httpUrl.host(), ":")) {
            strHost = "[" + httpUrl.host() + ']';
        } else {
            strHost = httpUrl.host();
        }
        if (!z7 && httpUrl.port() == HttpUrl.Companion.defaultPort(httpUrl.scheme())) {
            return strHost;
        }
        return strHost + ':' + httpUrl.port();
    }

    public static /* synthetic */ String toHostHeader$default(HttpUrl httpUrl, boolean z7, int i6, Object obj) {
        if ((i6 & 1) != 0) {
            z7 = false;
        }
        return toHostHeader(httpUrl, z7);
    }

    public static final <T> List<T> toImmutableList(List<? extends T> list) {
        i.f(list, "<this>");
        List<T> listUnmodifiableList = Collections.unmodifiableList(j.d0(list));
        i.e(listUnmodifiableList, "unmodifiableList(toMutableList())");
        return listUnmodifiableList;
    }

    public static final <K, V> Map<K, V> toImmutableMap(Map<K, ? extends V> map) {
        i.f(map, "<this>");
        if (map.isEmpty()) {
            return s.f11099a;
        }
        Map<K, V> mapUnmodifiableMap = Collections.unmodifiableMap(new LinkedHashMap(map));
        i.e(mapUnmodifiableMap, "{\n    Collections.unmodi…(LinkedHashMap(this))\n  }");
        return mapUnmodifiableMap;
    }

    public static final long toLongOrDefault(String str, long j10) {
        i.f(str, "<this>");
        try {
            return Long.parseLong(str);
        } catch (NumberFormatException unused) {
            return j10;
        }
    }

    public static final int toNonNegativeInt(String str, int i6) throws NumberFormatException {
        if (str != null) {
            try {
                long j10 = Long.parseLong(str);
                if (j10 > 2147483647L) {
                    return Integer.MAX_VALUE;
                }
                if (j10 < 0) {
                    return 0;
                }
                return (int) j10;
            } catch (NumberFormatException unused) {
            }
        }
        return i6;
    }

    public static final String trimSubstring(String str, int i6, int i10) {
        i.f(str, "<this>");
        int iIndexOfFirstNonAsciiWhitespace = indexOfFirstNonAsciiWhitespace(str, i6, i10);
        String strSubstring = str.substring(iIndexOfFirstNonAsciiWhitespace, indexOfLastNonAsciiWhitespace(str, iIndexOfFirstNonAsciiWhitespace, i10));
        i.e(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        return strSubstring;
    }

    public static /* synthetic */ String trimSubstring$default(String str, int i6, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i6 = 0;
        }
        if ((i11 & 2) != 0) {
            i10 = str.length();
        }
        return trimSubstring(str, i6, i10);
    }

    public static final void wait(Object obj) throws InterruptedException {
        i.f(obj, "<this>");
        obj.wait();
    }

    public static final Throwable withSuppressed(Exception exc, List<? extends Exception> list) {
        i.f(exc, "<this>");
        i.f(list, "suppressed");
        Iterator<? extends Exception> it = list.iterator();
        while (it.hasNext()) {
            l5.a.a(exc, it.next());
        }
        return exc;
    }

    public static final void writeMedium(BufferedSink bufferedSink, int i6) throws IOException {
        i.f(bufferedSink, "<this>");
        bufferedSink.writeByte((i6 >>> 16) & 255);
        bufferedSink.writeByte((i6 >>> 8) & 255);
        bufferedSink.writeByte(i6 & 255);
    }

    public static final int and(short s10, int i6) {
        return s10 & i6;
    }

    public static final int delimiterOffset(String str, char c5, int i6, int i10) {
        i.f(str, "<this>");
        while (i6 < i10) {
            if (str.charAt(i6) == c5) {
                return i6;
            }
            i6++;
        }
        return i10;
    }

    public static /* synthetic */ int delimiterOffset$default(String str, char c5, int i6, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i6 = 0;
        }
        if ((i11 & 4) != 0) {
            i10 = str.length();
        }
        return delimiterOffset(str, c5, i6, i10);
    }

    public static final String toHexString(int i6) {
        String hexString = Integer.toHexString(i6);
        i.e(hexString, "toHexString(this)");
        return hexString;
    }

    public static final long and(int i6, long j10) {
        return i6 & j10;
    }

    public static final void closeQuietly(Socket socket) throws IOException {
        i.f(socket, "<this>");
        try {
            socket.close();
        } catch (AssertionError e5) {
            throw e5;
        } catch (RuntimeException e10) {
            if (!i.a(e10.getMessage(), "bio == null")) {
                throw e10;
            }
        } catch (Exception unused) {
        }
    }

    public static final void closeQuietly(ServerSocket serverSocket) throws IOException {
        i.f(serverSocket, "<this>");
        try {
            serverSocket.close();
        } catch (RuntimeException e5) {
            throw e5;
        } catch (Exception unused) {
        }
    }

    public static final int skipAll(Buffer buffer, byte b8) throws EOFException {
        i.f(buffer, "<this>");
        int i6 = 0;
        while (!buffer.exhausted() && buffer.getByte(0L) == b8) {
            i6++;
            buffer.readByte();
        }
        return i6;
    }
}
