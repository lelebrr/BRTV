package androidx.media3.exoplayer.analytics;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.analytics.AnalyticsListener;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class x implements ListenerSet.Event, j4.b, i4.e {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ long f2192a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f2193b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f2194c;

    public /* synthetic */ x(long j10, Object obj, Object obj2) {
        this.f2193b = obj;
        this.f2194c = obj2;
        this.f2192a = j10;
    }

    @Override // i4.e
    public Object apply(Object obj) throws SQLException {
        SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
        int i6 = ((e4.c) this.f2194c).f6557a;
        String string = Integer.toString(i6);
        String str = (String) this.f2193b;
        Cursor cursorRawQuery = sQLiteDatabase.rawQuery("SELECT 1 FROM log_event_dropped WHERE log_source = ? AND reason = ?", new String[]{str, string});
        try {
            boolean z7 = cursorRawQuery.getCount() > 0;
            cursorRawQuery.close();
            long j10 = this.f2192a;
            if (z7) {
                sQLiteDatabase.execSQL("UPDATE log_event_dropped SET events_dropped_count = events_dropped_count + " + j10 + " WHERE log_source = ? AND reason = ?", new String[]{str, Integer.toString(i6)});
            } else {
                ContentValues contentValues = new ContentValues();
                contentValues.put("log_source", str);
                contentValues.put("reason", Integer.valueOf(i6));
                contentValues.put("events_dropped_count", Long.valueOf(j10));
                sQLiteDatabase.insert("log_event_dropped", null, contentValues);
            }
            return null;
        } catch (Throwable th) {
            cursorRawQuery.close();
            throw th;
        }
    }

    @Override // j4.b
    public Object execute() {
        h4.i iVar = (h4.i) this.f2193b;
        long jC = iVar.f7261g.c() + this.f2192a;
        i4.g gVar = (i4.g) iVar.f7259c;
        a4.j jVar = (a4.j) this.f2194c;
        gVar.getClass();
        gVar.c(new androidx.media3.exoplayer.upstream.experimental.a(jC, jVar));
        return null;
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        ((AnalyticsListener) obj).onRenderedFirstFrame((AnalyticsListener.EventTime) this.f2193b, this.f2194c, this.f2192a);
    }
}
