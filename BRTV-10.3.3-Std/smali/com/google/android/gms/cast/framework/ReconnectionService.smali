.class public Lcom/google/android/gms/cast/framework/ReconnectionService;
.super Landroid/app/Service;
.source "MyApplication"


# static fields
.field public static final b:Lv4/b;


# instance fields
.field public a:Lq4/r;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lv4/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "ReconnectionService"

    .line 5
    .line 6
    invoke-direct {v0, v2, v1}, Lv4/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/google/android/gms/cast/framework/ReconnectionService;->b:Lv4/b;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/ReconnectionService;->a:Lq4/r;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    :try_start_0
    check-cast v0, Lq4/p;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/a;->l()Landroid/os/Parcel;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/cast/d0;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x3

    .line 16
    invoke-virtual {v0, v2, p1}, Lcom/google/android/gms/internal/cast/a;->w(Landroid/os/Parcel;I)Landroid/os/Parcel;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    return-object v0

    .line 28
    :catch_0
    move-exception p1

    .line 29
    const-class v0, Lq4/r;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const/4 v2, 0x2

    .line 36
    new-array v2, v2, [Ljava/lang/Object;

    .line 37
    .line 38
    const-string v3, "onBind"

    .line 39
    .line 40
    const/4 v4, 0x0

    .line 41
    aput-object v3, v2, v4

    .line 42
    .line 43
    const/4 v3, 0x1

    .line 44
    aput-object v0, v2, v3

    .line 45
    .line 46
    const-string v0, "Unable to call %s on %s."

    .line 47
    .line 48
    sget-object v3, Lcom/google/android/gms/cast/framework/ReconnectionService;->b:Lv4/b;

    .line 49
    .line 50
    invoke-virtual {v3, p1, v0, v2}, Lv4/b;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    :cond_0
    return-object v1
.end method

.method public final onCreate()V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x1

    .line 4
    const-string v3, "getWrappedThis"

    .line 5
    .line 6
    const-string v4, "Unable to call %s on %s."

    .line 7
    .line 8
    invoke-static {p0}, Lq4/a;->b(Landroid/content/Context;)Lq4/a;

    .line 9
    .line 10
    .line 11
    move-result-object v5

    .line 12
    invoke-virtual {v5}, Lq4/a;->a()Lq4/f;

    .line 13
    .line 14
    .line 15
    move-result-object v6

    .line 16
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    const/4 v7, 0x0

    .line 20
    :try_start_0
    iget-object v6, v6, Lq4/f;->a:Lq4/v;

    .line 21
    .line 22
    invoke-virtual {v6}, Lcom/google/android/gms/internal/cast/a;->l()Landroid/os/Parcel;

    .line 23
    .line 24
    .line 25
    move-result-object v8

    .line 26
    const/4 v9, 0x7

    .line 27
    invoke-virtual {v6, v8, v9}, Lcom/google/android/gms/internal/cast/a;->w(Landroid/os/Parcel;I)Landroid/os/Parcel;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    invoke-virtual {v6}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 32
    .line 33
    .line 34
    move-result-object v8

    .line 35
    invoke-static {v8}, Lm5/b;->x(Landroid/os/IBinder;)Lm5/a;

    .line 36
    .line 37
    .line 38
    move-result-object v8

    .line 39
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move-exception v6

    .line 44
    const-class v8, Lq4/v;

    .line 45
    .line 46
    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v8

    .line 50
    new-array v9, v1, [Ljava/lang/Object;

    .line 51
    .line 52
    aput-object v3, v9, v0

    .line 53
    .line 54
    aput-object v8, v9, v2

    .line 55
    .line 56
    sget-object v8, Lq4/f;->c:Lv4/b;

    .line 57
    .line 58
    invoke-virtual {v8, v6, v4, v9}, Lv4/b;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    move-object v8, v7

    .line 62
    :goto_0
    const-string v6, "Must be called from the main thread."

    .line 63
    .line 64
    invoke-static {v6}, Lb5/l;->b(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object v5, v5, Lq4/a;->c:Lq4/h;

    .line 68
    .line 69
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    :try_start_1
    iget-object v5, v5, Lq4/h;->a:Lq4/o;

    .line 73
    .line 74
    invoke-virtual {v5}, Lcom/google/android/gms/internal/cast/a;->l()Landroid/os/Parcel;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    const/4 v9, 0x5

    .line 79
    invoke-virtual {v5, v6, v9}, Lcom/google/android/gms/internal/cast/a;->w(Landroid/os/Parcel;I)Landroid/os/Parcel;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    invoke-virtual {v5}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    invoke-static {v6}, Lm5/b;->x(Landroid/os/IBinder;)Lm5/a;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :catch_1
    move-exception v5

    .line 96
    const-class v6, Lq4/o;

    .line 97
    .line 98
    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    new-array v9, v1, [Ljava/lang/Object;

    .line 103
    .line 104
    aput-object v3, v9, v0

    .line 105
    .line 106
    aput-object v6, v9, v2

    .line 107
    .line 108
    sget-object v3, Lq4/h;->b:Lv4/b;

    .line 109
    .line 110
    invoke-virtual {v3, v5, v4, v9}, Lv4/b;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    move-object v6, v7

    .line 114
    :goto_1
    sget-object v3, Lcom/google/android/gms/internal/cast/i;->a:Lv4/b;

    .line 115
    .line 116
    if-eqz v8, :cond_1

    .line 117
    .line 118
    if-nez v6, :cond_0

    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_0
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    invoke-static {v3}, Lcom/google/android/gms/internal/cast/i;->b(Landroid/content/Context;)Lcom/google/android/gms/internal/cast/k;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    new-instance v5, Lm5/b;

    .line 130
    .line 131
    invoke-direct {v5, p0}, Lm5/b;-><init>(Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v3, v5, v8, v6}, Lcom/google/android/gms/internal/cast/k;->A(Lm5/b;Lm5/a;Lm5/a;)Lq4/r;

    .line 135
    .line 136
    .line 137
    move-result-object v7
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lq4/c; {:try_start_2 .. :try_end_2} :catch_2

    .line 138
    goto :goto_3

    .line 139
    :catch_2
    move-exception v3

    .line 140
    goto :goto_2

    .line 141
    :catch_3
    move-exception v3

    .line 142
    :goto_2
    const-class v5, Lcom/google/android/gms/internal/cast/k;

    .line 143
    .line 144
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    new-array v6, v1, [Ljava/lang/Object;

    .line 149
    .line 150
    const-string v8, "newReconnectionServiceImpl"

    .line 151
    .line 152
    aput-object v8, v6, v0

    .line 153
    .line 154
    aput-object v5, v6, v2

    .line 155
    .line 156
    sget-object v5, Lcom/google/android/gms/internal/cast/i;->a:Lv4/b;

    .line 157
    .line 158
    invoke-virtual {v5, v3, v4, v6}, Lv4/b;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    :cond_1
    :goto_3
    iput-object v7, p0, Lcom/google/android/gms/cast/framework/ReconnectionService;->a:Lq4/r;

    .line 162
    .line 163
    if-eqz v7, :cond_2

    .line 164
    .line 165
    :try_start_3
    check-cast v7, Lq4/p;

    .line 166
    .line 167
    invoke-virtual {v7}, Lcom/google/android/gms/internal/cast/a;->l()Landroid/os/Parcel;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    invoke-virtual {v7, v3, v2}, Lcom/google/android/gms/internal/cast/a;->x(Landroid/os/Parcel;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_4

    .line 172
    .line 173
    .line 174
    goto :goto_4

    .line 175
    :catch_4
    move-exception v3

    .line 176
    const-class v5, Lq4/r;

    .line 177
    .line 178
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v5

    .line 182
    new-array v1, v1, [Ljava/lang/Object;

    .line 183
    .line 184
    const-string v6, "onCreate"

    .line 185
    .line 186
    aput-object v6, v1, v0

    .line 187
    .line 188
    aput-object v5, v1, v2

    .line 189
    .line 190
    sget-object v0, Lcom/google/android/gms/cast/framework/ReconnectionService;->b:Lv4/b;

    .line 191
    .line 192
    invoke-virtual {v0, v3, v4, v1}, Lv4/b;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    .line 194
    .line 195
    :goto_4
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 196
    .line 197
    .line 198
    :cond_2
    return-void
.end method

.method public final onDestroy()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/ReconnectionService;->a:Lq4/r;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    check-cast v0, Lq4/p;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/a;->l()Landroid/os/Parcel;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x4

    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/cast/a;->x(Landroid/os/Parcel;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception v0

    .line 17
    const-class v1, Lq4/r;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const/4 v2, 0x2

    .line 24
    new-array v2, v2, [Ljava/lang/Object;

    .line 25
    .line 26
    const-string v3, "onDestroy"

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    aput-object v3, v2, v4

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    aput-object v1, v2, v3

    .line 33
    .line 34
    const-string v1, "Unable to call %s on %s."

    .line 35
    .line 36
    sget-object v3, Lcom/google/android/gms/cast/framework/ReconnectionService;->b:Lv4/b;

    .line 37
    .line 38
    invoke-virtual {v3, v0, v1, v2}, Lv4/b;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    :goto_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/ReconnectionService;->a:Lq4/r;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    :try_start_0
    check-cast v0, Lq4/p;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/a;->l()Landroid/os/Parcel;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/cast/d0;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/cast/a;->w(Landroid/os/Parcel;I)Landroid/os/Parcel;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    return p2

    .line 33
    :catch_0
    move-exception p1

    .line 34
    const-class p2, Lq4/r;

    .line 35
    .line 36
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    new-array p3, v1, [Ljava/lang/Object;

    .line 41
    .line 42
    const-string v0, "onStartCommand"

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    aput-object v0, p3, v2

    .line 46
    .line 47
    const/4 v0, 0x1

    .line 48
    aput-object p2, p3, v0

    .line 49
    .line 50
    const-string p2, "Unable to call %s on %s."

    .line 51
    .line 52
    sget-object v0, Lcom/google/android/gms/cast/framework/ReconnectionService;->b:Lv4/b;

    .line 53
    .line 54
    invoke-virtual {v0, p1, p2, p3}, Lv4/b;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    :cond_0
    return v1
.end method
