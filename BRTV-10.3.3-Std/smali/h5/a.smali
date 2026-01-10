.class public final Lh5/a;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lh5/a;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 36

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lh5/a;->a:I

    packed-switch v2, :pswitch_data_0

    .line 1
    invoke-static/range {p1 .. p1}, Ln5/d;->V(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 2
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v2, :cond_2

    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    int-to-char v6, v5

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    const/4 v7, 0x3

    if-eq v6, v7, :cond_0

    .line 4
    invoke-static {v1, v5}, Ln5/d;->T(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v1, v5}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 6
    :cond_1
    sget-object v3, Lcom/google/android/gms/cast/MediaLoadRequestData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    invoke-static {v1, v5, v3}, Ln5/d;->j(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/cast/MediaLoadRequestData;

    goto :goto_0

    .line 8
    :cond_2
    invoke-static {v1, v2}, Ln5/d;->r(Landroid/os/Parcel;I)V

    .line 9
    new-instance v1, Lcom/google/android/gms/cast/SessionState;

    .line 10
    invoke-static {v4}, Lv4/a;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/cast/SessionState;-><init>(Lcom/google/android/gms/cast/MediaLoadRequestData;Lorg/json/JSONObject;)V

    return-object v1

    .line 11
    :pswitch_0
    invoke-static/range {p1 .. p1}, Ln5/d;->V(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v6, v4

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    const/4 v15, 0x0

    .line 12
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_3

    .line 13
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    packed-switch v4, :pswitch_data_1

    .line 14
    invoke-static {v1, v3}, Ln5/d;->T(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 15
    :pswitch_1
    invoke-static {v1, v3}, Ln5/d;->K(Landroid/os/Parcel;I)I

    move-result v15

    goto :goto_1

    .line 16
    :pswitch_2
    invoke-static {v1, v3}, Ln5/d;->G(Landroid/os/Parcel;I)Ljava/lang/Boolean;

    move-result-object v14

    goto :goto_1

    .line 17
    :pswitch_3
    invoke-static {v1, v3}, Ln5/d;->G(Landroid/os/Parcel;I)Ljava/lang/Boolean;

    move-result-object v13

    goto :goto_1

    .line 18
    :pswitch_4
    invoke-static {v1, v3}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    .line 19
    :pswitch_5
    invoke-static {v1, v3}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    :pswitch_6
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 20
    invoke-static {v1, v3, v4}, Ln5/d;->j(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Landroid/net/Uri;

    goto :goto_1

    .line 21
    :pswitch_7
    invoke-static {v1, v3}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 22
    :pswitch_8
    invoke-static {v1, v3}, Ln5/d;->n(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    move-result-object v8

    goto :goto_1

    .line 23
    :pswitch_9
    sget-object v4, Lcom/google/android/gms/common/images/WebImage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 24
    invoke-static {v1, v3, v4}, Ln5/d;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    goto :goto_1

    .line 25
    :pswitch_a
    invoke-static {v1, v3}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 26
    :pswitch_b
    invoke-static {v1, v3}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 27
    :cond_3
    invoke-static {v1, v2}, Ln5/d;->r(Landroid/os/Parcel;I)V

    .line 28
    new-instance v1, Lcom/google/android/gms/cast/ApplicationMetadata;

    move-object v5, v1

    invoke-direct/range {v5 .. v15}, Lcom/google/android/gms/cast/ApplicationMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;I)V

    return-object v1

    .line 29
    :pswitch_c
    invoke-static/range {p1 .. p1}, Ln5/d;->V(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v11, v3

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object/from16 v16, v14

    move-wide v8, v5

    const/4 v10, 0x0

    const/4 v15, 0x0

    .line 30
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v2, :cond_4

    .line 31
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-char v5, v4

    packed-switch v5, :pswitch_data_2

    .line 32
    invoke-static {v1, v4}, Ln5/d;->T(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 33
    :pswitch_d
    invoke-static {v1, v4}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 34
    :pswitch_e
    invoke-static {v1, v4}, Ln5/d;->n(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v16, v4

    goto :goto_2

    .line 35
    :pswitch_f
    invoke-static {v1, v4}, Ln5/d;->K(Landroid/os/Parcel;I)I

    move-result v4

    move v15, v4

    goto :goto_2

    .line 36
    :pswitch_10
    invoke-static {v1, v4}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v4

    move-object v14, v4

    goto :goto_2

    .line 37
    :pswitch_11
    invoke-static {v1, v4}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v4

    move-object v13, v4

    goto :goto_2

    .line 38
    :pswitch_12
    invoke-static {v1, v4}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v4

    move-object v12, v4

    goto :goto_2

    .line 39
    :pswitch_13
    invoke-static {v1, v4}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v4

    move-object v11, v4

    goto :goto_2

    .line 40
    :pswitch_14
    invoke-static {v1, v4}, Ln5/d;->K(Landroid/os/Parcel;I)I

    move-result v4

    move v10, v4

    goto :goto_2

    .line 41
    :pswitch_15
    invoke-static {v1, v4}, Ln5/d;->M(Landroid/os/Parcel;I)J

    move-result-wide v4

    move-wide v8, v4

    goto :goto_2

    .line 42
    :cond_4
    invoke-static {v1, v2}, Ln5/d;->r(Landroid/os/Parcel;I)V

    .line 43
    new-instance v1, Lcom/google/android/gms/cast/MediaTrack;

    .line 44
    invoke-static {v3}, Lv4/a;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    move-object v7, v1

    .line 45
    invoke-direct/range {v7 .. v17}, Lcom/google/android/gms/cast/MediaTrack;-><init>(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lorg/json/JSONObject;)V

    return-object v1

    .line 46
    :pswitch_16
    invoke-static/range {p1 .. p1}, Ln5/d;->V(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v10, v3

    move-object/from16 v25, v10

    move-object/from16 v28, v25

    move-object/from16 v30, v28

    move-object/from16 v32, v30

    move-object/from16 v33, v32

    move-object/from16 v34, v33

    move-object/from16 v35, v34

    move-wide v14, v5

    move-wide/from16 v22, v14

    move-wide v11, v7

    move-wide/from16 v18, v11

    move-wide/from16 v20, v18

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v31, 0x0

    .line 47
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_5

    .line 48
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    packed-switch v4, :pswitch_data_3

    .line 49
    invoke-static {v1, v3}, Ln5/d;->T(Landroid/os/Parcel;I)V

    goto :goto_3

    .line 50
    :pswitch_17
    sget-object v4, Lcom/google/android/gms/cast/MediaQueueData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 51
    invoke-static {v1, v3, v4}, Ln5/d;->j(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/cast/MediaQueueData;

    move-object/from16 v35, v3

    goto :goto_3

    .line 52
    :pswitch_18
    sget-object v4, Lcom/google/android/gms/cast/MediaLiveSeekableRange;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 53
    invoke-static {v1, v3, v4}, Ln5/d;->j(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/cast/MediaLiveSeekableRange;

    move-object/from16 v34, v3

    goto :goto_3

    .line 54
    :pswitch_19
    sget-object v4, Lcom/google/android/gms/cast/VideoInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 55
    invoke-static {v1, v3, v4}, Ln5/d;->j(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/cast/VideoInfo;

    move-object/from16 v33, v3

    goto :goto_3

    .line 56
    :pswitch_1a
    sget-object v4, Lcom/google/android/gms/cast/AdBreakStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 57
    invoke-static {v1, v3, v4}, Ln5/d;->j(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/cast/AdBreakStatus;

    move-object/from16 v32, v3

    goto :goto_3

    .line 58
    :pswitch_1b
    invoke-static {v1, v3}, Ln5/d;->F(Landroid/os/Parcel;I)Z

    move-result v3

    move/from16 v31, v3

    goto :goto_3

    .line 59
    :pswitch_1c
    sget-object v4, Lcom/google/android/gms/cast/MediaQueueItem;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 60
    invoke-static {v1, v3, v4}, Ln5/d;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v30, v3

    goto :goto_3

    .line 61
    :pswitch_1d
    invoke-static {v1, v3}, Ln5/d;->K(Landroid/os/Parcel;I)I

    move-result v3

    move/from16 v29, v3

    goto :goto_3

    .line 62
    :pswitch_1e
    invoke-static {v1, v3}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v28, v3

    goto :goto_3

    .line 63
    :pswitch_1f
    invoke-static {v1, v3}, Ln5/d;->K(Landroid/os/Parcel;I)I

    move-result v3

    move/from16 v27, v3

    goto :goto_3

    .line 64
    :pswitch_20
    invoke-static {v1, v3}, Ln5/d;->K(Landroid/os/Parcel;I)I

    move-result v3

    move/from16 v26, v3

    goto :goto_3

    .line 65
    :pswitch_21
    invoke-static {v1, v3}, Ln5/d;->i(Landroid/os/Parcel;I)[J

    move-result-object v3

    move-object/from16 v25, v3

    goto :goto_3

    .line 66
    :pswitch_22
    invoke-static {v1, v3}, Ln5/d;->F(Landroid/os/Parcel;I)Z

    move-result v3

    move/from16 v24, v3

    goto :goto_3

    .line 67
    :pswitch_23
    invoke-static {v1, v3}, Ln5/d;->H(Landroid/os/Parcel;I)D

    move-result-wide v3

    move-wide/from16 v22, v3

    goto :goto_3

    .line 68
    :pswitch_24
    invoke-static {v1, v3}, Ln5/d;->M(Landroid/os/Parcel;I)J

    move-result-wide v3

    move-wide/from16 v20, v3

    goto/16 :goto_3

    .line 69
    :pswitch_25
    invoke-static {v1, v3}, Ln5/d;->M(Landroid/os/Parcel;I)J

    move-result-wide v3

    move-wide/from16 v18, v3

    goto/16 :goto_3

    .line 70
    :pswitch_26
    invoke-static {v1, v3}, Ln5/d;->K(Landroid/os/Parcel;I)I

    move-result v3

    move/from16 v17, v3

    goto/16 :goto_3

    .line 71
    :pswitch_27
    invoke-static {v1, v3}, Ln5/d;->K(Landroid/os/Parcel;I)I

    move-result v3

    move/from16 v16, v3

    goto/16 :goto_3

    .line 72
    :pswitch_28
    invoke-static {v1, v3}, Ln5/d;->H(Landroid/os/Parcel;I)D

    move-result-wide v3

    move-wide v14, v3

    goto/16 :goto_3

    .line 73
    :pswitch_29
    invoke-static {v1, v3}, Ln5/d;->K(Landroid/os/Parcel;I)I

    move-result v3

    move v13, v3

    goto/16 :goto_3

    .line 74
    :pswitch_2a
    invoke-static {v1, v3}, Ln5/d;->M(Landroid/os/Parcel;I)J

    move-result-wide v3

    move-wide v11, v3

    goto/16 :goto_3

    .line 75
    :pswitch_2b
    sget-object v4, Lcom/google/android/gms/cast/MediaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 76
    invoke-static {v1, v3, v4}, Ln5/d;->j(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/cast/MediaInfo;

    move-object v10, v3

    goto/16 :goto_3

    .line 77
    :cond_5
    invoke-static {v1, v2}, Ln5/d;->r(Landroid/os/Parcel;I)V

    .line 78
    new-instance v1, Lcom/google/android/gms/cast/MediaStatus;

    move-object v9, v1

    invoke-direct/range {v9 .. v35}, Lcom/google/android/gms/cast/MediaStatus;-><init>(Lcom/google/android/gms/cast/MediaInfo;JIDIIJJDZ[JIILjava/lang/String;ILjava/util/ArrayList;ZLcom/google/android/gms/cast/AdBreakStatus;Lcom/google/android/gms/cast/VideoInfo;Lcom/google/android/gms/cast/MediaLiveSeekableRange;Lcom/google/android/gms/cast/MediaQueueData;)V

    return-object v1

    .line 79
    :pswitch_2c
    invoke-static/range {p1 .. p1}, Ln5/d;->V(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v8, v3

    move-object/from16 v17, v8

    move-object/from16 v18, v17

    move-wide v11, v4

    move-wide v13, v11

    move-wide v15, v13

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 80
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_6

    .line 81
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    packed-switch v4, :pswitch_data_4

    .line 82
    invoke-static {v1, v3}, Ln5/d;->T(Landroid/os/Parcel;I)V

    goto :goto_4

    .line 83
    :pswitch_2d
    invoke-static {v1, v3}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v18, v3

    goto :goto_4

    .line 84
    :pswitch_2e
    invoke-static {v1, v3}, Ln5/d;->i(Landroid/os/Parcel;I)[J

    move-result-object v3

    move-object/from16 v17, v3

    goto :goto_4

    .line 85
    :pswitch_2f
    invoke-static {v1, v3}, Ln5/d;->H(Landroid/os/Parcel;I)D

    move-result-wide v3

    move-wide v15, v3

    goto :goto_4

    .line 86
    :pswitch_30
    invoke-static {v1, v3}, Ln5/d;->H(Landroid/os/Parcel;I)D

    move-result-wide v3

    move-wide v13, v3

    goto :goto_4

    .line 87
    :pswitch_31
    invoke-static {v1, v3}, Ln5/d;->H(Landroid/os/Parcel;I)D

    move-result-wide v3

    move-wide v11, v3

    goto :goto_4

    .line 88
    :pswitch_32
    invoke-static {v1, v3}, Ln5/d;->F(Landroid/os/Parcel;I)Z

    move-result v3

    move v10, v3

    goto :goto_4

    .line 89
    :pswitch_33
    invoke-static {v1, v3}, Ln5/d;->K(Landroid/os/Parcel;I)I

    move-result v3

    move v9, v3

    goto :goto_4

    .line 90
    :pswitch_34
    sget-object v4, Lcom/google/android/gms/cast/MediaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 91
    invoke-static {v1, v3, v4}, Ln5/d;->j(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/cast/MediaInfo;

    move-object v8, v3

    goto :goto_4

    .line 92
    :cond_6
    invoke-static {v1, v2}, Ln5/d;->r(Landroid/os/Parcel;I)V

    .line 93
    new-instance v1, Lcom/google/android/gms/cast/MediaQueueItem;

    move-object v7, v1

    invoke-direct/range {v7 .. v18}, Lcom/google/android/gms/cast/MediaQueueItem;-><init>(Lcom/google/android/gms/cast/MediaInfo;IZDDD[JLjava/lang/String;)V

    return-object v1

    .line 94
    :pswitch_35
    invoke-static/range {p1 .. p1}, Ln5/d;->V(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-wide v7, v4

    move-object v9, v6

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 95
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v14

    if-ge v14, v2, :cond_7

    .line 96
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    int-to-char v15, v14

    packed-switch v15, :pswitch_data_5

    .line 97
    invoke-static {v1, v14}, Ln5/d;->T(Landroid/os/Parcel;I)V

    goto :goto_5

    .line 98
    :pswitch_36
    invoke-static {v1, v14}, Ln5/d;->F(Landroid/os/Parcel;I)Z

    move-result v6

    goto :goto_5

    .line 99
    :pswitch_37
    invoke-static {v1, v14}, Ln5/d;->M(Landroid/os/Parcel;I)J

    move-result-wide v7

    goto :goto_5

    .line 100
    :pswitch_38
    invoke-static {v1, v14}, Ln5/d;->K(Landroid/os/Parcel;I)I

    move-result v5

    goto :goto_5

    .line 101
    :pswitch_39
    sget-object v13, Lcom/google/android/gms/cast/MediaQueueItem;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 102
    invoke-static {v1, v14, v13}, Ln5/d;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v13

    goto :goto_5

    .line 103
    :pswitch_3a
    invoke-static {v1, v14}, Ln5/d;->K(Landroid/os/Parcel;I)I

    move-result v4

    goto :goto_5

    .line 104
    :pswitch_3b
    sget-object v12, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 105
    invoke-static {v1, v14, v12}, Ln5/d;->j(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;

    goto :goto_5

    .line 106
    :pswitch_3c
    invoke-static {v1, v14}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v11

    goto :goto_5

    .line 107
    :pswitch_3d
    invoke-static {v1, v14}, Ln5/d;->K(Landroid/os/Parcel;I)I

    move-result v3

    goto :goto_5

    .line 108
    :pswitch_3e
    invoke-static {v1, v14}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v10

    goto :goto_5

    .line 109
    :pswitch_3f
    invoke-static {v1, v14}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v9

    goto :goto_5

    .line 110
    :cond_7
    invoke-static {v1, v2}, Ln5/d;->r(Landroid/os/Parcel;I)V

    .line 111
    new-instance v1, Lcom/google/android/gms/cast/MediaQueueData;

    .line 112
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object v9, v1, Lcom/google/android/gms/cast/MediaQueueData;->a:Ljava/lang/String;

    iput-object v10, v1, Lcom/google/android/gms/cast/MediaQueueData;->b:Ljava/lang/String;

    iput v3, v1, Lcom/google/android/gms/cast/MediaQueueData;->c:I

    iput-object v11, v1, Lcom/google/android/gms/cast/MediaQueueData;->d:Ljava/lang/String;

    iput-object v12, v1, Lcom/google/android/gms/cast/MediaQueueData;->e:Lcom/google/android/gms/cast/MediaQueueContainerMetadata;

    iput v4, v1, Lcom/google/android/gms/cast/MediaQueueData;->f:I

    iput-object v13, v1, Lcom/google/android/gms/cast/MediaQueueData;->g:Ljava/util/ArrayList;

    iput v5, v1, Lcom/google/android/gms/cast/MediaQueueData;->h:I

    iput-wide v7, v1, Lcom/google/android/gms/cast/MediaQueueData;->i:J

    iput-boolean v6, v1, Lcom/google/android/gms/cast/MediaQueueData;->j:Z

    return-object v1

    .line 114
    :pswitch_40
    invoke-static/range {p1 .. p1}, Ln5/d;->V(Landroid/os/Parcel;)I

    move-result v2

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v6, v5

    move-object v7, v6

    const/4 v8, 0x0

    .line 115
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v9

    if-ge v9, v2, :cond_d

    .line 116
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    int-to-char v10, v9

    const/4 v11, 0x2

    if-eq v10, v11, :cond_c

    const/4 v11, 0x3

    if-eq v10, v11, :cond_b

    const/4 v11, 0x4

    if-eq v10, v11, :cond_a

    const/4 v11, 0x5

    if-eq v10, v11, :cond_9

    const/4 v11, 0x6

    if-eq v10, v11, :cond_8

    .line 117
    invoke-static {v1, v9}, Ln5/d;->T(Landroid/os/Parcel;I)V

    goto :goto_6

    .line 118
    :cond_8
    invoke-static {v1, v9}, Ln5/d;->H(Landroid/os/Parcel;I)D

    move-result-wide v3

    goto :goto_6

    .line 119
    :cond_9
    sget-object v7, Lcom/google/android/gms/common/images/WebImage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 120
    invoke-static {v1, v9, v7}, Ln5/d;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v7

    goto :goto_6

    .line 121
    :cond_a
    sget-object v6, Lcom/google/android/gms/cast/MediaMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 122
    invoke-static {v1, v9, v6}, Ln5/d;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v6

    goto :goto_6

    .line 123
    :cond_b
    invoke-static {v1, v9}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    .line 124
    :cond_c
    invoke-static {v1, v9}, Ln5/d;->K(Landroid/os/Parcel;I)I

    move-result v8

    goto :goto_6

    .line 125
    :cond_d
    invoke-static {v1, v2}, Ln5/d;->r(Landroid/os/Parcel;I)V

    .line 126
    new-instance v1, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;

    .line 127
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 128
    iput v8, v1, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->a:I

    iput-object v5, v1, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->b:Ljava/lang/String;

    iput-object v6, v1, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->c:Ljava/util/ArrayList;

    iput-object v7, v1, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->d:Ljava/util/ArrayList;

    iput-wide v3, v1, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->e:D

    return-object v1

    .line 129
    :pswitch_41
    invoke-static/range {p1 .. p1}, Ln5/d;->V(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v4

    .line 130
    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-ge v6, v2, :cond_11

    .line 131
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    int-to-char v7, v6

    const/4 v8, 0x2

    if-eq v7, v8, :cond_10

    const/4 v8, 0x3

    if-eq v7, v8, :cond_f

    const/4 v8, 0x4

    if-eq v7, v8, :cond_e

    .line 132
    invoke-static {v1, v6}, Ln5/d;->T(Landroid/os/Parcel;I)V

    goto :goto_7

    .line 133
    :cond_e
    invoke-static {v1, v6}, Ln5/d;->K(Landroid/os/Parcel;I)I

    move-result v3

    goto :goto_7

    .line 134
    :cond_f
    invoke-static {v1, v6}, Ln5/d;->f(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v5

    goto :goto_7

    .line 135
    :cond_10
    sget-object v4, Lcom/google/android/gms/common/images/WebImage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 136
    invoke-static {v1, v6, v4}, Ln5/d;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v4

    goto :goto_7

    .line 137
    :cond_11
    invoke-static {v1, v2}, Ln5/d;->r(Landroid/os/Parcel;I)V

    .line 138
    new-instance v1, Lcom/google/android/gms/cast/MediaMetadata;

    invoke-direct {v1, v4, v5, v3}, Lcom/google/android/gms/cast/MediaMetadata;-><init>(Ljava/util/ArrayList;Landroid/os/Bundle;I)V

    return-object v1

    .line 139
    :pswitch_42
    invoke-static/range {p1 .. p1}, Ln5/d;->V(Landroid/os/Parcel;)I

    move-result v2

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-wide v12, v3

    move-wide/from16 v22, v12

    move-object v9, v5

    move-object v10, v9

    move-object v11, v10

    move-object/from16 v16, v11

    move-object/from16 v18, v16

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-wide v14, v6

    .line 140
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_12

    .line 141
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    packed-switch v4, :pswitch_data_6

    .line 142
    invoke-static {v1, v3}, Ln5/d;->T(Landroid/os/Parcel;I)V

    goto :goto_8

    .line 143
    :pswitch_43
    invoke-static {v1, v3}, Ln5/d;->M(Landroid/os/Parcel;I)J

    move-result-wide v3

    move-wide/from16 v22, v3

    goto :goto_8

    .line 144
    :pswitch_44
    invoke-static {v1, v3}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v21, v3

    goto :goto_8

    .line 145
    :pswitch_45
    invoke-static {v1, v3}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v20, v3

    goto :goto_8

    .line 146
    :pswitch_46
    invoke-static {v1, v3}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v19, v3

    goto :goto_8

    .line 147
    :pswitch_47
    invoke-static {v1, v3}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v18, v3

    goto :goto_8

    .line 148
    :pswitch_48
    invoke-static {v1, v3}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    goto :goto_8

    .line 149
    :pswitch_49
    invoke-static {v1, v3}, Ln5/d;->i(Landroid/os/Parcel;I)[J

    move-result-object v3

    move-object/from16 v16, v3

    goto :goto_8

    .line 150
    :pswitch_4a
    invoke-static {v1, v3}, Ln5/d;->H(Landroid/os/Parcel;I)D

    move-result-wide v3

    move-wide v14, v3

    goto :goto_8

    .line 151
    :pswitch_4b
    invoke-static {v1, v3}, Ln5/d;->M(Landroid/os/Parcel;I)J

    move-result-wide v3

    move-wide v12, v3

    goto :goto_8

    .line 152
    :pswitch_4c
    invoke-static {v1, v3}, Ln5/d;->G(Landroid/os/Parcel;I)Ljava/lang/Boolean;

    move-result-object v3

    move-object v11, v3

    goto :goto_8

    .line 153
    :pswitch_4d
    sget-object v4, Lcom/google/android/gms/cast/MediaQueueData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 154
    invoke-static {v1, v3, v4}, Ln5/d;->j(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/cast/MediaQueueData;

    move-object v10, v3

    goto :goto_8

    .line 155
    :pswitch_4e
    sget-object v4, Lcom/google/android/gms/cast/MediaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 156
    invoke-static {v1, v3, v4}, Ln5/d;->j(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/cast/MediaInfo;

    move-object v9, v3

    goto :goto_8

    .line 157
    :cond_12
    invoke-static {v1, v2}, Ln5/d;->r(Landroid/os/Parcel;I)V

    .line 158
    new-instance v1, Lcom/google/android/gms/cast/MediaLoadRequestData;

    .line 159
    invoke-static {v5}, Lv4/a;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    move-object v8, v1

    .line 160
    invoke-direct/range {v8 .. v23}, Lcom/google/android/gms/cast/MediaLoadRequestData;-><init>(Lcom/google/android/gms/cast/MediaInfo;Lcom/google/android/gms/cast/MediaQueueData;Ljava/lang/Boolean;JD[JLorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v1

    .line 161
    :pswitch_4f
    invoke-static/range {p1 .. p1}, Ln5/d;->V(Landroid/os/Parcel;)I

    move-result v2

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-wide v7, v3

    move-wide v9, v7

    move-wide v13, v9

    move-object v11, v5

    move-object v12, v11

    .line 162
    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_18

    .line 163
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_17

    const/4 v5, 0x3

    if-eq v4, v5, :cond_16

    const/4 v5, 0x4

    if-eq v4, v5, :cond_15

    const/4 v5, 0x5

    if-eq v4, v5, :cond_14

    const/4 v5, 0x6

    if-eq v4, v5, :cond_13

    .line 164
    invoke-static {v1, v3}, Ln5/d;->T(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 165
    :cond_13
    invoke-static {v1, v3}, Ln5/d;->M(Landroid/os/Parcel;I)J

    move-result-wide v3

    move-wide v13, v3

    goto :goto_9

    .line 166
    :cond_14
    invoke-static {v1, v3}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object v12, v3

    goto :goto_9

    .line 167
    :cond_15
    invoke-static {v1, v3}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object v11, v3

    goto :goto_9

    .line 168
    :cond_16
    invoke-static {v1, v3}, Ln5/d;->M(Landroid/os/Parcel;I)J

    move-result-wide v3

    move-wide v9, v3

    goto :goto_9

    .line 169
    :cond_17
    invoke-static {v1, v3}, Ln5/d;->M(Landroid/os/Parcel;I)J

    move-result-wide v3

    move-wide v7, v3

    goto :goto_9

    .line 170
    :cond_18
    invoke-static {v1, v2}, Ln5/d;->r(Landroid/os/Parcel;I)V

    .line 171
    new-instance v1, Lcom/google/android/gms/cast/AdBreakStatus;

    move-object v6, v1

    invoke-direct/range {v6 .. v14}, Lcom/google/android/gms/cast/AdBreakStatus;-><init>(JJLjava/lang/String;Ljava/lang/String;J)V

    return-object v1

    .line 172
    :pswitch_50
    invoke-static/range {p1 .. p1}, Ln5/d;->V(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-wide v7, v4

    move-wide v9, v7

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 173
    :goto_a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_1d

    .line 174
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1c

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1b

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1a

    const/4 v5, 0x5

    if-eq v4, v5, :cond_19

    .line 175
    invoke-static {v1, v3}, Ln5/d;->T(Landroid/os/Parcel;I)V

    goto :goto_a

    .line 176
    :cond_19
    invoke-static {v1, v3}, Ln5/d;->F(Landroid/os/Parcel;I)Z

    move-result v3

    move v12, v3

    goto :goto_a

    .line 177
    :cond_1a
    invoke-static {v1, v3}, Ln5/d;->F(Landroid/os/Parcel;I)Z

    move-result v3

    move v11, v3

    goto :goto_a

    .line 178
    :cond_1b
    invoke-static {v1, v3}, Ln5/d;->M(Landroid/os/Parcel;I)J

    move-result-wide v3

    move-wide v9, v3

    goto :goto_a

    .line 179
    :cond_1c
    invoke-static {v1, v3}, Ln5/d;->M(Landroid/os/Parcel;I)J

    move-result-wide v3

    move-wide v7, v3

    goto :goto_a

    .line 180
    :cond_1d
    invoke-static {v1, v2}, Ln5/d;->r(Landroid/os/Parcel;I)V

    .line 181
    new-instance v1, Lcom/google/android/gms/cast/MediaLiveSeekableRange;

    move-object v6, v1

    invoke-direct/range {v6 .. v12}, Lcom/google/android/gms/cast/MediaLiveSeekableRange;-><init>(JJZZ)V

    return-object v1

    .line 182
    :pswitch_51
    invoke-static/range {p1 .. p1}, Ln5/d;->V(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v8, v3

    move-object v10, v8

    move-object v11, v10

    move-object v14, v11

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    move-object/from16 v23, v20

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    move-object/from16 v26, v25

    move-wide v12, v4

    move-wide/from16 v21, v12

    const/4 v9, 0x0

    .line 183
    :goto_b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_1e

    .line 184
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    packed-switch v4, :pswitch_data_7

    .line 185
    invoke-static {v1, v3}, Ln5/d;->T(Landroid/os/Parcel;I)V

    goto :goto_b

    .line 186
    :pswitch_52
    invoke-static {v1, v3}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v26, v3

    goto :goto_b

    .line 187
    :pswitch_53
    invoke-static {v1, v3}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v25, v3

    goto :goto_b

    .line 188
    :pswitch_54
    invoke-static {v1, v3}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v24, v3

    goto :goto_b

    .line 189
    :pswitch_55
    invoke-static {v1, v3}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v23, v3

    goto :goto_b

    .line 190
    :pswitch_56
    invoke-static {v1, v3}, Ln5/d;->M(Landroid/os/Parcel;I)J

    move-result-wide v3

    move-wide/from16 v21, v3

    goto :goto_b

    .line 191
    :pswitch_57
    sget-object v4, Lcom/google/android/gms/cast/VastAdsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 192
    invoke-static {v1, v3, v4}, Ln5/d;->j(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/cast/VastAdsRequest;

    move-object/from16 v20, v3

    goto :goto_b

    .line 193
    :pswitch_58
    invoke-static {v1, v3}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v19, v3

    goto :goto_b

    .line 194
    :pswitch_59
    sget-object v4, Lcom/google/android/gms/cast/AdBreakClipInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 195
    invoke-static {v1, v3, v4}, Ln5/d;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v18, v3

    goto :goto_b

    .line 196
    :pswitch_5a
    sget-object v4, Lcom/google/android/gms/cast/AdBreakInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 197
    invoke-static {v1, v3, v4}, Ln5/d;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v17, v3

    goto :goto_b

    .line 198
    :pswitch_5b
    invoke-static {v1, v3}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v16, v3

    goto :goto_b

    .line 199
    :pswitch_5c
    sget-object v4, Lcom/google/android/gms/cast/TextTrackStyle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 200
    invoke-static {v1, v3, v4}, Ln5/d;->j(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/cast/TextTrackStyle;

    move-object v15, v3

    goto :goto_b

    .line 201
    :pswitch_5d
    sget-object v4, Lcom/google/android/gms/cast/MediaTrack;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 202
    invoke-static {v1, v3, v4}, Ln5/d;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    move-object v14, v3

    goto :goto_b

    .line 203
    :pswitch_5e
    invoke-static {v1, v3}, Ln5/d;->M(Landroid/os/Parcel;I)J

    move-result-wide v3

    move-wide v12, v3

    goto :goto_b

    .line 204
    :pswitch_5f
    sget-object v4, Lcom/google/android/gms/cast/MediaMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 205
    invoke-static {v1, v3, v4}, Ln5/d;->j(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/cast/MediaMetadata;

    move-object v11, v3

    goto/16 :goto_b

    .line 206
    :pswitch_60
    invoke-static {v1, v3}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object v10, v3

    goto/16 :goto_b

    .line 207
    :pswitch_61
    invoke-static {v1, v3}, Ln5/d;->K(Landroid/os/Parcel;I)I

    move-result v3

    move v9, v3

    goto/16 :goto_b

    .line 208
    :pswitch_62
    invoke-static {v1, v3}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object v8, v3

    goto/16 :goto_b

    .line 209
    :cond_1e
    invoke-static {v1, v2}, Ln5/d;->r(Landroid/os/Parcel;I)V

    .line 210
    new-instance v1, Lcom/google/android/gms/cast/MediaInfo;

    move-object v7, v1

    invoke-direct/range {v7 .. v26}, Lcom/google/android/gms/cast/MediaInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/android/gms/cast/MediaMetadata;JLjava/util/ArrayList;Lcom/google/android/gms/cast/TextTrackStyle;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Lcom/google/android/gms/cast/VastAdsRequest;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 211
    :pswitch_63
    invoke-static/range {p1 .. p1}, Ln5/d;->V(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v7, v3

    move-object v10, v7

    move-object v11, v10

    move-wide v8, v4

    move-object v4, v11

    .line 212
    :goto_c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v2, :cond_25

    .line 213
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    int-to-char v6, v5

    const/4 v12, 0x2

    if-eq v6, v12, :cond_24

    const/4 v12, 0x3

    if-eq v6, v12, :cond_23

    const/4 v12, 0x4

    if-eq v6, v12, :cond_21

    const/4 v12, 0x5

    if-eq v6, v12, :cond_20

    const/4 v12, 0x6

    if-eq v6, v12, :cond_1f

    .line 214
    invoke-static {v1, v5}, Ln5/d;->T(Landroid/os/Parcel;I)V

    goto :goto_c

    .line 215
    :cond_1f
    invoke-static {v1, v5}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_c

    .line 216
    :cond_20
    invoke-static {v1, v5}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v11

    goto :goto_c

    .line 217
    :cond_21
    invoke-static {v1, v5}, Ln5/d;->N(Landroid/os/Parcel;I)I

    move-result v5

    if-nez v5, :cond_22

    move-object v10, v3

    goto :goto_c

    .line 218
    :cond_22
    invoke-static {v1, v5, v12}, Ln5/d;->Z(Landroid/os/Parcel;II)V

    .line 219
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v10, v5

    goto :goto_c

    .line 220
    :cond_23
    invoke-static {v1, v5}, Ln5/d;->M(Landroid/os/Parcel;I)J

    move-result-wide v5

    move-wide v8, v5

    goto :goto_c

    .line 221
    :cond_24
    invoke-static {v1, v5}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_c

    .line 222
    :cond_25
    invoke-static {v1, v2}, Ln5/d;->r(Landroid/os/Parcel;I)V

    .line 223
    new-instance v1, Lcom/google/android/gms/cast/MediaError;

    .line 224
    invoke-static {v4}, Lv4/a;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    move-object v6, v1

    .line 225
    invoke-direct/range {v6 .. v12}, Lcom/google/android/gms/cast/MediaError;-><init>(Ljava/lang/String;JLjava/lang/Integer;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object v1

    .line 226
    :pswitch_64
    invoke-static/range {p1 .. p1}, Ln5/d;->V(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 227
    :goto_d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v7

    if-ge v7, v2, :cond_2a

    .line 228
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    int-to-char v8, v7

    const/4 v9, 0x2

    if-eq v8, v9, :cond_29

    const/4 v9, 0x3

    if-eq v8, v9, :cond_28

    const/4 v9, 0x4

    if-eq v8, v9, :cond_27

    const/4 v9, 0x5

    if-eq v8, v9, :cond_26

    .line 229
    invoke-static {v1, v7}, Ln5/d;->T(Landroid/os/Parcel;I)V

    goto :goto_d

    .line 230
    :cond_26
    sget-object v4, Lcom/google/android/gms/cast/CredentialsData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 231
    invoke-static {v1, v7, v4}, Ln5/d;->j(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/cast/CredentialsData;

    goto :goto_d

    .line 232
    :cond_27
    invoke-static {v1, v7}, Ln5/d;->F(Landroid/os/Parcel;I)Z

    move-result v6

    goto :goto_d

    .line 233
    :cond_28
    invoke-static {v1, v7}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_d

    .line 234
    :cond_29
    invoke-static {v1, v7}, Ln5/d;->F(Landroid/os/Parcel;I)Z

    move-result v5

    goto :goto_d

    .line 235
    :cond_2a
    invoke-static {v1, v2}, Ln5/d;->r(Landroid/os/Parcel;I)V

    .line 236
    new-instance v1, Lcom/google/android/gms/cast/LaunchOptions;

    invoke-direct {v1, v5, v3, v6, v4}, Lcom/google/android/gms/cast/LaunchOptions;-><init>(ZLjava/lang/String;ZLcom/google/android/gms/cast/CredentialsData;)V

    return-object v1

    .line 237
    :pswitch_65
    invoke-static/range {p1 .. p1}, Ln5/d;->V(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    .line 238
    :goto_e
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v2, :cond_2c

    .line 239
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-char v5, v4

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2b

    .line 240
    invoke-static {v1, v4}, Ln5/d;->T(Landroid/os/Parcel;I)V

    goto :goto_e

    .line 241
    :cond_2b
    invoke-static {v1, v4}, Ln5/d;->K(Landroid/os/Parcel;I)I

    move-result v3

    goto :goto_e

    .line 242
    :cond_2c
    invoke-static {v1, v2}, Ln5/d;->r(Landroid/os/Parcel;I)V

    .line 243
    new-instance v1, Lcom/google/android/gms/cast/zzbs;

    invoke-direct {v1, v3}, Lcom/google/android/gms/cast/zzbs;-><init>(I)V

    return-object v1

    .line 244
    :pswitch_66
    invoke-static/range {p1 .. p1}, Ln5/d;->V(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v10, v4

    move-object v14, v10

    move-wide v8, v5

    move-wide v11, v8

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 245
    :goto_f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_2d

    .line 246
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    packed-switch v4, :pswitch_data_8

    .line 247
    invoke-static {v1, v3}, Ln5/d;->T(Landroid/os/Parcel;I)V

    goto :goto_f

    .line 248
    :pswitch_67
    invoke-static {v1, v3}, Ln5/d;->F(Landroid/os/Parcel;I)Z

    move-result v3

    move/from16 v16, v3

    goto :goto_f

    .line 249
    :pswitch_68
    invoke-static {v1, v3}, Ln5/d;->F(Landroid/os/Parcel;I)Z

    move-result v3

    move v15, v3

    goto :goto_f

    .line 250
    :pswitch_69
    invoke-static {v1, v3}, Ln5/d;->l(Landroid/os/Parcel;I)[Ljava/lang/String;

    move-result-object v3

    move-object v14, v3

    goto :goto_f

    .line 251
    :pswitch_6a
    invoke-static {v1, v3}, Ln5/d;->F(Landroid/os/Parcel;I)Z

    move-result v3

    move v13, v3

    goto :goto_f

    .line 252
    :pswitch_6b
    invoke-static {v1, v3}, Ln5/d;->M(Landroid/os/Parcel;I)J

    move-result-wide v3

    move-wide v11, v3

    goto :goto_f

    .line 253
    :pswitch_6c
    invoke-static {v1, v3}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object v10, v3

    goto :goto_f

    .line 254
    :pswitch_6d
    invoke-static {v1, v3}, Ln5/d;->M(Landroid/os/Parcel;I)J

    move-result-wide v3

    move-wide v8, v3

    goto :goto_f

    .line 255
    :cond_2d
    invoke-static {v1, v2}, Ln5/d;->r(Landroid/os/Parcel;I)V

    .line 256
    new-instance v1, Lcom/google/android/gms/cast/AdBreakInfo;

    move-object v7, v1

    invoke-direct/range {v7 .. v16}, Lcom/google/android/gms/cast/AdBreakInfo;-><init>(JLjava/lang/String;JZ[Ljava/lang/String;ZZ)V

    return-object v1

    .line 257
    :pswitch_6e
    invoke-static/range {p1 .. p1}, Ln5/d;->V(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 258
    :goto_10
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v2, :cond_30

    .line 259
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    int-to-char v6, v5

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2f

    const/4 v7, 0x3

    if-eq v6, v7, :cond_2e

    .line 260
    invoke-static {v1, v5}, Ln5/d;->T(Landroid/os/Parcel;I)V

    goto :goto_10

    .line 261
    :cond_2e
    sget-object v4, Lcom/google/android/gms/cast/zzar;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 262
    invoke-static {v1, v5, v4}, Ln5/d;->j(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/cast/zzar;

    goto :goto_10

    .line 263
    :cond_2f
    sget-object v3, Lcom/google/android/gms/cast/zzar;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 264
    invoke-static {v1, v5, v3}, Ln5/d;->j(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/cast/zzar;

    goto :goto_10

    .line 265
    :cond_30
    invoke-static {v1, v2}, Ln5/d;->r(Landroid/os/Parcel;I)V

    .line 266
    new-instance v1, Lcom/google/android/gms/cast/zzat;

    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/cast/zzat;-><init>(Lcom/google/android/gms/cast/zzar;Lcom/google/android/gms/cast/zzar;)V

    return-object v1

    .line 267
    :pswitch_6f
    invoke-static/range {p1 .. p1}, Ln5/d;->V(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 268
    :goto_11
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-ge v6, v2, :cond_34

    .line 269
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    int-to-char v7, v6

    const/4 v8, 0x2

    if-eq v7, v8, :cond_33

    const/4 v8, 0x3

    if-eq v7, v8, :cond_32

    const/4 v8, 0x4

    if-eq v7, v8, :cond_31

    .line 270
    invoke-static {v1, v6}, Ln5/d;->T(Landroid/os/Parcel;I)V

    goto :goto_11

    .line 271
    :cond_31
    invoke-static {v1, v6}, Ln5/d;->I(Landroid/os/Parcel;I)F

    move-result v5

    goto :goto_11

    .line 272
    :cond_32
    invoke-static {v1, v6}, Ln5/d;->I(Landroid/os/Parcel;I)F

    move-result v4

    goto :goto_11

    .line 273
    :cond_33
    invoke-static {v1, v6}, Ln5/d;->I(Landroid/os/Parcel;I)F

    move-result v3

    goto :goto_11

    .line 274
    :cond_34
    invoke-static {v1, v2}, Ln5/d;->r(Landroid/os/Parcel;I)V

    .line 275
    new-instance v1, Lcom/google/android/gms/cast/zzar;

    invoke-direct {v1, v3, v4, v5}, Lcom/google/android/gms/cast/zzar;-><init>(FFF)V

    return-object v1

    .line 276
    :pswitch_70
    invoke-static/range {p1 .. p1}, Ln5/d;->V(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 277
    :goto_12
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v2, :cond_37

    .line 278
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    int-to-char v6, v5

    const/4 v7, 0x1

    if-eq v6, v7, :cond_36

    const/4 v7, 0x2

    if-eq v6, v7, :cond_35

    .line 279
    invoke-static {v1, v5}, Ln5/d;->T(Landroid/os/Parcel;I)V

    goto :goto_12

    .line 280
    :cond_35
    invoke-static {v1, v5}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_12

    .line 281
    :cond_36
    invoke-static {v1, v5}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_12

    .line 282
    :cond_37
    invoke-static {v1, v2}, Ln5/d;->r(Landroid/os/Parcel;I)V

    .line 283
    new-instance v1, Lcom/google/android/gms/cast/CredentialsData;

    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/cast/CredentialsData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 284
    :pswitch_71
    invoke-static/range {p1 .. p1}, Ln5/d;->V(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v7, v3

    move-object v8, v7

    move-object v11, v8

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v19, v16

    move-object/from16 v20, v19

    move-wide v9, v4

    move-wide/from16 v17, v9

    .line 285
    :goto_13
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_38

    .line 286
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    packed-switch v4, :pswitch_data_9

    .line 287
    invoke-static {v1, v3}, Ln5/d;->T(Landroid/os/Parcel;I)V

    goto :goto_13

    .line 288
    :pswitch_72
    sget-object v4, Lcom/google/android/gms/cast/VastAdsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 289
    invoke-static {v1, v3, v4}, Ln5/d;->j(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/cast/VastAdsRequest;

    move-object/from16 v20, v3

    goto :goto_13

    .line 290
    :pswitch_73
    invoke-static {v1, v3}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v19, v3

    goto :goto_13

    .line 291
    :pswitch_74
    invoke-static {v1, v3}, Ln5/d;->M(Landroid/os/Parcel;I)J

    move-result-wide v3

    move-wide/from16 v17, v3

    goto :goto_13

    .line 292
    :pswitch_75
    invoke-static {v1, v3}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v16, v3

    goto :goto_13

    .line 293
    :pswitch_76
    invoke-static {v1, v3}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object v15, v3

    goto :goto_13

    .line 294
    :pswitch_77
    invoke-static {v1, v3}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object v14, v3

    goto :goto_13

    .line 295
    :pswitch_78
    invoke-static {v1, v3}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object v13, v3

    goto :goto_13

    .line 296
    :pswitch_79
    invoke-static {v1, v3}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object v12, v3

    goto :goto_13

    .line 297
    :pswitch_7a
    invoke-static {v1, v3}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object v11, v3

    goto :goto_13

    .line 298
    :pswitch_7b
    invoke-static {v1, v3}, Ln5/d;->M(Landroid/os/Parcel;I)J

    move-result-wide v3

    move-wide v9, v3

    goto :goto_13

    .line 299
    :pswitch_7c
    invoke-static {v1, v3}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object v8, v3

    goto :goto_13

    .line 300
    :pswitch_7d
    invoke-static {v1, v3}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    goto :goto_13

    .line 301
    :cond_38
    invoke-static {v1, v2}, Ln5/d;->r(Landroid/os/Parcel;I)V

    .line 302
    new-instance v1, Lcom/google/android/gms/cast/AdBreakClipInfo;

    move-object v6, v1

    invoke-direct/range {v6 .. v20}, Lcom/google/android/gms/cast/AdBreakClipInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/google/android/gms/cast/VastAdsRequest;)V

    return-object v1

    .line 303
    :pswitch_7e
    invoke-static/range {p1 .. p1}, Ln5/d;->V(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 304
    :goto_14
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-ge v6, v2, :cond_3c

    .line 305
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    int-to-char v7, v6

    const/4 v8, 0x1

    if-eq v7, v8, :cond_3b

    const/4 v8, 0x2

    if-eq v7, v8, :cond_3a

    const/4 v8, 0x3

    if-eq v7, v8, :cond_39

    .line 306
    invoke-static {v1, v6}, Ln5/d;->T(Landroid/os/Parcel;I)V

    goto :goto_14

    .line 307
    :cond_39
    invoke-static {v1, v6}, Ln5/d;->f(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v3

    goto :goto_14

    .line 308
    :cond_3a
    invoke-static {v1, v6}, Ln5/d;->K(Landroid/os/Parcel;I)I

    move-result v5

    goto :goto_14

    .line 309
    :cond_3b
    invoke-static {v1, v6}, Ln5/d;->K(Landroid/os/Parcel;I)I

    move-result v4

    goto :goto_14

    .line 310
    :cond_3c
    invoke-static {v1, v2}, Ln5/d;->r(Landroid/os/Parcel;I)V

    .line 311
    new-instance v1, Lcom/google/android/gms/auth/api/signin/internal/GoogleSignInOptionsExtensionParcelable;

    invoke-direct {v1, v4, v5, v3}, Lcom/google/android/gms/auth/api/signin/internal/GoogleSignInOptionsExtensionParcelable;-><init>(IILandroid/os/Bundle;)V

    return-object v1

    .line 312
    :pswitch_7f
    invoke-static/range {p1 .. p1}, Ln5/d;->V(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v7, v3

    move-object v8, v7

    move-object v12, v8

    move-object v13, v12

    move-object v15, v13

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 313
    :goto_15
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v2, :cond_3d

    .line 314
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-char v5, v4

    packed-switch v5, :pswitch_data_a

    .line 315
    invoke-static {v1, v4}, Ln5/d;->T(Landroid/os/Parcel;I)V

    goto :goto_15

    .line 316
    :pswitch_80
    invoke-static {v1, v4}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v15

    goto :goto_15

    .line 317
    :pswitch_81
    sget-object v3, Lcom/google/android/gms/auth/api/signin/internal/GoogleSignInOptionsExtensionParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 318
    invoke-static {v1, v4, v3}, Ln5/d;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_15

    .line 319
    :pswitch_82
    invoke-static {v1, v4}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v13

    goto :goto_15

    .line 320
    :pswitch_83
    invoke-static {v1, v4}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v12

    goto :goto_15

    .line 321
    :pswitch_84
    invoke-static {v1, v4}, Ln5/d;->F(Landroid/os/Parcel;I)Z

    move-result v11

    goto :goto_15

    .line 322
    :pswitch_85
    invoke-static {v1, v4}, Ln5/d;->F(Landroid/os/Parcel;I)Z

    move-result v10

    goto :goto_15

    .line 323
    :pswitch_86
    invoke-static {v1, v4}, Ln5/d;->F(Landroid/os/Parcel;I)Z

    move-result v9

    goto :goto_15

    :pswitch_87
    sget-object v5, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 324
    invoke-static {v1, v4, v5}, Ln5/d;->j(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Landroid/accounts/Account;

    goto :goto_15

    .line 325
    :pswitch_88
    sget-object v5, Lcom/google/android/gms/common/api/Scope;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 326
    invoke-static {v1, v4, v5}, Ln5/d;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v7

    goto :goto_15

    .line 327
    :pswitch_89
    invoke-static {v1, v4}, Ln5/d;->K(Landroid/os/Parcel;I)I

    move-result v6

    goto :goto_15

    .line 328
    :cond_3d
    invoke-static {v1, v2}, Ln5/d;->r(Landroid/os/Parcel;I)V

    .line 329
    new-instance v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    .line 330
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    if-nez v3, :cond_3e

    goto :goto_17

    .line 331
    :cond_3e
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/auth/api/signin/internal/GoogleSignInOptionsExtensionParcelable;

    .line 332
    iget v4, v3, Lcom/google/android/gms/auth/api/signin/internal/GoogleSignInOptionsExtensionParcelable;->b:I

    .line 333
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    :cond_3f
    :goto_17
    move-object v5, v1

    .line 334
    invoke-direct/range {v5 .. v15}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;-><init>(ILjava/util/ArrayList;Landroid/accounts/Account;ZZZLjava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    return-object v1

    .line 335
    :pswitch_8a
    invoke-static/range {p1 .. p1}, Ln5/d;->V(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v9, v3

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object/from16 v17, v14

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    move-wide v15, v4

    const/4 v8, 0x0

    .line 336
    :goto_18
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_40

    .line 337
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    packed-switch v4, :pswitch_data_b

    .line 338
    invoke-static {v1, v3}, Ln5/d;->T(Landroid/os/Parcel;I)V

    goto :goto_18

    .line 339
    :pswitch_8b
    invoke-static {v1, v3}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v20, v3

    goto :goto_18

    .line 340
    :pswitch_8c
    invoke-static {v1, v3}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v19, v3

    goto :goto_18

    .line 341
    :pswitch_8d
    sget-object v4, Lcom/google/android/gms/common/api/Scope;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 342
    invoke-static {v1, v3, v4}, Ln5/d;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v18, v3

    goto :goto_18

    .line 343
    :pswitch_8e
    invoke-static {v1, v3}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v17, v3

    goto :goto_18

    .line 344
    :pswitch_8f
    invoke-static {v1, v3}, Ln5/d;->M(Landroid/os/Parcel;I)J

    move-result-wide v3

    move-wide v15, v3

    goto :goto_18

    .line 345
    :pswitch_90
    invoke-static {v1, v3}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object v14, v3

    goto :goto_18

    :pswitch_91
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 346
    invoke-static {v1, v3, v4}, Ln5/d;->j(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    move-object v13, v3

    goto :goto_18

    .line 347
    :pswitch_92
    invoke-static {v1, v3}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object v12, v3

    goto :goto_18

    .line 348
    :pswitch_93
    invoke-static {v1, v3}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object v11, v3

    goto :goto_18

    .line 349
    :pswitch_94
    invoke-static {v1, v3}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object v10, v3

    goto :goto_18

    .line 350
    :pswitch_95
    invoke-static {v1, v3}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object v9, v3

    goto :goto_18

    .line 351
    :pswitch_96
    invoke-static {v1, v3}, Ln5/d;->K(Landroid/os/Parcel;I)I

    move-result v3

    move v8, v3

    goto :goto_18

    .line 352
    :cond_40
    invoke-static {v1, v2}, Ln5/d;->r(Landroid/os/Parcel;I)V

    .line 353
    new-instance v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-object v7, v1

    invoke-direct/range {v7 .. v20}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 354
    :pswitch_97
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lj9/i;->c(Ljava/lang/Object;)V

    .line 355
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 356
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    const/4 v5, 0x0

    :goto_19
    if-ge v5, v3, :cond_41

    .line 357
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lj9/i;->c(Ljava/lang/Object;)V

    .line 358
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lj9/i;->c(Ljava/lang/Object;)V

    .line 359
    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    .line 360
    :cond_41
    new-instance v1, Lcoil/memory/MemoryCache$Key;

    invoke-direct {v1, v2, v4}, Lcoil/memory/MemoryCache$Key;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-object v1

    .line 361
    :pswitch_98
    invoke-static/range {p1 .. p1}, Ln5/d;->V(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v3

    move-object v6, v5

    .line 362
    :goto_1a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v7

    if-ge v7, v2, :cond_46

    .line 363
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    int-to-char v8, v7

    const/4 v9, 0x1

    if-eq v8, v9, :cond_45

    const/4 v9, 0x2

    if-eq v8, v9, :cond_43

    const/4 v9, 0x3

    if-eq v8, v9, :cond_42

    .line 364
    invoke-static {v1, v7}, Ln5/d;->T(Landroid/os/Parcel;I)V

    goto :goto_1a

    .line 365
    :cond_42
    sget-object v6, Lcom/google/android/gms/common/server/response/zan;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 366
    invoke-static {v1, v7, v6}, Ln5/d;->j(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/common/server/response/zan;

    goto :goto_1a

    .line 367
    :cond_43
    invoke-static {v1, v7}, Ln5/d;->N(Landroid/os/Parcel;I)I

    move-result v5

    .line 368
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v7

    if-nez v5, :cond_44

    move-object v5, v3

    goto :goto_1a

    .line 369
    :cond_44
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v8

    .line 370
    invoke-virtual {v8, v1, v7, v5}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    add-int/2addr v7, v5

    .line 371
    invoke-virtual {v1, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    move-object v5, v8

    goto :goto_1a

    .line 372
    :cond_45
    invoke-static {v1, v7}, Ln5/d;->K(Landroid/os/Parcel;I)I

    move-result v4

    goto :goto_1a

    .line 373
    :cond_46
    invoke-static {v1, v2}, Ln5/d;->r(Landroid/os/Parcel;I)V

    .line 374
    new-instance v1, Lcom/google/android/gms/common/server/response/SafeParcelResponse;

    invoke-direct {v1, v4, v5, v6}, Lcom/google/android/gms/common/server/response/SafeParcelResponse;-><init>(ILandroid/os/Parcel;Lcom/google/android/gms/common/server/response/zan;)V

    return-object v1

    .line 375
    :pswitch_99
    invoke-static/range {p1 .. p1}, Ln5/d;->V(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v4, v3

    const/4 v5, 0x0

    .line 376
    :goto_1b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-ge v6, v2, :cond_4a

    .line 377
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    int-to-char v7, v6

    const/4 v8, 0x1

    if-eq v7, v8, :cond_49

    const/4 v8, 0x2

    if-eq v7, v8, :cond_48

    const/4 v8, 0x3

    if-eq v7, v8, :cond_47

    .line 378
    invoke-static {v1, v6}, Ln5/d;->T(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 379
    :cond_47
    sget-object v4, Lcom/google/android/gms/common/server/response/zam;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 380
    invoke-static {v1, v6, v4}, Ln5/d;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v4

    goto :goto_1b

    .line 381
    :cond_48
    invoke-static {v1, v6}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1b

    .line 382
    :cond_49
    invoke-static {v1, v6}, Ln5/d;->K(Landroid/os/Parcel;I)I

    move-result v5

    goto :goto_1b

    .line 383
    :cond_4a
    invoke-static {v1, v2}, Ln5/d;->r(Landroid/os/Parcel;I)V

    .line 384
    new-instance v1, Lcom/google/android/gms/common/server/response/zal;

    invoke-direct {v1, v5, v3, v4}, Lcom/google/android/gms/common/server/response/zal;-><init>(ILjava/lang/String;Ljava/util/ArrayList;)V

    return-object v1

    .line 385
    :pswitch_9a
    invoke-static/range {p1 .. p1}, Ln5/d;->V(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v4, v3

    const/4 v5, 0x0

    .line 386
    :goto_1c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-ge v6, v2, :cond_4e

    .line 387
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    int-to-char v7, v6

    const/4 v8, 0x1

    if-eq v7, v8, :cond_4d

    const/4 v8, 0x2

    if-eq v7, v8, :cond_4c

    const/4 v8, 0x3

    if-eq v7, v8, :cond_4b

    .line 388
    invoke-static {v1, v6}, Ln5/d;->T(Landroid/os/Parcel;I)V

    goto :goto_1c

    .line 389
    :cond_4b
    invoke-static {v1, v6}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1c

    .line 390
    :cond_4c
    sget-object v3, Lcom/google/android/gms/common/server/response/zal;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 391
    invoke-static {v1, v6, v3}, Ln5/d;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_1c

    .line 392
    :cond_4d
    invoke-static {v1, v6}, Ln5/d;->K(Landroid/os/Parcel;I)I

    move-result v5

    goto :goto_1c

    .line 393
    :cond_4e
    invoke-static {v1, v2}, Ln5/d;->r(Landroid/os/Parcel;I)V

    .line 394
    new-instance v1, Lcom/google/android/gms/common/server/response/zan;

    invoke-direct {v1, v5, v4, v3}, Lcom/google/android/gms/common/server/response/zan;-><init>(ILjava/lang/String;Ljava/util/ArrayList;)V

    return-object v1

    .line 395
    :pswitch_9b
    invoke-static/range {p1 .. p1}, Ln5/d;->V(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v4, v3

    const/4 v5, 0x0

    .line 396
    :goto_1d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-ge v6, v2, :cond_52

    .line 397
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    int-to-char v7, v6

    const/4 v8, 0x1

    if-eq v7, v8, :cond_51

    const/4 v8, 0x2

    if-eq v7, v8, :cond_50

    const/4 v8, 0x3

    if-eq v7, v8, :cond_4f

    .line 398
    invoke-static {v1, v6}, Ln5/d;->T(Landroid/os/Parcel;I)V

    goto :goto_1d

    .line 399
    :cond_4f
    sget-object v4, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->CREATOR:Li5/a;

    .line 400
    invoke-static {v1, v6, v4}, Ln5/d;->j(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    goto :goto_1d

    .line 401
    :cond_50
    invoke-static {v1, v6}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1d

    .line 402
    :cond_51
    invoke-static {v1, v6}, Ln5/d;->K(Landroid/os/Parcel;I)I

    move-result v5

    goto :goto_1d

    .line 403
    :cond_52
    invoke-static {v1, v2}, Ln5/d;->r(Landroid/os/Parcel;I)V

    .line 404
    new-instance v1, Lcom/google/android/gms/common/server/response/zam;

    invoke-direct {v1, v5, v3, v4}, Lcom/google/android/gms/common/server/response/zam;-><init>(ILjava/lang/String;Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)V

    return-object v1

    .line 405
    :pswitch_9c
    invoke-static/range {p1 .. p1}, Ln5/d;->V(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v4

    const/4 v4, 0x0

    .line 406
    :goto_1e
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-ge v6, v2, :cond_56

    .line 407
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    int-to-char v7, v6

    const/4 v8, 0x1

    if-eq v7, v8, :cond_55

    const/4 v8, 0x2

    if-eq v7, v8, :cond_54

    const/4 v8, 0x3

    if-eq v7, v8, :cond_53

    .line 408
    invoke-static {v1, v6}, Ln5/d;->T(Landroid/os/Parcel;I)V

    goto :goto_1e

    .line 409
    :cond_53
    invoke-static {v1, v6}, Ln5/d;->K(Landroid/os/Parcel;I)I

    move-result v4

    goto :goto_1e

    .line 410
    :cond_54
    invoke-static {v1, v6}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1e

    .line 411
    :cond_55
    invoke-static {v1, v6}, Ln5/d;->K(Landroid/os/Parcel;I)I

    move-result v3

    goto :goto_1e

    .line 412
    :cond_56
    invoke-static {v1, v2}, Ln5/d;->r(Landroid/os/Parcel;I)V

    .line 413
    new-instance v1, Lcom/google/android/gms/common/server/converter/zac;

    invoke-direct {v1, v3, v4, v5}, Lcom/google/android/gms/common/server/converter/zac;-><init>(IILjava/lang/String;)V

    return-object v1

    .line 414
    :pswitch_9d
    invoke-static/range {p1 .. p1}, Ln5/d;->V(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 415
    :goto_1f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v2, :cond_59

    .line 416
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    int-to-char v6, v5

    const/4 v7, 0x1

    if-eq v6, v7, :cond_58

    const/4 v7, 0x2

    if-eq v6, v7, :cond_57

    .line 417
    invoke-static {v1, v5}, Ln5/d;->T(Landroid/os/Parcel;I)V

    goto :goto_1f

    .line 418
    :cond_57
    sget-object v3, Lcom/google/android/gms/common/server/converter/zac;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 419
    invoke-static {v1, v5, v3}, Ln5/d;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_1f

    .line 420
    :cond_58
    invoke-static {v1, v5}, Ln5/d;->K(Landroid/os/Parcel;I)I

    move-result v4

    goto :goto_1f

    .line 421
    :cond_59
    invoke-static {v1, v2}, Ln5/d;->r(Landroid/os/Parcel;I)V

    .line 422
    new-instance v1, Lcom/google/android/gms/common/server/converter/StringToIntConverter;

    invoke-direct {v1, v4, v3}, Lcom/google/android/gms/common/server/converter/StringToIntConverter;-><init>(ILjava/util/ArrayList;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9d
        :pswitch_9c
        :pswitch_9b
        :pswitch_9a
        :pswitch_99
        :pswitch_98
        :pswitch_97
        :pswitch_8a
        :pswitch_7f
        :pswitch_7e
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_35
        :pswitch_2c
        :pswitch_16
        :pswitch_c
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x2
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x2
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x2
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x2
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x2
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x2
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
    .end packed-switch

    :pswitch_data_b
    .packed-switch 0x1
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
    .end packed-switch
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lh5/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-array p1, p1, [Lcom/google/android/gms/cast/SessionState;

    .line 7
    .line 8
    return-object p1

    .line 9
    :pswitch_0
    new-array p1, p1, [Lcom/google/android/gms/cast/ApplicationMetadata;

    .line 10
    .line 11
    return-object p1

    .line 12
    :pswitch_1
    new-array p1, p1, [Lcom/google/android/gms/cast/MediaTrack;

    .line 13
    .line 14
    return-object p1

    .line 15
    :pswitch_2
    new-array p1, p1, [Lcom/google/android/gms/cast/MediaStatus;

    .line 16
    .line 17
    return-object p1

    .line 18
    :pswitch_3
    new-array p1, p1, [Lcom/google/android/gms/cast/MediaQueueItem;

    .line 19
    .line 20
    return-object p1

    .line 21
    :pswitch_4
    new-array p1, p1, [Lcom/google/android/gms/cast/MediaQueueData;

    .line 22
    .line 23
    return-object p1

    .line 24
    :pswitch_5
    new-array p1, p1, [Lcom/google/android/gms/cast/MediaQueueContainerMetadata;

    .line 25
    .line 26
    return-object p1

    .line 27
    :pswitch_6
    new-array p1, p1, [Lcom/google/android/gms/cast/MediaMetadata;

    .line 28
    .line 29
    return-object p1

    .line 30
    :pswitch_7
    new-array p1, p1, [Lcom/google/android/gms/cast/MediaLoadRequestData;

    .line 31
    .line 32
    return-object p1

    .line 33
    :pswitch_8
    new-array p1, p1, [Lcom/google/android/gms/cast/AdBreakStatus;

    .line 34
    .line 35
    return-object p1

    .line 36
    :pswitch_9
    new-array p1, p1, [Lcom/google/android/gms/cast/MediaLiveSeekableRange;

    .line 37
    .line 38
    return-object p1

    .line 39
    :pswitch_a
    new-array p1, p1, [Lcom/google/android/gms/cast/MediaInfo;

    .line 40
    .line 41
    return-object p1

    .line 42
    :pswitch_b
    new-array p1, p1, [Lcom/google/android/gms/cast/MediaError;

    .line 43
    .line 44
    return-object p1

    .line 45
    :pswitch_c
    new-array p1, p1, [Lcom/google/android/gms/cast/LaunchOptions;

    .line 46
    .line 47
    return-object p1

    .line 48
    :pswitch_d
    new-array p1, p1, [Lcom/google/android/gms/cast/zzbs;

    .line 49
    .line 50
    return-object p1

    .line 51
    :pswitch_e
    new-array p1, p1, [Lcom/google/android/gms/cast/AdBreakInfo;

    .line 52
    .line 53
    return-object p1

    .line 54
    :pswitch_f
    new-array p1, p1, [Lcom/google/android/gms/cast/zzat;

    .line 55
    .line 56
    return-object p1

    .line 57
    :pswitch_10
    new-array p1, p1, [Lcom/google/android/gms/cast/zzar;

    .line 58
    .line 59
    return-object p1

    .line 60
    :pswitch_11
    new-array p1, p1, [Lcom/google/android/gms/cast/CredentialsData;

    .line 61
    .line 62
    return-object p1

    .line 63
    :pswitch_12
    new-array p1, p1, [Lcom/google/android/gms/cast/AdBreakClipInfo;

    .line 64
    .line 65
    return-object p1

    .line 66
    :pswitch_13
    new-array p1, p1, [Lcom/google/android/gms/auth/api/signin/internal/GoogleSignInOptionsExtensionParcelable;

    .line 67
    .line 68
    return-object p1

    .line 69
    :pswitch_14
    new-array p1, p1, [Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    .line 70
    .line 71
    return-object p1

    .line 72
    :pswitch_15
    new-array p1, p1, [Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 73
    .line 74
    return-object p1

    .line 75
    :pswitch_16
    new-array p1, p1, [Lcoil/memory/MemoryCache$Key;

    .line 76
    .line 77
    return-object p1

    .line 78
    :pswitch_17
    new-array p1, p1, [Lcom/google/android/gms/common/server/response/SafeParcelResponse;

    .line 79
    .line 80
    return-object p1

    .line 81
    :pswitch_18
    new-array p1, p1, [Lcom/google/android/gms/common/server/response/zal;

    .line 82
    .line 83
    return-object p1

    .line 84
    :pswitch_19
    new-array p1, p1, [Lcom/google/android/gms/common/server/response/zan;

    .line 85
    .line 86
    return-object p1

    .line 87
    :pswitch_1a
    new-array p1, p1, [Lcom/google/android/gms/common/server/response/zam;

    .line 88
    .line 89
    return-object p1

    .line 90
    :pswitch_1b
    new-array p1, p1, [Lcom/google/android/gms/common/server/converter/zac;

    .line 91
    .line 92
    return-object p1

    .line 93
    :pswitch_1c
    new-array p1, p1, [Lcom/google/android/gms/common/server/converter/StringToIntConverter;

    .line 94
    .line 95
    return-object p1

    .line 96
    nop

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
