.class public final Lj5/b;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 26

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    invoke-static/range {p1 .. p1}, Ln5/d;->V(Landroid/os/Parcel;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    const-wide/16 v4, 0x0

    .line 10
    .line 11
    const/4 v6, 0x0

    .line 12
    move-object v12, v3

    .line 13
    move-object v14, v12

    .line 14
    move-object v15, v14

    .line 15
    move-object/from16 v19, v15

    .line 16
    .line 17
    move-object/from16 v20, v19

    .line 18
    .line 19
    move-object/from16 v24, v20

    .line 20
    .line 21
    move-wide v9, v4

    .line 22
    move-wide/from16 v16, v9

    .line 23
    .line 24
    move-wide/from16 v22, v16

    .line 25
    .line 26
    const/4 v8, 0x0

    .line 27
    const/4 v11, 0x0

    .line 28
    const/4 v13, 0x0

    .line 29
    const/16 v18, 0x0

    .line 30
    .line 31
    const/16 v21, 0x0

    .line 32
    .line 33
    const/16 v25, 0x0

    .line 34
    .line 35
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-ge v2, v1, :cond_0

    .line 40
    .line 41
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    int-to-char v3, v2

    .line 46
    packed-switch v3, :pswitch_data_0

    .line 47
    .line 48
    .line 49
    :pswitch_0
    invoke-static {v0, v2}, Ln5/d;->T(Landroid/os/Parcel;I)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :pswitch_1
    invoke-static {v0, v2}, Ln5/d;->F(Landroid/os/Parcel;I)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    move/from16 v25, v2

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :pswitch_2
    invoke-static {v0, v2}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    move-object/from16 v24, v2

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :pswitch_3
    invoke-static {v0, v2}, Ln5/d;->M(Landroid/os/Parcel;I)J

    .line 68
    .line 69
    .line 70
    move-result-wide v2

    .line 71
    move-wide/from16 v22, v2

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :pswitch_4
    invoke-static {v0, v2}, Ln5/d;->I(Landroid/os/Parcel;I)F

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    move/from16 v21, v2

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :pswitch_5
    invoke-static {v0, v2}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    move/from16 v18, v2

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :pswitch_6
    invoke-static {v0, v2}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    move-object/from16 v20, v2

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :pswitch_7
    invoke-static {v0, v2}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    move-object v15, v2

    .line 100
    goto :goto_0

    .line 101
    :pswitch_8
    invoke-static {v0, v2}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    move v11, v2

    .line 106
    goto :goto_0

    .line 107
    :pswitch_9
    invoke-static {v0, v2}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    move-object/from16 v19, v2

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :pswitch_a
    invoke-static {v0, v2}, Ln5/d;->M(Landroid/os/Parcel;I)J

    .line 115
    .line 116
    .line 117
    move-result-wide v2

    .line 118
    move-wide/from16 v16, v2

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :pswitch_b
    invoke-static {v0, v2}, Ln5/d;->n(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    move-object v14, v2

    .line 126
    goto :goto_0

    .line 127
    :pswitch_c
    invoke-static {v0, v2}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    move v13, v2

    .line 132
    goto :goto_0

    .line 133
    :pswitch_d
    invoke-static {v0, v2}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    move-object v12, v2

    .line 138
    goto :goto_0

    .line 139
    :pswitch_e
    invoke-static {v0, v2}, Ln5/d;->M(Landroid/os/Parcel;I)J

    .line 140
    .line 141
    .line 142
    move-result-wide v2

    .line 143
    move-wide v9, v2

    .line 144
    goto :goto_0

    .line 145
    :pswitch_f
    invoke-static {v0, v2}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    move v8, v2

    .line 150
    goto :goto_0

    .line 151
    :cond_0
    invoke-static {v0, v1}, Ln5/d;->r(Landroid/os/Parcel;I)V

    .line 152
    .line 153
    .line 154
    new-instance v0, Lcom/google/android/gms/common/stats/WakeLockEvent;

    .line 155
    .line 156
    move-object v7, v0

    .line 157
    invoke-direct/range {v7 .. v25}, Lcom/google/android/gms/common/stats/WakeLockEvent;-><init>(IJILjava/lang/String;ILjava/util/ArrayList;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;FJLjava/lang/String;Z)V

    .line 158
    .line 159
    .line 160
    return-object v0

    .line 161
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_0
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
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p1, p1, [Lcom/google/android/gms/common/stats/WakeLockEvent;

    .line 2
    .line 3
    return-object p1
.end method
