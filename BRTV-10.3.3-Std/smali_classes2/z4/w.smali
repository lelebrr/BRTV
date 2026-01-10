.class public final Lz4/w;
.super Lcom/google/android/gms/internal/cast/s;
.source "MyApplication"

# interfaces
.implements Ly4/h;
.implements Ly4/i;


# static fields
.field public static final k:Lcom/google/android/gms/internal/cast/d1;


# instance fields
.field public final d:Landroid/content/Context;

.field public final e:Lcom/google/android/gms/internal/cast/x0;

.field public final f:Lcom/google/android/gms/internal/cast/d1;

.field public final g:Ljava/util/Set;

.field public final h:La4/h;

.field public i:Lv5/a;

.field public j:La/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lu5/b;->a:Lcom/google/android/gms/internal/cast/d1;

    .line 2
    .line 3
    sput-object v0, Lz4/w;->k:Lcom/google/android/gms/internal/cast/d1;

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/cast/x0;La4/h;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/s;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "com.google.android.gms.signin.internal.ISignInCallbacks"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lz4/w;->d:Landroid/content/Context;

    .line 10
    .line 11
    iput-object p2, p0, Lz4/w;->e:Lcom/google/android/gms/internal/cast/x0;

    .line 12
    .line 13
    iput-object p3, p0, Lz4/w;->h:La4/h;

    .line 14
    .line 15
    iget-object p1, p3, La4/h;->c:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p1, Ljava/util/Set;

    .line 18
    .line 19
    iput-object p1, p0, Lz4/w;->g:Ljava/util/Set;

    .line 20
    .line 21
    sget-object p1, Lz4/w;->k:Lcom/google/android/gms/internal/cast/d1;

    .line 22
    .line 23
    iput-object p1, p0, Lz4/w;->f:Lcom/google/android/gms/internal/cast/d1;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final g(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lz4/w;->j:La/q;

    .line 2
    .line 3
    iget-object v1, v0, La/q;->f:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lz4/e;

    .line 6
    .line 7
    iget-object v1, v1, Lz4/e;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    .line 9
    iget-object v0, v0, La/q;->c:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Lz4/b;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lz4/n;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-boolean v1, v0, Lz4/n;->k:Z

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    .line 26
    .line 27
    const/16 v1, 0x11

    .line 28
    .line 29
    invoke-direct {p1, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p1}, Lz4/n;->p(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {v0, p1}, Lz4/n;->g(I)V

    .line 37
    .line 38
    .line 39
    :cond_1
    :goto_0
    return-void
.end method

.method public final l(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lz4/w;->j:La/q;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, La/q;->e(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onConnected()V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lz4/w;->i:Lv5/a;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    :try_start_0
    iget-object v4, v1, Lv5/a;->A:La4/h;

    .line 10
    .line 11
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 12
    .line 13
    .line 14
    const-string v4, "<<default account>>"

    .line 15
    .line 16
    :try_start_1
    new-instance v5, Landroid/accounts/Account;

    .line 17
    .line 18
    const-string v6, "com.google"

    .line 19
    .line 20
    invoke-direct {v5, v4, v6}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v6, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_2

    .line 30
    .line 31
    iget-object v4, v1, Lcom/google/android/gms/common/internal/a;->c:Landroid/content/Context;

    .line 32
    .line 33
    sget-object v6, Ln4/a;->c:Ljava/util/concurrent/locks/ReentrantLock;

    .line 34
    .line 35
    invoke-static {v4}, Lb5/l;->e(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    sget-object v6, Ln4/a;->c:Ljava/util/concurrent/locks/ReentrantLock;

    .line 39
    .line 40
    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 41
    .line 42
    .line 43
    :try_start_2
    sget-object v7, Ln4/a;->d:Ln4/a;

    .line 44
    .line 45
    if-nez v7, :cond_0

    .line 46
    .line 47
    new-instance v7, Ln4/a;

    .line 48
    .line 49
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-direct {v7, v4}, Ln4/a;-><init>(Landroid/content/Context;)V

    .line 54
    .line 55
    .line 56
    sput-object v7, Ln4/a;->d:Ln4/a;

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catchall_0
    move-exception v1

    .line 60
    goto :goto_1

    .line 61
    :cond_0
    :goto_0
    sget-object v4, Ln4/a;->d:Ln4/a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    .line 63
    :try_start_3
    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 64
    .line 65
    .line 66
    const-string v6, "defaultGoogleSignInAccount"

    .line 67
    .line 68
    invoke-virtual {v4, v6}, Ln4/a;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    if-eqz v7, :cond_1

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const-string v8, "googleSignInAccount:"

    .line 82
    .line 83
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    invoke-virtual {v4, v6}, Ln4/a;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v4
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 97
    if-eqz v4, :cond_2

    .line 98
    .line 99
    :try_start_4
    invoke-static {v4}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->j(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 100
    .line 101
    .line 102
    move-result-object v4
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 103
    goto :goto_3

    .line 104
    :goto_1
    :try_start_5
    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 105
    .line 106
    .line 107
    throw v1

    .line 108
    :catch_0
    :cond_2
    :goto_2
    move-object v4, v3

    .line 109
    :goto_3
    new-instance v6, Lcom/google/android/gms/common/internal/zat;

    .line 110
    .line 111
    iget-object v7, v1, Lv5/a;->C:Ljava/lang/Integer;

    .line 112
    .line 113
    invoke-static {v7}, Lb5/l;->e(Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 117
    .line 118
    .line 119
    move-result v7

    .line 120
    const/4 v8, 0x2

    .line 121
    invoke-direct {v6, v8, v5, v7, v4}, Lcom/google/android/gms/common/internal/zat;-><init>(ILandroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/a;->p()Landroid/os/IInterface;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    check-cast v1, Lv5/b;

    .line 129
    .line 130
    new-instance v4, Lcom/google/android/gms/signin/internal/zai;

    .line 131
    .line 132
    invoke-direct {v4, v2, v6}, Lcom/google/android/gms/signin/internal/zai;-><init>(ILcom/google/android/gms/common/internal/zat;)V

    .line 133
    .line 134
    .line 135
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 136
    .line 137
    .line 138
    move-result-object v5

    .line 139
    iget-object v6, v1, Lcom/google/android/gms/internal/cast/a;->e:Ljava/lang/String;

    .line 140
    .line 141
    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    sget v6, Lq5/a;->a:I

    .line 145
    .line 146
    invoke-virtual {v5, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v4, v5, v0}, Lcom/google/android/gms/signin/internal/zai;->writeToParcel(Landroid/os/Parcel;I)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v5, p0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 153
    .line 154
    .line 155
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 156
    .line 157
    .line 158
    move-result-object v4
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 159
    :try_start_6
    iget-object v1, v1, Lcom/google/android/gms/internal/cast/a;->d:Landroid/os/IBinder;

    .line 160
    .line 161
    const/16 v6, 0xc

    .line 162
    .line 163
    invoke-interface {v1, v6, v5, v4, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 164
    .line 165
    .line 166
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 167
    .line 168
    .line 169
    :try_start_7
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 173
    .line 174
    .line 175
    goto :goto_4

    .line 176
    :catchall_1
    move-exception v1

    .line 177
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 181
    .line 182
    .line 183
    throw v1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1

    .line 184
    :catch_1
    move-exception v1

    .line 185
    const-string v4, "SignInClientImpl"

    .line 186
    .line 187
    const-string v5, "Remote service probably died when signIn is called"

    .line 188
    .line 189
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    .line 191
    .line 192
    :try_start_8
    new-instance v5, Lcom/google/android/gms/signin/internal/zak;

    .line 193
    .line 194
    new-instance v6, Lcom/google/android/gms/common/ConnectionResult;

    .line 195
    .line 196
    const/16 v7, 0x8

    .line 197
    .line 198
    invoke-direct {v6, v7, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    .line 199
    .line 200
    .line 201
    invoke-direct {v5, v2, v6, v3}, Lcom/google/android/gms/signin/internal/zak;-><init>(ILcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/internal/zav;)V

    .line 202
    .line 203
    .line 204
    new-instance v2, Lua/a;

    .line 205
    .line 206
    const/16 v3, 0x9

    .line 207
    .line 208
    invoke-direct {v2, v3, p0, v5, v0}, Lua/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 209
    .line 210
    .line 211
    iget-object v0, p0, Lz4/w;->e:Lcom/google/android/gms/internal/cast/x0;

    .line 212
    .line 213
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_2

    .line 214
    .line 215
    .line 216
    goto :goto_4

    .line 217
    :catch_2
    const-string v0, "ISignInCallbacks#onSignInComplete should be executed from the same process, unexpected RemoteException."

    .line 218
    .line 219
    invoke-static {v4, v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 220
    .line 221
    .line 222
    :goto_4
    return-void
.end method
