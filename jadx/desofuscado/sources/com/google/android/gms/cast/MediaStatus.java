package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.SparseArray;
import b5.l;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import h5.a;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import o9.d;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class MediaStatus extends AbstractSafeParcelable {
    public static final Parcelable.Creator<MediaStatus> CREATOR;

    /* renamed from: a, reason: collision with root package name */
    public MediaInfo f3738a;

    /* renamed from: b, reason: collision with root package name */
    public long f3739b;

    /* renamed from: c, reason: collision with root package name */
    public int f3740c;
    public double d;

    /* renamed from: e, reason: collision with root package name */
    public int f3741e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public long f3742g;

    /* renamed from: h, reason: collision with root package name */
    public long f3743h;

    /* renamed from: i, reason: collision with root package name */
    public double f3744i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f3745j;

    /* renamed from: k, reason: collision with root package name */
    public long[] f3746k;

    /* renamed from: l, reason: collision with root package name */
    public int f3747l;

    /* renamed from: m, reason: collision with root package name */
    public int f3748m;

    /* renamed from: n, reason: collision with root package name */
    public String f3749n;

    /* renamed from: o, reason: collision with root package name */
    public JSONObject f3750o;

    /* renamed from: p, reason: collision with root package name */
    public int f3751p;

    /* renamed from: r, reason: collision with root package name */
    public boolean f3753r;

    /* renamed from: s, reason: collision with root package name */
    public AdBreakStatus f3754s;

    /* renamed from: t, reason: collision with root package name */
    public VideoInfo f3755t;

    /* renamed from: u, reason: collision with root package name */
    public MediaLiveSeekableRange f3756u;

    /* renamed from: v, reason: collision with root package name */
    public MediaQueueData f3757v;

    /* renamed from: w, reason: collision with root package name */
    public boolean f3758w;

    /* renamed from: q, reason: collision with root package name */
    public final ArrayList f3752q = new ArrayList();

    /* renamed from: x, reason: collision with root package name */
    public final SparseArray f3759x = new SparseArray();

    static {
        l.d("MediaStatus", "The log tag cannot be null or empty.");
        CREATOR = new a(26);
    }

    public MediaStatus(MediaInfo mediaInfo, long j10, int i6, double d, int i10, int i11, long j11, long j12, double d10, boolean z7, long[] jArr, int i12, int i13, String str, int i14, ArrayList arrayList, boolean z10, AdBreakStatus adBreakStatus, VideoInfo videoInfo, MediaLiveSeekableRange mediaLiveSeekableRange, MediaQueueData mediaQueueData) {
        this.f3738a = mediaInfo;
        this.f3739b = j10;
        this.f3740c = i6;
        this.d = d;
        this.f3741e = i10;
        this.f = i11;
        this.f3742g = j11;
        this.f3743h = j12;
        this.f3744i = d10;
        this.f3745j = z7;
        this.f3746k = jArr;
        this.f3747l = i12;
        this.f3748m = i13;
        this.f3749n = str;
        if (str != null) {
            try {
                this.f3750o = new JSONObject(this.f3749n);
            } catch (JSONException unused) {
                this.f3750o = null;
                this.f3749n = null;
            }
        } else {
            this.f3750o = null;
        }
        this.f3751p = i14;
        if (arrayList != null && !arrayList.isEmpty()) {
            m(arrayList);
        }
        this.f3753r = z10;
        this.f3754s = adBreakStatus;
        this.f3755t = videoInfo;
        this.f3756u = mediaLiveSeekableRange;
        this.f3757v = mediaQueueData;
        boolean z11 = false;
        if (mediaQueueData != null && mediaQueueData.f3730j) {
            z11 = true;
        }
        this.f3758w = z11;
    }

    public final boolean equals(Object obj) {
        JSONObject jSONObject;
        JSONObject jSONObject2;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MediaStatus)) {
            return false;
        }
        MediaStatus mediaStatus = (MediaStatus) obj;
        return (this.f3750o == null) == (mediaStatus.f3750o == null) && this.f3739b == mediaStatus.f3739b && this.f3740c == mediaStatus.f3740c && this.d == mediaStatus.d && this.f3741e == mediaStatus.f3741e && this.f == mediaStatus.f && this.f3742g == mediaStatus.f3742g && this.f3744i == mediaStatus.f3744i && this.f3745j == mediaStatus.f3745j && this.f3747l == mediaStatus.f3747l && this.f3748m == mediaStatus.f3748m && this.f3751p == mediaStatus.f3751p && Arrays.equals(this.f3746k, mediaStatus.f3746k) && v4.a.e(Long.valueOf(this.f3743h), Long.valueOf(mediaStatus.f3743h)) && v4.a.e(this.f3752q, mediaStatus.f3752q) && v4.a.e(this.f3738a, mediaStatus.f3738a) && ((jSONObject = this.f3750o) == null || (jSONObject2 = mediaStatus.f3750o) == null || k5.a.a(jSONObject, jSONObject2)) && this.f3753r == mediaStatus.f3753r && v4.a.e(this.f3754s, mediaStatus.f3754s) && v4.a.e(this.f3755t, mediaStatus.f3755t) && v4.a.e(this.f3756u, mediaStatus.f3756u) && l.h(this.f3757v, mediaStatus.f3757v) && this.f3758w == mediaStatus.f3758w;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f3738a, Long.valueOf(this.f3739b), Integer.valueOf(this.f3740c), Double.valueOf(this.d), Integer.valueOf(this.f3741e), Integer.valueOf(this.f), Long.valueOf(this.f3742g), Long.valueOf(this.f3743h), Double.valueOf(this.f3744i), Boolean.valueOf(this.f3745j), Integer.valueOf(Arrays.hashCode(this.f3746k)), Integer.valueOf(this.f3747l), Integer.valueOf(this.f3748m), String.valueOf(this.f3750o), Integer.valueOf(this.f3751p), this.f3752q, Boolean.valueOf(this.f3753r), this.f3754s, this.f3755t, this.f3756u, this.f3757v});
    }

    public final AdBreakClipInfo j() {
        MediaInfo mediaInfo;
        AdBreakStatus adBreakStatus = this.f3754s;
        if (adBreakStatus == null) {
            return null;
        }
        String str = adBreakStatus.d;
        if (TextUtils.isEmpty(str) || (mediaInfo = this.f3738a) == null) {
            return null;
        }
        ArrayList arrayList = mediaInfo.f3691j;
        List<AdBreakClipInfo> listUnmodifiableList = arrayList == null ? null : Collections.unmodifiableList(arrayList);
        if (listUnmodifiableList != null && !listUnmodifiableList.isEmpty()) {
            for (AdBreakClipInfo adBreakClipInfo : listUnmodifiableList) {
                if (str.equals(adBreakClipInfo.f3625a)) {
                    return adBreakClipInfo;
                }
            }
        }
        return null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:110:0x01a9 A[EDGE_INSN: B:110:0x01a9->B:111:0x01ac BREAK  A[LOOP:0: B:103:0x0196->B:107:0x01a3]] */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0222  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x022f  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x025b  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x0262  */
    /* JADX WARN: Removed duplicated region for block: B:191:0x0307  */
    /* JADX WARN: Removed duplicated region for block: B:250:0x03fc  */
    /* JADX WARN: Removed duplicated region for block: B:252:0x03ff  */
    /* JADX WARN: Removed duplicated region for block: B:264:0x041d  */
    /* JADX WARN: Removed duplicated region for block: B:315:0x0516  */
    /* JADX WARN: Removed duplicated region for block: B:344:0x058a  */
    /* JADX WARN: Removed duplicated region for block: B:346:0x058d  */
    /* JADX WARN: Removed duplicated region for block: B:350:0x0594  */
    /* JADX WARN: Removed duplicated region for block: B:353:0x05a7  */
    /* JADX WARN: Removed duplicated region for block: B:362:0x05d2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int l(org.json.JSONObject r29, int r30) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 1864
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.MediaStatus.l(org.json.JSONObject, int):int");
    }

    public final void m(ArrayList arrayList) {
        ArrayList arrayList2 = this.f3752q;
        arrayList2.clear();
        SparseArray sparseArray = this.f3759x;
        sparseArray.clear();
        if (arrayList != null) {
            for (int i6 = 0; i6 < arrayList.size(); i6++) {
                MediaQueueItem mediaQueueItem = (MediaQueueItem) arrayList.get(i6);
                arrayList2.add(mediaQueueItem);
                sparseArray.put(mediaQueueItem.f3732b, Integer.valueOf(i6));
            }
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        JSONObject jSONObject = this.f3750o;
        this.f3749n = jSONObject == null ? null : jSONObject.toString();
        int iV = d.V(parcel, 20293);
        d.Q(parcel, 2, this.f3738a, i6);
        long j10 = this.f3739b;
        d.X(parcel, 3, 8);
        parcel.writeLong(j10);
        int i10 = this.f3740c;
        d.X(parcel, 4, 4);
        parcel.writeInt(i10);
        double d = this.d;
        d.X(parcel, 5, 8);
        parcel.writeDouble(d);
        int i11 = this.f3741e;
        d.X(parcel, 6, 4);
        parcel.writeInt(i11);
        int i12 = this.f;
        d.X(parcel, 7, 4);
        parcel.writeInt(i12);
        long j11 = this.f3742g;
        d.X(parcel, 8, 8);
        parcel.writeLong(j11);
        long j12 = this.f3743h;
        d.X(parcel, 9, 8);
        parcel.writeLong(j12);
        double d10 = this.f3744i;
        d.X(parcel, 10, 8);
        parcel.writeDouble(d10);
        boolean z7 = this.f3745j;
        d.X(parcel, 11, 4);
        parcel.writeInt(z7 ? 1 : 0);
        d.P(parcel, 12, this.f3746k);
        int i13 = this.f3747l;
        d.X(parcel, 13, 4);
        parcel.writeInt(i13);
        int i14 = this.f3748m;
        d.X(parcel, 14, 4);
        parcel.writeInt(i14);
        d.R(parcel, 15, this.f3749n);
        int i15 = this.f3751p;
        d.X(parcel, 16, 4);
        parcel.writeInt(i15);
        d.U(parcel, 17, this.f3752q);
        boolean z10 = this.f3753r;
        d.X(parcel, 18, 4);
        parcel.writeInt(z10 ? 1 : 0);
        d.Q(parcel, 19, this.f3754s, i6);
        d.Q(parcel, 20, this.f3755t, i6);
        d.Q(parcel, 21, this.f3756u, i6);
        d.Q(parcel, 22, this.f3757v, i6);
        d.W(parcel, iV);
    }
}
