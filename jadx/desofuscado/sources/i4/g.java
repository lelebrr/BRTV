package i4;

import a4.j;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.os.SystemClock;
import android.util.Base64;
import androidx.media3.exoplayer.analytics.x;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class g implements d, j4.c, c {
    public static final x3.b f = new x3.b("proto");

    /* renamed from: a, reason: collision with root package name */
    public final i f7349a;

    /* renamed from: b, reason: collision with root package name */
    public final k4.a f7350b;

    /* renamed from: c, reason: collision with root package name */
    public final k4.a f7351c;
    public final a d;

    /* renamed from: e, reason: collision with root package name */
    public final c4.a f7352e;

    public g(k4.a aVar, k4.a aVar2, a aVar3, i iVar, c4.a aVar4) {
        this.f7349a = iVar;
        this.f7350b = aVar;
        this.f7351c = aVar2;
        this.d = aVar3;
        this.f7352e = aVar4;
    }

    public static Long b(SQLiteDatabase sQLiteDatabase, j jVar) {
        StringBuilder sb = new StringBuilder("backend_name = ? and priority = ?");
        ArrayList arrayList = new ArrayList(Arrays.asList(jVar.f129a, String.valueOf(l4.a.a(jVar.f131c))));
        byte[] bArr = jVar.f130b;
        if (bArr != null) {
            sb.append(" and extras = ?");
            arrayList.add(Base64.encodeToString(bArr, 0));
        } else {
            sb.append(" and extras is null");
        }
        Cursor cursorQuery = sQLiteDatabase.query("transport_contexts", new String[]{"_id"}, sb.toString(), (String[]) arrayList.toArray(new String[0]), null, null, null);
        try {
            return !cursorQuery.moveToNext() ? null : Long.valueOf(cursorQuery.getLong(0));
        } finally {
            cursorQuery.close();
        }
    }

    public static String f(Iterable iterable) {
        StringBuilder sb = new StringBuilder("(");
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            sb.append(((b) it.next()).f7344a);
            if (it.hasNext()) {
                sb.append(',');
            }
        }
        sb.append(')');
        return sb.toString();
    }

    public static Object g(Cursor cursor, e eVar) {
        try {
            return eVar.apply(cursor);
        } finally {
            cursor.close();
        }
    }

    public final SQLiteDatabase a() {
        i iVar = this.f7349a;
        Objects.requireNonNull(iVar);
        k4.a aVar = this.f7351c;
        long jC = aVar.c();
        while (true) {
            try {
                return iVar.getWritableDatabase();
            } catch (SQLiteDatabaseLockedException e5) {
                if (aVar.c() >= this.d.f7342c + jC) {
                    throw new j4.a("Timed out while trying to open db.", e5);
                }
                SystemClock.sleep(50L);
            }
        }
    }

    public final Object c(e eVar) {
        SQLiteDatabase sQLiteDatabaseA = a();
        sQLiteDatabaseA.beginTransaction();
        try {
            Object objApply = eVar.apply(sQLiteDatabaseA);
            sQLiteDatabaseA.setTransactionSuccessful();
            return objApply;
        } finally {
            sQLiteDatabaseA.endTransaction();
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f7349a.close();
    }

    public final void d(long j10, e4.c cVar, String str) {
        c(new x(j10, str, cVar));
    }

    public final Object e(j4.b bVar) {
        SQLiteDatabase sQLiteDatabaseA = a();
        k4.a aVar = this.f7351c;
        long jC = aVar.c();
        while (true) {
            try {
                sQLiteDatabaseA.beginTransaction();
                try {
                    Object objExecute = bVar.execute();
                    sQLiteDatabaseA.setTransactionSuccessful();
                    return objExecute;
                } finally {
                    sQLiteDatabaseA.endTransaction();
                }
            } catch (SQLiteDatabaseLockedException e5) {
                if (aVar.c() >= this.d.f7342c + jC) {
                    throw new j4.a("Timed out while trying to acquire the lock.", e5);
                }
                SystemClock.sleep(50L);
            }
        }
    }
}
