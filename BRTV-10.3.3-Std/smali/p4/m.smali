.class public final synthetic Lp4/m;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lp4/n;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lp4/n;II)V
    .locals 0

    .line 1
    iput p3, p0, Lp4/m;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lp4/m;->b:Lp4/n;

    .line 4
    .line 5
    iput p2, p0, Lp4/m;->c:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private final a()V
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Lp4/m;->b:Lp4/n;

    .line 4
    .line 5
    iget-object v3, v2, Lp4/n;->d:Lp4/o;

    .line 6
    .line 7
    const/4 v4, -0x1

    .line 8
    iput v4, v3, Lp4/o;->w:I

    .line 9
    .line 10
    iput v4, v3, Lp4/o;->x:I

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    iput-object v4, v3, Lp4/o;->s:Lcom/google/android/gms/cast/ApplicationMetadata;

    .line 14
    .line 15
    iput-object v4, v3, Lp4/o;->t:Ljava/lang/String;

    .line 16
    .line 17
    const-wide/16 v5, 0x0

    .line 18
    .line 19
    iput-wide v5, v3, Lp4/o;->u:D

    .line 20
    .line 21
    invoke-virtual {v3}, Lp4/o;->k()V

    .line 22
    .line 23
    .line 24
    iput-boolean v1, v3, Lp4/o;->v:Z

    .line 25
    .line 26
    iput-object v4, v3, Lp4/o;->y:Lcom/google/android/gms/cast/zzat;

    .line 27
    .line 28
    iput v0, v3, Lp4/o;->E:I

    .line 29
    .line 30
    iget v4, p0, Lp4/m;->c:I

    .line 31
    .line 32
    iget-object v5, v3, Lp4/o;->D:Ljava/util/List;

    .line 33
    .line 34
    monitor-enter v5

    .line 35
    :try_start_0
    iget-object v3, v3, Lp4/o;->D:Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    if-eqz v6, :cond_1

    .line 46
    .line 47
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    check-cast v6, Lq4/b0;

    .line 52
    .line 53
    iget-object v6, v6, Lq4/b0;->a:Lq4/b;

    .line 54
    .line 55
    iget-object v6, v6, Lq4/b;->e:Lq4/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    if-nez v6, :cond_0

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    :try_start_1
    new-instance v7, Lcom/google/android/gms/common/ConnectionResult;

    .line 61
    .line 62
    invoke-direct {v7, v4}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    .line 63
    .line 64
    .line 65
    check-cast v6, Lq4/l;

    .line 66
    .line 67
    invoke-virtual {v6}, Lcom/google/android/gms/internal/cast/a;->l()Landroid/os/Parcel;

    .line 68
    .line 69
    .line 70
    move-result-object v8

    .line 71
    invoke-static {v8, v7}, Lcom/google/android/gms/internal/cast/d0;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 72
    .line 73
    .line 74
    const/4 v7, 0x3

    .line 75
    invoke-virtual {v6, v8, v7}, Lcom/google/android/gms/internal/cast/a;->x(Landroid/os/Parcel;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :catch_0
    move-exception v6

    .line 80
    :try_start_2
    sget-object v7, Lq4/b;->m:Lv4/b;

    .line 81
    .line 82
    const-class v8, Lq4/n;

    .line 83
    .line 84
    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v8

    .line 88
    const/4 v9, 0x2

    .line 89
    new-array v9, v9, [Ljava/lang/Object;

    .line 90
    .line 91
    const-string v10, "onDisconnected"

    .line 92
    .line 93
    aput-object v10, v9, v1

    .line 94
    .line 95
    aput-object v8, v9, v0

    .line 96
    .line 97
    const-string v8, "Unable to call %s on %s."

    .line 98
    .line 99
    invoke-virtual {v7, v6, v8, v9}, Lv4/b;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :catchall_0
    move-exception v0

    .line 104
    goto :goto_1

    .line 105
    :cond_1
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 106
    iget-object v0, v2, Lp4/n;->d:Lp4/o;

    .line 107
    .line 108
    invoke-virtual {v0}, Lp4/o;->g()V

    .line 109
    .line 110
    .line 111
    iget-object v1, v0, Lp4/o;->j:Lp4/n;

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Lp4/o;->f(Lv4/f;)Lw5/g;

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :goto_1
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 118
    throw v0
.end method

.method private final b()V
    .locals 12

    .line 1
    iget-object v0, p0, Lp4/m;->b:Lp4/n;

    .line 2
    .line 3
    iget v1, p0, Lp4/m;->c:I

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    const/4 v3, 0x1

    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    iget-object v0, v0, Lp4/n;->d:Lp4/o;

    .line 10
    .line 11
    iput v2, v0, Lp4/o;->E:I

    .line 12
    .line 13
    iput-boolean v3, v0, Lp4/o;->l:Z

    .line 14
    .line 15
    iput-boolean v3, v0, Lp4/o;->m:Z

    .line 16
    .line 17
    iget-object v4, v0, Lp4/o;->D:Ljava/util/List;

    .line 18
    .line 19
    monitor-enter v4

    .line 20
    :try_start_0
    iget-object v0, v0, Lp4/o;->D:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Lq4/b0;

    .line 37
    .line 38
    invoke-virtual {v1}, Lq4/b0;->a()V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception v0

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    monitor-exit v4

    .line 45
    return-void

    .line 46
    :goto_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    throw v0

    .line 48
    :cond_1
    iget-object v4, v0, Lp4/n;->d:Lp4/o;

    .line 49
    .line 50
    iput v3, v4, Lp4/o;->E:I

    .line 51
    .line 52
    iget-object v5, v4, Lp4/o;->D:Ljava/util/List;

    .line 53
    .line 54
    monitor-enter v5

    .line 55
    :try_start_1
    iget-object v4, v4, Lp4/o;->D:Ljava/util/List;

    .line 56
    .line 57
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    if-eqz v6, :cond_3

    .line 66
    .line 67
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    check-cast v6, Lq4/b0;

    .line 72
    .line 73
    iget-object v6, v6, Lq4/b0;->a:Lq4/b;

    .line 74
    .line 75
    iget-object v6, v6, Lq4/b;->e:Lq4/n;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 76
    .line 77
    if-nez v6, :cond_2

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_2
    :try_start_2
    new-instance v7, Lcom/google/android/gms/common/ConnectionResult;

    .line 81
    .line 82
    invoke-direct {v7, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    .line 83
    .line 84
    .line 85
    check-cast v6, Lq4/l;

    .line 86
    .line 87
    invoke-virtual {v6}, Lcom/google/android/gms/internal/cast/a;->l()Landroid/os/Parcel;

    .line 88
    .line 89
    .line 90
    move-result-object v8

    .line 91
    invoke-static {v8, v7}, Lcom/google/android/gms/internal/cast/d0;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v6, v8, v2}, Lcom/google/android/gms/internal/cast/a;->x(Landroid/os/Parcel;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 95
    .line 96
    .line 97
    goto :goto_2

    .line 98
    :catch_0
    move-exception v6

    .line 99
    :try_start_3
    sget-object v7, Lq4/b;->m:Lv4/b;

    .line 100
    .line 101
    const-class v8, Lq4/n;

    .line 102
    .line 103
    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v8

    .line 107
    const/4 v9, 0x2

    .line 108
    new-array v9, v9, [Ljava/lang/Object;

    .line 109
    .line 110
    const-string v10, "onConnectionFailed"

    .line 111
    .line 112
    const/4 v11, 0x0

    .line 113
    aput-object v10, v9, v11

    .line 114
    .line 115
    aput-object v8, v9, v3

    .line 116
    .line 117
    const-string v8, "Unable to call %s on %s."

    .line 118
    .line 119
    invoke-virtual {v7, v6, v8, v9}, Lv4/b;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    goto :goto_2

    .line 123
    :catchall_1
    move-exception v0

    .line 124
    goto :goto_3

    .line 125
    :cond_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 126
    iget-object v0, v0, Lp4/n;->d:Lp4/o;

    .line 127
    .line 128
    invoke-virtual {v0}, Lp4/o;->g()V

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    :goto_3
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 133
    throw v0
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    const/4 v0, 0x2

    .line 2
    iget v1, p0, Lp4/m;->a:I

    .line 3
    .line 4
    packed-switch v1, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lp4/m;->b:Lp4/n;

    .line 8
    .line 9
    iget-object v1, v1, Lp4/n;->d:Lp4/o;

    .line 10
    .line 11
    const/4 v2, 0x4

    .line 12
    iput v2, v1, Lp4/o;->E:I

    .line 13
    .line 14
    iget v2, p0, Lp4/m;->c:I

    .line 15
    .line 16
    iget-object v3, v1, Lp4/o;->D:Ljava/util/List;

    .line 17
    .line 18
    monitor-enter v3

    .line 19
    :try_start_0
    iget-object v1, v1, Lp4/o;->D:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_1

    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    check-cast v4, Lq4/b0;

    .line 36
    .line 37
    iget-object v4, v4, Lq4/b0;->a:Lq4/b;

    .line 38
    .line 39
    iget-object v4, v4, Lq4/b;->e:Lq4/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    if-nez v4, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    :try_start_1
    check-cast v4, Lq4/l;

    .line 45
    .line 46
    invoke-virtual {v4}, Lcom/google/android/gms/internal/cast/a;->l()Landroid/os/Parcel;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    invoke-virtual {v5, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4, v5, v0}, Lcom/google/android/gms/internal/cast/a;->x(Landroid/os/Parcel;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catch_0
    move-exception v4

    .line 58
    :try_start_2
    sget-object v5, Lq4/b;->m:Lv4/b;

    .line 59
    .line 60
    const-class v6, Lq4/n;

    .line 61
    .line 62
    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    new-array v7, v0, [Ljava/lang/Object;

    .line 67
    .line 68
    const-string v8, "onConnectionSuspended"

    .line 69
    .line 70
    const/4 v9, 0x0

    .line 71
    aput-object v8, v7, v9

    .line 72
    .line 73
    const/4 v8, 0x1

    .line 74
    aput-object v6, v7, v8

    .line 75
    .line 76
    const-string v6, "Unable to call %s on %s."

    .line 77
    .line 78
    invoke-virtual {v5, v4, v6, v7}, Lv4/b;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :catchall_0
    move-exception v0

    .line 83
    goto :goto_1

    .line 84
    :cond_1
    monitor-exit v3

    .line 85
    return-void

    .line 86
    :goto_1
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    throw v0

    .line 88
    :pswitch_0
    iget-object v0, p0, Lp4/m;->b:Lp4/n;

    .line 89
    .line 90
    iget-object v0, v0, Lp4/n;->d:Lp4/o;

    .line 91
    .line 92
    iget-object v0, v0, Lp4/o;->C:Lcom/google/android/gms/internal/cast/j0;

    .line 93
    .line 94
    iget v1, p0, Lp4/m;->c:I

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cast/j0;->c(I)V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :pswitch_1
    invoke-direct {p0}, Lp4/m;->b()V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :pswitch_2
    invoke-direct {p0}, Lp4/m;->a()V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    nop

    .line 109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
