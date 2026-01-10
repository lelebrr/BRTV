package r4;

import android.util.Log;
import androidx.media3.exoplayer.rtsp.SessionDescription;
import com.google.android.gms.cast.MediaStatus;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class h extends m {

    /* renamed from: u, reason: collision with root package name */
    public final /* synthetic */ int f9556u;

    /* renamed from: v, reason: collision with root package name */
    public final /* synthetic */ f f9557v;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ h(f fVar, int i6) {
        super(fVar, false);
        this.f9556u = i6;
        this.f9557v = fVar;
    }

    @Override // r4.m
    public final void k0() throws JSONException {
        switch (this.f9556u) {
            case 0:
                this.f9557v.f9544c.d(l0(), -1);
                break;
            case 1:
                this.f9557v.f9544c.d(l0(), 1);
                break;
            case 2:
                v4.l lVar = this.f9557v.f9544c;
                v4.m mVarL0 = l0();
                lVar.getClass();
                JSONObject jSONObject = new JSONObject();
                long jB = lVar.b();
                try {
                    jSONObject.put("requestId", jB);
                    jSONObject.put(SessionDescription.ATTR_TYPE, "QUEUE_GET_ITEM_IDS");
                    jSONObject.put("mediaSessionId", lVar.p());
                } catch (JSONException unused) {
                }
                lVar.c(jB, jSONObject.toString());
                lVar.f10693s.a(jB, mVarL0);
                break;
            case 3:
                v4.l lVar2 = this.f9557v.f9544c;
                v4.m mVarL02 = l0();
                lVar2.getClass();
                JSONObject jSONObject2 = new JSONObject();
                long jB2 = lVar2.b();
                try {
                    jSONObject2.put("requestId", jB2);
                    jSONObject2.put(SessionDescription.ATTR_TYPE, "PAUSE");
                    jSONObject2.put("mediaSessionId", lVar2.p());
                } catch (JSONException unused2) {
                }
                lVar2.c(jB2, jSONObject2.toString());
                lVar2.f10685k.a(jB2, mVarL02);
                break;
            case 4:
                v4.l lVar3 = this.f9557v.f9544c;
                v4.m mVarL03 = l0();
                lVar3.getClass();
                JSONObject jSONObject3 = new JSONObject();
                long jB3 = lVar3.b();
                try {
                    jSONObject3.put("requestId", jB3);
                    jSONObject3.put(SessionDescription.ATTR_TYPE, "PLAY");
                    jSONObject3.put("mediaSessionId", lVar3.p());
                } catch (JSONException unused3) {
                }
                lVar3.c(jB3, jSONObject3.toString());
                lVar3.f10686l.a(jB3, mVarL03);
                break;
            case 5:
                f fVar = this.f9557v;
                v4.m mVarL04 = l0();
                v4.l lVar4 = fVar.f9544c;
                lVar4.getClass();
                JSONObject jSONObject4 = new JSONObject();
                long jB4 = lVar4.b();
                try {
                    jSONObject4.put("requestId", jB4);
                    jSONObject4.put(SessionDescription.ATTR_TYPE, "SKIP_AD");
                    jSONObject4.put("mediaSessionId", lVar4.p());
                } catch (JSONException e5) {
                    Locale locale = Locale.ROOT;
                    v4.b bVar = lVar4.f10704a;
                    Log.w(bVar.f10671a, bVar.d(ea.q.p("Error creating SkipAd message: ", e5.getMessage()), new Object[0]));
                }
                lVar4.c(jB4, jSONObject4.toString());
                lVar4.f10696v.a(jB4, mVarL04);
                break;
            default:
                v4.l lVar5 = this.f9557v.f9544c;
                v4.m mVarL05 = l0();
                lVar5.getClass();
                JSONObject jSONObject5 = new JSONObject();
                long jB5 = lVar5.b();
                try {
                    jSONObject5.put("requestId", jB5);
                    jSONObject5.put(SessionDescription.ATTR_TYPE, "GET_STATUS");
                    MediaStatus mediaStatus = lVar5.f;
                    if (mediaStatus != null) {
                        jSONObject5.put("mediaSessionId", mediaStatus.f3739b);
                    }
                } catch (JSONException unused4) {
                }
                lVar5.c(jB5, jSONObject5.toString());
                lVar5.f10690p.a(jB5, mVarL05);
                break;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(f fVar) {
        super(fVar, true);
        this.f9556u = 2;
        this.f9557v = fVar;
    }
}
