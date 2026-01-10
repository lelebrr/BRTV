package r4;

import androidx.media3.exoplayer.rtsp.SessionDescription;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class i extends m {

    /* renamed from: u, reason: collision with root package name */
    public final /* synthetic */ int f9558u;

    /* renamed from: v, reason: collision with root package name */
    public final /* synthetic */ f f9559v;

    /* renamed from: w, reason: collision with root package name */
    public final /* synthetic */ Object f9560w;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ i(f fVar, Object obj, int i6) {
        super(fVar, false);
        this.f9558u = i6;
        this.f9560w = obj;
        this.f9559v = fVar;
    }

    @Override // r4.m
    public final void k0() throws JSONException {
        int i6 = 0;
        Object obj = this.f9560w;
        f fVar = this.f9559v;
        switch (this.f9558u) {
            case 0:
                v4.l lVar = fVar.f9544c;
                v4.m mVarL0 = l0();
                int[] iArr = (int[]) obj;
                lVar.getClass();
                JSONObject jSONObject = new JSONObject();
                long jB = lVar.b();
                try {
                    jSONObject.put("requestId", jB);
                    jSONObject.put(SessionDescription.ATTR_TYPE, "QUEUE_GET_ITEMS");
                    jSONObject.put("mediaSessionId", lVar.p());
                    JSONArray jSONArray = new JSONArray();
                    int length = iArr.length;
                    while (i6 < length) {
                        jSONArray.put(iArr[i6]);
                        i6++;
                    }
                    jSONObject.put("itemIds", jSONArray);
                } catch (JSONException unused) {
                }
                lVar.c(jB, jSONObject.toString());
                lVar.f10694t.a(jB, mVarL0);
                break;
            case 1:
                v4.l lVar2 = fVar.f9544c;
                v4.m mVarL02 = l0();
                lVar2.getClass();
                JSONObject jSONObject2 = new JSONObject();
                long jB2 = lVar2.b();
                p4.g gVar = (p4.g) obj;
                long j10 = gVar.f8876b ? 4294967296000L : gVar.f8875a;
                try {
                    jSONObject2.put("requestId", jB2);
                    jSONObject2.put(SessionDescription.ATTR_TYPE, "SEEK");
                    jSONObject2.put("mediaSessionId", lVar2.p());
                    Pattern pattern = v4.a.f10669a;
                    jSONObject2.put("currentTime", j10 / 1000.0d);
                } catch (JSONException unused2) {
                }
                lVar2.c(jB2, jSONObject2.toString());
                lVar2.f10681g = Long.valueOf(j10);
                lVar2.f10687m.a(jB2, new v4.i(lVar2, mVarL02, i6));
                break;
            default:
                v4.l lVar3 = fVar.f9544c;
                v4.m mVarL03 = l0();
                lVar3.getClass();
                long[] jArr = (long[]) obj;
                JSONObject jSONObject3 = new JSONObject();
                long jB3 = lVar3.b();
                try {
                    jSONObject3.put("requestId", jB3);
                    jSONObject3.put(SessionDescription.ATTR_TYPE, "EDIT_TRACKS_INFO");
                    jSONObject3.put("mediaSessionId", lVar3.p());
                    JSONArray jSONArray2 = new JSONArray();
                    while (i6 < jArr.length) {
                        jSONArray2.put(i6, jArr[i6]);
                        i6++;
                    }
                    jSONObject3.put("activeTrackIds", jSONArray2);
                } catch (JSONException unused3) {
                }
                lVar3.c(jB3, jSONObject3.toString());
                lVar3.f10691q.a(jB3, mVarL03);
                break;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(f fVar, int[] iArr) {
        super(fVar, true);
        this.f9558u = 0;
        this.f9560w = iArr;
        this.f9559v = fVar;
    }
}
