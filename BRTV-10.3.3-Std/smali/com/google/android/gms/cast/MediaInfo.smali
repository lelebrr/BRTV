.class public Lcom/google/android/gms/cast/MediaInfo;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "MyApplication"

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/cast/MediaInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final s:J


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:Lcom/google/android/gms/cast/MediaMetadata;

.field public final e:J

.field public final f:Ljava/util/ArrayList;

.field public final g:Lcom/google/android/gms/cast/TextTrackStyle;

.field public h:Ljava/lang/String;

.field public i:Ljava/util/ArrayList;

.field public j:Ljava/util/ArrayList;

.field public final k:Ljava/lang/String;

.field public final l:Lcom/google/android/gms/cast/VastAdsRequest;

.field public final m:J

.field public final n:Ljava/lang/String;

.field public final o:Ljava/lang/String;

.field public final p:Ljava/lang/String;

.field public final q:Ljava/lang/String;

.field public final r:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lv4/a;->a:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    const-wide/16 v0, -0x3e8

    .line 4
    .line 5
    sput-wide v0, Lcom/google/android/gms/cast/MediaInfo;->s:J

    .line 6
    .line 7
    new-instance v0, Lh5/a;

    .line 8
    .line 9
    const/16 v1, 0x12

    .line 10
    .line 11
    invoke-direct {v0, v1}, Lh5/a;-><init>(I)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/google/android/gms/cast/MediaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/android/gms/cast/MediaMetadata;JLjava/util/ArrayList;Lcom/google/android/gms/cast/TextTrackStyle;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Lcom/google/android/gms/cast/VastAdsRequest;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    move-object v0, p0

    move-object v1, p9

    move-object/from16 v2, p12

    move-object/from16 v3, p17

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v4, p1

    .line 2
    iput-object v4, v0, Lcom/google/android/gms/cast/MediaInfo;->a:Ljava/lang/String;

    move v4, p2

    iput v4, v0, Lcom/google/android/gms/cast/MediaInfo;->b:I

    move-object v4, p3

    iput-object v4, v0, Lcom/google/android/gms/cast/MediaInfo;->c:Ljava/lang/String;

    move-object v4, p4

    iput-object v4, v0, Lcom/google/android/gms/cast/MediaInfo;->d:Lcom/google/android/gms/cast/MediaMetadata;

    move-wide v4, p5

    iput-wide v4, v0, Lcom/google/android/gms/cast/MediaInfo;->e:J

    move-object v4, p7

    iput-object v4, v0, Lcom/google/android/gms/cast/MediaInfo;->f:Ljava/util/ArrayList;

    move-object v4, p8

    iput-object v4, v0, Lcom/google/android/gms/cast/MediaInfo;->g:Lcom/google/android/gms/cast/TextTrackStyle;

    iput-object v1, v0, Lcom/google/android/gms/cast/MediaInfo;->h:Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    .line 3
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v5, v0, Lcom/google/android/gms/cast/MediaInfo;->h:Ljava/lang/String;

    invoke-direct {v1, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/google/android/gms/cast/MediaInfo;->r:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object/from16 v1, p10

    goto :goto_1

    .line 4
    :catch_0
    iput-object v4, v0, Lcom/google/android/gms/cast/MediaInfo;->r:Lorg/json/JSONObject;

    iput-object v4, v0, Lcom/google/android/gms/cast/MediaInfo;->h:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object v4, v0, Lcom/google/android/gms/cast/MediaInfo;->r:Lorg/json/JSONObject;

    goto :goto_0

    .line 5
    :goto_1
    iput-object v1, v0, Lcom/google/android/gms/cast/MediaInfo;->i:Ljava/util/ArrayList;

    move-object/from16 v1, p11

    iput-object v1, v0, Lcom/google/android/gms/cast/MediaInfo;->j:Ljava/util/ArrayList;

    iput-object v2, v0, Lcom/google/android/gms/cast/MediaInfo;->k:Ljava/lang/String;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/google/android/gms/cast/MediaInfo;->l:Lcom/google/android/gms/cast/VastAdsRequest;

    move-wide/from16 v4, p14

    iput-wide v4, v0, Lcom/google/android/gms/cast/MediaInfo;->m:J

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/google/android/gms/cast/MediaInfo;->n:Ljava/lang/String;

    iput-object v3, v0, Lcom/google/android/gms/cast/MediaInfo;->o:Ljava/lang/String;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/google/android/gms/cast/MediaInfo;->p:Ljava/lang/String;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/google/android/gms/cast/MediaInfo;->q:Ljava/lang/String;

    iget-object v1, v0, Lcom/google/android/gms/cast/MediaInfo;->a:Ljava/lang/String;

    if-nez v1, :cond_2

    if-nez v3, :cond_2

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Either contentID or contentUrl or entity should be set"

    .line 6
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_2
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 44

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v0, p0

    .line 7
    const-string v1, "contentId"

    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v18, -0x1

    move-wide/from16 v14, v18

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 8
    invoke-direct/range {v0 .. v19}, Lcom/google/android/gms/cast/MediaInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/android/gms/cast/MediaMetadata;JLjava/util/ArrayList;Lcom/google/android/gms/cast/TextTrackStyle;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Lcom/google/android/gms/cast/VastAdsRequest;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    const-string v0, "streamType"

    const-string v1, "NONE"

    move-object/from16 v2, p1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_0

    move-object/from16 v3, p0

    iput v7, v3, Lcom/google/android/gms/cast/MediaInfo;->b:I

    goto :goto_0

    :cond_0
    move-object/from16 v3, p0

    .line 11
    const-string v8, "BUFFERED"

    .line 12
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    iput v6, v3, Lcom/google/android/gms/cast/MediaInfo;->b:I

    goto :goto_0

    :cond_1
    const-string v8, "LIVE"

    .line 13
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput v5, v3, Lcom/google/android/gms/cast/MediaInfo;->b:I

    goto :goto_0

    :cond_2
    iput v4, v3, Lcom/google/android/gms/cast/MediaInfo;->b:I

    .line 14
    :goto_0
    const-string v0, "contentType"

    .line 15
    invoke-static {v2, v0}, Lv4/a;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gms/cast/MediaInfo;->c:Ljava/lang/String;

    .line 16
    const-string v0, "metadata"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 17
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v8, "metadataType"

    .line 18
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 19
    new-instance v9, Lcom/google/android/gms/cast/MediaMetadata;

    invoke-direct {v9, v8}, Lcom/google/android/gms/cast/MediaMetadata;-><init>(I)V

    iput-object v9, v3, Lcom/google/android/gms/cast/MediaInfo;->d:Lcom/google/android/gms/cast/MediaMetadata;

    .line 20
    invoke-virtual {v9, v0}, Lcom/google/android/gms/cast/MediaMetadata;->l(Lorg/json/JSONObject;)V

    :cond_3
    const-wide/16 v8, -0x1

    iput-wide v8, v3, Lcom/google/android/gms/cast/MediaInfo;->e:J

    iget v0, v3, Lcom/google/android/gms/cast/MediaInfo;->b:I

    const-wide v8, 0x408f400000000000L    # 1000.0

    const-wide/16 v10, 0x0

    if-eq v0, v5, :cond_4

    .line 21
    const-string v0, "duration"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 22
    invoke-virtual {v2, v0, v10, v11}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v12

    .line 23
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {v12, v13}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_4

    cmpl-double v0, v12, v10

    if-ltz v0, :cond_4

    mul-double v12, v12, v8

    double-to-long v12, v12

    iput-wide v12, v3, Lcom/google/android/gms/cast/MediaInfo;->e:J

    .line 24
    :cond_4
    const-string v0, "tracks"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    const-string v15, "customData"

    const/4 v4, 0x4

    if-eqz v12, :cond_12

    new-instance v9, Ljava/util/ArrayList;

    .line 25
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 26
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v12, 0x0

    .line 27
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v12, v10, :cond_11

    .line 28
    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 29
    const-string v11, "trackId"

    .line 30
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v21

    const-string v11, "type"

    .line 31
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v14, "TEXT"

    .line 32
    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    const/16 v23, 0x1

    goto :goto_2

    .line 33
    :cond_5
    const-string v14, "AUDIO"

    .line 34
    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    const/16 v23, 0x2

    goto :goto_2

    :cond_6
    const-string v14, "VIDEO"

    .line 35
    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    const/16 v23, 0x3

    goto :goto_2

    :cond_7
    const/16 v23, 0x0

    .line 36
    :goto_2
    const-string v11, "trackContentId"

    .line 37
    invoke-static {v10, v11}, Lv4/a;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v11, "trackContentType"

    .line 38
    invoke-static {v10, v11}, Lv4/a;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string v11, "name"

    .line 39
    invoke-static {v10, v11}, Lv4/a;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string v11, "language"

    .line 40
    invoke-static {v10, v11}, Lv4/a;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 41
    const-string v11, "subtype"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 42
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v14, "SUBTITLES"

    .line 43
    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    const/16 v28, 0x1

    goto :goto_3

    .line 44
    :cond_8
    const-string v14, "CAPTIONS"

    .line 45
    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    const/16 v28, 0x2

    goto :goto_3

    :cond_9
    const-string v14, "DESCRIPTIONS"

    .line 46
    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    const/16 v28, 0x3

    goto :goto_3

    :cond_a
    const-string v14, "CHAPTERS"

    .line 47
    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    const/16 v28, 0x4

    goto :goto_3

    :cond_b
    const-string v14, "METADATA"

    .line 48
    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    const/16 v28, 0x5

    goto :goto_3

    :cond_c
    const/16 v28, -0x1

    goto :goto_3

    :cond_d
    const/16 v28, 0x0

    .line 49
    :goto_3
    const-string v11, "roles"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 50
    sget-object v14, Lcom/google/android/gms/internal/cast/q1;->b:Lcom/google/android/gms/internal/cast/o1;

    .line 51
    new-array v14, v4, [Ljava/lang/Object;

    .line 52
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 53
    :goto_4
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_f

    .line 54
    invoke-virtual {v11, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    .line 55
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    array-length v7, v14

    add-int/lit8 v13, v8, 0x1

    invoke-static {v7, v13}, Lcom/google/android/gms/internal/cast/z0;->b(II)I

    move-result v6

    if-gt v6, v7, :cond_e

    goto :goto_5

    .line 57
    :cond_e
    invoke-static {v14, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    move-object v14, v6

    .line 58
    :goto_5
    aput-object v5, v14, v8

    const/4 v5, 0x1

    add-int/2addr v4, v5

    move v8, v13

    const/4 v6, 0x1

    const/4 v7, 0x0

    goto :goto_4

    .line 59
    :cond_f
    invoke-static {v14, v8}, Lcom/google/android/gms/internal/cast/q1;->h([Ljava/lang/Object;I)Lcom/google/android/gms/internal/cast/u1;

    move-result-object v4

    move-object/from16 v29, v4

    goto :goto_6

    :cond_10
    const/16 v29, 0x0

    .line 60
    :goto_6
    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v30

    new-instance v4, Lcom/google/android/gms/cast/MediaTrack;

    move-object/from16 v20, v4

    .line 61
    invoke-direct/range {v20 .. v30}, Lcom/google/android/gms/cast/MediaTrack;-><init>(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lorg/json/JSONObject;)V

    .line 62
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    add-int/2addr v12, v4

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    goto/16 :goto_1

    .line 63
    :cond_11
    new-instance v0, Ljava/util/ArrayList;

    .line 64
    invoke-direct {v0, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, v3, Lcom/google/android/gms/cast/MediaInfo;->f:Ljava/util/ArrayList;

    goto :goto_7

    :cond_12
    const/4 v0, 0x0

    .line 65
    iput-object v0, v3, Lcom/google/android/gms/cast/MediaInfo;->f:Ljava/util/ArrayList;

    .line 66
    :goto_7
    const-string v0, "textTrackStyle"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 67
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 68
    new-instance v4, Lcom/google/android/gms/cast/TextTrackStyle;

    const/16 v42, -0x1

    const/16 v43, 0x0

    const/high16 v32, 0x3f800000    # 1.0f

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, -0x1

    const/16 v36, 0x0

    const/16 v37, -0x1

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, -0x1

    move-object/from16 v31, v4

    .line 69
    invoke-direct/range {v31 .. v43}, Lcom/google/android/gms/cast/TextTrackStyle;-><init>(FIIIIIIILjava/lang/String;IILjava/lang/String;)V

    .line 70
    const-string v5, "fontScale"

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v5, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v5

    double-to-float v5, v5

    iput v5, v4, Lcom/google/android/gms/cast/TextTrackStyle;->a:F

    const-string v5, "foregroundColor"

    .line 71
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/cast/TextTrackStyle;->j(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/google/android/gms/cast/TextTrackStyle;->b:I

    const-string v5, "backgroundColor"

    .line 72
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/cast/TextTrackStyle;->j(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/google/android/gms/cast/TextTrackStyle;->c:I

    .line 73
    const-string v5, "edgeType"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 74
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 75
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    const/4 v6, 0x0

    iput v6, v4, Lcom/google/android/gms/cast/TextTrackStyle;->d:I

    goto :goto_8

    .line 76
    :cond_13
    const-string v6, "OUTLINE"

    .line 77
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    const/4 v6, 0x1

    iput v6, v4, Lcom/google/android/gms/cast/TextTrackStyle;->d:I

    goto :goto_8

    :cond_14
    const-string v6, "DROP_SHADOW"

    .line 78
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    const/4 v6, 0x2

    iput v6, v4, Lcom/google/android/gms/cast/TextTrackStyle;->d:I

    goto :goto_8

    :cond_15
    const-string v6, "RAISED"

    .line 79
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    const/4 v6, 0x3

    iput v6, v4, Lcom/google/android/gms/cast/TextTrackStyle;->d:I

    goto :goto_8

    :cond_16
    const-string v6, "DEPRESSED"

    .line 80
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    const/4 v5, 0x4

    iput v5, v4, Lcom/google/android/gms/cast/TextTrackStyle;->d:I

    .line 81
    :cond_17
    :goto_8
    const-string v5, "edgeColor"

    .line 82
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/cast/TextTrackStyle;->j(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/google/android/gms/cast/TextTrackStyle;->e:I

    .line 83
    const-string v5, "windowType"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    const-string v7, "NORMAL"

    if-eqz v6, :cond_18

    .line 84
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 85
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v1, 0x0

    iput v1, v4, Lcom/google/android/gms/cast/TextTrackStyle;->f:I

    :cond_18
    :goto_9
    const/4 v1, 0x2

    goto :goto_a

    .line 86
    :cond_19
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v1, 0x1

    iput v1, v4, Lcom/google/android/gms/cast/TextTrackStyle;->f:I

    goto :goto_9

    :cond_1a
    const-string v1, "ROUNDED_CORNERS"

    .line 87
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v1, 0x2

    iput v1, v4, Lcom/google/android/gms/cast/TextTrackStyle;->f:I

    .line 88
    :goto_a
    const-string v5, "windowColor"

    .line 89
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/cast/TextTrackStyle;->j(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/google/android/gms/cast/TextTrackStyle;->g:I

    iget v5, v4, Lcom/google/android/gms/cast/TextTrackStyle;->f:I

    if-ne v5, v1, :cond_1b

    const-string v1, "windowRoundedCornerRadius"

    const/4 v5, 0x0

    .line 90
    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v4, Lcom/google/android/gms/cast/TextTrackStyle;->h:I

    :cond_1b
    const-string v1, "fontFamily"

    .line 91
    invoke-static {v0, v1}, Lv4/a;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/google/android/gms/cast/TextTrackStyle;->i:Ljava/lang/String;

    .line 92
    const-string v1, "fontGenericFamily"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 93
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "SANS_SERIF"

    .line 94
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    const/4 v5, 0x0

    iput v5, v4, Lcom/google/android/gms/cast/TextTrackStyle;->j:I

    goto :goto_b

    .line 95
    :cond_1c
    const-string v5, "MONOSPACED_SANS_SERIF"

    .line 96
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    const/4 v5, 0x1

    iput v5, v4, Lcom/google/android/gms/cast/TextTrackStyle;->j:I

    goto :goto_b

    :cond_1d
    const-string v5, "SERIF"

    .line 97
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    const/4 v5, 0x2

    iput v5, v4, Lcom/google/android/gms/cast/TextTrackStyle;->j:I

    goto :goto_b

    :cond_1e
    const-string v5, "MONOSPACED_SERIF"

    .line 98
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    const/4 v5, 0x3

    iput v5, v4, Lcom/google/android/gms/cast/TextTrackStyle;->j:I

    goto :goto_b

    :cond_1f
    const-string v5, "CASUAL"

    .line 99
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    const/4 v5, 0x4

    iput v5, v4, Lcom/google/android/gms/cast/TextTrackStyle;->j:I

    goto :goto_b

    :cond_20
    const-string v5, "CURSIVE"

    .line 100
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    const/4 v5, 0x5

    iput v5, v4, Lcom/google/android/gms/cast/TextTrackStyle;->j:I

    goto :goto_b

    :cond_21
    const-string v5, "SMALL_CAPITALS"

    .line 101
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/4 v1, 0x6

    iput v1, v4, Lcom/google/android/gms/cast/TextTrackStyle;->j:I

    .line 102
    :cond_22
    :goto_b
    const-string v1, "fontStyle"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 103
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 104
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    const/4 v5, 0x0

    iput v5, v4, Lcom/google/android/gms/cast/TextTrackStyle;->k:I

    goto :goto_c

    .line 105
    :cond_23
    const-string v5, "BOLD"

    .line 106
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    const/4 v5, 0x1

    iput v5, v4, Lcom/google/android/gms/cast/TextTrackStyle;->k:I

    goto :goto_c

    :cond_24
    const-string v5, "ITALIC"

    .line 107
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    const/4 v5, 0x2

    iput v5, v4, Lcom/google/android/gms/cast/TextTrackStyle;->k:I

    goto :goto_c

    :cond_25
    const-string v5, "BOLD_ITALIC"

    .line 108
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    const/4 v1, 0x3

    iput v1, v4, Lcom/google/android/gms/cast/TextTrackStyle;->k:I

    .line 109
    :cond_26
    :goto_c
    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, v4, Lcom/google/android/gms/cast/TextTrackStyle;->m:Lorg/json/JSONObject;

    .line 110
    iput-object v4, v3, Lcom/google/android/gms/cast/MediaInfo;->g:Lcom/google/android/gms/cast/TextTrackStyle;

    const/4 v0, 0x0

    goto :goto_d

    :cond_27
    const/4 v0, 0x0

    .line 111
    iput-object v0, v3, Lcom/google/android/gms/cast/MediaInfo;->g:Lcom/google/android/gms/cast/TextTrackStyle;

    .line 112
    :goto_d
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/cast/MediaInfo;->j(Lorg/json/JSONObject;)V

    .line 113
    invoke-virtual {v2, v15}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v3, Lcom/google/android/gms/cast/MediaInfo;->r:Lorg/json/JSONObject;

    const-string v1, "entity"

    .line 114
    invoke-static {v2, v1}, Lv4/a;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/google/android/gms/cast/MediaInfo;->k:Ljava/lang/String;

    const-string v1, "atvEntity"

    .line 115
    invoke-static {v2, v1}, Lv4/a;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/google/android/gms/cast/MediaInfo;->n:Ljava/lang/String;

    const-string v1, "vmapAdsRequest"

    .line 116
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_28

    move-object v13, v0

    goto :goto_e

    .line 117
    :cond_28
    const-string v0, "adTagUrl"

    invoke-static {v1, v0}, Lv4/a;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "adsResponse"

    .line 118
    invoke-static {v1, v4}, Lv4/a;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v13, Lcom/google/android/gms/cast/VastAdsRequest;

    .line 119
    invoke-direct {v13, v0, v1}, Lcom/google/android/gms/cast/VastAdsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :goto_e
    iput-object v13, v3, Lcom/google/android/gms/cast/MediaInfo;->l:Lcom/google/android/gms/cast/VastAdsRequest;

    .line 121
    const-string v0, "startAbsoluteTime"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 122
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 123
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 124
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_29

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v4

    if-nez v4, :cond_29

    const-wide/16 v4, 0x0

    cmpl-double v6, v0, v4

    if-ltz v6, :cond_29

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double v0, v0, v4

    double-to-long v0, v0

    iput-wide v0, v3, Lcom/google/android/gms/cast/MediaInfo;->m:J

    .line 125
    :cond_29
    const-string v0, "contentUrl"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 126
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gms/cast/MediaInfo;->o:Ljava/lang/String;

    :cond_2a
    const-string v0, "hlsSegmentFormat"

    .line 127
    invoke-static {v2, v0}, Lv4/a;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gms/cast/MediaInfo;->p:Ljava/lang/String;

    const-string v0, "hlsVideoSegmentFormat"

    .line 128
    invoke-static {v2, v0}, Lv4/a;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gms/cast/MediaInfo;->q:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/cast/MediaInfo;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/google/android/gms/cast/MediaInfo;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->r:Lorg/json/JSONObject;

    .line 14
    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    goto :goto_0

    .line 19
    :cond_2
    const/4 v3, 0x1

    .line 20
    :goto_0
    iget-object v4, p1, Lcom/google/android/gms/cast/MediaInfo;->r:Lorg/json/JSONObject;

    .line 21
    .line 22
    if-eqz v4, :cond_3

    .line 23
    .line 24
    const/4 v5, 0x0

    .line 25
    goto :goto_1

    .line 26
    :cond_3
    const/4 v5, 0x1

    .line 27
    :goto_1
    if-eq v3, v5, :cond_4

    .line 28
    .line 29
    return v2

    .line 30
    :cond_4
    if-eqz v1, :cond_6

    .line 31
    .line 32
    if-eqz v4, :cond_6

    .line 33
    .line 34
    invoke-static {v1, v4}, Lk5/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_5

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_5
    return v2

    .line 42
    :cond_6
    :goto_2
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->a:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaInfo;->a:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v1, v3}, Lv4/a;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_7

    .line 51
    .line 52
    iget v1, p0, Lcom/google/android/gms/cast/MediaInfo;->b:I

    .line 53
    .line 54
    iget v3, p1, Lcom/google/android/gms/cast/MediaInfo;->b:I

    .line 55
    .line 56
    if-ne v1, v3, :cond_7

    .line 57
    .line 58
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->c:Ljava/lang/String;

    .line 59
    .line 60
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaInfo;->c:Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {v1, v3}, Lv4/a;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_7

    .line 67
    .line 68
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->d:Lcom/google/android/gms/cast/MediaMetadata;

    .line 69
    .line 70
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaInfo;->d:Lcom/google/android/gms/cast/MediaMetadata;

    .line 71
    .line 72
    invoke-static {v1, v3}, Lv4/a;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_7

    .line 77
    .line 78
    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaInfo;->e:J

    .line 79
    .line 80
    iget-wide v5, p1, Lcom/google/android/gms/cast/MediaInfo;->e:J

    .line 81
    .line 82
    cmp-long v1, v3, v5

    .line 83
    .line 84
    if-nez v1, :cond_7

    .line 85
    .line 86
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->f:Ljava/util/ArrayList;

    .line 87
    .line 88
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaInfo;->f:Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-static {v1, v3}, Lv4/a;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-eqz v1, :cond_7

    .line 95
    .line 96
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->g:Lcom/google/android/gms/cast/TextTrackStyle;

    .line 97
    .line 98
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaInfo;->g:Lcom/google/android/gms/cast/TextTrackStyle;

    .line 99
    .line 100
    invoke-static {v1, v3}, Lv4/a;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-eqz v1, :cond_7

    .line 105
    .line 106
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->i:Ljava/util/ArrayList;

    .line 107
    .line 108
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaInfo;->i:Ljava/util/ArrayList;

    .line 109
    .line 110
    invoke-static {v1, v3}, Lv4/a;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-eqz v1, :cond_7

    .line 115
    .line 116
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->j:Ljava/util/ArrayList;

    .line 117
    .line 118
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaInfo;->j:Ljava/util/ArrayList;

    .line 119
    .line 120
    invoke-static {v1, v3}, Lv4/a;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    if-eqz v1, :cond_7

    .line 125
    .line 126
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->k:Ljava/lang/String;

    .line 127
    .line 128
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaInfo;->k:Ljava/lang/String;

    .line 129
    .line 130
    invoke-static {v1, v3}, Lv4/a;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-eqz v1, :cond_7

    .line 135
    .line 136
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->l:Lcom/google/android/gms/cast/VastAdsRequest;

    .line 137
    .line 138
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaInfo;->l:Lcom/google/android/gms/cast/VastAdsRequest;

    .line 139
    .line 140
    invoke-static {v1, v3}, Lv4/a;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    if-eqz v1, :cond_7

    .line 145
    .line 146
    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaInfo;->m:J

    .line 147
    .line 148
    iget-wide v5, p1, Lcom/google/android/gms/cast/MediaInfo;->m:J

    .line 149
    .line 150
    cmp-long v1, v3, v5

    .line 151
    .line 152
    if-nez v1, :cond_7

    .line 153
    .line 154
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->n:Ljava/lang/String;

    .line 155
    .line 156
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaInfo;->n:Ljava/lang/String;

    .line 157
    .line 158
    invoke-static {v1, v3}, Lv4/a;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    if-eqz v1, :cond_7

    .line 163
    .line 164
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->o:Ljava/lang/String;

    .line 165
    .line 166
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaInfo;->o:Ljava/lang/String;

    .line 167
    .line 168
    invoke-static {v1, v3}, Lv4/a;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    if-eqz v1, :cond_7

    .line 173
    .line 174
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->p:Ljava/lang/String;

    .line 175
    .line 176
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaInfo;->p:Ljava/lang/String;

    .line 177
    .line 178
    invoke-static {v1, v3}, Lv4/a;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    if-eqz v1, :cond_7

    .line 183
    .line 184
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->q:Ljava/lang/String;

    .line 185
    .line 186
    iget-object p1, p1, Lcom/google/android/gms/cast/MediaInfo;->q:Ljava/lang/String;

    .line 187
    .line 188
    invoke-static {v1, p1}, Lv4/a;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result p1

    .line 192
    if-eqz p1, :cond_7

    .line 193
    .line 194
    return v0

    .line 195
    :cond_7
    return v2
.end method

.method public final hashCode()I
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/google/android/gms/cast/MediaInfo;->b:I

    .line 4
    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-wide v2, v0, Lcom/google/android/gms/cast/MediaInfo;->e:J

    .line 10
    .line 11
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget-object v3, v0, Lcom/google/android/gms/cast/MediaInfo;->r:Lorg/json/JSONObject;

    .line 16
    .line 17
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    iget-object v4, v0, Lcom/google/android/gms/cast/MediaInfo;->i:Ljava/util/ArrayList;

    .line 22
    .line 23
    iget-object v5, v0, Lcom/google/android/gms/cast/MediaInfo;->j:Ljava/util/ArrayList;

    .line 24
    .line 25
    iget-wide v6, v0, Lcom/google/android/gms/cast/MediaInfo;->m:J

    .line 26
    .line 27
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    iget-object v7, v0, Lcom/google/android/gms/cast/MediaInfo;->p:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v8, v0, Lcom/google/android/gms/cast/MediaInfo;->q:Ljava/lang/String;

    .line 34
    .line 35
    iget-object v9, v0, Lcom/google/android/gms/cast/MediaInfo;->a:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v10, v0, Lcom/google/android/gms/cast/MediaInfo;->c:Ljava/lang/String;

    .line 38
    .line 39
    iget-object v11, v0, Lcom/google/android/gms/cast/MediaInfo;->d:Lcom/google/android/gms/cast/MediaMetadata;

    .line 40
    .line 41
    iget-object v12, v0, Lcom/google/android/gms/cast/MediaInfo;->f:Ljava/util/ArrayList;

    .line 42
    .line 43
    iget-object v13, v0, Lcom/google/android/gms/cast/MediaInfo;->g:Lcom/google/android/gms/cast/TextTrackStyle;

    .line 44
    .line 45
    iget-object v14, v0, Lcom/google/android/gms/cast/MediaInfo;->k:Ljava/lang/String;

    .line 46
    .line 47
    iget-object v15, v0, Lcom/google/android/gms/cast/MediaInfo;->l:Lcom/google/android/gms/cast/VastAdsRequest;

    .line 48
    .line 49
    move-object/from16 v16, v8

    .line 50
    .line 51
    iget-object v8, v0, Lcom/google/android/gms/cast/MediaInfo;->n:Ljava/lang/String;

    .line 52
    .line 53
    const/16 v0, 0x10

    .line 54
    .line 55
    new-array v0, v0, [Ljava/lang/Object;

    .line 56
    .line 57
    const/16 v17, 0x0

    .line 58
    .line 59
    aput-object v9, v0, v17

    .line 60
    .line 61
    const/4 v9, 0x1

    .line 62
    aput-object v1, v0, v9

    .line 63
    .line 64
    const/4 v1, 0x2

    .line 65
    aput-object v10, v0, v1

    .line 66
    .line 67
    const/4 v1, 0x3

    .line 68
    aput-object v11, v0, v1

    .line 69
    .line 70
    const/4 v1, 0x4

    .line 71
    aput-object v2, v0, v1

    .line 72
    .line 73
    const/4 v1, 0x5

    .line 74
    aput-object v3, v0, v1

    .line 75
    .line 76
    const/4 v1, 0x6

    .line 77
    aput-object v12, v0, v1

    .line 78
    .line 79
    const/4 v1, 0x7

    .line 80
    aput-object v13, v0, v1

    .line 81
    .line 82
    const/16 v1, 0x8

    .line 83
    .line 84
    aput-object v4, v0, v1

    .line 85
    .line 86
    const/16 v1, 0x9

    .line 87
    .line 88
    aput-object v5, v0, v1

    .line 89
    .line 90
    const/16 v1, 0xa

    .line 91
    .line 92
    aput-object v14, v0, v1

    .line 93
    .line 94
    const/16 v1, 0xb

    .line 95
    .line 96
    aput-object v15, v0, v1

    .line 97
    .line 98
    const/16 v1, 0xc

    .line 99
    .line 100
    aput-object v6, v0, v1

    .line 101
    .line 102
    const/16 v1, 0xd

    .line 103
    .line 104
    aput-object v8, v0, v1

    .line 105
    .line 106
    const/16 v1, 0xe

    .line 107
    .line 108
    aput-object v7, v0, v1

    .line 109
    .line 110
    const/16 v1, 0xf

    .line 111
    .line 112
    aput-object v16, v0, v1

    .line 113
    .line 114
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    return v0
.end method

.method public final j(Lorg/json/JSONObject;)V
    .locals 27

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const-string v3, "whenSkippable"

    .line 6
    .line 7
    const-string v0, "breaks"

    .line 8
    .line 9
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    const-string v5, "duration"

    .line 14
    .line 15
    const-wide/16 v6, 0x3e8

    .line 16
    .line 17
    const-string v8, "id"

    .line 18
    .line 19
    const/4 v9, 0x0

    .line 20
    if-eqz v4, :cond_6

    .line 21
    .line 22
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    new-instance v11, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 33
    .line 34
    .line 35
    const/4 v12, 0x0

    .line 36
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-ge v12, v0, :cond_5

    .line 41
    .line 42
    invoke-virtual {v4, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-nez v0, :cond_1

    .line 47
    .line 48
    :cond_0
    :goto_1
    const/4 v0, 0x0

    .line 49
    goto/16 :goto_4

    .line 50
    .line 51
    :cond_1
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v13

    .line 55
    if-eqz v13, :cond_0

    .line 56
    .line 57
    const-string v13, "position"

    .line 58
    .line 59
    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result v14

    .line 63
    if-nez v14, :cond_2

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    :try_start_0
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v18

    .line 70
    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 71
    .line 72
    .line 73
    move-result-wide v13

    .line 74
    sget-object v15, Lv4/a;->a:Ljava/util/regex/Pattern;

    .line 75
    .line 76
    mul-long v16, v13, v6

    .line 77
    .line 78
    const-string v13, "isWatched"

    .line 79
    .line 80
    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 81
    .line 82
    .line 83
    move-result v21

    .line 84
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 85
    .line 86
    .line 87
    move-result-wide v13

    .line 88
    mul-long v19, v13, v6

    .line 89
    .line 90
    const-string v13, "breakClipIds"

    .line 91
    .line 92
    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 93
    .line 94
    .line 95
    move-result-object v13

    .line 96
    new-array v14, v9, [Ljava/lang/String;

    .line 97
    .line 98
    if-eqz v13, :cond_3

    .line 99
    .line 100
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    .line 101
    .line 102
    .line 103
    move-result v14

    .line 104
    new-array v14, v14, [Ljava/lang/String;

    .line 105
    .line 106
    const/4 v15, 0x0

    .line 107
    :goto_2
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    .line 108
    .line 109
    .line 110
    move-result v9

    .line 111
    if-ge v15, v9, :cond_3

    .line 112
    .line 113
    invoke-virtual {v13, v15}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v9

    .line 117
    aput-object v9, v14, v15

    .line 118
    .line 119
    add-int/lit8 v15, v15, 0x1

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :catch_0
    move-exception v0

    .line 123
    goto :goto_3

    .line 124
    :cond_3
    move-object/from16 v22, v14

    .line 125
    .line 126
    const-string v9, "isEmbedded"

    .line 127
    .line 128
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 129
    .line 130
    .line 131
    move-result v23

    .line 132
    const-string v9, "expanded"

    .line 133
    .line 134
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 135
    .line 136
    .line 137
    move-result v24

    .line 138
    new-instance v0, Lcom/google/android/gms/cast/AdBreakInfo;

    .line 139
    .line 140
    move-object v15, v0

    .line 141
    invoke-direct/range {v15 .. v24}, Lcom/google/android/gms/cast/AdBreakInfo;-><init>(JLjava/lang/String;JZ[Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .line 143
    .line 144
    goto :goto_4

    .line 145
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 150
    .line 151
    new-instance v9, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    const-string v13, "Error while creating an AdBreakInfo from JSON: "

    .line 154
    .line 155
    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    const-string v9, "AdBreakInfo"

    .line 166
    .line 167
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    .line 169
    .line 170
    goto :goto_1

    .line 171
    :goto_4
    if-eqz v0, :cond_4

    .line 172
    .line 173
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    add-int/lit8 v12, v12, 0x1

    .line 177
    .line 178
    const/4 v9, 0x0

    .line 179
    goto/16 :goto_0

    .line 180
    .line 181
    :cond_4
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 182
    .line 183
    .line 184
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    .line 185
    .line 186
    invoke-direct {v0, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 187
    .line 188
    .line 189
    iput-object v0, v1, Lcom/google/android/gms/cast/MediaInfo;->i:Ljava/util/ArrayList;

    .line 190
    .line 191
    :cond_6
    const-string v0, "breakClips"

    .line 192
    .line 193
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 194
    .line 195
    .line 196
    move-result v4

    .line 197
    if-eqz v4, :cond_10

    .line 198
    .line 199
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    new-instance v4, Ljava/util/ArrayList;

    .line 204
    .line 205
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 210
    .line 211
    .line 212
    const/4 v9, 0x0

    .line 213
    :goto_5
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    if-ge v9, v0, :cond_f

    .line 218
    .line 219
    invoke-virtual {v2, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    if-nez v0, :cond_7

    .line 224
    .line 225
    :goto_6
    const/4 v0, 0x0

    .line 226
    goto/16 :goto_d

    .line 227
    .line 228
    :cond_7
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 229
    .line 230
    .line 231
    move-result v11

    .line 232
    if-nez v11, :cond_8

    .line 233
    .line 234
    goto :goto_6

    .line 235
    :cond_8
    :try_start_1
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v13

    .line 239
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 240
    .line 241
    .line 242
    move-result-wide v11

    .line 243
    mul-long v15, v11, v6

    .line 244
    .line 245
    const-string v11, "clickThroughUrl"

    .line 246
    .line 247
    invoke-static {v0, v11}, Lv4/a;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v19

    .line 251
    const-string v11, "contentUrl"

    .line 252
    .line 253
    invoke-static {v0, v11}, Lv4/a;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v17

    .line 257
    const-string v11, "mimeType"

    .line 258
    .line 259
    invoke-static {v0, v11}, Lv4/a;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v11

    .line 263
    if-nez v11, :cond_9

    .line 264
    .line 265
    const-string v11, "contentType"

    .line 266
    .line 267
    invoke-static {v0, v11}, Lv4/a;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v11

    .line 271
    :cond_9
    move-object/from16 v18, v11

    .line 272
    .line 273
    goto :goto_7

    .line 274
    :catch_1
    move-exception v0

    .line 275
    goto/16 :goto_c

    .line 276
    .line 277
    :goto_7
    const-string v11, "title"

    .line 278
    .line 279
    invoke-static {v0, v11}, Lv4/a;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v14

    .line 283
    const-string v11, "customData"

    .line 284
    .line 285
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 286
    .line 287
    .line 288
    move-result-object v11

    .line 289
    const-string v12, "contentId"

    .line 290
    .line 291
    invoke-static {v0, v12}, Lv4/a;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v21

    .line 295
    const-string v12, "posterUrl"

    .line 296
    .line 297
    invoke-static {v0, v12}, Lv4/a;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v22

    .line 301
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 302
    .line 303
    .line 304
    move-result v12

    .line 305
    if-eqz v12, :cond_a

    .line 306
    .line 307
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v12

    .line 311
    check-cast v12, Ljava/lang/Integer;

    .line 312
    .line 313
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 314
    .line 315
    .line 316
    move-result v12

    .line 317
    move-object/from16 p1, v11

    .line 318
    .line 319
    int-to-long v10, v12

    .line 320
    mul-long v10, v10, v6

    .line 321
    .line 322
    :goto_8
    move-wide/from16 v23, v10

    .line 323
    .line 324
    goto :goto_9

    .line 325
    :cond_a
    move-object/from16 p1, v11

    .line 326
    .line 327
    const-wide/16 v10, -0x1

    .line 328
    .line 329
    goto :goto_8

    .line 330
    :goto_9
    const-string v10, "hlsSegmentFormat"

    .line 331
    .line 332
    invoke-static {v0, v10}, Lv4/a;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v25

    .line 336
    const-string v10, "vastAdsRequest"

    .line 337
    .line 338
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    if-nez v0, :cond_b

    .line 343
    .line 344
    const/16 v26, 0x0

    .line 345
    .line 346
    goto :goto_a

    .line 347
    :cond_b
    const-string v10, "adTagUrl"

    .line 348
    .line 349
    invoke-static {v0, v10}, Lv4/a;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v10

    .line 353
    const-string v11, "adsResponse"

    .line 354
    .line 355
    invoke-static {v0, v11}, Lv4/a;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    new-instance v11, Lcom/google/android/gms/cast/VastAdsRequest;

    .line 360
    .line 361
    invoke-direct {v11, v10, v0}, Lcom/google/android/gms/cast/VastAdsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    move-object/from16 v26, v11

    .line 365
    .line 366
    :goto_a
    new-instance v0, Lcom/google/android/gms/cast/AdBreakClipInfo;

    .line 367
    .line 368
    if-eqz p1, :cond_c

    .line 369
    .line 370
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->length()I

    .line 371
    .line 372
    .line 373
    move-result v10

    .line 374
    if-nez v10, :cond_d

    .line 375
    .line 376
    :cond_c
    const/16 v20, 0x0

    .line 377
    .line 378
    goto :goto_b

    .line 379
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v10

    .line 383
    move-object/from16 v20, v10

    .line 384
    .line 385
    :goto_b
    move-object v12, v0

    .line 386
    invoke-direct/range {v12 .. v26}, Lcom/google/android/gms/cast/AdBreakClipInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/google/android/gms/cast/VastAdsRequest;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 387
    .line 388
    .line 389
    goto :goto_d

    .line 390
    :goto_c
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v0

    .line 394
    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 395
    .line 396
    new-instance v10, Ljava/lang/StringBuilder;

    .line 397
    .line 398
    const-string v11, "Error while creating an AdBreakClipInfo from JSON: "

    .line 399
    .line 400
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 401
    .line 402
    .line 403
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    .line 406
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v0

    .line 410
    const-string v10, "AdBreakClipInfo"

    .line 411
    .line 412
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    .line 414
    .line 415
    goto/16 :goto_6

    .line 416
    .line 417
    :goto_d
    if-eqz v0, :cond_e

    .line 418
    .line 419
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    .line 421
    .line 422
    add-int/lit8 v9, v9, 0x1

    .line 423
    .line 424
    goto/16 :goto_5

    .line 425
    .line 426
    :cond_e
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 427
    .line 428
    .line 429
    :cond_f
    new-instance v0, Ljava/util/ArrayList;

    .line 430
    .line 431
    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 432
    .line 433
    .line 434
    iput-object v0, v1, Lcom/google/android/gms/cast/MediaInfo;->j:Ljava/util/ArrayList;

    .line 435
    .line 436
    :cond_10
    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->r:Lorg/json/JSONObject;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    move-object v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->h:Ljava/lang/String;

    .line 13
    .line 14
    const/16 v0, 0x4f45

    .line 15
    .line 16
    invoke-static {p1, v0}, Lo9/d;->V(Landroid/os/Parcel;I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->a:Ljava/lang/String;

    .line 21
    .line 22
    if-nez v2, :cond_1

    .line 23
    .line 24
    const-string v2, ""

    .line 25
    .line 26
    :cond_1
    const/4 v3, 0x2

    .line 27
    invoke-static {p1, v3, v2}, Lo9/d;->R(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const/4 v2, 0x3

    .line 31
    const/4 v3, 0x4

    .line 32
    invoke-static {p1, v2, v3}, Lo9/d;->X(Landroid/os/Parcel;II)V

    .line 33
    .line 34
    .line 35
    iget v2, p0, Lcom/google/android/gms/cast/MediaInfo;->b:I

    .line 36
    .line 37
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    .line 39
    .line 40
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->c:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {p1, v3, v2}, Lo9/d;->R(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const/4 v2, 0x5

    .line 46
    iget-object v3, p0, Lcom/google/android/gms/cast/MediaInfo;->d:Lcom/google/android/gms/cast/MediaMetadata;

    .line 47
    .line 48
    invoke-static {p1, v2, v3, p2}, Lo9/d;->Q(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 49
    .line 50
    .line 51
    const/4 v2, 0x6

    .line 52
    const/16 v3, 0x8

    .line 53
    .line 54
    invoke-static {p1, v2, v3}, Lo9/d;->X(Landroid/os/Parcel;II)V

    .line 55
    .line 56
    .line 57
    iget-wide v4, p0, Lcom/google/android/gms/cast/MediaInfo;->e:J

    .line 58
    .line 59
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 60
    .line 61
    .line 62
    const/4 v2, 0x7

    .line 63
    iget-object v4, p0, Lcom/google/android/gms/cast/MediaInfo;->f:Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-static {p1, v2, v4}, Lo9/d;->U(Landroid/os/Parcel;ILjava/util/List;)V

    .line 66
    .line 67
    .line 68
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->g:Lcom/google/android/gms/cast/TextTrackStyle;

    .line 69
    .line 70
    invoke-static {p1, v3, v2, p2}, Lo9/d;->Q(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 71
    .line 72
    .line 73
    const/16 v2, 0x9

    .line 74
    .line 75
    iget-object v4, p0, Lcom/google/android/gms/cast/MediaInfo;->h:Ljava/lang/String;

    .line 76
    .line 77
    invoke-static {p1, v2, v4}, Lo9/d;->R(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 78
    .line 79
    .line 80
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->i:Ljava/util/ArrayList;

    .line 81
    .line 82
    if-nez v2, :cond_2

    .line 83
    .line 84
    move-object v2, v1

    .line 85
    goto :goto_1

    .line 86
    :cond_2
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    :goto_1
    const/16 v4, 0xa

    .line 91
    .line 92
    invoke-static {p1, v4, v2}, Lo9/d;->U(Landroid/os/Parcel;ILjava/util/List;)V

    .line 93
    .line 94
    .line 95
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->j:Ljava/util/ArrayList;

    .line 96
    .line 97
    if-nez v2, :cond_3

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_3
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    :goto_2
    const/16 v2, 0xb

    .line 105
    .line 106
    invoke-static {p1, v2, v1}, Lo9/d;->U(Landroid/os/Parcel;ILjava/util/List;)V

    .line 107
    .line 108
    .line 109
    const/16 v1, 0xc

    .line 110
    .line 111
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->k:Ljava/lang/String;

    .line 112
    .line 113
    invoke-static {p1, v1, v2}, Lo9/d;->R(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 114
    .line 115
    .line 116
    const/16 v1, 0xd

    .line 117
    .line 118
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->l:Lcom/google/android/gms/cast/VastAdsRequest;

    .line 119
    .line 120
    invoke-static {p1, v1, v2, p2}, Lo9/d;->Q(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 121
    .line 122
    .line 123
    const/16 p2, 0xe

    .line 124
    .line 125
    invoke-static {p1, p2, v3}, Lo9/d;->X(Landroid/os/Parcel;II)V

    .line 126
    .line 127
    .line 128
    iget-wide v1, p0, Lcom/google/android/gms/cast/MediaInfo;->m:J

    .line 129
    .line 130
    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 131
    .line 132
    .line 133
    const/16 p2, 0xf

    .line 134
    .line 135
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->n:Ljava/lang/String;

    .line 136
    .line 137
    invoke-static {p1, p2, v1}, Lo9/d;->R(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 138
    .line 139
    .line 140
    const/16 p2, 0x10

    .line 141
    .line 142
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->o:Ljava/lang/String;

    .line 143
    .line 144
    invoke-static {p1, p2, v1}, Lo9/d;->R(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 145
    .line 146
    .line 147
    const/16 p2, 0x11

    .line 148
    .line 149
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->p:Ljava/lang/String;

    .line 150
    .line 151
    invoke-static {p1, p2, v1}, Lo9/d;->R(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 152
    .line 153
    .line 154
    const/16 p2, 0x12

    .line 155
    .line 156
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->q:Ljava/lang/String;

    .line 157
    .line 158
    invoke-static {p1, p2, v1}, Lo9/d;->R(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-static {p1, v0}, Lo9/d;->W(Landroid/os/Parcel;I)V

    .line 162
    .line 163
    .line 164
    return-void
.end method
