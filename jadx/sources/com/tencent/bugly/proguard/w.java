package com.tencent.bugly.proguard;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class w {

    /* renamed from: a, reason: collision with root package name */
    public static boolean f5969a;

    /* renamed from: b, reason: collision with root package name */
    private static w f5970b;

    /* renamed from: c, reason: collision with root package name */
    private static x f5971c;

    private w(Context context, List<o> list) {
        f5971c = new x(context, list);
    }

    private synchronized boolean b(y yVar) {
        ContentValues contentValuesD;
        SQLiteDatabase writableDatabase = null;
        try {
            writableDatabase = f5971c.getWritableDatabase();
            if (writableDatabase == null || (contentValuesD = d(yVar)) == null) {
                return false;
            }
            long jReplace = writableDatabase.replace("t_pf", "_id", contentValuesD);
            if (jReplace < 0) {
                if (f5969a) {
                    writableDatabase.close();
                }
                return false;
            }
            al.c("[Database] insert %s success.", "t_pf");
            yVar.f5975a = jReplace;
            if (f5969a) {
                writableDatabase.close();
            }
            return true;
        } catch (Throwable th) {
            try {
                if (!al.a(th)) {
                    th.printStackTrace();
                }
                if (f5969a && writableDatabase != null) {
                    writableDatabase.close();
                }
                return false;
            } finally {
                if (f5969a && writableDatabase != null) {
                    writableDatabase.close();
                }
            }
        }
    }

    private static ContentValues c(y yVar) {
        if (yVar == null) {
            return null;
        }
        try {
            ContentValues contentValues = new ContentValues();
            long j10 = yVar.f5975a;
            if (j10 > 0) {
                contentValues.put("_id", Long.valueOf(j10));
            }
            contentValues.put("_tp", Integer.valueOf(yVar.f5976b));
            contentValues.put("_pc", yVar.f5977c);
            contentValues.put("_th", yVar.d);
            contentValues.put("_tm", Long.valueOf(yVar.f5978e));
            byte[] bArr = yVar.f5979g;
            if (bArr != null) {
                contentValues.put("_dt", bArr);
            }
            return contentValues;
        } catch (Throwable th) {
            if (!al.a(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }

    private static ContentValues d(y yVar) {
        if (yVar != null && !ap.b(yVar.f)) {
            try {
                ContentValues contentValues = new ContentValues();
                long j10 = yVar.f5975a;
                if (j10 > 0) {
                    contentValues.put("_id", Long.valueOf(j10));
                }
                contentValues.put("_tp", yVar.f);
                contentValues.put("_tm", Long.valueOf(yVar.f5978e));
                byte[] bArr = yVar.f5979g;
                if (bArr != null) {
                    contentValues.put("_dt", bArr);
                }
                return contentValues;
            } catch (Throwable th) {
                if (!al.a(th)) {
                    th.printStackTrace();
                }
            }
        }
        return null;
    }

    public static synchronized w a(Context context, List<o> list) {
        try {
            if (f5970b == null) {
                f5970b = new w(context, list);
            }
        } catch (Throwable th) {
            throw th;
        }
        return f5970b;
    }

    public static synchronized w a() {
        return f5970b;
    }

    public final Cursor a(String str, String[] strArr, String str2) {
        return a(str, strArr, str2, (String) null, (String) null);
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x00ae A[Catch: all -> 0x002a, PHI: r2
  0x00ae: PHI (r2v2 android.database.sqlite.SQLiteDatabase) = (r2v1 android.database.sqlite.SQLiteDatabase), (r2v4 android.database.sqlite.SQLiteDatabase) binds: [B:57:0x00ca, B:42:0x00ac] A[DONT_GENERATE, DONT_INLINE], TRY_LEAVE, TryCatch #4 {all -> 0x002a, blocks: (B:10:0x0026, B:13:0x002d, B:15:0x0031, B:33:0x0099, B:35:0x00a0, B:54:0x00c3, B:55:0x00c6, B:43:0x00ae, B:62:0x00d1, B:63:0x00d4, B:66:0x00da, B:67:0x00dd, B:40:0x00a8, B:47:0x00b5, B:49:0x00bb), top: B:78:0x0003, inners: #5 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private synchronized java.util.List<com.tencent.bugly.proguard.y> c(int r13) {
        /*
            Method dump skipped, instructions count: 224
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.proguard.w.c(int):java.util.List");
    }

    public final Cursor a(String str, String[] strArr, String str2, String str3, String str4) {
        return a(false, str, strArr, str2, null, null, null, str3, str4, null);
    }

    public final int a(String str, String str2) {
        return a(str, str2, (String[]) null, (v) null);
    }

    public final synchronized long a(String str, ContentValues contentValues, v vVar) {
        long j10;
        j10 = -1;
        SQLiteDatabase writableDatabase = null;
        try {
            writableDatabase = f5971c.getWritableDatabase();
            if (writableDatabase != null && contentValues != null) {
                long jReplace = writableDatabase.replace(str, "_id", contentValues);
                if (jReplace >= 0) {
                    al.c("[Database] insert %s success.", str);
                } else {
                    al.d("[Database] replace %s error.", str);
                }
                j10 = jReplace;
            }
        } catch (Throwable th) {
            try {
                if (!al.a(th)) {
                    th.printStackTrace();
                }
                if (f5969a && 0 != 0) {
                }
            } finally {
                if (f5969a && 0 != 0) {
                    writableDatabase.close();
                }
            }
        }
        return j10;
    }

    public final synchronized void b(int i6) {
        String strConcat;
        SQLiteDatabase writableDatabase = f5971c.getWritableDatabase();
        if (writableDatabase != null) {
            if (i6 >= 0) {
                try {
                    strConcat = "_tp = ".concat(String.valueOf(i6));
                } catch (Throwable th) {
                    try {
                        if (!al.a(th)) {
                            th.printStackTrace();
                        }
                        if (f5969a) {
                            writableDatabase.close();
                            return;
                        }
                    } finally {
                        if (f5969a) {
                            writableDatabase.close();
                        }
                    }
                }
            } else {
                strConcat = null;
            }
            al.c("[Database] deleted %s data %d", "t_lr", Integer.valueOf(writableDatabase.delete("t_lr", strConcat, null)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized Cursor a(boolean z7, String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5, String str6, v vVar) {
        Cursor cursorQuery;
        cursorQuery = null;
        try {
            SQLiteDatabase writableDatabase = f5971c.getWritableDatabase();
            if (writableDatabase != null) {
                cursorQuery = writableDatabase.query(z7, str, strArr, str2, strArr2, str3, str4, str5, str6);
            }
        } finally {
            try {
                return cursorQuery;
            } finally {
            }
        }
        return cursorQuery;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized int a(String str, String str2, String[] strArr, v vVar) {
        int iDelete;
        SQLiteDatabase writableDatabase = null;
        try {
            writableDatabase = f5971c.getWritableDatabase();
            iDelete = writableDatabase != null ? writableDatabase.delete(str, str2, strArr) : 0;
        } catch (Throwable th) {
            try {
                if (!al.a(th)) {
                    th.printStackTrace();
                }
                if (f5969a && writableDatabase != null) {
                }
            } finally {
                if (f5969a && writableDatabase != null) {
                    writableDatabase.close();
                }
            }
        }
        return iDelete;
    }

    private static y b(Cursor cursor) {
        if (cursor == null) {
            return null;
        }
        try {
            y yVar = new y();
            yVar.f5975a = cursor.getLong(cursor.getColumnIndex("_id"));
            yVar.f5978e = cursor.getLong(cursor.getColumnIndex("_tm"));
            yVar.f = cursor.getString(cursor.getColumnIndex("_tp"));
            yVar.f5979g = cursor.getBlob(cursor.getColumnIndex("_dt"));
            return yVar;
        } catch (Throwable th) {
            if (!al.a(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }

    public final boolean a(int i6, String str, byte[] bArr, boolean z7) {
        if (!z7) {
            q0 q0Var = new q0(this);
            q0Var.f5942b = i6;
            q0Var.f5943c = str;
            q0Var.d = bArr;
            ak.a().a(q0Var);
            return true;
        }
        return a(i6, str, bArr, (v) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(int i6, String str, byte[] bArr, v vVar) {
        try {
            y yVar = new y();
            yVar.f5975a = i6;
            yVar.f = str;
            yVar.f5978e = System.currentTimeMillis();
            yVar.f5979g = bArr;
            return b(yVar);
        } catch (Throwable th) {
            if (!al.a(th)) {
                th.printStackTrace();
            }
            return false;
        }
    }

    public final Map<String, byte[]> a(int i6, v vVar) {
        HashMap map = null;
        try {
            List<y> listC = c(i6);
            if (listC == null) {
                return null;
            }
            HashMap map2 = new HashMap();
            try {
                for (y yVar : listC) {
                    byte[] bArr = yVar.f5979g;
                    if (bArr != null) {
                        map2.put(yVar.f, bArr);
                    }
                }
                return map2;
            } catch (Throwable th) {
                th = th;
                map = map2;
                if (al.a(th)) {
                    return map;
                }
                th.printStackTrace();
                return map;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public final synchronized boolean a(y yVar) {
        ContentValues contentValuesC;
        SQLiteDatabase writableDatabase = null;
        try {
            writableDatabase = f5971c.getWritableDatabase();
            if (writableDatabase == null || (contentValuesC = c(yVar)) == null) {
                return false;
            }
            long jReplace = writableDatabase.replace("t_lr", "_id", contentValuesC);
            if (jReplace >= 0) {
                al.c("[Database] insert %s success.", "t_lr");
                yVar.f5975a = jReplace;
                if (f5969a) {
                    writableDatabase.close();
                }
                return true;
            }
            if (f5969a) {
                writableDatabase.close();
            }
            return false;
        } catch (Throwable th) {
            try {
                if (!al.a(th)) {
                    th.printStackTrace();
                }
                if (f5969a && writableDatabase != null) {
                    writableDatabase.close();
                }
                return false;
            } finally {
                if (f5969a && writableDatabase != null) {
                    writableDatabase.close();
                }
            }
        }
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00b2 A[Catch: all -> 0x00b6, TRY_LEAVE, TryCatch #2 {all -> 0x00b6, blocks: (B:43:0x00ac, B:45:0x00b2), top: B:67:0x00ac, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00ba A[Catch: all -> 0x0032, TRY_ENTER, TryCatch #1 {all -> 0x0032, blocks: (B:4:0x0002, B:15:0x002e, B:18:0x0035, B:20:0x0039, B:38:0x00a0, B:40:0x00a7, B:50:0x00ba, B:51:0x00bd, B:53:0x00c1, B:55:0x00c7, B:56:0x00ca, B:58:0x00ce, B:59:0x00d1, B:43:0x00ac, B:45:0x00b2), top: B:66:0x0002, inners: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00c1 A[Catch: all -> 0x0032, TryCatch #1 {all -> 0x0032, blocks: (B:4:0x0002, B:15:0x002e, B:18:0x0035, B:20:0x0039, B:38:0x00a0, B:40:0x00a7, B:50:0x00ba, B:51:0x00bd, B:53:0x00c1, B:55:0x00c7, B:56:0x00ca, B:58:0x00ce, B:59:0x00d1, B:43:0x00ac, B:45:0x00b2), top: B:66:0x0002, inners: #2 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final synchronized java.util.List<com.tencent.bugly.proguard.y> a(int r13) {
        /*
            Method dump skipped, instructions count: 214
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.proguard.w.a(int):java.util.List");
    }

    public final synchronized void a(List<y> list) {
        if (list != null) {
            try {
                if (list.size() != 0) {
                    SQLiteDatabase writableDatabase = f5971c.getWritableDatabase();
                    if (writableDatabase != null) {
                        StringBuilder sb = new StringBuilder();
                        for (y yVar : list) {
                            sb.append(" or _id = ");
                            sb.append(yVar.f5975a);
                        }
                        String string = sb.toString();
                        if (string.length() > 0) {
                            string = string.substring(4);
                        }
                        sb.setLength(0);
                        try {
                            al.c("[Database] deleted %s data %d", "t_lr", Integer.valueOf(writableDatabase.delete("t_lr", string, null)));
                        } catch (Throwable th) {
                            try {
                                if (!al.a(th)) {
                                    th.printStackTrace();
                                }
                                if (f5969a) {
                                    writableDatabase.close();
                                }
                            } finally {
                                if (f5969a) {
                                    writableDatabase.close();
                                }
                            }
                        }
                    }
                }
            } finally {
            }
        }
    }

    private static y a(Cursor cursor) {
        if (cursor == null) {
            return null;
        }
        try {
            y yVar = new y();
            yVar.f5975a = cursor.getLong(cursor.getColumnIndex("_id"));
            yVar.f5976b = cursor.getInt(cursor.getColumnIndex("_tp"));
            yVar.f5977c = cursor.getString(cursor.getColumnIndex("_pc"));
            yVar.d = cursor.getString(cursor.getColumnIndex("_th"));
            yVar.f5978e = cursor.getLong(cursor.getColumnIndex("_tm"));
            yVar.f5979g = cursor.getBlob(cursor.getColumnIndex("_dt"));
            return yVar;
        } catch (Throwable th) {
            if (!al.a(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized boolean a(int i6, String str, v vVar) {
        String strConcat;
        boolean z7 = false;
        synchronized (this) {
            SQLiteDatabase sQLiteDatabase = null;
            try {
                SQLiteDatabase writableDatabase = f5971c.getWritableDatabase();
                if (writableDatabase != null) {
                    try {
                        if (ap.b(str)) {
                            strConcat = "_id = ".concat(String.valueOf(i6));
                        } else {
                            strConcat = "_id = " + i6 + " and _tp = \"" + str + "\"";
                        }
                        int iDelete = writableDatabase.delete("t_pf", strConcat, null);
                        al.c("[Database] deleted %s data %d", "t_pf", Integer.valueOf(iDelete));
                        z7 = iDelete > 0;
                    } catch (Throwable th) {
                        th = th;
                        sQLiteDatabase = writableDatabase;
                        try {
                            if (!al.a(th)) {
                                th.printStackTrace();
                            }
                            return z7;
                        } finally {
                            if (f5969a && sQLiteDatabase != null) {
                                sQLiteDatabase.close();
                            }
                        }
                    }
                }
                if (f5969a && writableDatabase != null) {
                    writableDatabase.close();
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
        return z7;
    }
}
