.class public final Lcom/google/android/gms/internal/cast/n;
.super Lq1/m0;
.source "MyApplication"


# static fields
.field public static final d:Lv4/b;


# instance fields
.field public final a:Lcom/google/android/gms/internal/cast/m;

.field public final b:Lcom/google/android/gms/internal/cast/u;

.field public final c:Lcom/google/android/gms/internal/cast/x;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lv4/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "MediaRouterCallback"

    .line 5
    .line 6
    invoke-direct {v0, v2, v1}, Lv4/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/google/android/gms/internal/cast/n;->d:Lv4/b;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/cast/m;Lcom/google/android/gms/internal/cast/u;Lcom/google/android/gms/internal/cast/x;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lb5/l;->e(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/n;->a:Lcom/google/android/gms/internal/cast/m;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/google/android/gms/internal/cast/n;->b:Lcom/google/android/gms/internal/cast/u;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/google/android/gms/internal/cast/n;->c:Lcom/google/android/gms/internal/cast/x;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final d(Lq1/u0;Lq1/s0;)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/n;->a:Lcom/google/android/gms/internal/cast/m;

    .line 3
    .line 4
    iget-object v2, p2, Lq1/s0;->c:Ljava/lang/String;

    .line 5
    .line 6
    iget-object p2, p2, Lq1/s0;->s:Landroid/os/Bundle;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/cast/a;->l()Landroid/os/Parcel;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v3, p2}, Lcom/google/android/gms/internal/cast/d0;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v3, v0}, Lcom/google/android/gms/internal/cast/a;->x(Landroid/os/Parcel;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception p2

    .line 23
    const-class v1, Lcom/google/android/gms/internal/cast/m;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const/4 v2, 0x2

    .line 30
    new-array v2, v2, [Ljava/lang/Object;

    .line 31
    .line 32
    const-string v3, "onRouteAdded"

    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    aput-object v3, v2, v4

    .line 36
    .line 37
    aput-object v1, v2, v0

    .line 38
    .line 39
    const-string v0, "Unable to call %s on %s."

    .line 40
    .line 41
    sget-object v1, Lcom/google/android/gms/internal/cast/n;->d:Lv4/b;

    .line 42
    .line 43
    invoke-virtual {v1, p2, v0, v2}, Lv4/b;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/n;->o(Lq1/u0;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final e(Lq1/u0;Lq1/s0;)V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p2}, Lq1/s0;->g()Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/n;->a:Lcom/google/android/gms/internal/cast/m;

    .line 10
    .line 11
    iget-object v2, p2, Lq1/s0;->c:Ljava/lang/String;

    .line 12
    .line 13
    iget-object p2, p2, Lq1/s0;->s:Landroid/os/Bundle;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/google/android/gms/internal/cast/a;->l()Landroid/os/Parcel;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v3, p2}, Lcom/google/android/gms/internal/cast/d0;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v3, v0}, Lcom/google/android/gms/internal/cast/a;->x(Landroid/os/Parcel;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception p2

    .line 30
    const-class v1, Lcom/google/android/gms/internal/cast/m;

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    new-array v0, v0, [Ljava/lang/Object;

    .line 37
    .line 38
    const-string v2, "onRouteChanged"

    .line 39
    .line 40
    const/4 v3, 0x0

    .line 41
    aput-object v2, v0, v3

    .line 42
    .line 43
    const/4 v2, 0x1

    .line 44
    aput-object v1, v0, v2

    .line 45
    .line 46
    const-string v1, "Unable to call %s on %s."

    .line 47
    .line 48
    sget-object v2, Lcom/google/android/gms/internal/cast/n;->d:Lv4/b;

    .line 49
    .line 50
    invoke-virtual {v2, p2, v1, v0}, Lv4/b;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/n;->o(Lq1/u0;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final f(Lq1/s0;Lq1/s0;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget v2, p1, Lq1/s0;->l:I

    .line 4
    .line 5
    sget-object v3, Lcom/google/android/gms/internal/cast/n;->d:Lv4/b;

    .line 6
    .line 7
    iget-object v4, p1, Lq1/s0;->c:Ljava/lang/String;

    .line 8
    .line 9
    if-eq v2, v1, :cond_0

    .line 10
    .line 11
    new-array p1, v1, [Ljava/lang/Object;

    .line 12
    .line 13
    aput-object v4, p1, v0

    .line 14
    .line 15
    iget-object p2, v3, Lv4/b;->a:Ljava/lang/String;

    .line 16
    .line 17
    const-string v0, "ignore onRouteConnected for non-remote connected routeId: %s"

    .line 18
    .line 19
    invoke-virtual {v3, v0, p1}, Lv4/b;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    new-array v2, v1, [Ljava/lang/Object;

    .line 28
    .line 29
    aput-object v4, v2, v0

    .line 30
    .line 31
    iget-object v5, v3, Lv4/b;->a:Ljava/lang/String;

    .line 32
    .line 33
    const-string v6, "onRouteConnected with connectedRouteId = %s"

    .line 34
    .line 35
    invoke-virtual {v3, v6, v2}, Lv4/b;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    iget-object v2, p0, Lcom/google/android/gms/internal/cast/n;->b:Lcom/google/android/gms/internal/cast/u;

    .line 43
    .line 44
    iput-boolean v1, v2, Lcom/google/android/gms/internal/cast/u;->k:Z

    .line 45
    .line 46
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/cast/n;->a:Lcom/google/android/gms/internal/cast/m;

    .line 47
    .line 48
    invoke-virtual {v2}, Lcom/google/android/gms/internal/cast/a;->l()Landroid/os/Parcel;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    const/4 v6, 0x7

    .line 53
    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/internal/cast/a;->w(Landroid/os/Parcel;I)Landroid/os/Parcel;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .line 63
    .line 64
    const v5, 0xeff1c80

    .line 65
    .line 66
    .line 67
    iget-object p2, p2, Lq1/s0;->c:Ljava/lang/String;

    .line 68
    .line 69
    if-lt v6, v5, :cond_1

    .line 70
    .line 71
    :try_start_1
    iget-object p1, p1, Lq1/s0;->s:Landroid/os/Bundle;

    .line 72
    .line 73
    invoke-virtual {v2}, Lcom/google/android/gms/internal/cast/a;->l()Landroid/os/Parcel;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    invoke-virtual {v5, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v5, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-static {v5, p1}, Lcom/google/android/gms/internal/cast/d0;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 84
    .line 85
    .line 86
    const/16 p1, 0x9

    .line 87
    .line 88
    invoke-virtual {v2, v5, p1}, Lcom/google/android/gms/internal/cast/a;->x(Landroid/os/Parcel;I)V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :cond_1
    iget-object p1, p1, Lq1/s0;->s:Landroid/os/Bundle;

    .line 93
    .line 94
    invoke-virtual {v2}, Lcom/google/android/gms/internal/cast/a;->l()Landroid/os/Parcel;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    invoke-virtual {v5, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v5, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-static {v5, p1}, Lcom/google/android/gms/internal/cast/d0;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 105
    .line 106
    .line 107
    const/16 p1, 0x8

    .line 108
    .line 109
    invoke-virtual {v2, v5, p1}, Lcom/google/android/gms/internal/cast/a;->x(Landroid/os/Parcel;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 110
    .line 111
    .line 112
    return-void

    .line 113
    :catch_0
    move-exception p1

    .line 114
    const-class p2, Lcom/google/android/gms/internal/cast/m;

    .line 115
    .line 116
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    const/4 v2, 0x2

    .line 121
    new-array v2, v2, [Ljava/lang/Object;

    .line 122
    .line 123
    const-string v4, "onRouteConnected"

    .line 124
    .line 125
    aput-object v4, v2, v0

    .line 126
    .line 127
    aput-object p2, v2, v1

    .line 128
    .line 129
    const-string p2, "Unable to call %s on %s."

    .line 130
    .line 131
    invoke-virtual {v3, p1, p2, v2}, Lv4/b;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    return-void
.end method

.method public final g(Lq1/s0;Lq1/s0;I)V
    .locals 8

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    sget-object v3, Lcom/google/android/gms/internal/cast/n;->d:Lv4/b;

    .line 5
    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    iget v4, p1, Lq1/s0;->l:I

    .line 9
    .line 10
    if-eq v4, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    iget-object v5, p1, Lq1/s0;->c:Ljava/lang/String;

    .line 18
    .line 19
    iget-object p2, p2, Lq1/s0;->c:Ljava/lang/String;

    .line 20
    .line 21
    const/4 v6, 0x3

    .line 22
    new-array v6, v6, [Ljava/lang/Object;

    .line 23
    .line 24
    aput-object v5, v6, v2

    .line 25
    .line 26
    aput-object p2, v6, v1

    .line 27
    .line 28
    aput-object v4, v6, v0

    .line 29
    .line 30
    iget-object v4, v3, Lv4/b;->a:Ljava/lang/String;

    .line 31
    .line 32
    const-string v7, "onRouteDisconnected with disconnectedRouteId = %s, requestedRouteId = %s, reason = %d"

    .line 33
    .line 34
    invoke-virtual {v3, v7, v6}, Lv4/b;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    iget-object v4, p0, Lcom/google/android/gms/internal/cast/n;->b:Lcom/google/android/gms/internal/cast/u;

    .line 42
    .line 43
    iput-boolean v2, v4, Lcom/google/android/gms/internal/cast/u;->k:Z

    .line 44
    .line 45
    :try_start_0
    iget-object v4, p0, Lcom/google/android/gms/internal/cast/n;->a:Lcom/google/android/gms/internal/cast/m;

    .line 46
    .line 47
    invoke-virtual {v4}, Lcom/google/android/gms/internal/cast/a;->l()Landroid/os/Parcel;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    const/4 v7, 0x7

    .line 52
    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/internal/cast/a;->w(Landroid/os/Parcel;I)Landroid/os/Parcel;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    .line 57
    .line 58
    .line 59
    move-result v7

    .line 60
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 61
    .line 62
    .line 63
    const v6, 0xeff1c80

    .line 64
    .line 65
    .line 66
    if-lt v7, v6, :cond_1

    .line 67
    .line 68
    iget-object p1, p1, Lq1/s0;->s:Landroid/os/Bundle;

    .line 69
    .line 70
    invoke-virtual {v4}, Lcom/google/android/gms/internal/cast/a;->l()Landroid/os/Parcel;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    invoke-virtual {v6, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v6, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-static {v6, p1}, Lcom/google/android/gms/internal/cast/d0;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v6, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    .line 85
    .line 86
    const/16 p1, 0xa

    .line 87
    .line 88
    invoke-virtual {v4, v6, p1}, Lcom/google/android/gms/internal/cast/a;->x(Landroid/os/Parcel;I)V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :cond_1
    iget-object p1, p1, Lq1/s0;->s:Landroid/os/Bundle;

    .line 93
    .line 94
    invoke-virtual {v4}, Lcom/google/android/gms/internal/cast/a;->l()Landroid/os/Parcel;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/cast/d0;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p2, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    .line 106
    .line 107
    const/4 p1, 0x6

    .line 108
    invoke-virtual {v4, p2, p1}, Lcom/google/android/gms/internal/cast/a;->x(Landroid/os/Parcel;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    :catch_0
    move-exception p1

    .line 113
    const-class p2, Lcom/google/android/gms/internal/cast/m;

    .line 114
    .line 115
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    new-array p3, v0, [Ljava/lang/Object;

    .line 120
    .line 121
    const-string v0, "onRouteDisconnected"

    .line 122
    .line 123
    aput-object v0, p3, v2

    .line 124
    .line 125
    aput-object p2, p3, v1

    .line 126
    .line 127
    const-string p2, "Unable to call %s on %s."

    .line 128
    .line 129
    invoke-virtual {v3, p1, p2, p3}, Lv4/b;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    return-void

    .line 133
    :cond_2
    :goto_0
    new-array p1, v2, [Ljava/lang/Object;

    .line 134
    .line 135
    iget-object p2, v3, Lv4/b;->a:Ljava/lang/String;

    .line 136
    .line 137
    const-string p3, "ignore onRouteDisconnected for invalid or non-remote disconnected route"

    .line 138
    .line 139
    invoke-virtual {v3, p3, p1}, Lv4/b;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    return-void
.end method

.method public final h(Lq1/u0;Lq1/s0;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/n;->a:Lcom/google/android/gms/internal/cast/m;

    .line 2
    .line 3
    iget-object v1, p2, Lq1/s0;->c:Ljava/lang/String;

    .line 4
    .line 5
    iget-object p2, p2, Lq1/s0;->s:Landroid/os/Bundle;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/a;->l()Landroid/os/Parcel;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v2, p2}, Lcom/google/android/gms/internal/cast/d0;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 15
    .line 16
    .line 17
    const/4 p2, 0x3

    .line 18
    invoke-virtual {v0, v2, p2}, Lcom/google/android/gms/internal/cast/a;->x(Landroid/os/Parcel;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception p2

    .line 23
    const-class v0, Lcom/google/android/gms/internal/cast/m;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const/4 v1, 0x2

    .line 30
    new-array v1, v1, [Ljava/lang/Object;

    .line 31
    .line 32
    const-string v2, "onRouteRemoved"

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    aput-object v2, v1, v3

    .line 36
    .line 37
    const/4 v2, 0x1

    .line 38
    aput-object v0, v1, v2

    .line 39
    .line 40
    const-string v0, "Unable to call %s on %s."

    .line 41
    .line 42
    sget-object v2, Lcom/google/android/gms/internal/cast/n;->d:Lv4/b;

    .line 43
    .line 44
    invoke-virtual {v2, p2, v0, v1}, Lv4/b;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/n;->o(Lq1/u0;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final j(Lq1/u0;Lq1/s0;ILq1/s0;)V
    .locals 7

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    iget v3, p2, Lq1/s0;->l:I

    .line 5
    .line 6
    sget-object v4, Lcom/google/android/gms/internal/cast/n;->d:Lv4/b;

    .line 7
    .line 8
    iget-object v5, p2, Lq1/s0;->c:Ljava/lang/String;

    .line 9
    .line 10
    if-eq v3, v2, :cond_0

    .line 11
    .line 12
    new-array p1, v2, [Ljava/lang/Object;

    .line 13
    .line 14
    aput-object v5, p1, v1

    .line 15
    .line 16
    iget-object p2, v4, Lv4/b;->a:Ljava/lang/String;

    .line 17
    .line 18
    const-string p3, "ignore onRouteSelected for non-remote selected routeId: %s"

    .line 19
    .line 20
    invoke-virtual {v4, p3, p1}, Lv4/b;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    new-array v3, v0, [Ljava/lang/Object;

    .line 33
    .line 34
    aput-object p3, v3, v1

    .line 35
    .line 36
    aput-object v5, v3, v2

    .line 37
    .line 38
    iget-object p3, v4, Lv4/b;->a:Ljava/lang/String;

    .line 39
    .line 40
    const-string v6, "onRouteSelected with reason = %d, routeId = %s"

    .line 41
    .line 42
    invoke-virtual {v4, v6, v3}, Lv4/b;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-static {p3, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    :try_start_0
    iget-object p3, p0, Lcom/google/android/gms/internal/cast/n;->a:Lcom/google/android/gms/internal/cast/m;

    .line 50
    .line 51
    invoke-virtual {p3}, Lcom/google/android/gms/internal/cast/a;->l()Landroid/os/Parcel;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    const/4 v6, 0x7

    .line 56
    invoke-virtual {p3, v3, v6}, Lcom/google/android/gms/internal/cast/a;->w(Landroid/os/Parcel;I)Landroid/os/Parcel;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 65
    .line 66
    .line 67
    const v3, 0xd230980

    .line 68
    .line 69
    .line 70
    if-lt v6, v3, :cond_1

    .line 71
    .line 72
    iget-object p4, p4, Lq1/s0;->c:Ljava/lang/String;

    .line 73
    .line 74
    iget-object p2, p2, Lq1/s0;->s:Landroid/os/Bundle;

    .line 75
    .line 76
    invoke-virtual {p3}, Lcom/google/android/gms/internal/cast/a;->l()Landroid/os/Parcel;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-virtual {v3, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-static {v3, p2}, Lcom/google/android/gms/internal/cast/d0;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 87
    .line 88
    .line 89
    const/16 p2, 0x8

    .line 90
    .line 91
    invoke-virtual {p3, v3, p2}, Lcom/google/android/gms/internal/cast/a;->x(Landroid/os/Parcel;I)V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_1
    iget-object p4, p4, Lq1/s0;->c:Ljava/lang/String;

    .line 96
    .line 97
    iget-object p2, p2, Lq1/s0;->s:Landroid/os/Bundle;

    .line 98
    .line 99
    invoke-virtual {p3}, Lcom/google/android/gms/internal/cast/a;->l()Landroid/os/Parcel;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    invoke-virtual {v3, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-static {v3, p2}, Lcom/google/android/gms/internal/cast/d0;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 107
    .line 108
    .line 109
    const/4 p2, 0x4

    .line 110
    invoke-virtual {p3, v3, p2}, Lcom/google/android/gms/internal/cast/a;->x(Landroid/os/Parcel;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :catch_0
    move-exception p2

    .line 115
    const-class p3, Lcom/google/android/gms/internal/cast/m;

    .line 116
    .line 117
    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p3

    .line 121
    new-array p4, v0, [Ljava/lang/Object;

    .line 122
    .line 123
    const-string v0, "onRouteSelected"

    .line 124
    .line 125
    aput-object v0, p4, v1

    .line 126
    .line 127
    aput-object p3, p4, v2

    .line 128
    .line 129
    const-string p3, "Unable to call %s on %s."

    .line 130
    .line 131
    invoke-virtual {v4, p2, p3, p4}, Lv4/b;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/n;->o(Lq1/u0;)V

    .line 135
    .line 136
    .line 137
    return-void
.end method

.method public final l(Lq1/u0;Lq1/s0;I)V
    .locals 8

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    iget v3, p2, Lq1/s0;->l:I

    .line 5
    .line 6
    sget-object v4, Lcom/google/android/gms/internal/cast/n;->d:Lv4/b;

    .line 7
    .line 8
    iget-object v5, p2, Lq1/s0;->c:Ljava/lang/String;

    .line 9
    .line 10
    if-eq v3, v2, :cond_0

    .line 11
    .line 12
    new-array p1, v2, [Ljava/lang/Object;

    .line 13
    .line 14
    aput-object v5, p1, v1

    .line 15
    .line 16
    iget-object p2, v4, Lv4/b;->a:Ljava/lang/String;

    .line 17
    .line 18
    const-string p3, "ignore onRouteUnselected for non-remote routeId: %s"

    .line 19
    .line 20
    invoke-virtual {v4, p3, p1}, Lv4/b;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    new-array v6, v0, [Ljava/lang/Object;

    .line 33
    .line 34
    aput-object v3, v6, v1

    .line 35
    .line 36
    aput-object v5, v6, v2

    .line 37
    .line 38
    iget-object v3, v4, Lv4/b;->a:Ljava/lang/String;

    .line 39
    .line 40
    const-string v7, "onRouteUnselected with reason = %d, routeId = %s"

    .line 41
    .line 42
    invoke-virtual {v4, v7, v6}, Lv4/b;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/internal/cast/n;->a:Lcom/google/android/gms/internal/cast/m;

    .line 50
    .line 51
    iget-object p2, p2, Lq1/s0;->s:Landroid/os/Bundle;

    .line 52
    .line 53
    invoke-virtual {v3}, Lcom/google/android/gms/internal/cast/a;->l()Landroid/os/Parcel;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    invoke-virtual {v6, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-static {v6, p2}, Lcom/google/android/gms/internal/cast/d0;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v6, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    .line 65
    .line 66
    const/4 p2, 0x6

    .line 67
    invoke-virtual {v3, v6, p2}, Lcom/google/android/gms/internal/cast/a;->x(Landroid/os/Parcel;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :catch_0
    move-exception p2

    .line 72
    const-class p3, Lcom/google/android/gms/internal/cast/m;

    .line 73
    .line 74
    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p3

    .line 78
    new-array v0, v0, [Ljava/lang/Object;

    .line 79
    .line 80
    const-string v3, "onRouteUnselected"

    .line 81
    .line 82
    aput-object v3, v0, v1

    .line 83
    .line 84
    aput-object p3, v0, v2

    .line 85
    .line 86
    const-string p3, "Unable to call %s on %s."

    .line 87
    .line 88
    invoke-virtual {v4, p2, p3, v0}, Lv4/b;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/n;->o(Lq1/u0;)V

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method public final o(Lq1/u0;)V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/internal/cast/n;->c:Lcom/google/android/gms/internal/cast/x;

    .line 4
    .line 5
    if-eqz v2, :cond_8

    .line 6
    .line 7
    iget-boolean v3, v2, Lcom/google/android/gms/internal/cast/x;->e:Z

    .line 8
    .line 9
    if-eqz v3, :cond_8

    .line 10
    .line 11
    iget-object v3, v2, Lcom/google/android/gms/internal/cast/x;->a:Lcom/google/android/gms/cast/framework/CastOptions;

    .line 12
    .line 13
    iget-boolean v3, v3, Lcom/google/android/gms/cast/framework/CastOptions;->q:Z

    .line 14
    .line 15
    if-eqz v3, :cond_8

    .line 16
    .line 17
    iget-object v2, v2, Lcom/google/android/gms/internal/cast/x;->f:Lq4/f;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    invoke-virtual {v2}, Lq4/f;->c()Lq4/b;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move-object v2, v3

    .line 28
    :goto_0
    if-eqz v2, :cond_1

    .line 29
    .line 30
    invoke-virtual {v2}, Lq4/b;->e()Lcom/google/android/gms/cast/CastDevice;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    :cond_1
    if-eqz v3, :cond_8

    .line 35
    .line 36
    new-instance v2, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    invoke-static {}, Lq1/u0;->b()V

    .line 45
    .line 46
    .line 47
    invoke-static {}, Lq1/u0;->c()Lq1/h;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iget-object p1, p1, Lq1/h;->i:Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-eqz v4, :cond_7

    .line 62
    .line 63
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    check-cast v4, Lq1/s0;

    .line 68
    .line 69
    iget-object v5, v4, Lq1/s0;->s:Landroid/os/Bundle;

    .line 70
    .line 71
    invoke-static {v5}, Lcom/google/android/gms/cast/CastDevice;->l(Landroid/os/Bundle;)Lcom/google/android/gms/cast/CastDevice;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    if-eqz v5, :cond_2

    .line 76
    .line 77
    invoke-virtual {v5}, Lcom/google/android/gms/cast/CastDevice;->j()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    if-nez v6, :cond_4

    .line 86
    .line 87
    invoke-virtual {v5}, Lcom/google/android/gms/cast/CastDevice;->j()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    const-string v7, "__cast_ble__"

    .line 92
    .line 93
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    if-nez v6, :cond_4

    .line 98
    .line 99
    invoke-virtual {v3}, Lcom/google/android/gms/cast/CastDevice;->j()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 104
    .line 105
    .line 106
    move-result v6

    .line 107
    if-nez v6, :cond_4

    .line 108
    .line 109
    invoke-virtual {v3}, Lcom/google/android/gms/cast/CastDevice;->j()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 114
    .line 115
    .line 116
    move-result v6

    .line 117
    if-eqz v6, :cond_3

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_3
    invoke-virtual {v5}, Lcom/google/android/gms/cast/CastDevice;->j()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    invoke-virtual {v3}, Lcom/google/android/gms/cast/CastDevice;->j()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    invoke-static {v5, v6}, Lv4/a;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v5

    .line 132
    goto :goto_3

    .line 133
    :cond_4
    :goto_2
    iget-object v5, v5, Lcom/google/android/gms/cast/CastDevice;->n:Ljava/lang/String;

    .line 134
    .line 135
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 136
    .line 137
    .line 138
    move-result v6

    .line 139
    if-nez v6, :cond_5

    .line 140
    .line 141
    iget-object v6, v3, Lcom/google/android/gms/cast/CastDevice;->n:Ljava/lang/String;

    .line 142
    .line 143
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 144
    .line 145
    .line 146
    move-result v7

    .line 147
    if-nez v7, :cond_5

    .line 148
    .line 149
    invoke-static {v5, v6}, Lv4/a;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v5

    .line 153
    goto :goto_3

    .line 154
    :cond_5
    const/4 v5, 0x0

    .line 155
    :goto_3
    if-nez v5, :cond_2

    .line 156
    .line 157
    new-instance v5, Lq1/p1;

    .line 158
    .line 159
    iget-object v4, v4, Lq1/s0;->c:Ljava/lang/String;

    .line 160
    .line 161
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 162
    .line 163
    .line 164
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 165
    .line 166
    .line 167
    move-result v6

    .line 168
    if-nez v6, :cond_6

    .line 169
    .line 170
    iput-object v4, v5, Lq1/p1;->b:Ljava/lang/String;

    .line 171
    .line 172
    iput v0, v5, Lq1/p1;->a:I

    .line 173
    .line 174
    new-instance v4, Lq1/q1;

    .line 175
    .line 176
    invoke-direct {v4, v5}, Lq1/q1;-><init>(Lq1/p1;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    goto :goto_1

    .line 183
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 184
    .line 185
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 186
    .line 187
    .line 188
    throw p1

    .line 189
    :cond_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 190
    .line 191
    .line 192
    move-result p1

    .line 193
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    new-array v0, v0, [Ljava/lang/Object;

    .line 198
    .line 199
    aput-object p1, v0, v1

    .line 200
    .line 201
    const-string p1, "updateRouteListingPreference with %d available routes"

    .line 202
    .line 203
    sget-object v3, Lcom/google/android/gms/internal/cast/x;->g:Lv4/b;

    .line 204
    .line 205
    invoke-virtual {v3, p1, v0}, Lv4/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    new-instance p1, Lj7/c;

    .line 209
    .line 210
    const/16 v0, 0x1b

    .line 211
    .line 212
    invoke-direct {p1, v0, v1}, Lj7/c;-><init>(IZ)V

    .line 213
    .line 214
    .line 215
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    iput-object v0, p1, Lj7/c;->b:Ljava/lang/Object;

    .line 220
    .line 221
    new-instance v0, Ljava/util/ArrayList;

    .line 222
    .line 223
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 224
    .line 225
    .line 226
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    iput-object v0, p1, Lj7/c;->b:Ljava/lang/Object;

    .line 231
    .line 232
    new-instance v0, Lq1/r1;

    .line 233
    .line 234
    invoke-direct {v0, p1}, Lq1/r1;-><init>(Lj7/c;)V

    .line 235
    .line 236
    .line 237
    invoke-static {}, Lq1/u0;->b()V

    .line 238
    .line 239
    .line 240
    invoke-static {}, Lq1/u0;->c()Lq1/h;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    iget-object p1, p1, Lq1/h;->r:Lq1/p;

    .line 245
    .line 246
    if-eqz p1, :cond_8

    .line 247
    .line 248
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 249
    .line 250
    const/16 v2, 0x22

    .line 251
    .line 252
    if-lt v1, v2, :cond_8

    .line 253
    .line 254
    iget-object p1, p1, Lq1/p;->i:Landroid/media/MediaRouter2;

    .line 255
    .line 256
    invoke-static {v0}, Landroidx/mediarouter/app/t0;->h(Lq1/r1;)Landroid/media/RouteListingPreference;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    invoke-static {p1, v0}, Landroidx/mediarouter/app/t0;->f(Landroid/media/MediaRouter2;Landroid/media/RouteListingPreference;)V

    .line 261
    .line 262
    .line 263
    :cond_8
    return-void
.end method
