.class public Lcom/google/android/gms/cast/MediaStatus;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "MyApplication"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/cast/MediaStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Lcom/google/android/gms/cast/MediaInfo;

.field public b:J

.field public c:I

.field public d:D

.field public e:I

.field public f:I

.field public g:J

.field public h:J

.field public i:D

.field public j:Z

.field public k:[J

.field public l:I

.field public m:I

.field public n:Ljava/lang/String;

.field public o:Lorg/json/JSONObject;

.field public p:I

.field public final q:Ljava/util/ArrayList;

.field public r:Z

.field public s:Lcom/google/android/gms/cast/AdBreakStatus;

.field public t:Lcom/google/android/gms/cast/VideoInfo;

.field public u:Lcom/google/android/gms/cast/MediaLiveSeekableRange;

.field public v:Lcom/google/android/gms/cast/MediaQueueData;

.field public w:Z

.field public final x:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "The log tag cannot be null or empty."

    .line 2
    .line 3
    const-string v1, "MediaStatus"

    .line 4
    .line 5
    invoke-static {v1, v0}, Lb5/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lh5/a;

    .line 9
    .line 10
    const/16 v1, 0x1a

    .line 11
    .line 12
    invoke-direct {v0, v1}, Lh5/a;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/google/android/gms/cast/MediaStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/cast/MediaInfo;JIDIIJJDZ[JIILjava/lang/String;ILjava/util/ArrayList;ZLcom/google/android/gms/cast/AdBreakStatus;Lcom/google/android/gms/cast/VideoInfo;Lcom/google/android/gms/cast/MediaLiveSeekableRange;Lcom/google/android/gms/cast/MediaQueueData;)V
    .locals 6

    move-object v0, p0

    move-object/from16 v1, p19

    move-object/from16 v2, p21

    move-object/from16 v3, p26

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v4, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/google/android/gms/cast/MediaStatus;->q:Ljava/util/ArrayList;

    new-instance v4, Landroid/util/SparseArray;

    .line 4
    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, v0, Lcom/google/android/gms/cast/MediaStatus;->x:Landroid/util/SparseArray;

    move-object v4, p1

    iput-object v4, v0, Lcom/google/android/gms/cast/MediaStatus;->a:Lcom/google/android/gms/cast/MediaInfo;

    move-wide v4, p2

    iput-wide v4, v0, Lcom/google/android/gms/cast/MediaStatus;->b:J

    move v4, p4

    iput v4, v0, Lcom/google/android/gms/cast/MediaStatus;->c:I

    move-wide v4, p5

    iput-wide v4, v0, Lcom/google/android/gms/cast/MediaStatus;->d:D

    move v4, p7

    iput v4, v0, Lcom/google/android/gms/cast/MediaStatus;->e:I

    move v4, p8

    iput v4, v0, Lcom/google/android/gms/cast/MediaStatus;->f:I

    move-wide v4, p9

    iput-wide v4, v0, Lcom/google/android/gms/cast/MediaStatus;->g:J

    move-wide/from16 v4, p11

    iput-wide v4, v0, Lcom/google/android/gms/cast/MediaStatus;->h:J

    move-wide/from16 v4, p13

    iput-wide v4, v0, Lcom/google/android/gms/cast/MediaStatus;->i:D

    move/from16 v4, p15

    iput-boolean v4, v0, Lcom/google/android/gms/cast/MediaStatus;->j:Z

    move-object/from16 v4, p16

    iput-object v4, v0, Lcom/google/android/gms/cast/MediaStatus;->k:[J

    move/from16 v4, p17

    iput v4, v0, Lcom/google/android/gms/cast/MediaStatus;->l:I

    move/from16 v4, p18

    iput v4, v0, Lcom/google/android/gms/cast/MediaStatus;->m:I

    iput-object v1, v0, Lcom/google/android/gms/cast/MediaStatus;->n:Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    .line 5
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v5, v0, Lcom/google/android/gms/cast/MediaStatus;->n:Ljava/lang/String;

    invoke-direct {v1, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/google/android/gms/cast/MediaStatus;->o:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move/from16 v1, p20

    goto :goto_1

    .line 6
    :catch_0
    iput-object v4, v0, Lcom/google/android/gms/cast/MediaStatus;->o:Lorg/json/JSONObject;

    iput-object v4, v0, Lcom/google/android/gms/cast/MediaStatus;->n:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object v4, v0, Lcom/google/android/gms/cast/MediaStatus;->o:Lorg/json/JSONObject;

    goto :goto_0

    .line 7
    :goto_1
    iput v1, v0, Lcom/google/android/gms/cast/MediaStatus;->p:I

    if-eqz v2, :cond_1

    .line 8
    invoke-interface/range {p21 .. p21}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 9
    invoke-virtual {p0, v2}, Lcom/google/android/gms/cast/MediaStatus;->m(Ljava/util/ArrayList;)V

    :cond_1
    move/from16 v1, p22

    iput-boolean v1, v0, Lcom/google/android/gms/cast/MediaStatus;->r:Z

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/google/android/gms/cast/MediaStatus;->s:Lcom/google/android/gms/cast/AdBreakStatus;

    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/google/android/gms/cast/MediaStatus;->t:Lcom/google/android/gms/cast/VideoInfo;

    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/google/android/gms/cast/MediaStatus;->u:Lcom/google/android/gms/cast/MediaLiveSeekableRange;

    iput-object v3, v0, Lcom/google/android/gms/cast/MediaStatus;->v:Lcom/google/android/gms/cast/MediaQueueData;

    const/4 v1, 0x0

    if-eqz v3, :cond_2

    .line 10
    iget-boolean v2, v3, Lcom/google/android/gms/cast/MediaQueueData;->j:Z

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    .line 11
    :cond_2
    iput-boolean v1, v0, Lcom/google/android/gms/cast/MediaStatus;->w:Z

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
    instance-of v1, p1, Lcom/google/android/gms/cast/MediaStatus;

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
    check-cast p1, Lcom/google/android/gms/cast/MediaStatus;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->o:Lorg/json/JSONObject;

    .line 14
    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    goto :goto_0

    .line 19
    :cond_2
    const/4 v1, 0x1

    .line 20
    :goto_0
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaStatus;->o:Lorg/json/JSONObject;

    .line 21
    .line 22
    if-eqz v3, :cond_3

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    goto :goto_1

    .line 26
    :cond_3
    const/4 v3, 0x1

    .line 27
    :goto_1
    if-eq v1, v3, :cond_4

    .line 28
    .line 29
    return v2

    .line 30
    :cond_4
    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaStatus;->b:J

    .line 31
    .line 32
    iget-wide v5, p1, Lcom/google/android/gms/cast/MediaStatus;->b:J

    .line 33
    .line 34
    cmp-long v1, v3, v5

    .line 35
    .line 36
    if-nez v1, :cond_6

    .line 37
    .line 38
    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->c:I

    .line 39
    .line 40
    iget v3, p1, Lcom/google/android/gms/cast/MediaStatus;->c:I

    .line 41
    .line 42
    if-ne v1, v3, :cond_6

    .line 43
    .line 44
    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaStatus;->d:D

    .line 45
    .line 46
    iget-wide v5, p1, Lcom/google/android/gms/cast/MediaStatus;->d:D

    .line 47
    .line 48
    cmpl-double v1, v3, v5

    .line 49
    .line 50
    if-nez v1, :cond_6

    .line 51
    .line 52
    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->e:I

    .line 53
    .line 54
    iget v3, p1, Lcom/google/android/gms/cast/MediaStatus;->e:I

    .line 55
    .line 56
    if-ne v1, v3, :cond_6

    .line 57
    .line 58
    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->f:I

    .line 59
    .line 60
    iget v3, p1, Lcom/google/android/gms/cast/MediaStatus;->f:I

    .line 61
    .line 62
    if-ne v1, v3, :cond_6

    .line 63
    .line 64
    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaStatus;->g:J

    .line 65
    .line 66
    iget-wide v5, p1, Lcom/google/android/gms/cast/MediaStatus;->g:J

    .line 67
    .line 68
    cmp-long v1, v3, v5

    .line 69
    .line 70
    if-nez v1, :cond_6

    .line 71
    .line 72
    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaStatus;->i:D

    .line 73
    .line 74
    iget-wide v5, p1, Lcom/google/android/gms/cast/MediaStatus;->i:D

    .line 75
    .line 76
    cmpl-double v1, v3, v5

    .line 77
    .line 78
    if-nez v1, :cond_6

    .line 79
    .line 80
    iget-boolean v1, p0, Lcom/google/android/gms/cast/MediaStatus;->j:Z

    .line 81
    .line 82
    iget-boolean v3, p1, Lcom/google/android/gms/cast/MediaStatus;->j:Z

    .line 83
    .line 84
    if-ne v1, v3, :cond_6

    .line 85
    .line 86
    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->l:I

    .line 87
    .line 88
    iget v3, p1, Lcom/google/android/gms/cast/MediaStatus;->l:I

    .line 89
    .line 90
    if-ne v1, v3, :cond_6

    .line 91
    .line 92
    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->m:I

    .line 93
    .line 94
    iget v3, p1, Lcom/google/android/gms/cast/MediaStatus;->m:I

    .line 95
    .line 96
    if-ne v1, v3, :cond_6

    .line 97
    .line 98
    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->p:I

    .line 99
    .line 100
    iget v3, p1, Lcom/google/android/gms/cast/MediaStatus;->p:I

    .line 101
    .line 102
    if-ne v1, v3, :cond_6

    .line 103
    .line 104
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->k:[J

    .line 105
    .line 106
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaStatus;->k:[J

    .line 107
    .line 108
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([J[J)Z

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-eqz v1, :cond_6

    .line 113
    .line 114
    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaStatus;->h:J

    .line 115
    .line 116
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    iget-wide v3, p1, Lcom/google/android/gms/cast/MediaStatus;->h:J

    .line 121
    .line 122
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    invoke-static {v1, v3}, Lv4/a;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-eqz v1, :cond_6

    .line 131
    .line 132
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->q:Ljava/util/ArrayList;

    .line 133
    .line 134
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaStatus;->q:Ljava/util/ArrayList;

    .line 135
    .line 136
    invoke-static {v1, v3}, Lv4/a;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    if-eqz v1, :cond_6

    .line 141
    .line 142
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->a:Lcom/google/android/gms/cast/MediaInfo;

    .line 143
    .line 144
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaStatus;->a:Lcom/google/android/gms/cast/MediaInfo;

    .line 145
    .line 146
    invoke-static {v1, v3}, Lv4/a;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    if-eqz v1, :cond_6

    .line 151
    .line 152
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->o:Lorg/json/JSONObject;

    .line 153
    .line 154
    if-eqz v1, :cond_5

    .line 155
    .line 156
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaStatus;->o:Lorg/json/JSONObject;

    .line 157
    .line 158
    if-eqz v3, :cond_5

    .line 159
    .line 160
    invoke-static {v1, v3}, Lk5/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    if-eqz v1, :cond_6

    .line 165
    .line 166
    :cond_5
    iget-boolean v1, p0, Lcom/google/android/gms/cast/MediaStatus;->r:Z

    .line 167
    .line 168
    iget-boolean v3, p1, Lcom/google/android/gms/cast/MediaStatus;->r:Z

    .line 169
    .line 170
    if-ne v1, v3, :cond_6

    .line 171
    .line 172
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->s:Lcom/google/android/gms/cast/AdBreakStatus;

    .line 173
    .line 174
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaStatus;->s:Lcom/google/android/gms/cast/AdBreakStatus;

    .line 175
    .line 176
    invoke-static {v1, v3}, Lv4/a;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    if-eqz v1, :cond_6

    .line 181
    .line 182
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->t:Lcom/google/android/gms/cast/VideoInfo;

    .line 183
    .line 184
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaStatus;->t:Lcom/google/android/gms/cast/VideoInfo;

    .line 185
    .line 186
    invoke-static {v1, v3}, Lv4/a;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    if-eqz v1, :cond_6

    .line 191
    .line 192
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->u:Lcom/google/android/gms/cast/MediaLiveSeekableRange;

    .line 193
    .line 194
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaStatus;->u:Lcom/google/android/gms/cast/MediaLiveSeekableRange;

    .line 195
    .line 196
    invoke-static {v1, v3}, Lv4/a;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    if-eqz v1, :cond_6

    .line 201
    .line 202
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->v:Lcom/google/android/gms/cast/MediaQueueData;

    .line 203
    .line 204
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaStatus;->v:Lcom/google/android/gms/cast/MediaQueueData;

    .line 205
    .line 206
    invoke-static {v1, v3}, Lb5/l;->h(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result v1

    .line 210
    if-eqz v1, :cond_6

    .line 211
    .line 212
    iget-boolean v1, p0, Lcom/google/android/gms/cast/MediaStatus;->w:Z

    .line 213
    .line 214
    iget-boolean p1, p1, Lcom/google/android/gms/cast/MediaStatus;->w:Z

    .line 215
    .line 216
    if-ne v1, p1, :cond_6

    .line 217
    .line 218
    return v0

    .line 219
    :cond_6
    return v2
.end method

.method public final hashCode()I
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/cast/MediaStatus;->a:Lcom/google/android/gms/cast/MediaInfo;

    .line 4
    .line 5
    iget-wide v2, v0, Lcom/google/android/gms/cast/MediaStatus;->b:J

    .line 6
    .line 7
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget v3, v0, Lcom/google/android/gms/cast/MediaStatus;->c:I

    .line 12
    .line 13
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    iget-wide v4, v0, Lcom/google/android/gms/cast/MediaStatus;->d:D

    .line 18
    .line 19
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    iget v5, v0, Lcom/google/android/gms/cast/MediaStatus;->e:I

    .line 24
    .line 25
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    iget v6, v0, Lcom/google/android/gms/cast/MediaStatus;->f:I

    .line 30
    .line 31
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    iget-wide v7, v0, Lcom/google/android/gms/cast/MediaStatus;->g:J

    .line 36
    .line 37
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    iget-wide v8, v0, Lcom/google/android/gms/cast/MediaStatus;->h:J

    .line 42
    .line 43
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 44
    .line 45
    .line 46
    move-result-object v8

    .line 47
    iget-wide v9, v0, Lcom/google/android/gms/cast/MediaStatus;->i:D

    .line 48
    .line 49
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 50
    .line 51
    .line 52
    move-result-object v9

    .line 53
    iget-boolean v10, v0, Lcom/google/android/gms/cast/MediaStatus;->j:Z

    .line 54
    .line 55
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 56
    .line 57
    .line 58
    move-result-object v10

    .line 59
    iget-object v11, v0, Lcom/google/android/gms/cast/MediaStatus;->k:[J

    .line 60
    .line 61
    invoke-static {v11}, Ljava/util/Arrays;->hashCode([J)I

    .line 62
    .line 63
    .line 64
    move-result v11

    .line 65
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v11

    .line 69
    iget v12, v0, Lcom/google/android/gms/cast/MediaStatus;->l:I

    .line 70
    .line 71
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v12

    .line 75
    iget v13, v0, Lcom/google/android/gms/cast/MediaStatus;->m:I

    .line 76
    .line 77
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object v13

    .line 81
    iget-object v14, v0, Lcom/google/android/gms/cast/MediaStatus;->o:Lorg/json/JSONObject;

    .line 82
    .line 83
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v14

    .line 87
    iget v15, v0, Lcom/google/android/gms/cast/MediaStatus;->p:I

    .line 88
    .line 89
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object v15

    .line 93
    move-object/from16 v16, v15

    .line 94
    .line 95
    iget-object v15, v0, Lcom/google/android/gms/cast/MediaStatus;->q:Ljava/util/ArrayList;

    .line 96
    .line 97
    move-object/from16 v17, v15

    .line 98
    .line 99
    iget-boolean v15, v0, Lcom/google/android/gms/cast/MediaStatus;->r:Z

    .line 100
    .line 101
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 102
    .line 103
    .line 104
    move-result-object v15

    .line 105
    move-object/from16 v18, v15

    .line 106
    .line 107
    iget-object v15, v0, Lcom/google/android/gms/cast/MediaStatus;->s:Lcom/google/android/gms/cast/AdBreakStatus;

    .line 108
    .line 109
    move-object/from16 v19, v15

    .line 110
    .line 111
    iget-object v15, v0, Lcom/google/android/gms/cast/MediaStatus;->t:Lcom/google/android/gms/cast/VideoInfo;

    .line 112
    .line 113
    move-object/from16 v20, v15

    .line 114
    .line 115
    iget-object v15, v0, Lcom/google/android/gms/cast/MediaStatus;->u:Lcom/google/android/gms/cast/MediaLiveSeekableRange;

    .line 116
    .line 117
    move-object/from16 v21, v15

    .line 118
    .line 119
    iget-object v15, v0, Lcom/google/android/gms/cast/MediaStatus;->v:Lcom/google/android/gms/cast/MediaQueueData;

    .line 120
    .line 121
    const/16 v0, 0x15

    .line 122
    .line 123
    new-array v0, v0, [Ljava/lang/Object;

    .line 124
    .line 125
    const/16 v22, 0x0

    .line 126
    .line 127
    aput-object v1, v0, v22

    .line 128
    .line 129
    const/4 v1, 0x1

    .line 130
    aput-object v2, v0, v1

    .line 131
    .line 132
    const/4 v1, 0x2

    .line 133
    aput-object v3, v0, v1

    .line 134
    .line 135
    const/4 v1, 0x3

    .line 136
    aput-object v4, v0, v1

    .line 137
    .line 138
    const/4 v1, 0x4

    .line 139
    aput-object v5, v0, v1

    .line 140
    .line 141
    const/4 v1, 0x5

    .line 142
    aput-object v6, v0, v1

    .line 143
    .line 144
    const/4 v1, 0x6

    .line 145
    aput-object v7, v0, v1

    .line 146
    .line 147
    const/4 v1, 0x7

    .line 148
    aput-object v8, v0, v1

    .line 149
    .line 150
    const/16 v1, 0x8

    .line 151
    .line 152
    aput-object v9, v0, v1

    .line 153
    .line 154
    const/16 v1, 0x9

    .line 155
    .line 156
    aput-object v10, v0, v1

    .line 157
    .line 158
    const/16 v1, 0xa

    .line 159
    .line 160
    aput-object v11, v0, v1

    .line 161
    .line 162
    const/16 v1, 0xb

    .line 163
    .line 164
    aput-object v12, v0, v1

    .line 165
    .line 166
    const/16 v1, 0xc

    .line 167
    .line 168
    aput-object v13, v0, v1

    .line 169
    .line 170
    const/16 v1, 0xd

    .line 171
    .line 172
    aput-object v14, v0, v1

    .line 173
    .line 174
    const/16 v1, 0xe

    .line 175
    .line 176
    aput-object v16, v0, v1

    .line 177
    .line 178
    const/16 v1, 0xf

    .line 179
    .line 180
    aput-object v17, v0, v1

    .line 181
    .line 182
    const/16 v1, 0x10

    .line 183
    .line 184
    aput-object v18, v0, v1

    .line 185
    .line 186
    const/16 v1, 0x11

    .line 187
    .line 188
    aput-object v19, v0, v1

    .line 189
    .line 190
    const/16 v1, 0x12

    .line 191
    .line 192
    aput-object v20, v0, v1

    .line 193
    .line 194
    const/16 v1, 0x13

    .line 195
    .line 196
    aput-object v21, v0, v1

    .line 197
    .line 198
    const/16 v1, 0x14

    .line 199
    .line 200
    aput-object v15, v0, v1

    .line 201
    .line 202
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    return v0
.end method

.method public final j()Lcom/google/android/gms/cast/AdBreakClipInfo;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->s:Lcom/google/android/gms/cast/AdBreakStatus;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/cast/AdBreakStatus;->d:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    return-object v1

    .line 16
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaStatus;->a:Lcom/google/android/gms/cast/MediaInfo;

    .line 17
    .line 18
    if-nez v2, :cond_2

    .line 19
    .line 20
    return-object v1

    .line 21
    :cond_2
    iget-object v2, v2, Lcom/google/android/gms/cast/MediaInfo;->j:Ljava/util/ArrayList;

    .line 22
    .line 23
    if-nez v2, :cond_3

    .line 24
    .line 25
    move-object v2, v1

    .line 26
    goto :goto_0

    .line 27
    :cond_3
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    :goto_0
    if-eqz v2, :cond_6

    .line 32
    .line 33
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_4

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_6

    .line 49
    .line 50
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    check-cast v3, Lcom/google/android/gms/cast/AdBreakClipInfo;

    .line 55
    .line 56
    iget-object v4, v3, Lcom/google/android/gms/cast/AdBreakClipInfo;->a:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-eqz v4, :cond_5

    .line 63
    .line 64
    return-object v3

    .line 65
    :cond_6
    :goto_1
    return-object v1
.end method

.method public final l(Lorg/json/JSONObject;I)I
    .locals 28

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    const/4 v4, 0x1

    .line 7
    const/4 v5, 0x2

    .line 8
    const-string v6, "extendedStatus"

    .line 9
    .line 10
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    move-result-object v7

    .line 14
    const/4 v8, 0x0

    .line 15
    if-eqz v7, :cond_2

    .line 16
    .line 17
    :try_start_0
    new-instance v9, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v10

    .line 26
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v11

    .line 30
    if-eqz v11, :cond_0

    .line 31
    .line 32
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v11

    .line 36
    check-cast v11, Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catch_0
    nop

    .line 43
    goto :goto_2

    .line 44
    :cond_0
    new-instance v10, Lorg/json/JSONObject;

    .line 45
    .line 46
    new-array v11, v8, [Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v9

    .line 52
    check-cast v9, [Ljava/lang/String;

    .line 53
    .line 54
    invoke-direct {v10, v0, v9}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONObject;[Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v7}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object v9

    .line 61
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v11

    .line 65
    if-eqz v11, :cond_1

    .line 66
    .line 67
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v11

    .line 71
    check-cast v11, Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v12

    .line 77
    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_1
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_2
    :goto_2
    move-object v10, v0

    .line 86
    :goto_3
    const-string v0, "mediaSessionId"

    .line 87
    .line 88
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 89
    .line 90
    .line 91
    move-result-wide v6

    .line 92
    iget-wide v11, v1, Lcom/google/android/gms/cast/MediaStatus;->b:J

    .line 93
    .line 94
    cmp-long v0, v6, v11

    .line 95
    .line 96
    if-eqz v0, :cond_3

    .line 97
    .line 98
    iput-wide v6, v1, Lcom/google/android/gms/cast/MediaStatus;->b:J

    .line 99
    .line 100
    const/4 v0, 0x1

    .line 101
    goto :goto_4

    .line 102
    :cond_3
    const/4 v0, 0x0

    .line 103
    :goto_4
    const-string v6, "playerState"

    .line 104
    .line 105
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 106
    .line 107
    .line 108
    move-result v7

    .line 109
    const/4 v9, 0x3

    .line 110
    if-eqz v7, :cond_e

    .line 111
    .line 112
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    const-string v7, "IDLE"

    .line 117
    .line 118
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v7

    .line 122
    if-eqz v7, :cond_4

    .line 123
    .line 124
    const/4 v6, 0x1

    .line 125
    goto :goto_5

    .line 126
    :cond_4
    const-string v7, "PLAYING"

    .line 127
    .line 128
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v7

    .line 132
    if-eqz v7, :cond_5

    .line 133
    .line 134
    const/4 v6, 0x2

    .line 135
    goto :goto_5

    .line 136
    :cond_5
    const-string v7, "PAUSED"

    .line 137
    .line 138
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v7

    .line 142
    if-eqz v7, :cond_6

    .line 143
    .line 144
    const/4 v6, 0x3

    .line 145
    goto :goto_5

    .line 146
    :cond_6
    const-string v7, "BUFFERING"

    .line 147
    .line 148
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v7

    .line 152
    if-eqz v7, :cond_7

    .line 153
    .line 154
    const/4 v6, 0x4

    .line 155
    goto :goto_5

    .line 156
    :cond_7
    const-string v7, "LOADING"

    .line 157
    .line 158
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v6

    .line 162
    if-eqz v6, :cond_8

    .line 163
    .line 164
    const/4 v6, 0x5

    .line 165
    goto :goto_5

    .line 166
    :cond_8
    const/4 v6, 0x0

    .line 167
    :goto_5
    iget v7, v1, Lcom/google/android/gms/cast/MediaStatus;->e:I

    .line 168
    .line 169
    if-eq v6, v7, :cond_9

    .line 170
    .line 171
    iput v6, v1, Lcom/google/android/gms/cast/MediaStatus;->e:I

    .line 172
    .line 173
    or-int/2addr v0, v5

    .line 174
    :cond_9
    if-ne v6, v4, :cond_e

    .line 175
    .line 176
    const-string v6, "idleReason"

    .line 177
    .line 178
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 179
    .line 180
    .line 181
    move-result v7

    .line 182
    if-eqz v7, :cond_e

    .line 183
    .line 184
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v6

    .line 188
    const-string v7, "CANCELLED"

    .line 189
    .line 190
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-result v7

    .line 194
    if-eqz v7, :cond_a

    .line 195
    .line 196
    const/4 v6, 0x2

    .line 197
    goto :goto_6

    .line 198
    :cond_a
    const-string v7, "INTERRUPTED"

    .line 199
    .line 200
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result v7

    .line 204
    if-eqz v7, :cond_b

    .line 205
    .line 206
    const/4 v6, 0x3

    .line 207
    goto :goto_6

    .line 208
    :cond_b
    const-string v7, "FINISHED"

    .line 209
    .line 210
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result v7

    .line 214
    if-eqz v7, :cond_c

    .line 215
    .line 216
    const/4 v6, 0x1

    .line 217
    goto :goto_6

    .line 218
    :cond_c
    const-string v7, "ERROR"

    .line 219
    .line 220
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result v6

    .line 224
    if-eqz v6, :cond_d

    .line 225
    .line 226
    const/4 v6, 0x4

    .line 227
    goto :goto_6

    .line 228
    :cond_d
    const/4 v6, 0x0

    .line 229
    :goto_6
    iget v7, v1, Lcom/google/android/gms/cast/MediaStatus;->f:I

    .line 230
    .line 231
    if-eq v6, v7, :cond_e

    .line 232
    .line 233
    iput v6, v1, Lcom/google/android/gms/cast/MediaStatus;->f:I

    .line 234
    .line 235
    or-int/2addr v0, v5

    .line 236
    :cond_e
    const-string v6, "playbackRate"

    .line 237
    .line 238
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 239
    .line 240
    .line 241
    move-result v7

    .line 242
    if-eqz v7, :cond_f

    .line 243
    .line 244
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    .line 245
    .line 246
    .line 247
    move-result-wide v6

    .line 248
    iget-wide v12, v1, Lcom/google/android/gms/cast/MediaStatus;->d:D

    .line 249
    .line 250
    cmpl-double v14, v12, v6

    .line 251
    .line 252
    if-eqz v14, :cond_f

    .line 253
    .line 254
    iput-wide v6, v1, Lcom/google/android/gms/cast/MediaStatus;->d:D

    .line 255
    .line 256
    or-int/2addr v0, v5

    .line 257
    :cond_f
    const-string v6, "currentTime"

    .line 258
    .line 259
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 260
    .line 261
    .line 262
    move-result v7

    .line 263
    const-wide v12, 0x408f400000000000L    # 1000.0

    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    if-eqz v7, :cond_11

    .line 269
    .line 270
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    .line 271
    .line 272
    .line 273
    move-result-wide v6

    .line 274
    sget-object v14, Lv4/a;->a:Ljava/util/regex/Pattern;

    .line 275
    .line 276
    mul-double v6, v6, v12

    .line 277
    .line 278
    double-to-long v6, v6

    .line 279
    iget-wide v14, v1, Lcom/google/android/gms/cast/MediaStatus;->g:J

    .line 280
    .line 281
    cmp-long v16, v6, v14

    .line 282
    .line 283
    if-eqz v16, :cond_10

    .line 284
    .line 285
    iput-wide v6, v1, Lcom/google/android/gms/cast/MediaStatus;->g:J

    .line 286
    .line 287
    or-int/2addr v0, v5

    .line 288
    :cond_10
    or-int/lit16 v0, v0, 0x80

    .line 289
    .line 290
    :cond_11
    const-string v6, "supportedMediaCommands"

    .line 291
    .line 292
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 293
    .line 294
    .line 295
    move-result v7

    .line 296
    if-eqz v7, :cond_12

    .line 297
    .line 298
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 299
    .line 300
    .line 301
    move-result-wide v6

    .line 302
    iget-wide v14, v1, Lcom/google/android/gms/cast/MediaStatus;->h:J

    .line 303
    .line 304
    cmp-long v16, v6, v14

    .line 305
    .line 306
    if-eqz v16, :cond_12

    .line 307
    .line 308
    iput-wide v6, v1, Lcom/google/android/gms/cast/MediaStatus;->h:J

    .line 309
    .line 310
    or-int/2addr v0, v5

    .line 311
    :cond_12
    const-string v6, "volume"

    .line 312
    .line 313
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 314
    .line 315
    .line 316
    move-result v7

    .line 317
    if-eqz v7, :cond_14

    .line 318
    .line 319
    if-nez p2, :cond_14

    .line 320
    .line 321
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 322
    .line 323
    .line 324
    move-result-object v6

    .line 325
    const-string v7, "level"

    .line 326
    .line 327
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    .line 328
    .line 329
    .line 330
    move-result-wide v14

    .line 331
    iget-wide v12, v1, Lcom/google/android/gms/cast/MediaStatus;->i:D

    .line 332
    .line 333
    cmpl-double v7, v14, v12

    .line 334
    .line 335
    if-eqz v7, :cond_13

    .line 336
    .line 337
    iput-wide v14, v1, Lcom/google/android/gms/cast/MediaStatus;->i:D

    .line 338
    .line 339
    or-int/2addr v0, v5

    .line 340
    :cond_13
    const-string v7, "muted"

    .line 341
    .line 342
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 343
    .line 344
    .line 345
    move-result v6

    .line 346
    iget-boolean v7, v1, Lcom/google/android/gms/cast/MediaStatus;->j:Z

    .line 347
    .line 348
    if-eq v6, v7, :cond_14

    .line 349
    .line 350
    iput-boolean v6, v1, Lcom/google/android/gms/cast/MediaStatus;->j:Z

    .line 351
    .line 352
    or-int/2addr v0, v5

    .line 353
    :cond_14
    const-string v6, "activeTrackIds"

    .line 354
    .line 355
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 356
    .line 357
    .line 358
    move-result v7

    .line 359
    const/4 v12, 0x0

    .line 360
    if-eqz v7, :cond_15

    .line 361
    .line 362
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 363
    .line 364
    .line 365
    move-result-object v6

    .line 366
    goto :goto_7

    .line 367
    :cond_15
    move-object v6, v12

    .line 368
    :goto_7
    sget-object v7, Lv4/a;->a:Ljava/util/regex/Pattern;

    .line 369
    .line 370
    if-nez v6, :cond_16

    .line 371
    .line 372
    move-object v7, v12

    .line 373
    goto :goto_9

    .line 374
    :cond_16
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    .line 375
    .line 376
    .line 377
    move-result v7

    .line 378
    new-array v7, v7, [J

    .line 379
    .line 380
    const/4 v13, 0x0

    .line 381
    :goto_8
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    .line 382
    .line 383
    .line 384
    move-result v14

    .line 385
    if-ge v13, v14, :cond_17

    .line 386
    .line 387
    invoke-virtual {v6, v13}, Lorg/json/JSONArray;->getLong(I)J

    .line 388
    .line 389
    .line 390
    move-result-wide v14

    .line 391
    aput-wide v14, v7, v13

    .line 392
    .line 393
    add-int/2addr v13, v4

    .line 394
    goto :goto_8

    .line 395
    :cond_17
    :goto_9
    if-eqz v7, :cond_19

    .line 396
    .line 397
    iget-object v6, v1, Lcom/google/android/gms/cast/MediaStatus;->k:[J

    .line 398
    .line 399
    if-nez v6, :cond_18

    .line 400
    .line 401
    goto :goto_b

    .line 402
    :cond_18
    array-length v13, v7

    .line 403
    array-length v6, v6

    .line 404
    if-ne v6, v13, :cond_1a

    .line 405
    .line 406
    const/4 v6, 0x0

    .line 407
    :goto_a
    array-length v13, v7

    .line 408
    if-ge v6, v13, :cond_1b

    .line 409
    .line 410
    iget-object v13, v1, Lcom/google/android/gms/cast/MediaStatus;->k:[J

    .line 411
    .line 412
    aget-wide v14, v13, v6

    .line 413
    .line 414
    aget-wide v17, v7, v6

    .line 415
    .line 416
    cmp-long v13, v14, v17

    .line 417
    .line 418
    if-nez v13, :cond_1a

    .line 419
    .line 420
    add-int/2addr v6, v4

    .line 421
    goto :goto_a

    .line 422
    :cond_19
    iget-object v6, v1, Lcom/google/android/gms/cast/MediaStatus;->k:[J

    .line 423
    .line 424
    if-eqz v6, :cond_1b

    .line 425
    .line 426
    :cond_1a
    :goto_b
    iput-object v7, v1, Lcom/google/android/gms/cast/MediaStatus;->k:[J

    .line 427
    .line 428
    or-int/2addr v0, v5

    .line 429
    :cond_1b
    const-string v6, "customData"

    .line 430
    .line 431
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 432
    .line 433
    .line 434
    move-result v7

    .line 435
    if-eqz v7, :cond_1c

    .line 436
    .line 437
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 438
    .line 439
    .line 440
    move-result-object v6

    .line 441
    iput-object v6, v1, Lcom/google/android/gms/cast/MediaStatus;->o:Lorg/json/JSONObject;

    .line 442
    .line 443
    iput-object v12, v1, Lcom/google/android/gms/cast/MediaStatus;->n:Ljava/lang/String;

    .line 444
    .line 445
    or-int/2addr v0, v5

    .line 446
    :cond_1c
    const-string v6, "media"

    .line 447
    .line 448
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 449
    .line 450
    .line 451
    move-result v7

    .line 452
    if-eqz v7, :cond_1f

    .line 453
    .line 454
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 455
    .line 456
    .line 457
    move-result-object v6

    .line 458
    new-instance v7, Lcom/google/android/gms/cast/MediaInfo;

    .line 459
    .line 460
    invoke-direct {v7, v6}, Lcom/google/android/gms/cast/MediaInfo;-><init>(Lorg/json/JSONObject;)V

    .line 461
    .line 462
    .line 463
    iget-object v13, v1, Lcom/google/android/gms/cast/MediaStatus;->a:Lcom/google/android/gms/cast/MediaInfo;

    .line 464
    .line 465
    if-eqz v13, :cond_1d

    .line 466
    .line 467
    invoke-virtual {v13, v7}, Lcom/google/android/gms/cast/MediaInfo;->equals(Ljava/lang/Object;)Z

    .line 468
    .line 469
    .line 470
    move-result v13

    .line 471
    if-nez v13, :cond_1e

    .line 472
    .line 473
    :cond_1d
    iput-object v7, v1, Lcom/google/android/gms/cast/MediaStatus;->a:Lcom/google/android/gms/cast/MediaInfo;

    .line 474
    .line 475
    or-int/2addr v0, v5

    .line 476
    :cond_1e
    const-string v7, "metadata"

    .line 477
    .line 478
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 479
    .line 480
    .line 481
    move-result v6

    .line 482
    if-eqz v6, :cond_1f

    .line 483
    .line 484
    or-int/2addr v0, v2

    .line 485
    :cond_1f
    const-string v6, "currentItemId"

    .line 486
    .line 487
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 488
    .line 489
    .line 490
    move-result v7

    .line 491
    if-eqz v7, :cond_20

    .line 492
    .line 493
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 494
    .line 495
    .line 496
    move-result v6

    .line 497
    iget v7, v1, Lcom/google/android/gms/cast/MediaStatus;->c:I

    .line 498
    .line 499
    if-eq v7, v6, :cond_20

    .line 500
    .line 501
    iput v6, v1, Lcom/google/android/gms/cast/MediaStatus;->c:I

    .line 502
    .line 503
    or-int/2addr v0, v5

    .line 504
    :cond_20
    const-string v6, "preloadedItemId"

    .line 505
    .line 506
    invoke-virtual {v10, v6, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 507
    .line 508
    .line 509
    move-result v6

    .line 510
    iget v7, v1, Lcom/google/android/gms/cast/MediaStatus;->m:I

    .line 511
    .line 512
    if-eq v7, v6, :cond_21

    .line 513
    .line 514
    iput v6, v1, Lcom/google/android/gms/cast/MediaStatus;->m:I

    .line 515
    .line 516
    or-int/lit8 v0, v0, 0x10

    .line 517
    .line 518
    :cond_21
    const-string v6, "loadingItemId"

    .line 519
    .line 520
    invoke-virtual {v10, v6, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 521
    .line 522
    .line 523
    move-result v6

    .line 524
    iget v7, v1, Lcom/google/android/gms/cast/MediaStatus;->l:I

    .line 525
    .line 526
    if-eq v7, v6, :cond_22

    .line 527
    .line 528
    iput v6, v1, Lcom/google/android/gms/cast/MediaStatus;->l:I

    .line 529
    .line 530
    or-int/2addr v0, v5

    .line 531
    :cond_22
    iget-object v6, v1, Lcom/google/android/gms/cast/MediaStatus;->a:Lcom/google/android/gms/cast/MediaInfo;

    .line 532
    .line 533
    if-nez v6, :cond_23

    .line 534
    .line 535
    const/4 v6, -0x1

    .line 536
    goto :goto_c

    .line 537
    :cond_23
    iget v6, v6, Lcom/google/android/gms/cast/MediaInfo;->b:I

    .line 538
    .line 539
    :goto_c
    iget v13, v1, Lcom/google/android/gms/cast/MediaStatus;->e:I

    .line 540
    .line 541
    iget v14, v1, Lcom/google/android/gms/cast/MediaStatus;->f:I

    .line 542
    .line 543
    iget v15, v1, Lcom/google/android/gms/cast/MediaStatus;->l:I

    .line 544
    .line 545
    if-eq v13, v4, :cond_25

    .line 546
    .line 547
    :cond_24
    const/4 v6, 0x0

    .line 548
    goto :goto_e

    .line 549
    :cond_25
    if-eq v14, v4, :cond_27

    .line 550
    .line 551
    if-eq v14, v5, :cond_26

    .line 552
    .line 553
    if-eq v14, v9, :cond_27

    .line 554
    .line 555
    :goto_d
    const/4 v6, 0x1

    .line 556
    goto :goto_e

    .line 557
    :cond_26
    if-eq v6, v5, :cond_24

    .line 558
    .line 559
    goto :goto_d

    .line 560
    :cond_27
    if-nez v15, :cond_24

    .line 561
    .line 562
    goto :goto_d

    .line 563
    :goto_e
    iget-object v13, v1, Lcom/google/android/gms/cast/MediaStatus;->q:Ljava/util/ArrayList;

    .line 564
    .line 565
    iget-object v14, v1, Lcom/google/android/gms/cast/MediaStatus;->x:Landroid/util/SparseArray;

    .line 566
    .line 567
    const-string v15, "items"

    .line 568
    .line 569
    const-string v7, "repeatMode"

    .line 570
    .line 571
    if-nez v6, :cond_33

    .line 572
    .line 573
    invoke-virtual {v10, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 574
    .line 575
    .line 576
    move-result v6

    .line 577
    if-eqz v6, :cond_29

    .line 578
    .line 579
    invoke-virtual {v10, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 580
    .line 581
    .line 582
    move-result-object v6

    .line 583
    invoke-static {v6}, Lcom/bumptech/glide/d;->v(Ljava/lang/String;)Ljava/lang/Integer;

    .line 584
    .line 585
    .line 586
    move-result-object v6

    .line 587
    if-nez v6, :cond_28

    .line 588
    .line 589
    iget v6, v1, Lcom/google/android/gms/cast/MediaStatus;->p:I

    .line 590
    .line 591
    goto :goto_f

    .line 592
    :cond_28
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 593
    .line 594
    .line 595
    move-result v6

    .line 596
    :goto_f
    iget v2, v1, Lcom/google/android/gms/cast/MediaStatus;->p:I

    .line 597
    .line 598
    if-eq v2, v6, :cond_29

    .line 599
    .line 600
    iput v6, v1, Lcom/google/android/gms/cast/MediaStatus;->p:I

    .line 601
    .line 602
    const/4 v2, 0x1

    .line 603
    goto :goto_10

    .line 604
    :cond_29
    const/4 v2, 0x0

    .line 605
    :goto_10
    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 606
    .line 607
    .line 608
    move-result v6

    .line 609
    if-eqz v6, :cond_31

    .line 610
    .line 611
    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 612
    .line 613
    .line 614
    move-result-object v6

    .line 615
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    .line 616
    .line 617
    .line 618
    move-result v11

    .line 619
    new-instance v12, Landroid/util/SparseArray;

    .line 620
    .line 621
    invoke-direct {v12}, Landroid/util/SparseArray;-><init>()V

    .line 622
    .line 623
    .line 624
    const/4 v9, 0x0

    .line 625
    :goto_11
    if-ge v9, v11, :cond_2a

    .line 626
    .line 627
    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 628
    .line 629
    .line 630
    move-result-object v5

    .line 631
    const-string v8, "itemId"

    .line 632
    .line 633
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 634
    .line 635
    .line 636
    move-result v5

    .line 637
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 638
    .line 639
    .line 640
    move-result-object v5

    .line 641
    invoke-virtual {v12, v9, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 642
    .line 643
    .line 644
    add-int/2addr v9, v4

    .line 645
    const/4 v5, 0x2

    .line 646
    const/4 v8, 0x0

    .line 647
    goto :goto_11

    .line 648
    :cond_2a
    new-instance v5, Ljava/util/ArrayList;

    .line 649
    .line 650
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 651
    .line 652
    .line 653
    const/4 v8, 0x0

    .line 654
    :goto_12
    if-ge v8, v11, :cond_2f

    .line 655
    .line 656
    invoke-virtual {v12, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 657
    .line 658
    .line 659
    move-result-object v9

    .line 660
    check-cast v9, Ljava/lang/Integer;

    .line 661
    .line 662
    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 663
    .line 664
    .line 665
    move-result-object v3

    .line 666
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 667
    .line 668
    .line 669
    move-result v4

    .line 670
    invoke-virtual {v14, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 671
    .line 672
    .line 673
    move-result-object v4

    .line 674
    check-cast v4, Ljava/lang/Integer;

    .line 675
    .line 676
    if-nez v4, :cond_2b

    .line 677
    .line 678
    const/4 v4, 0x0

    .line 679
    goto :goto_13

    .line 680
    :cond_2b
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 681
    .line 682
    .line 683
    move-result v4

    .line 684
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 685
    .line 686
    .line 687
    move-result-object v4

    .line 688
    check-cast v4, Lcom/google/android/gms/cast/MediaQueueItem;

    .line 689
    .line 690
    :goto_13
    if-eqz v4, :cond_2d

    .line 691
    .line 692
    invoke-virtual {v4, v3}, Lcom/google/android/gms/cast/MediaQueueItem;->j(Lorg/json/JSONObject;)Z

    .line 693
    .line 694
    .line 695
    move-result v3

    .line 696
    or-int/2addr v2, v3

    .line 697
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 698
    .line 699
    .line 700
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 701
    .line 702
    .line 703
    move-result v3

    .line 704
    invoke-virtual {v14, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 705
    .line 706
    .line 707
    move-result-object v3

    .line 708
    check-cast v3, Ljava/lang/Integer;

    .line 709
    .line 710
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 711
    .line 712
    .line 713
    move-result v3

    .line 714
    if-eq v8, v3, :cond_2c

    .line 715
    .line 716
    :goto_14
    const/4 v2, 0x1

    .line 717
    :cond_2c
    const/4 v3, 0x1

    .line 718
    goto :goto_15

    .line 719
    :cond_2d
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 720
    .line 721
    .line 722
    move-result v2

    .line 723
    iget v4, v1, Lcom/google/android/gms/cast/MediaStatus;->c:I

    .line 724
    .line 725
    if-ne v2, v4, :cond_2e

    .line 726
    .line 727
    iget-object v2, v1, Lcom/google/android/gms/cast/MediaStatus;->a:Lcom/google/android/gms/cast/MediaInfo;

    .line 728
    .line 729
    if-eqz v2, :cond_2e

    .line 730
    .line 731
    new-instance v4, Lj7/c;

    .line 732
    .line 733
    invoke-direct {v4, v2}, Lj7/c;-><init>(Lcom/google/android/gms/cast/MediaInfo;)V

    .line 734
    .line 735
    .line 736
    invoke-virtual {v4}, Lj7/c;->t()Lcom/google/android/gms/cast/MediaQueueItem;

    .line 737
    .line 738
    .line 739
    move-result-object v2

    .line 740
    invoke-virtual {v2, v3}, Lcom/google/android/gms/cast/MediaQueueItem;->j(Lorg/json/JSONObject;)Z

    .line 741
    .line 742
    .line 743
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 744
    .line 745
    .line 746
    goto :goto_14

    .line 747
    :cond_2e
    new-instance v2, Lcom/google/android/gms/cast/MediaQueueItem;

    .line 748
    .line 749
    invoke-direct {v2, v3}, Lcom/google/android/gms/cast/MediaQueueItem;-><init>(Lorg/json/JSONObject;)V

    .line 750
    .line 751
    .line 752
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 753
    .line 754
    .line 755
    goto :goto_14

    .line 756
    :goto_15
    add-int/2addr v8, v3

    .line 757
    const/4 v4, 0x1

    .line 758
    goto :goto_12

    .line 759
    :cond_2f
    const/4 v3, 0x1

    .line 760
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 761
    .line 762
    .line 763
    move-result v4

    .line 764
    if-eq v4, v11, :cond_30

    .line 765
    .line 766
    const/4 v4, 0x0

    .line 767
    goto :goto_16

    .line 768
    :cond_30
    const/4 v4, 0x1

    .line 769
    :goto_16
    xor-int/2addr v4, v3

    .line 770
    or-int/2addr v2, v4

    .line 771
    invoke-virtual {v1, v5}, Lcom/google/android/gms/cast/MediaStatus;->m(Ljava/util/ArrayList;)V

    .line 772
    .line 773
    .line 774
    :cond_31
    if-eqz v2, :cond_32

    .line 775
    .line 776
    const/16 v2, 0x8

    .line 777
    .line 778
    or-int/2addr v0, v2

    .line 779
    :cond_32
    :goto_17
    move v2, v0

    .line 780
    goto :goto_18

    .line 781
    :cond_33
    const/16 v2, 0x8

    .line 782
    .line 783
    const/4 v3, 0x0

    .line 784
    iput v3, v1, Lcom/google/android/gms/cast/MediaStatus;->c:I

    .line 785
    .line 786
    iput v3, v1, Lcom/google/android/gms/cast/MediaStatus;->l:I

    .line 787
    .line 788
    iput v3, v1, Lcom/google/android/gms/cast/MediaStatus;->m:I

    .line 789
    .line 790
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    .line 791
    .line 792
    .line 793
    move-result v4

    .line 794
    if-nez v4, :cond_32

    .line 795
    .line 796
    or-int/2addr v0, v2

    .line 797
    iput v3, v1, Lcom/google/android/gms/cast/MediaStatus;->p:I

    .line 798
    .line 799
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 800
    .line 801
    .line 802
    invoke-virtual {v14}, Landroid/util/SparseArray;->clear()V

    .line 803
    .line 804
    .line 805
    goto :goto_17

    .line 806
    :goto_18
    const-string v0, "breakStatus"

    .line 807
    .line 808
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 809
    .line 810
    .line 811
    move-result-object v0

    .line 812
    sget-object v3, Lcom/google/android/gms/cast/AdBreakStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 813
    .line 814
    const-wide/16 v3, -0x1

    .line 815
    .line 816
    if-nez v0, :cond_35

    .line 817
    .line 818
    :cond_34
    :goto_19
    const/4 v0, 0x0

    .line 819
    goto :goto_1a

    .line 820
    :cond_35
    const-string v5, "currentBreakTime"

    .line 821
    .line 822
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 823
    .line 824
    .line 825
    move-result v6

    .line 826
    if-eqz v6, :cond_34

    .line 827
    .line 828
    const-string v6, "currentBreakClipTime"

    .line 829
    .line 830
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 831
    .line 832
    .line 833
    move-result v8

    .line 834
    if-nez v8, :cond_36

    .line 835
    .line 836
    goto :goto_19

    .line 837
    :cond_36
    :try_start_1
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 838
    .line 839
    .line 840
    move-result-wide v8

    .line 841
    sget-object v5, Lv4/a;->a:Ljava/util/regex/Pattern;

    .line 842
    .line 843
    const-wide/16 v11, 0x3e8

    .line 844
    .line 845
    mul-long v20, v8, v11

    .line 846
    .line 847
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 848
    .line 849
    .line 850
    move-result-wide v5

    .line 851
    mul-long v22, v5, v11

    .line 852
    .line 853
    const-string v5, "breakId"

    .line 854
    .line 855
    invoke-static {v0, v5}, Lv4/a;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 856
    .line 857
    .line 858
    move-result-object v24

    .line 859
    const-string v5, "breakClipId"

    .line 860
    .line 861
    invoke-static {v0, v5}, Lv4/a;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 862
    .line 863
    .line 864
    move-result-object v25

    .line 865
    const-string v5, "whenSkippable"

    .line 866
    .line 867
    invoke-virtual {v0, v5, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 868
    .line 869
    .line 870
    move-result-wide v5

    .line 871
    cmp-long v0, v5, v3

    .line 872
    .line 873
    if-eqz v0, :cond_37

    .line 874
    .line 875
    mul-long v5, v5, v11

    .line 876
    .line 877
    :cond_37
    move-wide/from16 v26, v5

    .line 878
    .line 879
    new-instance v0, Lcom/google/android/gms/cast/AdBreakStatus;

    .line 880
    .line 881
    move-object/from16 v19, v0

    .line 882
    .line 883
    invoke-direct/range {v19 .. v27}, Lcom/google/android/gms/cast/AdBreakStatus;-><init>(JJLjava/lang/String;Ljava/lang/String;J)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 884
    .line 885
    .line 886
    goto :goto_1a

    .line 887
    :catch_1
    move-exception v0

    .line 888
    const/4 v5, 0x0

    .line 889
    new-array v6, v5, [Ljava/lang/Object;

    .line 890
    .line 891
    sget-object v5, Lcom/google/android/gms/cast/AdBreakStatus;->f:Lv4/b;

    .line 892
    .line 893
    iget-object v8, v5, Lv4/b;->a:Ljava/lang/String;

    .line 894
    .line 895
    const-string v9, "Error while creating an AdBreakClipInfo from JSON"

    .line 896
    .line 897
    invoke-virtual {v5, v9, v6}, Lv4/b;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 898
    .line 899
    .line 900
    move-result-object v5

    .line 901
    invoke-static {v8, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 902
    .line 903
    .line 904
    goto :goto_19

    .line 905
    :goto_1a
    iget-object v5, v1, Lcom/google/android/gms/cast/MediaStatus;->s:Lcom/google/android/gms/cast/AdBreakStatus;

    .line 906
    .line 907
    if-nez v5, :cond_38

    .line 908
    .line 909
    if-nez v0, :cond_39

    .line 910
    .line 911
    :cond_38
    if-eqz v5, :cond_3c

    .line 912
    .line 913
    invoke-virtual {v5, v0}, Lcom/google/android/gms/cast/AdBreakStatus;->equals(Ljava/lang/Object;)Z

    .line 914
    .line 915
    .line 916
    move-result v5

    .line 917
    if-nez v5, :cond_3c

    .line 918
    .line 919
    :cond_39
    if-eqz v0, :cond_3b

    .line 920
    .line 921
    iget-object v5, v0, Lcom/google/android/gms/cast/AdBreakStatus;->c:Ljava/lang/String;

    .line 922
    .line 923
    if-nez v5, :cond_3a

    .line 924
    .line 925
    iget-object v5, v0, Lcom/google/android/gms/cast/AdBreakStatus;->d:Ljava/lang/String;

    .line 926
    .line 927
    if-eqz v5, :cond_3b

    .line 928
    .line 929
    :cond_3a
    const/4 v5, 0x1

    .line 930
    goto :goto_1b

    .line 931
    :cond_3b
    const/4 v5, 0x0

    .line 932
    :goto_1b
    iput-boolean v5, v1, Lcom/google/android/gms/cast/MediaStatus;->r:Z

    .line 933
    .line 934
    iput-object v0, v1, Lcom/google/android/gms/cast/MediaStatus;->s:Lcom/google/android/gms/cast/AdBreakStatus;

    .line 935
    .line 936
    or-int/lit8 v2, v2, 0x20

    .line 937
    .line 938
    :cond_3c
    const-string v0, "videoInfo"

    .line 939
    .line 940
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 941
    .line 942
    .line 943
    move-result-object v0

    .line 944
    sget-object v5, Lcom/google/android/gms/cast/VideoInfo;->d:Lv4/b;

    .line 945
    .line 946
    if-nez v0, :cond_3d

    .line 947
    .line 948
    :goto_1c
    const/4 v8, 0x0

    .line 949
    goto/16 :goto_21

    .line 950
    .line 951
    :cond_3d
    :try_start_2
    const-string v6, "hdrType"

    .line 952
    .line 953
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 954
    .line 955
    .line 956
    move-result-object v6

    .line 957
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    .line 958
    .line 959
    .line 960
    move-result v8
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 961
    const/16 v9, 0xc92

    .line 962
    .line 963
    if-eq v8, v9, :cond_41

    .line 964
    .line 965
    const v9, 0x192f6

    .line 966
    .line 967
    .line 968
    if-eq v8, v9, :cond_40

    .line 969
    .line 970
    const v9, 0x1bc41

    .line 971
    .line 972
    .line 973
    if-eq v8, v9, :cond_3f

    .line 974
    .line 975
    const v9, 0x5e8b395

    .line 976
    .line 977
    .line 978
    if-eq v8, v9, :cond_3e

    .line 979
    .line 980
    goto :goto_1d

    .line 981
    :cond_3e
    const-string v8, "hdr10"

    .line 982
    .line 983
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 984
    .line 985
    .line 986
    move-result v8

    .line 987
    if-eqz v8, :cond_42

    .line 988
    .line 989
    const/4 v8, 0x1

    .line 990
    goto :goto_1e

    .line 991
    :cond_3f
    const-string v8, "sdr"

    .line 992
    .line 993
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 994
    .line 995
    .line 996
    move-result v8

    .line 997
    if-eqz v8, :cond_42

    .line 998
    .line 999
    const/4 v8, 0x3

    .line 1000
    goto :goto_1e

    .line 1001
    :cond_40
    const-string v8, "hdr"

    .line 1002
    .line 1003
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1004
    .line 1005
    .line 1006
    move-result v8

    .line 1007
    if-eqz v8, :cond_42

    .line 1008
    .line 1009
    const/4 v8, 0x2

    .line 1010
    goto :goto_1e

    .line 1011
    :cond_41
    const-string v8, "dv"

    .line 1012
    .line 1013
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1014
    .line 1015
    .line 1016
    move-result v8

    .line 1017
    if-eqz v8, :cond_42

    .line 1018
    .line 1019
    const/4 v8, 0x0

    .line 1020
    goto :goto_1e

    .line 1021
    :cond_42
    :goto_1d
    const/4 v8, -0x1

    .line 1022
    :goto_1e
    if-eqz v8, :cond_46

    .line 1023
    .line 1024
    const/4 v9, 0x1

    .line 1025
    if-eq v8, v9, :cond_45

    .line 1026
    .line 1027
    const/4 v11, 0x2

    .line 1028
    if-eq v8, v11, :cond_44

    .line 1029
    .line 1030
    const/4 v11, 0x3

    .line 1031
    if-eq v8, v11, :cond_43

    .line 1032
    .line 1033
    :try_start_3
    const-string v8, "Unknown HDR type: %s"

    .line 1034
    .line 1035
    new-array v11, v9, [Ljava/lang/Object;

    .line 1036
    .line 1037
    const/4 v9, 0x0

    .line 1038
    aput-object v6, v11, v9

    .line 1039
    .line 1040
    invoke-virtual {v5, v8, v11}, Lv4/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1041
    .line 1042
    .line 1043
    const/4 v6, 0x0

    .line 1044
    goto :goto_1f

    .line 1045
    :catch_2
    move-exception v0

    .line 1046
    const/4 v6, 0x0

    .line 1047
    goto :goto_20

    .line 1048
    :cond_43
    const/4 v6, 0x1

    .line 1049
    goto :goto_1f

    .line 1050
    :cond_44
    const/4 v6, 0x4

    .line 1051
    goto :goto_1f

    .line 1052
    :cond_45
    const/4 v6, 0x2

    .line 1053
    goto :goto_1f

    .line 1054
    :cond_46
    const/4 v6, 0x3

    .line 1055
    :goto_1f
    new-instance v8, Lcom/google/android/gms/cast/VideoInfo;

    .line 1056
    .line 1057
    const-string v9, "width"

    .line 1058
    .line 1059
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 1060
    .line 1061
    .line 1062
    move-result v9

    .line 1063
    const-string v11, "height"

    .line 1064
    .line 1065
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 1066
    .line 1067
    .line 1068
    move-result v0

    .line 1069
    invoke-direct {v8, v9, v0, v6}, Lcom/google/android/gms/cast/VideoInfo;-><init>(III)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1070
    .line 1071
    .line 1072
    goto :goto_21

    .line 1073
    :goto_20
    new-array v8, v6, [Ljava/lang/Object;

    .line 1074
    .line 1075
    const-string v6, "Error while creating a VideoInfo instance from JSON"

    .line 1076
    .line 1077
    invoke-virtual {v5, v0, v6, v8}, Lv4/b;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1078
    .line 1079
    .line 1080
    goto/16 :goto_1c

    .line 1081
    .line 1082
    :goto_21
    iget-object v0, v1, Lcom/google/android/gms/cast/MediaStatus;->t:Lcom/google/android/gms/cast/VideoInfo;

    .line 1083
    .line 1084
    if-nez v0, :cond_47

    .line 1085
    .line 1086
    if-nez v8, :cond_48

    .line 1087
    .line 1088
    :cond_47
    if-eqz v0, :cond_49

    .line 1089
    .line 1090
    invoke-virtual {v0, v8}, Lcom/google/android/gms/cast/VideoInfo;->equals(Ljava/lang/Object;)Z

    .line 1091
    .line 1092
    .line 1093
    move-result v0

    .line 1094
    if-nez v0, :cond_49

    .line 1095
    .line 1096
    :cond_48
    iput-object v8, v1, Lcom/google/android/gms/cast/MediaStatus;->t:Lcom/google/android/gms/cast/VideoInfo;

    .line 1097
    .line 1098
    or-int/lit8 v2, v2, 0x40

    .line 1099
    .line 1100
    :cond_49
    const-string v0, "breakInfo"

    .line 1101
    .line 1102
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 1103
    .line 1104
    .line 1105
    move-result v5

    .line 1106
    if-eqz v5, :cond_4a

    .line 1107
    .line 1108
    iget-object v5, v1, Lcom/google/android/gms/cast/MediaStatus;->a:Lcom/google/android/gms/cast/MediaInfo;

    .line 1109
    .line 1110
    if-eqz v5, :cond_4a

    .line 1111
    .line 1112
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 1113
    .line 1114
    .line 1115
    move-result-object v0

    .line 1116
    invoke-virtual {v5, v0}, Lcom/google/android/gms/cast/MediaInfo;->j(Lorg/json/JSONObject;)V

    .line 1117
    .line 1118
    .line 1119
    const/4 v5, 0x2

    .line 1120
    or-int/2addr v2, v5

    .line 1121
    :cond_4a
    const-string v0, "queueData"

    .line 1122
    .line 1123
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 1124
    .line 1125
    .line 1126
    move-result v5

    .line 1127
    if-eqz v5, :cond_5b

    .line 1128
    .line 1129
    new-instance v5, Lcom/google/android/gms/cast/MediaQueueData;

    .line 1130
    .line 1131
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 1132
    .line 1133
    .line 1134
    const/4 v6, 0x0

    .line 1135
    iput-object v6, v5, Lcom/google/android/gms/cast/MediaQueueData;->a:Ljava/lang/String;

    .line 1136
    .line 1137
    iput-object v6, v5, Lcom/google/android/gms/cast/MediaQueueData;->b:Ljava/lang/String;

    .line 1138
    .line 1139
    const/4 v8, 0x0

    .line 1140
    iput v8, v5, Lcom/google/android/gms/cast/MediaQueueData;->c:I

    .line 1141
    .line 1142
    iput-object v6, v5, Lcom/google/android/gms/cast/MediaQueueData;->d:Ljava/lang/String;

    .line 1143
    .line 1144
    iput v8, v5, Lcom/google/android/gms/cast/MediaQueueData;->f:I

    .line 1145
    .line 1146
    iput-object v6, v5, Lcom/google/android/gms/cast/MediaQueueData;->g:Ljava/util/ArrayList;

    .line 1147
    .line 1148
    iput v8, v5, Lcom/google/android/gms/cast/MediaQueueData;->h:I

    .line 1149
    .line 1150
    iput-wide v3, v5, Lcom/google/android/gms/cast/MediaQueueData;->i:J

    .line 1151
    .line 1152
    iput-boolean v8, v5, Lcom/google/android/gms/cast/MediaQueueData;->j:Z

    .line 1153
    .line 1154
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 1155
    .line 1156
    .line 1157
    move-result-object v0

    .line 1158
    iput-object v6, v5, Lcom/google/android/gms/cast/MediaQueueData;->a:Ljava/lang/String;

    .line 1159
    .line 1160
    iput-object v6, v5, Lcom/google/android/gms/cast/MediaQueueData;->b:Ljava/lang/String;

    .line 1161
    .line 1162
    iput v8, v5, Lcom/google/android/gms/cast/MediaQueueData;->c:I

    .line 1163
    .line 1164
    iput-object v6, v5, Lcom/google/android/gms/cast/MediaQueueData;->d:Ljava/lang/String;

    .line 1165
    .line 1166
    iput v8, v5, Lcom/google/android/gms/cast/MediaQueueData;->f:I

    .line 1167
    .line 1168
    iput-object v6, v5, Lcom/google/android/gms/cast/MediaQueueData;->g:Ljava/util/ArrayList;

    .line 1169
    .line 1170
    iput v8, v5, Lcom/google/android/gms/cast/MediaQueueData;->h:I

    .line 1171
    .line 1172
    iput-wide v3, v5, Lcom/google/android/gms/cast/MediaQueueData;->i:J

    .line 1173
    .line 1174
    iput-boolean v8, v5, Lcom/google/android/gms/cast/MediaQueueData;->j:Z

    .line 1175
    .line 1176
    if-nez v0, :cond_4b

    .line 1177
    .line 1178
    goto/16 :goto_2c

    .line 1179
    .line 1180
    :cond_4b
    const-string v3, "id"

    .line 1181
    .line 1182
    invoke-static {v0, v3}, Lv4/a;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 1183
    .line 1184
    .line 1185
    move-result-object v3

    .line 1186
    iput-object v3, v5, Lcom/google/android/gms/cast/MediaQueueData;->a:Ljava/lang/String;

    .line 1187
    .line 1188
    const-string v3, "entity"

    .line 1189
    .line 1190
    invoke-static {v0, v3}, Lv4/a;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 1191
    .line 1192
    .line 1193
    move-result-object v3

    .line 1194
    iput-object v3, v5, Lcom/google/android/gms/cast/MediaQueueData;->b:Ljava/lang/String;

    .line 1195
    .line 1196
    const-string v3, "queueType"

    .line 1197
    .line 1198
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 1199
    .line 1200
    .line 1201
    move-result-object v3

    .line 1202
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 1203
    .line 1204
    .line 1205
    move-result v4

    .line 1206
    const/4 v6, 0x6

    .line 1207
    const/4 v8, 0x7

    .line 1208
    sparse-switch v4, :sswitch_data_0

    .line 1209
    .line 1210
    .line 1211
    goto :goto_22

    .line 1212
    :sswitch_0
    const-string v4, "LIVE_TV"

    .line 1213
    .line 1214
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1215
    .line 1216
    .line 1217
    move-result v3

    .line 1218
    if-eqz v3, :cond_4c

    .line 1219
    .line 1220
    const/4 v3, 0x7

    .line 1221
    goto :goto_23

    .line 1222
    :sswitch_1
    const-string v4, "VIDEO_PLAYLIST"

    .line 1223
    .line 1224
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1225
    .line 1226
    .line 1227
    move-result v3

    .line 1228
    if-eqz v3, :cond_4c

    .line 1229
    .line 1230
    const/4 v3, 0x6

    .line 1231
    goto :goto_23

    .line 1232
    :sswitch_2
    const-string v4, "MOVIE"

    .line 1233
    .line 1234
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1235
    .line 1236
    .line 1237
    move-result v3

    .line 1238
    if-eqz v3, :cond_4c

    .line 1239
    .line 1240
    const/16 v3, 0x8

    .line 1241
    .line 1242
    goto :goto_23

    .line 1243
    :sswitch_3
    const-string v4, "ALBUM"

    .line 1244
    .line 1245
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1246
    .line 1247
    .line 1248
    move-result v3

    .line 1249
    if-eqz v3, :cond_4c

    .line 1250
    .line 1251
    const/4 v3, 0x0

    .line 1252
    goto :goto_23

    .line 1253
    :sswitch_4
    const-string v4, "TV_SERIES"

    .line 1254
    .line 1255
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1256
    .line 1257
    .line 1258
    move-result v3

    .line 1259
    if-eqz v3, :cond_4c

    .line 1260
    .line 1261
    const/4 v3, 0x5

    .line 1262
    goto :goto_23

    .line 1263
    :sswitch_5
    const-string v4, "AUDIOBOOK"

    .line 1264
    .line 1265
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1266
    .line 1267
    .line 1268
    move-result v3

    .line 1269
    if-eqz v3, :cond_4c

    .line 1270
    .line 1271
    const/4 v3, 0x2

    .line 1272
    goto :goto_23

    .line 1273
    :sswitch_6
    const-string v4, "PLAYLIST"

    .line 1274
    .line 1275
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1276
    .line 1277
    .line 1278
    move-result v3

    .line 1279
    if-eqz v3, :cond_4c

    .line 1280
    .line 1281
    const/4 v3, 0x1

    .line 1282
    goto :goto_23

    .line 1283
    :sswitch_7
    const-string v4, "RADIO_STATION"

    .line 1284
    .line 1285
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1286
    .line 1287
    .line 1288
    move-result v3

    .line 1289
    if-eqz v3, :cond_4c

    .line 1290
    .line 1291
    const/4 v3, 0x3

    .line 1292
    goto :goto_23

    .line 1293
    :sswitch_8
    const-string v4, "PODCAST_SERIES"

    .line 1294
    .line 1295
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1296
    .line 1297
    .line 1298
    move-result v3

    .line 1299
    if-eqz v3, :cond_4c

    .line 1300
    .line 1301
    const/4 v3, 0x4

    .line 1302
    goto :goto_23

    .line 1303
    :cond_4c
    :goto_22
    const/4 v3, -0x1

    .line 1304
    :goto_23
    packed-switch v3, :pswitch_data_0

    .line 1305
    .line 1306
    .line 1307
    goto :goto_25

    .line 1308
    :pswitch_0
    const/16 v3, 0x9

    .line 1309
    .line 1310
    :goto_24
    iput v3, v5, Lcom/google/android/gms/cast/MediaQueueData;->c:I

    .line 1311
    .line 1312
    goto :goto_25

    .line 1313
    :pswitch_1
    const/16 v3, 0x8

    .line 1314
    .line 1315
    goto :goto_24

    .line 1316
    :pswitch_2
    iput v8, v5, Lcom/google/android/gms/cast/MediaQueueData;->c:I

    .line 1317
    .line 1318
    goto :goto_25

    .line 1319
    :pswitch_3
    iput v6, v5, Lcom/google/android/gms/cast/MediaQueueData;->c:I

    .line 1320
    .line 1321
    goto :goto_25

    .line 1322
    :pswitch_4
    const/4 v3, 0x5

    .line 1323
    goto :goto_24

    .line 1324
    :pswitch_5
    const/4 v3, 0x4

    .line 1325
    goto :goto_24

    .line 1326
    :pswitch_6
    const/4 v3, 0x3

    .line 1327
    goto :goto_24

    .line 1328
    :pswitch_7
    const/4 v3, 0x2

    .line 1329
    goto :goto_24

    .line 1330
    :pswitch_8
    const/4 v3, 0x1

    .line 1331
    goto :goto_24

    .line 1332
    :goto_25
    const-string v3, "name"

    .line 1333
    .line 1334
    invoke-static {v0, v3}, Lv4/a;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 1335
    .line 1336
    .line 1337
    move-result-object v3

    .line 1338
    iput-object v3, v5, Lcom/google/android/gms/cast/MediaQueueData;->d:Ljava/lang/String;

    .line 1339
    .line 1340
    const-string v3, "containerMetadata"

    .line 1341
    .line 1342
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 1343
    .line 1344
    .line 1345
    move-result v4

    .line 1346
    if-eqz v4, :cond_4d

    .line 1347
    .line 1348
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 1349
    .line 1350
    .line 1351
    move-result-object v3

    .line 1352
    move-object v6, v3

    .line 1353
    goto :goto_26

    .line 1354
    :cond_4d
    const/4 v6, 0x0

    .line 1355
    :goto_26
    if-eqz v6, :cond_56

    .line 1356
    .line 1357
    new-instance v3, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;

    .line 1358
    .line 1359
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 1360
    .line 1361
    .line 1362
    const/4 v4, 0x0

    .line 1363
    iput v4, v3, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->a:I

    .line 1364
    .line 1365
    const/4 v4, 0x0

    .line 1366
    iput-object v4, v3, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->b:Ljava/lang/String;

    .line 1367
    .line 1368
    iput-object v4, v3, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->c:Ljava/util/ArrayList;

    .line 1369
    .line 1370
    iput-object v4, v3, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->d:Ljava/util/ArrayList;

    .line 1371
    .line 1372
    const-wide/16 v8, 0x0

    .line 1373
    .line 1374
    iput-wide v8, v3, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->e:D

    .line 1375
    .line 1376
    const-string v4, "containerType"

    .line 1377
    .line 1378
    const-string v8, ""

    .line 1379
    .line 1380
    invoke-virtual {v6, v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1381
    .line 1382
    .line 1383
    move-result-object v4

    .line 1384
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 1385
    .line 1386
    .line 1387
    move-result v8

    .line 1388
    const v9, 0x69a7c1

    .line 1389
    .line 1390
    .line 1391
    if-eq v8, v9, :cond_4f

    .line 1392
    .line 1393
    const v9, 0x316473d9

    .line 1394
    .line 1395
    .line 1396
    if-eq v8, v9, :cond_4e

    .line 1397
    .line 1398
    goto :goto_27

    .line 1399
    :cond_4e
    const-string v8, "GENERIC_CONTAINER"

    .line 1400
    .line 1401
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1402
    .line 1403
    .line 1404
    move-result v4

    .line 1405
    if-eqz v4, :cond_50

    .line 1406
    .line 1407
    const/4 v4, 0x0

    .line 1408
    goto :goto_28

    .line 1409
    :cond_4f
    const-string v8, "AUDIOBOOK_CONTAINER"

    .line 1410
    .line 1411
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1412
    .line 1413
    .line 1414
    move-result v4

    .line 1415
    if-eqz v4, :cond_50

    .line 1416
    .line 1417
    const/4 v4, 0x1

    .line 1418
    goto :goto_28

    .line 1419
    :cond_50
    :goto_27
    const/4 v4, -0x1

    .line 1420
    :goto_28
    if-eqz v4, :cond_52

    .line 1421
    .line 1422
    const/4 v8, 0x1

    .line 1423
    if-eq v4, v8, :cond_51

    .line 1424
    .line 1425
    goto :goto_29

    .line 1426
    :cond_51
    iput v8, v3, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->a:I

    .line 1427
    .line 1428
    goto :goto_29

    .line 1429
    :cond_52
    const/4 v4, 0x0

    .line 1430
    iput v4, v3, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->a:I

    .line 1431
    .line 1432
    :goto_29
    const-string v4, "title"

    .line 1433
    .line 1434
    invoke-static {v6, v4}, Lv4/a;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 1435
    .line 1436
    .line 1437
    move-result-object v4

    .line 1438
    iput-object v4, v3, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->b:Ljava/lang/String;

    .line 1439
    .line 1440
    const-string v4, "sections"

    .line 1441
    .line 1442
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 1443
    .line 1444
    .line 1445
    move-result-object v4

    .line 1446
    if-eqz v4, :cond_54

    .line 1447
    .line 1448
    new-instance v8, Ljava/util/ArrayList;

    .line 1449
    .line 1450
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1451
    .line 1452
    .line 1453
    iput-object v8, v3, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->c:Ljava/util/ArrayList;

    .line 1454
    .line 1455
    const/4 v9, 0x0

    .line 1456
    :goto_2a
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    .line 1457
    .line 1458
    .line 1459
    move-result v11

    .line 1460
    if-ge v9, v11, :cond_54

    .line 1461
    .line 1462
    invoke-virtual {v4, v9}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 1463
    .line 1464
    .line 1465
    move-result-object v11

    .line 1466
    if-eqz v11, :cond_53

    .line 1467
    .line 1468
    new-instance v12, Lcom/google/android/gms/cast/MediaMetadata;

    .line 1469
    .line 1470
    const/4 v13, 0x0

    .line 1471
    invoke-direct {v12, v13}, Lcom/google/android/gms/cast/MediaMetadata;-><init>(I)V

    .line 1472
    .line 1473
    .line 1474
    invoke-virtual {v12, v11}, Lcom/google/android/gms/cast/MediaMetadata;->l(Lorg/json/JSONObject;)V

    .line 1475
    .line 1476
    .line 1477
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1478
    .line 1479
    .line 1480
    :cond_53
    const/4 v11, 0x1

    .line 1481
    add-int/2addr v9, v11

    .line 1482
    goto :goto_2a

    .line 1483
    :cond_54
    const-string v4, "containerImages"

    .line 1484
    .line 1485
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 1486
    .line 1487
    .line 1488
    move-result-object v4

    .line 1489
    if-eqz v4, :cond_55

    .line 1490
    .line 1491
    new-instance v8, Ljava/util/ArrayList;

    .line 1492
    .line 1493
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1494
    .line 1495
    .line 1496
    iput-object v8, v3, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->d:Ljava/util/ArrayList;

    .line 1497
    .line 1498
    invoke-static {v8, v4}, Lw4/a;->b(Ljava/util/ArrayList;Lorg/json/JSONArray;)V

    .line 1499
    .line 1500
    .line 1501
    :cond_55
    iget-wide v8, v3, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->e:D

    .line 1502
    .line 1503
    const-string v4, "containerDuration"

    .line 1504
    .line 1505
    invoke-virtual {v6, v4, v8, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 1506
    .line 1507
    .line 1508
    move-result-wide v8

    .line 1509
    iput-wide v8, v3, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->e:D

    .line 1510
    .line 1511
    new-instance v4, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;

    .line 1512
    .line 1513
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 1514
    .line 1515
    .line 1516
    iget v6, v3, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->a:I

    .line 1517
    .line 1518
    iput v6, v4, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->a:I

    .line 1519
    .line 1520
    iget-object v6, v3, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->b:Ljava/lang/String;

    .line 1521
    .line 1522
    iput-object v6, v4, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->b:Ljava/lang/String;

    .line 1523
    .line 1524
    iget-object v6, v3, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->c:Ljava/util/ArrayList;

    .line 1525
    .line 1526
    iput-object v6, v4, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->c:Ljava/util/ArrayList;

    .line 1527
    .line 1528
    iget-object v3, v3, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->d:Ljava/util/ArrayList;

    .line 1529
    .line 1530
    iput-object v3, v4, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->d:Ljava/util/ArrayList;

    .line 1531
    .line 1532
    iput-wide v8, v4, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->e:D

    .line 1533
    .line 1534
    iput-object v4, v5, Lcom/google/android/gms/cast/MediaQueueData;->e:Lcom/google/android/gms/cast/MediaQueueContainerMetadata;

    .line 1535
    .line 1536
    :cond_56
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 1537
    .line 1538
    .line 1539
    move-result-object v3

    .line 1540
    invoke-static {v3}, Lcom/bumptech/glide/d;->v(Ljava/lang/String;)Ljava/lang/Integer;

    .line 1541
    .line 1542
    .line 1543
    move-result-object v3

    .line 1544
    if-eqz v3, :cond_57

    .line 1545
    .line 1546
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 1547
    .line 1548
    .line 1549
    move-result v3

    .line 1550
    iput v3, v5, Lcom/google/android/gms/cast/MediaQueueData;->f:I

    .line 1551
    .line 1552
    :cond_57
    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 1553
    .line 1554
    .line 1555
    move-result-object v3

    .line 1556
    if-eqz v3, :cond_59

    .line 1557
    .line 1558
    new-instance v4, Ljava/util/ArrayList;

    .line 1559
    .line 1560
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1561
    .line 1562
    .line 1563
    iput-object v4, v5, Lcom/google/android/gms/cast/MediaQueueData;->g:Ljava/util/ArrayList;

    .line 1564
    .line 1565
    const/4 v6, 0x0

    .line 1566
    :goto_2b
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    .line 1567
    .line 1568
    .line 1569
    move-result v7

    .line 1570
    if-ge v6, v7, :cond_59

    .line 1571
    .line 1572
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 1573
    .line 1574
    .line 1575
    move-result-object v7

    .line 1576
    if-eqz v7, :cond_58

    .line 1577
    .line 1578
    :try_start_4
    new-instance v8, Lcom/google/android/gms/cast/MediaQueueItem;

    .line 1579
    .line 1580
    invoke-direct {v8, v7}, Lcom/google/android/gms/cast/MediaQueueItem;-><init>(Lorg/json/JSONObject;)V

    .line 1581
    .line 1582
    .line 1583
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1584
    .line 1585
    .line 1586
    :catch_3
    :cond_58
    const/4 v7, 0x1

    .line 1587
    add-int/2addr v6, v7

    .line 1588
    goto :goto_2b

    .line 1589
    :cond_59
    iget v3, v5, Lcom/google/android/gms/cast/MediaQueueData;->h:I

    .line 1590
    .line 1591
    const-string v4, "startIndex"

    .line 1592
    .line 1593
    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 1594
    .line 1595
    .line 1596
    move-result v3

    .line 1597
    iput v3, v5, Lcom/google/android/gms/cast/MediaQueueData;->h:I

    .line 1598
    .line 1599
    const-string v3, "startTime"

    .line 1600
    .line 1601
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 1602
    .line 1603
    .line 1604
    move-result v4

    .line 1605
    if-eqz v4, :cond_5a

    .line 1606
    .line 1607
    iget-wide v6, v5, Lcom/google/android/gms/cast/MediaQueueData;->i:J

    .line 1608
    .line 1609
    long-to-double v6, v6

    .line 1610
    invoke-virtual {v0, v3, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 1611
    .line 1612
    .line 1613
    move-result-wide v3

    .line 1614
    const-wide v6, 0x408f400000000000L    # 1000.0

    .line 1615
    .line 1616
    .line 1617
    .line 1618
    .line 1619
    mul-double v3, v3, v6

    .line 1620
    .line 1621
    double-to-long v3, v3

    .line 1622
    iput-wide v3, v5, Lcom/google/android/gms/cast/MediaQueueData;->i:J

    .line 1623
    .line 1624
    :cond_5a
    const-string v3, "shuffle"

    .line 1625
    .line 1626
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 1627
    .line 1628
    .line 1629
    move-result v0

    .line 1630
    iput-boolean v0, v5, Lcom/google/android/gms/cast/MediaQueueData;->j:Z

    .line 1631
    .line 1632
    :goto_2c
    new-instance v0, Lcom/google/android/gms/cast/MediaQueueData;

    .line 1633
    .line 1634
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 1635
    .line 1636
    .line 1637
    iget-object v3, v5, Lcom/google/android/gms/cast/MediaQueueData;->a:Ljava/lang/String;

    .line 1638
    .line 1639
    iput-object v3, v0, Lcom/google/android/gms/cast/MediaQueueData;->a:Ljava/lang/String;

    .line 1640
    .line 1641
    iget-object v3, v5, Lcom/google/android/gms/cast/MediaQueueData;->b:Ljava/lang/String;

    .line 1642
    .line 1643
    iput-object v3, v0, Lcom/google/android/gms/cast/MediaQueueData;->b:Ljava/lang/String;

    .line 1644
    .line 1645
    iget v3, v5, Lcom/google/android/gms/cast/MediaQueueData;->c:I

    .line 1646
    .line 1647
    iput v3, v0, Lcom/google/android/gms/cast/MediaQueueData;->c:I

    .line 1648
    .line 1649
    iget-object v3, v5, Lcom/google/android/gms/cast/MediaQueueData;->d:Ljava/lang/String;

    .line 1650
    .line 1651
    iput-object v3, v0, Lcom/google/android/gms/cast/MediaQueueData;->d:Ljava/lang/String;

    .line 1652
    .line 1653
    iget-object v3, v5, Lcom/google/android/gms/cast/MediaQueueData;->e:Lcom/google/android/gms/cast/MediaQueueContainerMetadata;

    .line 1654
    .line 1655
    iput-object v3, v0, Lcom/google/android/gms/cast/MediaQueueData;->e:Lcom/google/android/gms/cast/MediaQueueContainerMetadata;

    .line 1656
    .line 1657
    iget v3, v5, Lcom/google/android/gms/cast/MediaQueueData;->f:I

    .line 1658
    .line 1659
    iput v3, v0, Lcom/google/android/gms/cast/MediaQueueData;->f:I

    .line 1660
    .line 1661
    iget-object v3, v5, Lcom/google/android/gms/cast/MediaQueueData;->g:Ljava/util/ArrayList;

    .line 1662
    .line 1663
    iput-object v3, v0, Lcom/google/android/gms/cast/MediaQueueData;->g:Ljava/util/ArrayList;

    .line 1664
    .line 1665
    iget v3, v5, Lcom/google/android/gms/cast/MediaQueueData;->h:I

    .line 1666
    .line 1667
    iput v3, v0, Lcom/google/android/gms/cast/MediaQueueData;->h:I

    .line 1668
    .line 1669
    iget-wide v3, v5, Lcom/google/android/gms/cast/MediaQueueData;->i:J

    .line 1670
    .line 1671
    iput-wide v3, v0, Lcom/google/android/gms/cast/MediaQueueData;->i:J

    .line 1672
    .line 1673
    iget-boolean v3, v5, Lcom/google/android/gms/cast/MediaQueueData;->j:Z

    .line 1674
    .line 1675
    iput-boolean v3, v0, Lcom/google/android/gms/cast/MediaQueueData;->j:Z

    .line 1676
    .line 1677
    iput-object v0, v1, Lcom/google/android/gms/cast/MediaStatus;->v:Lcom/google/android/gms/cast/MediaQueueData;

    .line 1678
    .line 1679
    iget-boolean v0, v1, Lcom/google/android/gms/cast/MediaStatus;->w:Z

    .line 1680
    .line 1681
    if-eq v0, v3, :cond_5b

    .line 1682
    .line 1683
    iput-boolean v3, v1, Lcom/google/android/gms/cast/MediaStatus;->w:Z

    .line 1684
    .line 1685
    const/16 v3, 0x8

    .line 1686
    .line 1687
    or-int/2addr v2, v3

    .line 1688
    :cond_5b
    const-string v0, "liveSeekableRange"

    .line 1689
    .line 1690
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 1691
    .line 1692
    .line 1693
    move-result v3

    .line 1694
    if-eqz v3, :cond_5f

    .line 1695
    .line 1696
    const/4 v3, 0x2

    .line 1697
    or-int/2addr v2, v3

    .line 1698
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 1699
    .line 1700
    .line 1701
    move-result-object v0

    .line 1702
    sget-object v3, Lcom/google/android/gms/cast/MediaLiveSeekableRange;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1703
    .line 1704
    if-nez v0, :cond_5d

    .line 1705
    .line 1706
    :cond_5c
    :goto_2d
    const/4 v12, 0x0

    .line 1707
    goto :goto_2e

    .line 1708
    :cond_5d
    const-string v3, "start"

    .line 1709
    .line 1710
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 1711
    .line 1712
    .line 1713
    move-result v4

    .line 1714
    if-eqz v4, :cond_5c

    .line 1715
    .line 1716
    const-string v4, "end"

    .line 1717
    .line 1718
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 1719
    .line 1720
    .line 1721
    move-result v5

    .line 1722
    if-nez v5, :cond_5e

    .line 1723
    .line 1724
    goto :goto_2d

    .line 1725
    :cond_5e
    :try_start_5
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    .line 1726
    .line 1727
    .line 1728
    move-result-wide v5

    .line 1729
    sget-object v3, Lv4/a;->a:Ljava/util/regex/Pattern;

    .line 1730
    .line 1731
    const-wide v7, 0x408f400000000000L    # 1000.0

    .line 1732
    .line 1733
    .line 1734
    .line 1735
    .line 1736
    mul-double v5, v5, v7

    .line 1737
    .line 1738
    double-to-long v10, v5

    .line 1739
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    .line 1740
    .line 1741
    .line 1742
    move-result-wide v3

    .line 1743
    mul-double v3, v3, v7

    .line 1744
    .line 1745
    double-to-long v12, v3

    .line 1746
    const-string v3, "isMovingWindow"

    .line 1747
    .line 1748
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 1749
    .line 1750
    .line 1751
    move-result v14

    .line 1752
    const-string v3, "isLiveDone"

    .line 1753
    .line 1754
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 1755
    .line 1756
    .line 1757
    move-result v15

    .line 1758
    new-instance v3, Lcom/google/android/gms/cast/MediaLiveSeekableRange;

    .line 1759
    .line 1760
    move-object v9, v3

    .line 1761
    invoke-direct/range {v9 .. v15}, Lcom/google/android/gms/cast/MediaLiveSeekableRange;-><init>(JJZZ)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_4

    .line 1762
    .line 1763
    .line 1764
    move-object v12, v3

    .line 1765
    goto :goto_2e

    .line 1766
    :catch_4
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1767
    .line 1768
    .line 1769
    move-result-object v0

    .line 1770
    const-string v3, "Ignoring Malformed MediaLiveSeekableRange: "

    .line 1771
    .line 1772
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1773
    .line 1774
    .line 1775
    move-result-object v0

    .line 1776
    const/4 v3, 0x0

    .line 1777
    new-array v3, v3, [Ljava/lang/Object;

    .line 1778
    .line 1779
    sget-object v4, Lcom/google/android/gms/cast/MediaLiveSeekableRange;->e:Lv4/b;

    .line 1780
    .line 1781
    iget-object v5, v4, Lv4/b;->a:Ljava/lang/String;

    .line 1782
    .line 1783
    invoke-virtual {v4, v0, v3}, Lv4/b;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1784
    .line 1785
    .line 1786
    move-result-object v0

    .line 1787
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1788
    .line 1789
    .line 1790
    goto :goto_2d

    .line 1791
    :goto_2e
    iput-object v12, v1, Lcom/google/android/gms/cast/MediaStatus;->u:Lcom/google/android/gms/cast/MediaLiveSeekableRange;

    .line 1792
    .line 1793
    goto :goto_2f

    .line 1794
    :cond_5f
    iget-object v0, v1, Lcom/google/android/gms/cast/MediaStatus;->u:Lcom/google/android/gms/cast/MediaLiveSeekableRange;

    .line 1795
    .line 1796
    if-eqz v0, :cond_60

    .line 1797
    .line 1798
    const/4 v3, 0x2

    .line 1799
    or-int/2addr v2, v3

    .line 1800
    :cond_60
    const/4 v3, 0x0

    .line 1801
    iput-object v3, v1, Lcom/google/android/gms/cast/MediaStatus;->u:Lcom/google/android/gms/cast/MediaLiveSeekableRange;

    .line 1802
    .line 1803
    :goto_2f
    return v2

    .line 1804
    nop

    .line 1805
    :sswitch_data_0
    .sparse-switch
        -0x6b79e7ce -> :sswitch_8
        -0x68d6bb50 -> :sswitch_7
        -0x61538e2e -> :sswitch_6
        -0x4ea9f461 -> :sswitch_5
        -0x40e1912c -> :sswitch_4
        0x3b7864f -> :sswitch_3
        0x4624710 -> :sswitch_2
        0x176e3d36 -> :sswitch_1
        0x35c80eb5 -> :sswitch_0
    .end sparse-switch

    .line 1806
    .line 1807
    .line 1808
    .line 1809
    .line 1810
    .line 1811
    .line 1812
    .line 1813
    .line 1814
    .line 1815
    .line 1816
    .line 1817
    .line 1818
    .line 1819
    .line 1820
    .line 1821
    .line 1822
    .line 1823
    .line 1824
    .line 1825
    .line 1826
    .line 1827
    .line 1828
    .line 1829
    .line 1830
    .line 1831
    .line 1832
    .line 1833
    .line 1834
    .line 1835
    .line 1836
    .line 1837
    .line 1838
    .line 1839
    .line 1840
    .line 1841
    .line 1842
    .line 1843
    :pswitch_data_0
    .packed-switch 0x0
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

.method public final m(Ljava/util/ArrayList;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->q:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->x:Landroid/util/SparseArray;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 9
    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-ge v2, v3, :cond_0

    .line 19
    .line 20
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Lcom/google/android/gms/cast/MediaQueueItem;

    .line 25
    .line 26
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    iget v3, v3, Lcom/google/android/gms/cast/MediaQueueItem;->b:I

    .line 30
    .line 31
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-virtual {v1, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    add-int/lit8 v2, v2, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->o:Lorg/json/JSONObject;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->n:Ljava/lang/String;

    .line 12
    .line 13
    const/16 v0, 0x4f45

    .line 14
    .line 15
    invoke-static {p1, v0}, Lo9/d;->V(Landroid/os/Parcel;I)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->a:Lcom/google/android/gms/cast/MediaInfo;

    .line 20
    .line 21
    const/4 v2, 0x2

    .line 22
    invoke-static {p1, v2, v1, p2}, Lo9/d;->Q(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 23
    .line 24
    .line 25
    iget-wide v1, p0, Lcom/google/android/gms/cast/MediaStatus;->b:J

    .line 26
    .line 27
    const/4 v3, 0x3

    .line 28
    const/16 v4, 0x8

    .line 29
    .line 30
    invoke-static {p1, v3, v4}, Lo9/d;->X(Landroid/os/Parcel;II)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 34
    .line 35
    .line 36
    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->c:I

    .line 37
    .line 38
    const/4 v2, 0x4

    .line 39
    invoke-static {p1, v2, v2}, Lo9/d;->X(Landroid/os/Parcel;II)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    .line 44
    .line 45
    iget-wide v5, p0, Lcom/google/android/gms/cast/MediaStatus;->d:D

    .line 46
    .line 47
    const/4 v1, 0x5

    .line 48
    invoke-static {p1, v1, v4}, Lo9/d;->X(Landroid/os/Parcel;II)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v5, v6}, Landroid/os/Parcel;->writeDouble(D)V

    .line 52
    .line 53
    .line 54
    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->e:I

    .line 55
    .line 56
    const/4 v3, 0x6

    .line 57
    invoke-static {p1, v3, v2}, Lo9/d;->X(Landroid/os/Parcel;II)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    .line 62
    .line 63
    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->f:I

    .line 64
    .line 65
    const/4 v3, 0x7

    .line 66
    invoke-static {p1, v3, v2}, Lo9/d;->X(Landroid/os/Parcel;II)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    .line 71
    .line 72
    iget-wide v5, p0, Lcom/google/android/gms/cast/MediaStatus;->g:J

    .line 73
    .line 74
    invoke-static {p1, v4, v4}, Lo9/d;->X(Landroid/os/Parcel;II)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    .line 78
    .line 79
    .line 80
    iget-wide v5, p0, Lcom/google/android/gms/cast/MediaStatus;->h:J

    .line 81
    .line 82
    const/16 v1, 0x9

    .line 83
    .line 84
    invoke-static {p1, v1, v4}, Lo9/d;->X(Landroid/os/Parcel;II)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    .line 88
    .line 89
    .line 90
    iget-wide v5, p0, Lcom/google/android/gms/cast/MediaStatus;->i:D

    .line 91
    .line 92
    const/16 v1, 0xa

    .line 93
    .line 94
    invoke-static {p1, v1, v4}, Lo9/d;->X(Landroid/os/Parcel;II)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, v5, v6}, Landroid/os/Parcel;->writeDouble(D)V

    .line 98
    .line 99
    .line 100
    iget-boolean v1, p0, Lcom/google/android/gms/cast/MediaStatus;->j:Z

    .line 101
    .line 102
    const/16 v3, 0xb

    .line 103
    .line 104
    invoke-static {p1, v3, v2}, Lo9/d;->X(Landroid/os/Parcel;II)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    .line 109
    .line 110
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->k:[J

    .line 111
    .line 112
    const/16 v3, 0xc

    .line 113
    .line 114
    invoke-static {p1, v3, v1}, Lo9/d;->P(Landroid/os/Parcel;I[J)V

    .line 115
    .line 116
    .line 117
    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->l:I

    .line 118
    .line 119
    const/16 v3, 0xd

    .line 120
    .line 121
    invoke-static {p1, v3, v2}, Lo9/d;->X(Landroid/os/Parcel;II)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    .line 126
    .line 127
    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->m:I

    .line 128
    .line 129
    const/16 v3, 0xe

    .line 130
    .line 131
    invoke-static {p1, v3, v2}, Lo9/d;->X(Landroid/os/Parcel;II)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    .line 136
    .line 137
    const/16 v1, 0xf

    .line 138
    .line 139
    iget-object v3, p0, Lcom/google/android/gms/cast/MediaStatus;->n:Ljava/lang/String;

    .line 140
    .line 141
    invoke-static {p1, v1, v3}, Lo9/d;->R(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 142
    .line 143
    .line 144
    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->p:I

    .line 145
    .line 146
    const/16 v3, 0x10

    .line 147
    .line 148
    invoke-static {p1, v3, v2}, Lo9/d;->X(Landroid/os/Parcel;II)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    .line 153
    .line 154
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->q:Ljava/util/ArrayList;

    .line 155
    .line 156
    const/16 v3, 0x11

    .line 157
    .line 158
    invoke-static {p1, v3, v1}, Lo9/d;->U(Landroid/os/Parcel;ILjava/util/List;)V

    .line 159
    .line 160
    .line 161
    iget-boolean v1, p0, Lcom/google/android/gms/cast/MediaStatus;->r:Z

    .line 162
    .line 163
    const/16 v3, 0x12

    .line 164
    .line 165
    invoke-static {p1, v3, v2}, Lo9/d;->X(Landroid/os/Parcel;II)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    .line 170
    .line 171
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->s:Lcom/google/android/gms/cast/AdBreakStatus;

    .line 172
    .line 173
    const/16 v2, 0x13

    .line 174
    .line 175
    invoke-static {p1, v2, v1, p2}, Lo9/d;->Q(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 176
    .line 177
    .line 178
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->t:Lcom/google/android/gms/cast/VideoInfo;

    .line 179
    .line 180
    const/16 v2, 0x14

    .line 181
    .line 182
    invoke-static {p1, v2, v1, p2}, Lo9/d;->Q(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 183
    .line 184
    .line 185
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->u:Lcom/google/android/gms/cast/MediaLiveSeekableRange;

    .line 186
    .line 187
    const/16 v2, 0x15

    .line 188
    .line 189
    invoke-static {p1, v2, v1, p2}, Lo9/d;->Q(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 190
    .line 191
    .line 192
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->v:Lcom/google/android/gms/cast/MediaQueueData;

    .line 193
    .line 194
    const/16 v2, 0x16

    .line 195
    .line 196
    invoke-static {p1, v2, v1, p2}, Lo9/d;->Q(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 197
    .line 198
    .line 199
    invoke-static {p1, v0}, Lo9/d;->W(Landroid/os/Parcel;I)V

    .line 200
    .line 201
    .line 202
    return-void
.end method
