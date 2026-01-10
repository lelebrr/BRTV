.class public final Lk3/r;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lk3/s;


# direct methods
.method public synthetic constructor <init>(Lk3/s;I)V
    .locals 0

    .line 1
    iput p2, p0, Lk3/r;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lk3/r;->b:Lk3/s;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lk3/r;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lk3/r;->b:Lk3/s;

    .line 7
    .line 8
    iget-boolean v0, v0, Lk3/s;->d:Z

    .line 9
    .line 10
    iget-object v1, p0, Lk3/r;->b:Lk3/s;

    .line 11
    .line 12
    invoke-virtual {v1}, Lk3/s;->c()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    iput-boolean v2, v1, Lk3/s;->d:Z

    .line 17
    .line 18
    iget-object v1, p0, Lk3/r;->b:Lk3/s;

    .line 19
    .line 20
    iget-boolean v1, v1, Lk3/s;->d:Z

    .line 21
    .line 22
    if-eq v0, v1, :cond_1

    .line 23
    .line 24
    const-string v0, "ConnectivityMonitor"

    .line 25
    .line 26
    const/4 v1, 0x3

    .line 27
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v2, "connectivity changed, isConnected: "

    .line 36
    .line 37
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v2, p0, Lk3/r;->b:Lk3/s;

    .line 41
    .line 42
    iget-boolean v2, v2, Lk3/s;->d:Z

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    :cond_0
    iget-object v0, p0, Lk3/r;->b:Lk3/s;

    .line 55
    .line 56
    iget-boolean v1, v0, Lk3/s;->d:Z

    .line 57
    .line 58
    new-instance v2, Lk3/q;

    .line 59
    .line 60
    const/4 v3, 0x1

    .line 61
    invoke-direct {v2, v3, v0, v1}, Lk3/q;-><init>(ILjava/lang/Object;Z)V

    .line 62
    .line 63
    .line 64
    invoke-static {}, Lr3/n;->f()Landroid/os/Handler;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 69
    .line 70
    .line 71
    :cond_1
    return-void

    .line 72
    :pswitch_0
    iget-object v0, p0, Lk3/r;->b:Lk3/s;

    .line 73
    .line 74
    iget-boolean v0, v0, Lk3/s;->e:Z

    .line 75
    .line 76
    if-nez v0, :cond_2

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_2
    iget-object v0, p0, Lk3/r;->b:Lk3/s;

    .line 80
    .line 81
    const/4 v1, 0x0

    .line 82
    iput-boolean v1, v0, Lk3/s;->e:Z

    .line 83
    .line 84
    iget-object v0, p0, Lk3/r;->b:Lk3/s;

    .line 85
    .line 86
    iget-object v1, v0, Lk3/s;->a:Landroid/content/Context;

    .line 87
    .line 88
    iget-object v0, v0, Lk3/s;->f:Landroidx/appcompat/app/b0;

    .line 89
    .line 90
    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 91
    .line 92
    .line 93
    :goto_0
    return-void

    .line 94
    :pswitch_1
    iget-object v0, p0, Lk3/r;->b:Lk3/s;

    .line 95
    .line 96
    invoke-virtual {v0}, Lk3/s;->c()Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    iput-boolean v1, v0, Lk3/s;->d:Z

    .line 101
    .line 102
    :try_start_0
    iget-object v0, p0, Lk3/r;->b:Lk3/s;

    .line 103
    .line 104
    iget-object v1, v0, Lk3/s;->a:Landroid/content/Context;

    .line 105
    .line 106
    iget-object v0, v0, Lk3/s;->f:Landroidx/appcompat/app/b0;

    .line 107
    .line 108
    new-instance v2, Landroid/content/IntentFilter;

    .line 109
    .line 110
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 111
    .line 112
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Lk3/r;->b:Lk3/s;

    .line 119
    .line 120
    const/4 v1, 0x1

    .line 121
    iput-boolean v1, v0, Lk3/s;->e:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :catch_0
    move-exception v0

    .line 125
    const-string v1, "ConnectivityMonitor"

    .line 126
    .line 127
    const/4 v2, 0x5

    .line 128
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    if-eqz v2, :cond_3

    .line 133
    .line 134
    const-string v2, "Failed to register"

    .line 135
    .line 136
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    .line 138
    .line 139
    :cond_3
    iget-object v0, p0, Lk3/r;->b:Lk3/s;

    .line 140
    .line 141
    const/4 v1, 0x0

    .line 142
    iput-boolean v1, v0, Lk3/s;->e:Z

    .line 143
    .line 144
    :goto_1
    return-void

    .line 145
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
