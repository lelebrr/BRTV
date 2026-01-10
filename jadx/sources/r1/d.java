package r1;

import android.app.Application;
import android.content.SharedPreferences;
import android.util.Log;
import ea.q;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.zip.CRC32;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipOutputStream;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d implements Closeable {

    /* renamed from: a, reason: collision with root package name */
    public final File f9454a;

    /* renamed from: b, reason: collision with root package name */
    public final long f9455b;

    /* renamed from: c, reason: collision with root package name */
    public final File f9456c;
    public final RandomAccessFile d;

    /* renamed from: e, reason: collision with root package name */
    public final FileChannel f9457e;
    public final FileLock f;

    public d(File file, File file2) throws Throwable {
        Log.i("MultiDex", "MultiDexExtractor(" + file.getPath() + ", " + file2.getPath() + ")");
        this.f9454a = file;
        this.f9456c = file2;
        this.f9455b = c(file);
        File file3 = new File(file2, "MultiDex.lock");
        RandomAccessFile randomAccessFile = new RandomAccessFile(file3, "rw");
        this.d = randomAccessFile;
        try {
            FileChannel channel = randomAccessFile.getChannel();
            this.f9457e = channel;
            try {
                Log.i("MultiDex", "Blocking on lock " + file3.getPath());
                this.f = channel.lock();
                Log.i("MultiDex", file3.getPath() + " locked");
            } catch (IOException e5) {
                e = e5;
                a(this.f9457e);
                throw e;
            } catch (Error e10) {
                e = e10;
                a(this.f9457e);
                throw e;
            } catch (RuntimeException e11) {
                e = e11;
                a(this.f9457e);
                throw e;
            }
        } catch (IOException e12) {
            e = e12;
            a(this.d);
            throw e;
        } catch (Error e13) {
            e = e13;
            a(this.d);
            throw e;
        } catch (RuntimeException e14) {
            e = e14;
            a(this.d);
            throw e;
        }
    }

    public static void a(Closeable closeable) throws IOException {
        try {
            closeable.close();
        } catch (IOException e5) {
            Log.w("MultiDex", "Failed to close resource", e5);
        }
    }

    public static void b(ZipFile zipFile, ZipEntry zipEntry, c cVar, String str) throws IOException {
        InputStream inputStream = zipFile.getInputStream(zipEntry);
        File fileCreateTempFile = File.createTempFile(q.p("tmp-", str), ".zip", cVar.getParentFile());
        Log.i("MultiDex", "Extracting " + fileCreateTempFile.getPath());
        try {
            ZipOutputStream zipOutputStream = new ZipOutputStream(new BufferedOutputStream(new FileOutputStream(fileCreateTempFile)));
            try {
                ZipEntry zipEntry2 = new ZipEntry("classes.dex");
                zipEntry2.setTime(zipEntry.getTime());
                zipOutputStream.putNextEntry(zipEntry2);
                byte[] bArr = new byte[16384];
                for (int i6 = inputStream.read(bArr); i6 != -1; i6 = inputStream.read(bArr)) {
                    zipOutputStream.write(bArr, 0, i6);
                }
                zipOutputStream.closeEntry();
                zipOutputStream.close();
                if (!fileCreateTempFile.setReadOnly()) {
                    throw new IOException("Failed to mark readonly \"" + fileCreateTempFile.getAbsolutePath() + "\" (tmp of \"" + cVar.getAbsolutePath() + "\")");
                }
                Log.i("MultiDex", "Renaming to " + cVar.getPath());
                if (fileCreateTempFile.renameTo(cVar)) {
                    a(inputStream);
                    fileCreateTempFile.delete();
                    return;
                }
                throw new IOException("Failed to rename \"" + fileCreateTempFile.getAbsolutePath() + "\" to \"" + cVar.getAbsolutePath() + "\"");
            } catch (Throwable th) {
                zipOutputStream.close();
                throw th;
            }
        } catch (Throwable th2) {
            a(inputStream);
            fileCreateTempFile.delete();
            throw th2;
        }
    }

    public static long c(File file) throws IOException {
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "r");
        try {
            e eVarT = l5.a.t(randomAccessFile);
            CRC32 crc32 = new CRC32();
            long j10 = eVarT.f9459b;
            randomAccessFile.seek(eVarT.f9458a);
            byte[] bArr = new byte[16384];
            int i6 = randomAccessFile.read(bArr, 0, (int) Math.min(16384L, j10));
            while (i6 != -1) {
                crc32.update(bArr, 0, i6);
                j10 -= i6;
                if (j10 == 0) {
                    break;
                }
                i6 = randomAccessFile.read(bArr, 0, (int) Math.min(16384L, j10));
            }
            long value = crc32.getValue();
            randomAccessFile.close();
            return value == -1 ? value - 1 : value;
        } catch (Throwable th) {
            randomAccessFile.close();
            throw th;
        }
    }

    public static void g(Application application, long j10, long j11, ArrayList arrayList) {
        SharedPreferences.Editor editorEdit = application.getSharedPreferences("multidex.version", 4).edit();
        editorEdit.putLong("timestamp", j10);
        editorEdit.putLong("crc", j11);
        editorEdit.putInt("dex.number", arrayList.size() + 1);
        Iterator it = arrayList.iterator();
        int i6 = 2;
        while (it.hasNext()) {
            c cVar = (c) it.next();
            editorEdit.putLong(a.e.n(i6, "dex.crc."), cVar.f9453a);
            editorEdit.putLong("dex.time." + i6, cVar.lastModified());
            i6++;
        }
        editorEdit.commit();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f.release();
        this.f9457e.close();
        this.d.close();
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x007d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.util.ArrayList d(android.app.Application r14, boolean r15) throws java.lang.Throwable {
        /*
            r13 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "MultiDexExtractor.load("
            r0.<init>(r1)
            java.io.File r1 = r13.f9454a
            java.lang.String r2 = r1.getPath()
            r0.append(r2)
            java.lang.String r2 = ", "
            r0.append(r2)
            r0.append(r15)
            java.lang.String r2 = ", )"
            r0.append(r2)
            java.lang.String r0 = r0.toString()
            java.lang.String r2 = "MultiDex"
            android.util.Log.i(r2, r0)
            java.nio.channels.FileLock r0 = r13.f
            boolean r0 = r0.isValid()
            if (r0 == 0) goto Lbb
            r3 = 1
            r5 = -1
            if (r15 != 0) goto L7d
            java.lang.String r0 = "multidex.version"
            r7 = 4
            android.content.SharedPreferences r0 = r14.getSharedPreferences(r0, r7)
            java.lang.String r7 = "timestamp"
            long r7 = r0.getLong(r7, r5)
            long r9 = r1.lastModified()
            int r11 = (r9 > r5 ? 1 : (r9 == r5 ? 0 : -1))
            if (r11 != 0) goto L4a
            long r9 = r9 - r3
        L4a:
            int r11 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1))
            if (r11 != 0) goto L7d
            java.lang.String r7 = "crc"
            long r7 = r0.getLong(r7, r5)
            long r9 = r13.f9455b
            int r0 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1))
            if (r0 == 0) goto L5b
            goto L7d
        L5b:
            java.util.ArrayList r14 = r13.e(r14)     // Catch: java.io.IOException -> L60
            goto La0
        L60:
            r15 = move-exception
            java.lang.String r0 = "Failed to reload existing extracted secondary dex files, falling back to fresh extraction"
            android.util.Log.w(r2, r0, r15)
            java.util.ArrayList r15 = r13.f()
            long r0 = r1.lastModified()
            int r7 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1))
            if (r7 != 0) goto L73
            long r0 = r0 - r3
        L73:
            r8 = r0
            long r10 = r13.f9455b
            r7 = r14
            r12 = r15
            g(r7, r8, r10, r12)
        L7b:
            r14 = r15
            goto La0
        L7d:
            if (r15 == 0) goto L85
            java.lang.String r15 = "Forced extraction must be performed."
            android.util.Log.i(r2, r15)
            goto L8a
        L85:
            java.lang.String r15 = "Detected that extraction must be performed."
            android.util.Log.i(r2, r15)
        L8a:
            java.util.ArrayList r15 = r13.f()
            long r0 = r1.lastModified()
            int r7 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1))
            if (r7 != 0) goto L97
            long r0 = r0 - r3
        L97:
            r8 = r0
            long r10 = r13.f9455b
            r7 = r14
            r12 = r15
            g(r7, r8, r10, r12)
            goto L7b
        La0:
            java.lang.StringBuilder r15 = new java.lang.StringBuilder
            java.lang.String r0 = "load found "
            r15.<init>(r0)
            int r0 = r14.size()
            r15.append(r0)
            java.lang.String r0 = " secondary dex files"
            r15.append(r0)
            java.lang.String r15 = r15.toString()
            android.util.Log.i(r2, r15)
            return r14
        Lbb:
            java.lang.IllegalStateException r14 = new java.lang.IllegalStateException
            java.lang.String r15 = "MultiDexExtractor was closed"
            r14.<init>(r15)
            throw r14
        */
        throw new UnsupportedOperationException("Method not decompiled: r1.d.d(android.app.Application, boolean):java.util.ArrayList");
    }

    public final ArrayList e(Application application) throws IOException {
        Log.i("MultiDex", "loading existing secondary dex files");
        String str = this.f9454a.getName() + ".classes";
        SharedPreferences sharedPreferences = application.getSharedPreferences("multidex.version", 4);
        int i6 = sharedPreferences.getInt("dex.number", 1);
        ArrayList arrayList = new ArrayList(i6 - 1);
        for (int i10 = 2; i10 <= i6; i10++) {
            c cVar = new c(this.f9456c, str + i10 + ".zip");
            if (!cVar.isFile()) {
                throw new IOException("Missing extracted secondary dex file '" + cVar.getPath() + "'");
            }
            cVar.f9453a = c(cVar);
            long j10 = sharedPreferences.getLong("dex.crc." + i10, -1L);
            long j11 = sharedPreferences.getLong("dex.time." + i10, -1L);
            long jLastModified = cVar.lastModified();
            if (j11 != jLastModified || j10 != cVar.f9453a) {
                throw new IOException("Invalid extracted dex: " + cVar + " (key \"\"), expected modification time: " + j11 + ", modification time: " + jLastModified + ", expected crc: " + j10 + ", file crc: " + cVar.f9453a);
            }
            arrayList.add(cVar);
        }
        return arrayList;
    }

    public final ArrayList f() throws Throwable {
        Throwable th;
        boolean z7;
        StringBuilder sb = new StringBuilder();
        File file = this.f9454a;
        sb.append(file.getName());
        sb.append(".classes");
        String string = sb.toString();
        b bVar = new b();
        File file2 = this.f9456c;
        File[] fileArrListFiles = file2.listFiles(bVar);
        String str = "MultiDex";
        if (fileArrListFiles == null) {
            Log.w("MultiDex", "Failed to list secondary dex dir content (" + file2.getPath() + ").");
        } else {
            for (File file3 : fileArrListFiles) {
                Log.i("MultiDex", "Trying to delete old file " + file3.getPath() + " of size " + file3.length());
                if (file3.delete()) {
                    Log.i("MultiDex", "Deleted old file " + file3.getPath());
                } else {
                    Log.w("MultiDex", "Failed to delete old file " + file3.getPath());
                }
            }
        }
        ArrayList arrayList = new ArrayList();
        ZipFile zipFile = new ZipFile(file);
        try {
            ZipEntry entry = zipFile.getEntry("classes2.dex");
            int i6 = 2;
            while (entry != null) {
                c cVar = new c(file2, string + i6 + ".zip");
                arrayList.add(cVar);
                Log.i(str, "Extraction is needed for file " + cVar);
                int i10 = 0;
                boolean z10 = false;
                while (i10 < 3 && !z10) {
                    int i11 = i10 + 1;
                    b(zipFile, entry, cVar, string);
                    String str2 = str;
                    try {
                        cVar.f9453a = c(cVar);
                        z7 = true;
                        str = str2;
                    } catch (IOException e5) {
                        try {
                            str = str2;
                            Log.w(str, "Failed to read crc from " + cVar.getAbsolutePath(), e5);
                            z7 = false;
                        } catch (Throwable th2) {
                            th = th2;
                            str = str2;
                            th = th;
                            try {
                                zipFile.close();
                                throw th;
                            } catch (IOException e10) {
                                Log.w(str, "Failed to close resource", e10);
                                throw th;
                            }
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        str = str2;
                        zipFile.close();
                        throw th;
                    }
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Extraction ");
                    sb2.append(z7 ? "succeeded" : "failed");
                    sb2.append(" '");
                    sb2.append(cVar.getAbsolutePath());
                    sb2.append("': length ");
                    ZipEntry zipEntry = entry;
                    String str3 = string;
                    sb2.append(cVar.length());
                    sb2.append(" - crc: ");
                    sb2.append(cVar.f9453a);
                    Log.i(str, sb2.toString());
                    if (!z7) {
                        cVar.delete();
                        if (cVar.exists()) {
                            Log.w(str, "Failed to delete corrupted secondary dex '" + cVar.getPath() + "'");
                        }
                    }
                    string = str3;
                    entry = zipEntry;
                    z10 = z7;
                    i10 = i11;
                }
                String str4 = string;
                if (!z10) {
                    throw new IOException("Could not create zip file " + cVar.getAbsolutePath() + " for secondary dex (" + i6 + ")");
                }
                i6++;
                entry = zipFile.getEntry("classes" + i6 + ".dex");
                string = str4;
            }
            try {
                zipFile.close();
            } catch (IOException e11) {
                Log.w(str, "Failed to close resource", e11);
            }
            return arrayList;
        } catch (Throwable th4) {
            th = th4;
        }
    }
}
