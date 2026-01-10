package com.google.android.gms.cast;

import a1.b;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import h5.a;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.regex.Pattern;
import o9.d;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class MediaMetadata extends AbstractSafeParcelable {

    /* renamed from: e, reason: collision with root package name */
    public static final b f3715e;

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f3716a;

    /* renamed from: b, reason: collision with root package name */
    public final Bundle f3717b;

    /* renamed from: c, reason: collision with root package name */
    public int f3718c;
    public static final String[] d = {"none", "String", "int", "double", "ISO-8601 date String", "Time in milliseconds as long"};
    public static final Parcelable.Creator<MediaMetadata> CREATOR = new a(22);

    static {
        b bVar = new b(28);
        bVar.L(4, "com.google.android.gms.cast.metadata.CREATION_DATE", "creationDateTime");
        bVar.L(4, "com.google.android.gms.cast.metadata.RELEASE_DATE", "releaseDate");
        bVar.L(4, "com.google.android.gms.cast.metadata.BROADCAST_DATE", "originalAirdate");
        bVar.L(1, "com.google.android.gms.cast.metadata.TITLE", "title");
        bVar.L(1, "com.google.android.gms.cast.metadata.SUBTITLE", "subtitle");
        bVar.L(1, "com.google.android.gms.cast.metadata.ARTIST", "artist");
        bVar.L(1, "com.google.android.gms.cast.metadata.ALBUM_ARTIST", "albumArtist");
        bVar.L(1, "com.google.android.gms.cast.metadata.ALBUM_TITLE", "albumName");
        bVar.L(1, "com.google.android.gms.cast.metadata.COMPOSER", "composer");
        bVar.L(2, "com.google.android.gms.cast.metadata.DISC_NUMBER", "discNumber");
        bVar.L(2, "com.google.android.gms.cast.metadata.TRACK_NUMBER", "trackNumber");
        bVar.L(2, "com.google.android.gms.cast.metadata.SEASON_NUMBER", "season");
        bVar.L(2, "com.google.android.gms.cast.metadata.EPISODE_NUMBER", "episode");
        bVar.L(1, "com.google.android.gms.cast.metadata.SERIES_TITLE", "seriesTitle");
        bVar.L(1, "com.google.android.gms.cast.metadata.STUDIO", "studio");
        bVar.L(2, "com.google.android.gms.cast.metadata.WIDTH", "width");
        bVar.L(2, "com.google.android.gms.cast.metadata.HEIGHT", "height");
        bVar.L(1, "com.google.android.gms.cast.metadata.LOCATION_NAME", "location");
        bVar.L(3, "com.google.android.gms.cast.metadata.LOCATION_LATITUDE", "latitude");
        bVar.L(3, "com.google.android.gms.cast.metadata.LOCATION_LONGITUDE", "longitude");
        bVar.L(5, "com.google.android.gms.cast.metadata.SECTION_DURATION", "sectionDuration");
        bVar.L(5, "com.google.android.gms.cast.metadata.SECTION_START_TIME_IN_MEDIA", "sectionStartTimeInMedia");
        bVar.L(5, "com.google.android.gms.cast.metadata.SECTION_START_ABSOLUTE_TIME", "sectionStartAbsoluteTime");
        bVar.L(5, "com.google.android.gms.cast.metadata.SECTION_START_TIME_IN_CONTAINER", "sectionStartTimeInContainer");
        bVar.L(2, "com.google.android.gms.cast.metadata.QUEUE_ITEM_ID", "queueItemId");
        bVar.L(1, "com.google.android.gms.cast.metadata.BOOK_TITLE", "bookTitle");
        bVar.L(2, "com.google.android.gms.cast.metadata.CHAPTER_NUMBER", "chapterNumber");
        bVar.L(1, "com.google.android.gms.cast.metadata.CHAPTER_TITLE", "chapterTitle");
        f3715e = bVar;
    }

    public MediaMetadata(ArrayList arrayList, Bundle bundle, int i6) {
        this.f3716a = arrayList;
        this.f3717b = bundle;
        this.f3718c = i6;
    }

    public static void j(int i6, String str) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("null and empty keys are not allowed");
        }
        Integer num = (Integer) ((HashMap) f3715e.d).get(str);
        int iIntValue = num != null ? num.intValue() : 0;
        if (iIntValue == i6 || iIntValue == 0) {
            return;
        }
        throw new IllegalArgumentException("Value for " + str + " must be a " + d[i6]);
    }

    public static boolean m(Bundle bundle, Bundle bundle2) {
        if (bundle.size() != bundle2.size()) {
            return false;
        }
        for (String str : bundle.keySet()) {
            Object obj = bundle.get(str);
            Object obj2 = bundle2.get(str);
            if ((obj instanceof Bundle) && (obj2 instanceof Bundle) && !m((Bundle) obj, (Bundle) obj2)) {
                return false;
            }
            if (obj == null) {
                if (obj2 != null || !bundle2.containsKey(str)) {
                    return false;
                }
            } else if (!obj.equals(obj2)) {
                return false;
            }
        }
        return true;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MediaMetadata)) {
            return false;
        }
        MediaMetadata mediaMetadata = (MediaMetadata) obj;
        return m(this.f3717b, mediaMetadata.f3717b) && this.f3716a.equals(mediaMetadata.f3716a);
    }

    public final int hashCode() {
        int iHashCode = 17;
        Bundle bundle = this.f3717b;
        if (bundle != null) {
            Iterator<String> it = bundle.keySet().iterator();
            while (it.hasNext()) {
                Object obj = bundle.get(it.next());
                iHashCode = (iHashCode * 31) + (obj != null ? obj.hashCode() : 0);
            }
        }
        return this.f3716a.hashCode() + (iHashCode * 31);
    }

    public final void l(JSONObject jSONObject) {
        HashSet hashSet;
        Bundle bundle = this.f3717b;
        bundle.clear();
        ArrayList arrayList = this.f3716a;
        arrayList.clear();
        this.f3718c = 0;
        try {
            this.f3718c = jSONObject.getInt("metadataType");
        } catch (JSONException unused) {
        }
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("images");
        if (jSONArrayOptJSONArray != null) {
            w4.a.b(arrayList, jSONArrayOptJSONArray);
        }
        ArrayList arrayList2 = new ArrayList();
        int i6 = this.f3718c;
        if (i6 == 0) {
            Collections.addAll(arrayList2, "com.google.android.gms.cast.metadata.TITLE", "com.google.android.gms.cast.metadata.ARTIST", "com.google.android.gms.cast.metadata.SUBTITLE", "com.google.android.gms.cast.metadata.RELEASE_DATE");
        } else if (i6 == 1) {
            Collections.addAll(arrayList2, "com.google.android.gms.cast.metadata.TITLE", "com.google.android.gms.cast.metadata.STUDIO", "com.google.android.gms.cast.metadata.SUBTITLE", "com.google.android.gms.cast.metadata.RELEASE_DATE");
        } else if (i6 == 2) {
            Collections.addAll(arrayList2, "com.google.android.gms.cast.metadata.TITLE", "com.google.android.gms.cast.metadata.SERIES_TITLE", "com.google.android.gms.cast.metadata.SEASON_NUMBER", "com.google.android.gms.cast.metadata.EPISODE_NUMBER", "com.google.android.gms.cast.metadata.BROADCAST_DATE");
        } else if (i6 == 3) {
            Collections.addAll(arrayList2, "com.google.android.gms.cast.metadata.TITLE", "com.google.android.gms.cast.metadata.ALBUM_TITLE", "com.google.android.gms.cast.metadata.ARTIST", "com.google.android.gms.cast.metadata.ALBUM_ARTIST", "com.google.android.gms.cast.metadata.COMPOSER", "com.google.android.gms.cast.metadata.TRACK_NUMBER", "com.google.android.gms.cast.metadata.DISC_NUMBER", "com.google.android.gms.cast.metadata.RELEASE_DATE");
        } else if (i6 == 4) {
            Collections.addAll(arrayList2, "com.google.android.gms.cast.metadata.TITLE", "com.google.android.gms.cast.metadata.ARTIST", "com.google.android.gms.cast.metadata.LOCATION_NAME", "com.google.android.gms.cast.metadata.LOCATION_LATITUDE", "com.google.android.gms.cast.metadata.LOCATION_LONGITUDE", "com.google.android.gms.cast.metadata.WIDTH", "com.google.android.gms.cast.metadata.HEIGHT", "com.google.android.gms.cast.metadata.CREATION_DATE");
        } else if (i6 == 5) {
            Collections.addAll(arrayList2, "com.google.android.gms.cast.metadata.CHAPTER_TITLE", "com.google.android.gms.cast.metadata.CHAPTER_NUMBER", "com.google.android.gms.cast.metadata.TITLE", "com.google.android.gms.cast.metadata.BOOK_TITLE", "com.google.android.gms.cast.metadata.SUBTITLE");
        }
        Collections.addAll(arrayList2, "com.google.android.gms.cast.metadata.SECTION_DURATION", "com.google.android.gms.cast.metadata.SECTION_START_TIME_IN_MEDIA", "com.google.android.gms.cast.metadata.SECTION_START_ABSOLUTE_TIME", "com.google.android.gms.cast.metadata.SECTION_START_TIME_IN_CONTAINER", "com.google.android.gms.cast.metadata.QUEUE_ITEM_ID");
        HashSet hashSet2 = new HashSet(arrayList2);
        try {
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                if (next != null && !"metadataType".equals(next)) {
                    b bVar = f3715e;
                    String str = (String) ((HashMap) bVar.f48c).get(next);
                    if (str == null) {
                        hashSet = hashSet2;
                        Object obj = jSONObject.get(next);
                        if (obj instanceof String) {
                            bundle.putString(next, (String) obj);
                        } else if (obj instanceof Integer) {
                            bundle.putInt(next, ((Integer) obj).intValue());
                        } else if (obj instanceof Double) {
                            bundle.putDouble(next, ((Double) obj).doubleValue());
                        }
                    } else if (hashSet2.contains(str)) {
                        try {
                            Object obj2 = jSONObject.get(next);
                            if (obj2 != null) {
                                Integer num = (Integer) ((HashMap) bVar.d).get(str);
                                int iIntValue = num != null ? num.intValue() : 0;
                                if (iIntValue == 1) {
                                    hashSet = hashSet2;
                                    if (obj2 instanceof String) {
                                        bundle.putString(str, (String) obj2);
                                    }
                                } else if (iIntValue == 2) {
                                    hashSet = hashSet2;
                                    if (obj2 instanceof Integer) {
                                        bundle.putInt(str, ((Integer) obj2).intValue());
                                    }
                                } else if (iIntValue == 3) {
                                    hashSet = hashSet2;
                                    double dOptDouble = jSONObject.optDouble(next);
                                    if (!Double.isNaN(dOptDouble)) {
                                        bundle.putDouble(str, dOptDouble);
                                    }
                                } else if (iIntValue == 4) {
                                    hashSet = hashSet2;
                                    if (obj2 instanceof String) {
                                        String str2 = (String) obj2;
                                        if (w4.a.a(str2) != null) {
                                            bundle.putString(str, str2);
                                        }
                                    }
                                } else if (iIntValue == 5) {
                                    long jOptLong = jSONObject.optLong(next);
                                    Pattern pattern = v4.a.f10669a;
                                    hashSet = hashSet2;
                                    try {
                                        bundle.putLong(str, jOptLong * 1000);
                                    } catch (JSONException unused2) {
                                    }
                                }
                            }
                        } catch (JSONException unused3) {
                            hashSet = hashSet2;
                        }
                    }
                    hashSet2 = hashSet;
                }
            }
        } catch (JSONException unused4) {
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iV = d.V(parcel, 20293);
        d.U(parcel, 2, this.f3716a);
        d.M(parcel, 3, this.f3717b);
        int i10 = this.f3718c;
        d.X(parcel, 4, 4);
        parcel.writeInt(i10);
        d.W(parcel, iV);
    }

    public MediaMetadata(int i6) {
        this(new ArrayList(), new Bundle(), i6);
    }
}
