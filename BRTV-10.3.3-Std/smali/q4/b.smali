.class public final Lq4/b;
.super Lq4/e;
.source "MyApplication"


# static fields
.field public static final m:Lv4/b;


# instance fields
.field public final c:Landroid/content/Context;

.field public final d:Ljava/util/HashSet;

.field public final e:Lq4/n;

.field public final f:Lcom/google/android/gms/cast/framework/CastOptions;

.field public final g:Lcom/google/android/gms/internal/cast/u;

.field public final h:Ls4/k;

.field public i:Lp4/o;

.field public j:Lr4/f;

.field public k:Lcom/google/android/gms/cast/CastDevice;

.field public l:Lcom/google/android/gms/internal/cast/u4;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lv4/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "CastSession"

    .line 5
    .line 6
    invoke-direct {v0, v2, v1}, Lv4/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lq4/b;->m:Lv4/b;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/cast/framework/CastOptions;Lcom/google/android/gms/internal/cast/u;Ls4/k;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lq4/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    new-instance p2, Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lq4/b;->d:Ljava/util/HashSet;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    iput-object p2, p0, Lq4/b;->c:Landroid/content/Context;

    .line 16
    .line 17
    iput-object p4, p0, Lq4/b;->f:Lcom/google/android/gms/cast/framework/CastOptions;

    .line 18
    .line 19
    iput-object p5, p0, Lq4/b;->g:Lcom/google/android/gms/internal/cast/u;

    .line 20
    .line 21
    iput-object p6, p0, Lq4/b;->h:Ls4/k;

    .line 22
    .line 23
    invoke-virtual {p0}, Lq4/e;->d()Lm5/a;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    new-instance p3, Lq4/w;

    .line 28
    .line 29
    invoke-direct {p3, p0}, Lq4/w;-><init>(Lq4/b;)V

    .line 30
    .line 31
    .line 32
    sget-object p5, Lcom/google/android/gms/internal/cast/i;->a:Lv4/b;

    .line 33
    .line 34
    const/4 p5, 0x0

    .line 35
    if-nez p2, :cond_0

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/i;->b(Landroid/content/Context;)Lcom/google/android/gms/internal/cast/k;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1, p4, p2, p3}, Lcom/google/android/gms/internal/cast/k;->z(Lcom/google/android/gms/cast/framework/CastOptions;Lm5/a;Lq4/w;)Lq4/n;

    .line 43
    .line 44
    .line 45
    move-result-object p5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lq4/c; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    goto :goto_1

    .line 47
    :catch_0
    move-exception p1

    .line 48
    goto :goto_0

    .line 49
    :catch_1
    move-exception p1

    .line 50
    :goto_0
    const-class p2, Lcom/google/android/gms/internal/cast/k;

    .line 51
    .line 52
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    const/4 p3, 0x2

    .line 57
    new-array p3, p3, [Ljava/lang/Object;

    .line 58
    .line 59
    const-string p4, "newCastSessionImpl"

    .line 60
    .line 61
    const/4 p6, 0x0

    .line 62
    aput-object p4, p3, p6

    .line 63
    .line 64
    const/4 p4, 0x1

    .line 65
    aput-object p2, p3, p4

    .line 66
    .line 67
    const-string p2, "Unable to call %s on %s."

    .line 68
    .line 69
    sget-object p4, Lcom/google/android/gms/internal/cast/i;->a:Lv4/b;

    .line 70
    .line 71
    invoke-virtual {p4, p1, p2, p3}, Lv4/b;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    :goto_1
    iput-object p5, p0, Lq4/b;->e:Lq4/n;

    .line 75
    .line 76
    return-void
.end method

.method public static h(Lq4/b;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lq4/b;->h:Ls4/k;

    .line 2
    .line 3
    iget-boolean v1, v0, Ls4/k;->q:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    iput-boolean v1, v0, Ls4/k;->q:Z

    .line 11
    .line 12
    iget-object v3, v0, Ls4/k;->n:Lr4/f;

    .line 13
    .line 14
    if-eqz v3, :cond_1

    .line 15
    .line 16
    const-string v4, "Must be called from the main thread."

    .line 17
    .line 18
    invoke-static {v4}, Lb5/l;->b(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v4, v0, Ls4/k;->m:Lq4/z;

    .line 22
    .line 23
    if-eqz v4, :cond_1

    .line 24
    .line 25
    iget-object v3, v3, Lr4/f;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 26
    .line 27
    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    :cond_1
    iget-object v3, v0, Ls4/k;->c:Lcom/google/android/gms/internal/cast/u;

    .line 31
    .line 32
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/cast/u;->x(Landroid/support/v4/media/session/MediaSessionCompat;)V

    .line 33
    .line 34
    .line 35
    iget-object v3, v0, Ls4/k;->h:Lc2/b;

    .line 36
    .line 37
    if-eqz v3, :cond_2

    .line 38
    .line 39
    invoke-virtual {v3}, Lc2/b;->j()V

    .line 40
    .line 41
    .line 42
    iput-object v2, v3, Lc2/b;->f:Ljava/lang/Object;

    .line 43
    .line 44
    :cond_2
    iget-object v3, v0, Ls4/k;->i:Lc2/b;

    .line 45
    .line 46
    if-eqz v3, :cond_3

    .line 47
    .line 48
    invoke-virtual {v3}, Lc2/b;->j()V

    .line 49
    .line 50
    .line 51
    iput-object v2, v3, Lc2/b;->f:Ljava/lang/Object;

    .line 52
    .line 53
    :cond_3
    iget-object v3, v0, Ls4/k;->p:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 54
    .line 55
    if-eqz v3, :cond_4

    .line 56
    .line 57
    invoke-virtual {v3, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->setCallback(Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V

    .line 58
    .line 59
    .line 60
    iget-object v3, v0, Ls4/k;->p:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 61
    .line 62
    new-instance v4, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 63
    .line 64
    invoke-direct {v4}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v4}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-virtual {v3, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1, v2}, Ls4/k;->j(ILcom/google/android/gms/cast/MediaInfo;)V

    .line 75
    .line 76
    .line 77
    :cond_4
    iget-object v3, v0, Ls4/k;->p:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 78
    .line 79
    if-eqz v3, :cond_5

    .line 80
    .line 81
    invoke-virtual {v3, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->setActive(Z)V

    .line 82
    .line 83
    .line 84
    iget-object v1, v0, Ls4/k;->p:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 85
    .line 86
    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaSessionCompat;->release()V

    .line 87
    .line 88
    .line 89
    iput-object v2, v0, Ls4/k;->p:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 90
    .line 91
    :cond_5
    iput-object v2, v0, Ls4/k;->n:Lr4/f;

    .line 92
    .line 93
    iput-object v2, v0, Ls4/k;->o:Lcom/google/android/gms/cast/CastDevice;

    .line 94
    .line 95
    invoke-virtual {v0}, Ls4/k;->h()V

    .line 96
    .line 97
    .line 98
    if-nez p1, :cond_6

    .line 99
    .line 100
    invoke-virtual {v0}, Ls4/k;->i()V

    .line 101
    .line 102
    .line 103
    :cond_6
    :goto_0
    iget-object p1, p0, Lq4/b;->i:Lp4/o;

    .line 104
    .line 105
    if-eqz p1, :cond_7

    .line 106
    .line 107
    invoke-virtual {p1}, Lp4/o;->i()Lw5/g;

    .line 108
    .line 109
    .line 110
    iput-object v2, p0, Lq4/b;->i:Lp4/o;

    .line 111
    .line 112
    :cond_7
    iput-object v2, p0, Lq4/b;->k:Lcom/google/android/gms/cast/CastDevice;

    .line 113
    .line 114
    iget-object p1, p0, Lq4/b;->j:Lr4/f;

    .line 115
    .line 116
    if-eqz p1, :cond_8

    .line 117
    .line 118
    invoke-virtual {p1, v2}, Lr4/f;->z(Lp4/o;)V

    .line 119
    .line 120
    .line 121
    iput-object v2, p0, Lq4/b;->j:Lr4/f;

    .line 122
    .line 123
    :cond_8
    return-void
.end method

.method public static i(Lq4/b;Ljava/lang/String;Lw5/g;)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    sget-object v2, Lq4/b;->m:Lv4/b;

    .line 4
    .line 5
    iget-object v3, p0, Lq4/b;->e:Lq4/n;

    .line 6
    .line 7
    if-nez v3, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lw5/g;->e()Z

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    const/4 v5, 0x5

    .line 15
    if-eqz v4, :cond_3

    .line 16
    .line 17
    invoke-virtual {p2}, Lw5/g;->d()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    check-cast p2, Lv4/t;

    .line 22
    .line 23
    iget-object v4, p2, Lv4/t;->a:Lcom/google/android/gms/common/api/Status;

    .line 24
    .line 25
    iget v6, v4, Lcom/google/android/gms/common/api/Status;->a:I

    .line 26
    .line 27
    if-gtz v6, :cond_1

    .line 28
    .line 29
    const/4 v6, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v6, 0x0

    .line 32
    :goto_0
    if-eqz v6, :cond_2

    .line 33
    .line 34
    const-string v4, "%s() -> success result"

    .line 35
    .line 36
    new-array v5, v0, [Ljava/lang/Object;

    .line 37
    .line 38
    aput-object p1, v5, v1

    .line 39
    .line 40
    invoke-virtual {v2, v4, v5}, Lv4/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    new-instance p1, Lr4/f;

    .line 44
    .line 45
    new-instance v4, Lv4/l;

    .line 46
    .line 47
    invoke-direct {v4}, Lv4/l;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-direct {p1, v4}, Lr4/f;-><init>(Lv4/l;)V

    .line 51
    .line 52
    .line 53
    iput-object p1, p0, Lq4/b;->j:Lr4/f;

    .line 54
    .line 55
    iget-object v4, p0, Lq4/b;->i:Lp4/o;

    .line 56
    .line 57
    invoke-virtual {p1, v4}, Lr4/f;->z(Lp4/o;)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lq4/b;->j:Lr4/f;

    .line 61
    .line 62
    new-instance v4, Lq4/z;

    .line 63
    .line 64
    invoke-direct {v4, v1, p0}, Lq4/z;-><init>(ILjava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    const-string v5, "Must be called from the main thread."

    .line 71
    .line 72
    invoke-static {v5}, Lb5/l;->b(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p1, Lr4/f;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 76
    .line 77
    invoke-virtual {p1, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lq4/b;->j:Lr4/f;

    .line 81
    .line 82
    invoke-virtual {p1}, Lr4/f;->y()V

    .line 83
    .line 84
    .line 85
    iget-object p1, p0, Lq4/b;->h:Ls4/k;

    .line 86
    .line 87
    iget-object v4, p0, Lq4/b;->j:Lr4/f;

    .line 88
    .line 89
    invoke-virtual {p0}, Lq4/b;->e()Lcom/google/android/gms/cast/CastDevice;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-virtual {p1, v4, p0}, Ls4/k;->a(Lr4/f;Lcom/google/android/gms/cast/CastDevice;)V

    .line 94
    .line 95
    .line 96
    iget-object p0, p2, Lv4/t;->b:Lcom/google/android/gms/cast/ApplicationMetadata;

    .line 97
    .line 98
    invoke-static {p0}, Lb5/l;->e(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    iget-object p1, p2, Lv4/t;->c:Ljava/lang/String;

    .line 102
    .line 103
    iget-object v4, p2, Lv4/t;->d:Ljava/lang/String;

    .line 104
    .line 105
    invoke-static {v4}, Lb5/l;->e(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    iget-boolean p2, p2, Lv4/t;->e:Z

    .line 109
    .line 110
    check-cast v3, Lq4/l;

    .line 111
    .line 112
    invoke-virtual {v3}, Lcom/google/android/gms/internal/cast/a;->l()Landroid/os/Parcel;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    invoke-static {v5, p0}, Lcom/google/android/gms/internal/cast/d0;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v5, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v5, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v5, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    .line 127
    .line 128
    const/4 p0, 0x4

    .line 129
    invoke-virtual {v3, v5, p0}, Lcom/google/android/gms/internal/cast/a;->x(Landroid/os/Parcel;I)V

    .line 130
    .line 131
    .line 132
    return-void

    .line 133
    :catch_0
    move-exception p0

    .line 134
    goto :goto_1

    .line 135
    :cond_2
    const-string p0, "%s() -> failure result"

    .line 136
    .line 137
    new-array p2, v0, [Ljava/lang/Object;

    .line 138
    .line 139
    aput-object p1, p2, v1

    .line 140
    .line 141
    invoke-virtual {v2, p0, p2}, Lv4/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    iget p0, v4, Lcom/google/android/gms/common/api/Status;->a:I

    .line 145
    .line 146
    check-cast v3, Lq4/l;

    .line 147
    .line 148
    invoke-virtual {v3}, Lcom/google/android/gms/internal/cast/a;->l()Landroid/os/Parcel;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v3, p1, v5}, Lcom/google/android/gms/internal/cast/a;->x(Landroid/os/Parcel;I)V

    .line 156
    .line 157
    .line 158
    return-void

    .line 159
    :cond_3
    invoke-virtual {p2}, Lw5/g;->c()Ljava/lang/Exception;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    instance-of p1, p0, Ly4/e;

    .line 164
    .line 165
    if-eqz p1, :cond_4

    .line 166
    .line 167
    check-cast p0, Ly4/e;

    .line 168
    .line 169
    iget-object p0, p0, Ly4/e;->a:Lcom/google/android/gms/common/api/Status;

    .line 170
    .line 171
    iget p0, p0, Lcom/google/android/gms/common/api/Status;->a:I

    .line 172
    .line 173
    check-cast v3, Lq4/l;

    .line 174
    .line 175
    invoke-virtual {v3}, Lcom/google/android/gms/internal/cast/a;->l()Landroid/os/Parcel;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v3, p1, v5}, Lcom/google/android/gms/internal/cast/a;->x(Landroid/os/Parcel;I)V

    .line 183
    .line 184
    .line 185
    return-void

    .line 186
    :cond_4
    check-cast v3, Lq4/l;

    .line 187
    .line 188
    invoke-virtual {v3}, Lcom/google/android/gms/internal/cast/a;->l()Landroid/os/Parcel;

    .line 189
    .line 190
    .line 191
    move-result-object p0

    .line 192
    const/16 p1, 0x9ac

    .line 193
    .line 194
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v3, p0, v5}, Lcom/google/android/gms/internal/cast/a;->x(Landroid/os/Parcel;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    .line 199
    .line 200
    return-void

    .line 201
    :goto_1
    const-class p1, Lq4/n;

    .line 202
    .line 203
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    const/4 p2, 0x2

    .line 208
    new-array p2, p2, [Ljava/lang/Object;

    .line 209
    .line 210
    const-string v3, "methods"

    .line 211
    .line 212
    aput-object v3, p2, v1

    .line 213
    .line 214
    aput-object p1, p2, v0

    .line 215
    .line 216
    const-string p1, "Unable to call %s on %s."

    .line 217
    .line 218
    invoke-virtual {v2, p0, p1, p2}, Lv4/b;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    .line 220
    .line 221
    return-void
.end method


# virtual methods
.method public final e()Lcom/google/android/gms/cast/CastDevice;
    .locals 1

    .line 1
    const-string v0, "Must be called from the main thread."

    .line 2
    .line 3
    invoke-static {v0}, Lb5/l;->b(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lq4/b;->k:Lcom/google/android/gms/cast/CastDevice;

    .line 7
    .line 8
    return-object v0
.end method

.method public final f()Lr4/f;
    .locals 1

    .line 1
    const-string v0, "Must be called from the main thread."

    .line 2
    .line 3
    invoke-static {v0}, Lb5/l;->b(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lq4/b;->j:Lr4/f;

    .line 7
    .line 8
    return-object v0
.end method

.method public final g(Z)V
    .locals 4

    .line 1
    const-string v0, "Must be called from the main thread."

    .line 2
    .line 3
    invoke-static {v0}, Lb5/l;->b(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lq4/b;->i:Lp4/o;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lp4/o;->j()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-static {}, Lc6/c;->c()Lc6/c;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    new-instance v2, Landroidx/appcompat/app/r0;

    .line 21
    .line 22
    const/4 v3, 0x4

    .line 23
    invoke-direct {v2, v3, v0, p1}, Landroidx/appcompat/app/r0;-><init>(ILjava/lang/Object;Z)V

    .line 24
    .line 25
    .line 26
    iput-object v2, v1, Lc6/c;->c:Ljava/lang/Object;

    .line 27
    .line 28
    const/16 p1, 0x20dc

    .line 29
    .line 30
    iput p1, v1, Lc6/c;->a:I

    .line 31
    .line 32
    invoke-virtual {v1}, Lc6/c;->b()Lc6/c;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const/4 v1, 0x1

    .line 37
    invoke-virtual {v0, v1, p1}, Ly4/g;->c(ILc6/c;)Lw5/g;

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method

.method public final j(Landroid/os/Bundle;)V
    .locals 8

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/cast/CastDevice;->l(Landroid/os/Bundle;)Lcom/google/android/gms/cast/CastDevice;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    iput-object p1, p0, Lq4/b;->k:Lcom/google/android/gms/cast/CastDevice;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez p1, :cond_5

    .line 11
    .line 12
    const-string p1, "Must be called from the main thread."

    .line 13
    .line 14
    invoke-static {p1}, Lb5/l;->b(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lq4/e;->a:Lq4/u;

    .line 18
    .line 19
    const-string v3, "Unable to call %s on %s."

    .line 20
    .line 21
    const-class v4, Lq4/u;

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    :try_start_0
    check-cast p1, Lq4/s;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/a;->l()Landroid/os/Parcel;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    const/16 v6, 0x9

    .line 32
    .line 33
    invoke-virtual {p1, v5, v6}, Lcom/google/android/gms/internal/cast/a;->w(Landroid/os/Parcel;I)Landroid/os/Parcel;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    sget v5, Lcom/google/android/gms/internal/cast/d0;->a:I

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-eqz v5, :cond_0

    .line 44
    .line 45
    const/4 v5, 0x1

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const/4 v5, 0x0

    .line 48
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :catch_0
    move-exception p1

    .line 53
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    new-array v6, v0, [Ljava/lang/Object;

    .line 58
    .line 59
    const-string v7, "isResuming"

    .line 60
    .line 61
    aput-object v7, v6, v2

    .line 62
    .line 63
    aput-object v5, v6, v1

    .line 64
    .line 65
    sget-object v5, Lq4/e;->b:Lv4/b;

    .line 66
    .line 67
    invoke-virtual {v5, p1, v3, v6}, Lv4/b;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    :cond_1
    const/4 v5, 0x0

    .line 71
    :goto_1
    if-eqz v5, :cond_3

    .line 72
    .line 73
    iget-object p1, p0, Lq4/e;->a:Lq4/u;

    .line 74
    .line 75
    if-nez p1, :cond_2

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_2
    :try_start_1
    check-cast p1, Lq4/s;

    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/a;->l()Landroid/os/Parcel;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    const/16 v6, 0x869

    .line 85
    .line 86
    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    .line 88
    .line 89
    const/16 v6, 0xf

    .line 90
    .line 91
    invoke-virtual {p1, v5, v6}, Lcom/google/android/gms/internal/cast/a;->x(Landroid/os/Parcel;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 92
    .line 93
    .line 94
    goto :goto_2

    .line 95
    :catch_1
    move-exception p1

    .line 96
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    new-array v0, v0, [Ljava/lang/Object;

    .line 101
    .line 102
    const-string v5, "notifyFailedToResumeSession"

    .line 103
    .line 104
    aput-object v5, v0, v2

    .line 105
    .line 106
    aput-object v4, v0, v1

    .line 107
    .line 108
    sget-object v1, Lq4/e;->b:Lv4/b;

    .line 109
    .line 110
    invoke-virtual {v1, p1, v3, v0}, Lv4/b;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    :goto_2
    return-void

    .line 114
    :cond_3
    iget-object p1, p0, Lq4/e;->a:Lq4/u;

    .line 115
    .line 116
    if-nez p1, :cond_4

    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_4
    :try_start_2
    check-cast p1, Lq4/s;

    .line 120
    .line 121
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/a;->l()Landroid/os/Parcel;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    const/16 v6, 0x867

    .line 126
    .line 127
    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    .line 129
    .line 130
    const/16 v6, 0xc

    .line 131
    .line 132
    invoke-virtual {p1, v5, v6}, Lcom/google/android/gms/internal/cast/a;->x(Landroid/os/Parcel;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 133
    .line 134
    .line 135
    goto :goto_3

    .line 136
    :catch_2
    move-exception p1

    .line 137
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    new-array v0, v0, [Ljava/lang/Object;

    .line 142
    .line 143
    const-string v5, "notifyFailedToStartSession"

    .line 144
    .line 145
    aput-object v5, v0, v2

    .line 146
    .line 147
    aput-object v4, v0, v1

    .line 148
    .line 149
    sget-object v1, Lq4/e;->b:Lv4/b;

    .line 150
    .line 151
    invoke-virtual {v1, p1, v3, v0}, Lv4/b;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    :goto_3
    return-void

    .line 155
    :cond_5
    iget-object p1, p0, Lq4/b;->i:Lp4/o;

    .line 156
    .line 157
    const/4 v3, 0x0

    .line 158
    if-eqz p1, :cond_6

    .line 159
    .line 160
    invoke-virtual {p1}, Lp4/o;->i()Lw5/g;

    .line 161
    .line 162
    .line 163
    iput-object v3, p0, Lq4/b;->i:Lp4/o;

    .line 164
    .line 165
    :cond_6
    sget-object p1, Lq4/b;->m:Lv4/b;

    .line 166
    .line 167
    iget-object v4, p0, Lq4/b;->k:Lcom/google/android/gms/cast/CastDevice;

    .line 168
    .line 169
    new-array v5, v1, [Ljava/lang/Object;

    .line 170
    .line 171
    aput-object v4, v5, v2

    .line 172
    .line 173
    const-string v4, "Acquiring a connection to Google Play Services for %s"

    .line 174
    .line 175
    invoke-virtual {p1, v4, v5}, Lv4/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    iget-object p1, p0, Lq4/b;->k:Lcom/google/android/gms/cast/CastDevice;

    .line 179
    .line 180
    invoke-static {p1}, Lb5/l;->e(Ljava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    new-instance v4, Landroid/os/Bundle;

    .line 184
    .line 185
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 186
    .line 187
    .line 188
    iget-object v5, p0, Lq4/b;->f:Lcom/google/android/gms/cast/framework/CastOptions;

    .line 189
    .line 190
    if-nez v5, :cond_7

    .line 191
    .line 192
    move-object v5, v3

    .line 193
    goto :goto_4

    .line 194
    :cond_7
    iget-object v5, v5, Lcom/google/android/gms/cast/framework/CastOptions;->f:Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    .line 195
    .line 196
    :goto_4
    if-nez v5, :cond_8

    .line 197
    .line 198
    goto :goto_5

    .line 199
    :cond_8
    iget-object v3, v5, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->d:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 200
    .line 201
    :goto_5
    if-eqz v5, :cond_9

    .line 202
    .line 203
    iget-boolean v5, v5, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->e:Z

    .line 204
    .line 205
    if-eqz v5, :cond_9

    .line 206
    .line 207
    const/4 v5, 0x1

    .line 208
    goto :goto_6

    .line 209
    :cond_9
    const/4 v5, 0x0

    .line 210
    :goto_6
    if-eqz v3, :cond_a

    .line 211
    .line 212
    const/4 v3, 0x1

    .line 213
    goto :goto_7

    .line 214
    :cond_a
    const/4 v3, 0x0

    .line 215
    :goto_7
    const-string v6, "com.google.android.gms.cast.EXTRA_CAST_FRAMEWORK_NOTIFICATION_ENABLED"

    .line 216
    .line 217
    invoke-virtual {v4, v6, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 218
    .line 219
    .line 220
    const-string v3, "com.google.android.gms.cast.EXTRA_CAST_REMOTE_CONTROL_NOTIFICATION_ENABLED"

    .line 221
    .line 222
    invoke-virtual {v4, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 223
    .line 224
    .line 225
    iget-object v3, p0, Lq4/b;->g:Lcom/google/android/gms/internal/cast/u;

    .line 226
    .line 227
    invoke-virtual {v3}, Lcom/google/android/gms/internal/cast/u;->y()Z

    .line 228
    .line 229
    .line 230
    move-result v5

    .line 231
    const-string v6, "com.google.android.gms.cast.EXTRA_CAST_ALWAYS_FOLLOW_SESSION_ENABLED"

    .line 232
    .line 233
    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 234
    .line 235
    .line 236
    iget-boolean v3, v3, Lcom/google/android/gms/internal/cast/u;->k:Z

    .line 237
    .line 238
    const-string v5, "com.google.android.gms.cast.EXTRA_USE_ROUTE_CONNECTION"

    .line 239
    .line 240
    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 241
    .line 242
    .line 243
    new-instance v3, La1/b;

    .line 244
    .line 245
    new-instance v5, Lcom/google/android/gms/internal/cast/j0;

    .line 246
    .line 247
    invoke-direct {v5, v1, p0}, Lcom/google/android/gms/internal/cast/j0;-><init>(ILjava/lang/Object;)V

    .line 248
    .line 249
    .line 250
    invoke-direct {v3, p1, v5}, La1/b;-><init>(Lcom/google/android/gms/cast/CastDevice;Lcom/google/android/gms/internal/cast/j0;)V

    .line 251
    .line 252
    .line 253
    iput-object v4, v3, La1/b;->d:Ljava/lang/Object;

    .line 254
    .line 255
    new-instance p1, Lp4/a;

    .line 256
    .line 257
    invoke-direct {p1, v3}, Lp4/a;-><init>(La1/b;)V

    .line 258
    .line 259
    .line 260
    iget-object v3, p0, Lq4/b;->c:Landroid/content/Context;

    .line 261
    .line 262
    sget v4, Lp4/c;->a:I

    .line 263
    .line 264
    new-instance v4, Lp4/o;

    .line 265
    .line 266
    invoke-direct {v4, v3, p1}, Lp4/o;-><init>(Landroid/content/Context;Lp4/a;)V

    .line 267
    .line 268
    .line 269
    new-instance p1, Lq4/b0;

    .line 270
    .line 271
    invoke-direct {p1, p0}, Lq4/b0;-><init>(Lq4/b;)V

    .line 272
    .line 273
    .line 274
    iget-object v3, v4, Lp4/o;->D:Ljava/util/List;

    .line 275
    .line 276
    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    iput-object v4, p0, Lq4/b;->i:Lp4/o;

    .line 280
    .line 281
    iget-object p1, v4, Lp4/o;->j:Lp4/n;

    .line 282
    .line 283
    invoke-virtual {v4, p1}, Ly4/g;->b(Lv4/f;)Lz4/h;

    .line 284
    .line 285
    .line 286
    move-result-object p1

    .line 287
    new-instance v3, Lz4/j;

    .line 288
    .line 289
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 290
    .line 291
    .line 292
    new-instance v5, Lj7/c;

    .line 293
    .line 294
    const/16 v6, 0x17

    .line 295
    .line 296
    invoke-direct {v5, v6, v4}, Lj7/c;-><init>(ILjava/lang/Object;)V

    .line 297
    .line 298
    .line 299
    new-instance v6, Lx4/e;

    .line 300
    .line 301
    const/16 v7, 0x1d

    .line 302
    .line 303
    invoke-direct {v6, v7}, Lx4/e;-><init>(I)V

    .line 304
    .line 305
    .line 306
    iput v0, v4, Lp4/o;->E:I

    .line 307
    .line 308
    iput-object p1, v3, Lz4/j;->c:Lz4/h;

    .line 309
    .line 310
    iput-object v5, v3, Lz4/j;->a:Lj7/c;

    .line 311
    .line 312
    iput-object v6, v3, Lz4/j;->b:Lx4/e;

    .line 313
    .line 314
    new-array v0, v1, [Lcom/google/android/gms/common/Feature;

    .line 315
    .line 316
    sget-object v1, Lp4/j;->a:Lcom/google/android/gms/common/Feature;

    .line 317
    .line 318
    aput-object v1, v0, v2

    .line 319
    .line 320
    iput-object v0, v3, Lz4/j;->d:[Lcom/google/android/gms/common/Feature;

    .line 321
    .line 322
    const/16 v0, 0x20ec

    .line 323
    .line 324
    iput v0, v3, Lz4/j;->e:I

    .line 325
    .line 326
    iget-object p1, p1, Lz4/h;->a:Lz4/g;

    .line 327
    .line 328
    const-string v0, "Key must not be null"

    .line 329
    .line 330
    invoke-static {p1, v0}, Lb5/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    new-instance v0, Ls/g;

    .line 334
    .line 335
    iget-object v1, v3, Lz4/j;->c:Lz4/h;

    .line 336
    .line 337
    iget-object v2, v3, Lz4/j;->d:[Lcom/google/android/gms/common/Feature;

    .line 338
    .line 339
    iget v5, v3, Lz4/j;->e:I

    .line 340
    .line 341
    invoke-direct {v0, v3, v1, v2, v5}, Ls/g;-><init>(Lz4/j;Lz4/h;[Lcom/google/android/gms/common/Feature;I)V

    .line 342
    .line 343
    .line 344
    new-instance v2, Ls2/c;

    .line 345
    .line 346
    invoke-direct {v2, v3, p1}, Ls2/c;-><init>(Lz4/j;Lz4/g;)V

    .line 347
    .line 348
    .line 349
    iget-object p1, v1, Lz4/h;->a:Lz4/g;

    .line 350
    .line 351
    const-string v1, "Listener has already been released."

    .line 352
    .line 353
    invoke-static {p1, v1}, Lb5/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    iget-object p1, v4, Ly4/g;->i:Lz4/e;

    .line 357
    .line 358
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 359
    .line 360
    .line 361
    new-instance v1, Lw5/d;

    .line 362
    .line 363
    invoke-direct {v1}, Lw5/d;-><init>()V

    .line 364
    .line 365
    .line 366
    invoke-virtual {p1, v1, v5, v4}, Lz4/e;->e(Lw5/d;ILy4/g;)V

    .line 367
    .line 368
    .line 369
    new-instance v3, Lz4/x;

    .line 370
    .line 371
    new-instance v5, Lz4/u;

    .line 372
    .line 373
    invoke-direct {v5, v0, v2}, Lz4/u;-><init>(Ls/g;Ls2/c;)V

    .line 374
    .line 375
    .line 376
    invoke-direct {v3, v5, v1}, Lz4/x;-><init>(Lz4/u;Lw5/d;)V

    .line 377
    .line 378
    .line 379
    iget-object v0, p1, Lz4/e;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 380
    .line 381
    new-instance v1, Lz4/t;

    .line 382
    .line 383
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 384
    .line 385
    .line 386
    move-result v0

    .line 387
    invoke-direct {v1, v3, v0, v4}, Lz4/t;-><init>(Lz4/q;ILy4/g;)V

    .line 388
    .line 389
    .line 390
    iget-object p1, p1, Lz4/e;->m:Lcom/google/android/gms/internal/cast/x0;

    .line 391
    .line 392
    const/16 v0, 0x8

    .line 393
    .line 394
    invoke-virtual {p1, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 395
    .line 396
    .line 397
    move-result-object v0

    .line 398
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 399
    .line 400
    .line 401
    return-void
.end method
