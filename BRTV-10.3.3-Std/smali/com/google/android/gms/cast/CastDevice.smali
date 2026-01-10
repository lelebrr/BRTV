.class public Lcom/google/android/gms/cast/CastDevice;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "MyApplication"

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/cast/CastDevice;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/net/InetAddress;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:I

.field public final h:Ljava/util/List;

.field public final i:Landroidx/leanback/widget/o;

.field public final j:I

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public final m:I

.field public final n:Ljava/lang/String;

.field public final o:[B

.field public final p:Ljava/lang/String;

.field public final q:Z

.field public final r:Lcom/google/android/gms/cast/internal/zzaa;

.field public final s:Ljava/lang/Integer;

.field public final t:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lp4/p;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, v1}, Lp4/p;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/google/android/gms/cast/CastDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;[BLjava/lang/String;ZLcom/google/android/gms/cast/internal/zzaa;Ljava/lang/Integer;Ljava/lang/Boolean;)V
    .locals 6

    move-object v1, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v2, ""

    if-nez p1, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 3
    :goto_0
    iput-object v0, v1, Lcom/google/android/gms/cast/CastDevice;->a:Ljava/lang/String;

    if-nez p2, :cond_1

    move-object v0, v2

    goto :goto_1

    :cond_1
    move-object v0, p2

    :goto_1
    iput-object v0, v1, Lcom/google/android/gms/cast/CastDevice;->b:Ljava/lang/String;

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 5
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/cast/CastDevice;->c:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 6
    iget-object v3, v1, Lcom/google/android/gms/cast/CastDevice;->b:Ljava/lang/String;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unable to convert host address ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") to ipaddress: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "CastDevice"

    .line 8
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    if-nez p3, :cond_3

    move-object v0, v2

    goto :goto_3

    :cond_3
    move-object v0, p3

    .line 9
    :goto_3
    iput-object v0, v1, Lcom/google/android/gms/cast/CastDevice;->d:Ljava/lang/String;

    if-nez p4, :cond_4

    move-object v0, v2

    goto :goto_4

    :cond_4
    move-object v0, p4

    :goto_4
    iput-object v0, v1, Lcom/google/android/gms/cast/CastDevice;->e:Ljava/lang/String;

    if-nez p5, :cond_5

    move-object v0, v2

    goto :goto_5

    :cond_5
    move-object v0, p5

    :goto_5
    iput-object v0, v1, Lcom/google/android/gms/cast/CastDevice;->f:Ljava/lang/String;

    move v3, p6

    iput v3, v1, Lcom/google/android/gms/cast/CastDevice;->g:I

    if-nez p7, :cond_6

    new-instance v0, Ljava/util/ArrayList;

    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_6

    :cond_6
    move-object v0, p7

    :goto_6
    iput-object v0, v1, Lcom/google/android/gms/cast/CastDevice;->h:Ljava/util/List;

    move v3, p9

    iput v3, v1, Lcom/google/android/gms/cast/CastDevice;->j:I

    if-nez p10, :cond_7

    goto :goto_7

    :cond_7
    move-object/from16 v2, p10

    :goto_7
    iput-object v2, v1, Lcom/google/android/gms/cast/CastDevice;->k:Ljava/lang/String;

    move-object/from16 v2, p11

    iput-object v2, v1, Lcom/google/android/gms/cast/CastDevice;->l:Ljava/lang/String;

    move/from16 v2, p12

    iput v2, v1, Lcom/google/android/gms/cast/CastDevice;->m:I

    move-object/from16 v2, p13

    iput-object v2, v1, Lcom/google/android/gms/cast/CastDevice;->n:Ljava/lang/String;

    move-object/from16 v2, p14

    iput-object v2, v1, Lcom/google/android/gms/cast/CastDevice;->o:[B

    move-object/from16 v2, p15

    iput-object v2, v1, Lcom/google/android/gms/cast/CastDevice;->p:Ljava/lang/String;

    move/from16 v2, p16

    iput-boolean v2, v1, Lcom/google/android/gms/cast/CastDevice;->q:Z

    move-object/from16 v2, p17

    iput-object v2, v1, Lcom/google/android/gms/cast/CastDevice;->r:Lcom/google/android/gms/cast/internal/zzaa;

    move-object/from16 v2, p18

    iput-object v2, v1, Lcom/google/android/gms/cast/CastDevice;->s:Ljava/lang/Integer;

    move-object/from16 v2, p19

    iput-object v2, v1, Lcom/google/android/gms/cast/CastDevice;->t:Ljava/lang/Boolean;

    new-instance v0, Landroidx/leanback/widget/o;

    move v2, p8

    invoke-direct {v0, p8}, Landroidx/leanback/widget/o;-><init>(I)V

    iput-object v0, v1, Lcom/google/android/gms/cast/CastDevice;->i:Landroidx/leanback/widget/o;

    return-void
.end method

.method public static l(Landroid/os/Bundle;)Lcom/google/android/gms/cast/CastDevice;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    const-class v0, Lcom/google/android/gms/cast/CastDevice;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "com.google.android.gms.cast.EXTRA_CAST_DEVICE"

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Lcom/google/android/gms/cast/CastDevice;

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 25
    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/cast/CastDevice;

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
    check-cast p1, Lcom/google/android/gms/cast/CastDevice;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/android/gms/cast/CastDevice;->a:Ljava/lang/String;

    .line 14
    .line 15
    if-nez v1, :cond_3

    .line 16
    .line 17
    iget-object p1, p1, Lcom/google/android/gms/cast/CastDevice;->a:Ljava/lang/String;

    .line 18
    .line 19
    if-nez p1, :cond_2

    .line 20
    .line 21
    return v0

    .line 22
    :cond_2
    return v2

    .line 23
    :cond_3
    iget-object v3, p1, Lcom/google/android/gms/cast/CastDevice;->a:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v1, v3}, Lv4/a;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_6

    .line 30
    .line 31
    iget-object v1, p0, Lcom/google/android/gms/cast/CastDevice;->c:Ljava/net/InetAddress;

    .line 32
    .line 33
    iget-object v3, p1, Lcom/google/android/gms/cast/CastDevice;->c:Ljava/net/InetAddress;

    .line 34
    .line 35
    invoke-static {v1, v3}, Lv4/a;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_6

    .line 40
    .line 41
    iget-object v1, p0, Lcom/google/android/gms/cast/CastDevice;->e:Ljava/lang/String;

    .line 42
    .line 43
    iget-object v3, p1, Lcom/google/android/gms/cast/CastDevice;->e:Ljava/lang/String;

    .line 44
    .line 45
    invoke-static {v1, v3}, Lv4/a;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_6

    .line 50
    .line 51
    iget-object v1, p0, Lcom/google/android/gms/cast/CastDevice;->d:Ljava/lang/String;

    .line 52
    .line 53
    iget-object v3, p1, Lcom/google/android/gms/cast/CastDevice;->d:Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {v1, v3}, Lv4/a;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_6

    .line 60
    .line 61
    iget-object v1, p0, Lcom/google/android/gms/cast/CastDevice;->f:Ljava/lang/String;

    .line 62
    .line 63
    iget-object v3, p1, Lcom/google/android/gms/cast/CastDevice;->f:Ljava/lang/String;

    .line 64
    .line 65
    invoke-static {v1, v3}, Lv4/a;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-eqz v4, :cond_6

    .line 70
    .line 71
    iget v4, p1, Lcom/google/android/gms/cast/CastDevice;->g:I

    .line 72
    .line 73
    iget v5, p0, Lcom/google/android/gms/cast/CastDevice;->g:I

    .line 74
    .line 75
    if-ne v5, v4, :cond_6

    .line 76
    .line 77
    iget-object v6, p0, Lcom/google/android/gms/cast/CastDevice;->h:Ljava/util/List;

    .line 78
    .line 79
    iget-object v7, p1, Lcom/google/android/gms/cast/CastDevice;->h:Ljava/util/List;

    .line 80
    .line 81
    invoke-static {v6, v7}, Lv4/a;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    if-eqz v6, :cond_6

    .line 86
    .line 87
    iget-object v6, p0, Lcom/google/android/gms/cast/CastDevice;->i:Landroidx/leanback/widget/o;

    .line 88
    .line 89
    iget v6, v6, Landroidx/leanback/widget/o;->a:I

    .line 90
    .line 91
    iget-object v7, p1, Lcom/google/android/gms/cast/CastDevice;->i:Landroidx/leanback/widget/o;

    .line 92
    .line 93
    iget v7, v7, Landroidx/leanback/widget/o;->a:I

    .line 94
    .line 95
    if-ne v6, v7, :cond_6

    .line 96
    .line 97
    iget v6, p0, Lcom/google/android/gms/cast/CastDevice;->j:I

    .line 98
    .line 99
    iget v7, p1, Lcom/google/android/gms/cast/CastDevice;->j:I

    .line 100
    .line 101
    if-ne v6, v7, :cond_6

    .line 102
    .line 103
    iget-object v6, p0, Lcom/google/android/gms/cast/CastDevice;->k:Ljava/lang/String;

    .line 104
    .line 105
    iget-object v7, p1, Lcom/google/android/gms/cast/CastDevice;->k:Ljava/lang/String;

    .line 106
    .line 107
    invoke-static {v6, v7}, Lv4/a;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v6

    .line 111
    if-eqz v6, :cond_6

    .line 112
    .line 113
    iget v6, p0, Lcom/google/android/gms/cast/CastDevice;->m:I

    .line 114
    .line 115
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    .line 117
    .line 118
    move-result-object v6

    .line 119
    iget v7, p1, Lcom/google/android/gms/cast/CastDevice;->m:I

    .line 120
    .line 121
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    .line 123
    .line 124
    move-result-object v7

    .line 125
    invoke-static {v6, v7}, Lv4/a;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v6

    .line 129
    if-eqz v6, :cond_6

    .line 130
    .line 131
    iget-object v6, p0, Lcom/google/android/gms/cast/CastDevice;->n:Ljava/lang/String;

    .line 132
    .line 133
    iget-object v7, p1, Lcom/google/android/gms/cast/CastDevice;->n:Ljava/lang/String;

    .line 134
    .line 135
    invoke-static {v6, v7}, Lv4/a;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v6

    .line 139
    if-eqz v6, :cond_6

    .line 140
    .line 141
    iget-object v6, p0, Lcom/google/android/gms/cast/CastDevice;->l:Ljava/lang/String;

    .line 142
    .line 143
    iget-object v7, p1, Lcom/google/android/gms/cast/CastDevice;->l:Ljava/lang/String;

    .line 144
    .line 145
    invoke-static {v6, v7}, Lv4/a;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v6

    .line 149
    if-eqz v6, :cond_6

    .line 150
    .line 151
    invoke-static {v1, v3}, Lv4/a;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    if-eqz v1, :cond_6

    .line 156
    .line 157
    if-ne v5, v4, :cond_6

    .line 158
    .line 159
    iget-object v1, p1, Lcom/google/android/gms/cast/CastDevice;->o:[B

    .line 160
    .line 161
    iget-object v3, p0, Lcom/google/android/gms/cast/CastDevice;->o:[B

    .line 162
    .line 163
    if-nez v3, :cond_4

    .line 164
    .line 165
    if-eqz v1, :cond_5

    .line 166
    .line 167
    :cond_4
    invoke-static {v3, v1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    if-eqz v1, :cond_6

    .line 172
    .line 173
    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/cast/CastDevice;->p:Ljava/lang/String;

    .line 174
    .line 175
    iget-object v3, p1, Lcom/google/android/gms/cast/CastDevice;->p:Ljava/lang/String;

    .line 176
    .line 177
    invoke-static {v1, v3}, Lv4/a;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    if-eqz v1, :cond_6

    .line 182
    .line 183
    iget-boolean v1, p0, Lcom/google/android/gms/cast/CastDevice;->q:Z

    .line 184
    .line 185
    iget-boolean v3, p1, Lcom/google/android/gms/cast/CastDevice;->q:Z

    .line 186
    .line 187
    if-ne v1, v3, :cond_6

    .line 188
    .line 189
    invoke-virtual {p0}, Lcom/google/android/gms/cast/CastDevice;->n()Lcom/google/android/gms/cast/internal/zzaa;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    invoke-virtual {p1}, Lcom/google/android/gms/cast/CastDevice;->n()Lcom/google/android/gms/cast/internal/zzaa;

    .line 194
    .line 195
    .line 196
    move-result-object v3

    .line 197
    invoke-static {v1, v3}, Lv4/a;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result v1

    .line 201
    if-eqz v1, :cond_6

    .line 202
    .line 203
    invoke-virtual {p0}, Lcom/google/android/gms/cast/CastDevice;->o()Z

    .line 204
    .line 205
    .line 206
    move-result v1

    .line 207
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    invoke-virtual {p1}, Lcom/google/android/gms/cast/CastDevice;->o()Z

    .line 212
    .line 213
    .line 214
    move-result p1

    .line 215
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    invoke-static {v1, p1}, Lv4/a;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result p1

    .line 223
    if-eqz p1, :cond_6

    .line 224
    .line 225
    return v0

    .line 226
    :cond_6
    return v2
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->a:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public final j()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "__cast_nearby__"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/cast/CastDevice;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/16 v0, 0x10

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0

    .line 18
    :cond_0
    return-object v1
.end method

.method public final m()I
    .locals 2

    .line 1
    const/16 v0, 0x40

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/cast/CastDevice;->i:Landroidx/leanback/widget/o;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Landroidx/leanback/widget/o;->a(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_3

    .line 10
    .line 11
    invoke-virtual {v1}, Landroidx/leanback/widget/o;->b()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    invoke-virtual {v1}, Landroidx/leanback/widget/o;->c()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x5

    .line 24
    return v0

    .line 25
    :cond_0
    const/4 v0, 0x1

    .line 26
    invoke-virtual {v1, v0}, Landroidx/leanback/widget/o;->a(I)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    const/4 v0, 0x2

    .line 33
    :cond_1
    return v0

    .line 34
    :cond_2
    const/4 v0, 0x3

    .line 35
    return v0

    .line 36
    :cond_3
    const/4 v0, 0x4

    .line 37
    return v0
.end method

.method public final n()Lcom/google/android/gms/cast/internal/zzaa;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->r:Lcom/google/android/gms/cast/internal/zzaa;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/gms/cast/CastDevice;->i:Landroidx/leanback/widget/o;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/leanback/widget/o;->c()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    new-instance v0, Lcom/google/android/gms/cast/internal/zzaa;

    .line 14
    .line 15
    const/4 v8, 0x0

    .line 16
    const/4 v9, 0x0

    .line 17
    const/4 v3, 0x1

    .line 18
    const/4 v4, 0x0

    .line 19
    const/4 v5, 0x0

    .line 20
    const/4 v6, 0x0

    .line 21
    const/4 v7, 0x0

    .line 22
    const/4 v10, 0x0

    .line 23
    const/4 v11, 0x0

    .line 24
    move-object v2, v0

    .line 25
    invoke-direct/range {v2 .. v11}, Lcom/google/android/gms/cast/internal/zzaa;-><init>(IZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-object v0
.end method

.method public final o()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->t:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, -0x1

    .line 11
    iget v1, p0, Lcom/google/android/gms/cast/CastDevice;->j:I

    .line 12
    .line 13
    if-eq v1, v0, :cond_1

    .line 14
    .line 15
    and-int/lit8 v0, v1, 0x2

    .line 16
    .line 17
    if-lez v0, :cond_1

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    return v0

    .line 21
    :cond_1
    const/4 v0, 0x0

    .line 22
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    const/16 v2, 0x40

    .line 4
    .line 5
    iget-object v3, p0, Lcom/google/android/gms/cast/CastDevice;->i:Landroidx/leanback/widget/o;

    .line 6
    .line 7
    invoke-virtual {v3, v2}, Landroidx/leanback/widget/o;->a(I)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    const-string v2, "[dynamic group]"

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v3}, Landroidx/leanback/widget/o;->b()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    const-string v2, "[static group]"

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {v3}, Landroidx/leanback/widget/o;->c()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    const-string v2, "[speaker pair]"

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    const-string v2, ""

    .line 35
    .line 36
    :goto_0
    const/high16 v4, 0x40000

    .line 37
    .line 38
    invoke-virtual {v3, v4}, Landroidx/leanback/widget/o;->a(I)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_3

    .line 43
    .line 44
    const-string v3, "[cast connect]"

    .line 45
    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    :cond_3
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 51
    .line 52
    sget-object v4, Lv4/a;->a:Ljava/util/regex/Pattern;

    .line 53
    .line 54
    iget-object v4, p0, Lcom/google/android/gms/cast/CastDevice;->d:Ljava/lang/String;

    .line 55
    .line 56
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    if-nez v5, :cond_6

    .line 61
    .line 62
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    if-gt v5, v1, :cond_5

    .line 67
    .line 68
    if-ne v5, v1, :cond_4

    .line 69
    .line 70
    const-string v4, "xx"

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_4
    const-string v4, "x"

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_5
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    add-int/lit8 v7, v5, -0x1

    .line 81
    .line 82
    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    add-int/lit8 v5, v5, -0x2

    .line 91
    .line 92
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    const/4 v7, 0x3

    .line 101
    new-array v7, v7, [Ljava/lang/Object;

    .line 102
    .line 103
    aput-object v6, v7, v0

    .line 104
    .line 105
    const/4 v0, 0x1

    .line 106
    aput-object v5, v7, v0

    .line 107
    .line 108
    aput-object v4, v7, v1

    .line 109
    .line 110
    const-string v0, "%c%d%c"

    .line 111
    .line 112
    invoke-static {v3, v0, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    :cond_6
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    const-string v1, "\""

    .line 119
    .line 120
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v1, "\" ("

    .line 127
    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    iget-object v1, p0, Lcom/google/android/gms/cast/CastDevice;->a:Ljava/lang/String;

    .line 132
    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v1, ") "

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    const/16 v0, 0x4f45

    .line 2
    .line 3
    invoke-static {p1, v0}, Lo9/d;->V(Landroid/os/Parcel;I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/cast/CastDevice;->a:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    invoke-static {p1, v2, v1}, Lo9/d;->R(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/android/gms/cast/CastDevice;->b:Ljava/lang/String;

    .line 14
    .line 15
    const/4 v2, 0x3

    .line 16
    invoke-static {p1, v2, v1}, Lo9/d;->R(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/google/android/gms/cast/CastDevice;->d:Ljava/lang/String;

    .line 20
    .line 21
    const/4 v2, 0x4

    .line 22
    invoke-static {p1, v2, v1}, Lo9/d;->R(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 v1, 0x5

    .line 26
    iget-object v3, p0, Lcom/google/android/gms/cast/CastDevice;->e:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {p1, v1, v3}, Lo9/d;->R(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/4 v1, 0x6

    .line 32
    iget-object v3, p0, Lcom/google/android/gms/cast/CastDevice;->f:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {p1, v1, v3}, Lo9/d;->R(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const/4 v1, 0x7

    .line 38
    invoke-static {p1, v1, v2}, Lo9/d;->X(Landroid/os/Parcel;II)V

    .line 39
    .line 40
    .line 41
    iget v1, p0, Lcom/google/android/gms/cast/CastDevice;->g:I

    .line 42
    .line 43
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lcom/google/android/gms/cast/CastDevice;->h:Ljava/util/List;

    .line 47
    .line 48
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    const/16 v3, 0x8

    .line 53
    .line 54
    invoke-static {p1, v3, v1}, Lo9/d;->U(Landroid/os/Parcel;ILjava/util/List;)V

    .line 55
    .line 56
    .line 57
    iget-object v1, p0, Lcom/google/android/gms/cast/CastDevice;->i:Landroidx/leanback/widget/o;

    .line 58
    .line 59
    iget v1, v1, Landroidx/leanback/widget/o;->a:I

    .line 60
    .line 61
    const/16 v3, 0x9

    .line 62
    .line 63
    invoke-static {p1, v3, v2}, Lo9/d;->X(Landroid/os/Parcel;II)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    .line 68
    .line 69
    const/16 v1, 0xa

    .line 70
    .line 71
    invoke-static {p1, v1, v2}, Lo9/d;->X(Landroid/os/Parcel;II)V

    .line 72
    .line 73
    .line 74
    iget v1, p0, Lcom/google/android/gms/cast/CastDevice;->j:I

    .line 75
    .line 76
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    .line 78
    .line 79
    const/16 v1, 0xb

    .line 80
    .line 81
    iget-object v3, p0, Lcom/google/android/gms/cast/CastDevice;->k:Ljava/lang/String;

    .line 82
    .line 83
    invoke-static {p1, v1, v3}, Lo9/d;->R(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 84
    .line 85
    .line 86
    const/16 v1, 0xc

    .line 87
    .line 88
    iget-object v3, p0, Lcom/google/android/gms/cast/CastDevice;->l:Ljava/lang/String;

    .line 89
    .line 90
    invoke-static {p1, v1, v3}, Lo9/d;->R(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 91
    .line 92
    .line 93
    const/16 v1, 0xd

    .line 94
    .line 95
    invoke-static {p1, v1, v2}, Lo9/d;->X(Landroid/os/Parcel;II)V

    .line 96
    .line 97
    .line 98
    iget v1, p0, Lcom/google/android/gms/cast/CastDevice;->m:I

    .line 99
    .line 100
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    .line 102
    .line 103
    const/16 v1, 0xe

    .line 104
    .line 105
    iget-object v3, p0, Lcom/google/android/gms/cast/CastDevice;->n:Ljava/lang/String;

    .line 106
    .line 107
    invoke-static {p1, v1, v3}, Lo9/d;->R(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 108
    .line 109
    .line 110
    iget-object v1, p0, Lcom/google/android/gms/cast/CastDevice;->o:[B

    .line 111
    .line 112
    if-nez v1, :cond_0

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_0
    const/16 v3, 0xf

    .line 116
    .line 117
    invoke-static {p1, v3}, Lo9/d;->V(Landroid/os/Parcel;I)I

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 122
    .line 123
    .line 124
    invoke-static {p1, v3}, Lo9/d;->W(Landroid/os/Parcel;I)V

    .line 125
    .line 126
    .line 127
    :goto_0
    const/16 v1, 0x10

    .line 128
    .line 129
    iget-object v3, p0, Lcom/google/android/gms/cast/CastDevice;->p:Ljava/lang/String;

    .line 130
    .line 131
    invoke-static {p1, v1, v3}, Lo9/d;->R(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 132
    .line 133
    .line 134
    const/16 v1, 0x11

    .line 135
    .line 136
    invoke-static {p1, v1, v2}, Lo9/d;->X(Landroid/os/Parcel;II)V

    .line 137
    .line 138
    .line 139
    iget-boolean v1, p0, Lcom/google/android/gms/cast/CastDevice;->q:Z

    .line 140
    .line 141
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    .line 143
    .line 144
    const/16 v1, 0x12

    .line 145
    .line 146
    invoke-virtual {p0}, Lcom/google/android/gms/cast/CastDevice;->n()Lcom/google/android/gms/cast/internal/zzaa;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    invoke-static {p1, v1, v3, p2}, Lo9/d;->Q(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 151
    .line 152
    .line 153
    iget-object p2, p0, Lcom/google/android/gms/cast/CastDevice;->s:Ljava/lang/Integer;

    .line 154
    .line 155
    if-nez p2, :cond_1

    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_1
    const/16 v1, 0x13

    .line 159
    .line 160
    invoke-static {p1, v1, v2}, Lo9/d;->X(Landroid/os/Parcel;II)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 164
    .line 165
    .line 166
    move-result p2

    .line 167
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    .line 169
    .line 170
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/cast/CastDevice;->o()Z

    .line 171
    .line 172
    .line 173
    move-result p2

    .line 174
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 175
    .line 176
    .line 177
    move-result-object p2

    .line 178
    const/16 v1, 0x14

    .line 179
    .line 180
    invoke-static {p1, v1, p2}, Lo9/d;->L(Landroid/os/Parcel;ILjava/lang/Boolean;)V

    .line 181
    .line 182
    .line 183
    invoke-static {p1, v0}, Lo9/d;->W(Landroid/os/Parcel;I)V

    .line 184
    .line 185
    .line 186
    return-void
.end method
