package androidx.media3.exoplayer.upstream.experimental;

import a4.j;
import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import androidx.media3.common.util.Clock;
import androidx.media3.exoplayer.upstream.experimental.SlidingWeightedAverageBandwidthStatistic;
import com.lzy.okgo.model.Progress;
import i4.e;
import java.util.Deque;
import x3.c;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class a implements SlidingWeightedAverageBandwidthStatistic.SampleEvictionFunction, e {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ long f2433a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f2434b;

    public /* synthetic */ a(long j10, Object obj) {
        this.f2433a = j10;
        this.f2434b = obj;
    }

    @Override // i4.e
    public Object apply(Object obj) {
        SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
        ContentValues contentValues = new ContentValues();
        contentValues.put("next_request_ms", Long.valueOf(this.f2433a));
        j jVar = (j) this.f2434b;
        String str = jVar.f129a;
        c cVar = jVar.f131c;
        if (sQLiteDatabase.update("transport_contexts", contentValues, "backend_name = ? and priority = ?", new String[]{str, String.valueOf(l4.a.a(cVar))}) < 1) {
            contentValues.put("backend_name", jVar.f129a);
            contentValues.put(Progress.PRIORITY, Integer.valueOf(l4.a.a(cVar)));
            sQLiteDatabase.insert("transport_contexts", null, contentValues);
        }
        return null;
    }

    @Override // androidx.media3.exoplayer.upstream.experimental.SlidingWeightedAverageBandwidthStatistic.SampleEvictionFunction
    public boolean shouldEvictSample(Deque deque) {
        return SlidingWeightedAverageBandwidthStatistic.lambda$getAgeBasedEvictionFunction$1(this.f2433a, (Clock) this.f2434b, deque);
    }
}
