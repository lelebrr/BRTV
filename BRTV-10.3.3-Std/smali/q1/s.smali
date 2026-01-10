.class public final Lq1/s;
.super Landroid/os/Handler;
.source "MyApplication"


# instance fields
.field public final a:Lq1/v;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lq1/v;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lq1/s;->a:Lq1/v;

    .line 9
    .line 10
    iput-object p2, p0, Lq1/s;->b:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 9

    .line 1
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 2
    .line 3
    iget v1, p1, Landroid/os/Message;->what:I

    .line 4
    .line 5
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 6
    .line 7
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/4 v4, 0x7

    .line 14
    const-string v5, "routeId"

    .line 15
    .line 16
    const-string v6, "volume"

    .line 17
    .line 18
    const-string v7, "MR2ProviderService"

    .line 19
    .line 20
    iget-object v8, p0, Lq1/s;->a:Lq1/v;

    .line 21
    .line 22
    if-eq v1, v4, :cond_5

    .line 23
    .line 24
    const/16 v4, 0x8

    .line 25
    .line 26
    if-eq v1, v4, :cond_3

    .line 27
    .line 28
    const/16 p1, 0x9

    .line 29
    .line 30
    if-eq v1, p1, :cond_0

    .line 31
    .line 32
    goto/16 :goto_0

    .line 33
    .line 34
    :cond_0
    instance-of p1, v3, Landroid/content/Intent;

    .line 35
    .line 36
    if-eqz p1, :cond_7

    .line 37
    .line 38
    check-cast v3, Landroid/content/Intent;

    .line 39
    .line 40
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lq1/s;->b:Ljava/lang/String;

    .line 44
    .line 45
    invoke-static {v8, p1}, Lq1/j;->g(Lq1/v;Ljava/lang/String;)Landroid/media/RoutingSessionInfo;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    if-nez v1, :cond_1

    .line 50
    .line 51
    const-string p1, "onCustomCommand: Couldn\'t find a session"

    .line 52
    .line 53
    invoke-static {v7, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {v8, p1}, Lq1/v;->c(Ljava/lang/String;)Lq1/b0;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    if-nez v1, :cond_2

    .line 62
    .line 63
    const-string p1, "onControlRequest: Couldn\'t find a controller"

    .line 64
    .line 65
    invoke-static {v7, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    int-to-long v0, v2

    .line 69
    invoke-static {v8, v0, v1}, Lq1/j;->B(Lq1/v;J)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    new-instance v4, Lq1/q;

    .line 74
    .line 75
    invoke-direct {v4, p1, v3, v0, v2}, Lq1/q;-><init>(Ljava/lang/String;Landroid/content/Intent;Landroid/os/Messenger;I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v3, v4}, Lq1/c0;->d(Landroid/content/Intent;Lq1/o0;)Z

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_3
    const/4 v0, 0x0

    .line 83
    invoke-virtual {p1, v6, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    invoke-virtual {p1, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    if-eqz v0, :cond_7

    .line 92
    .line 93
    if-eqz p1, :cond_7

    .line 94
    .line 95
    invoke-virtual {v8, p1}, Lq1/v;->b(Ljava/lang/String;)Lq1/c0;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    if-nez v1, :cond_4

    .line 100
    .line 101
    const-string v0, "updateRouteVolume: Couldn\'t find a controller for routeId="

    .line 102
    .line 103
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-static {v7, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_4
    invoke-virtual {v1, v0}, Lq1/c0;->j(I)V

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_5
    const/4 v0, -0x1

    .line 116
    invoke-virtual {p1, v6, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    invoke-virtual {p1, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    if-ltz v0, :cond_7

    .line 125
    .line 126
    if-eqz p1, :cond_7

    .line 127
    .line 128
    invoke-virtual {v8, p1}, Lq1/v;->b(Ljava/lang/String;)Lq1/c0;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    if-nez v1, :cond_6

    .line 133
    .line 134
    const-string v0, "setRouteVolume: Couldn\'t find a controller for routeId="

    .line 135
    .line 136
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-static {v7, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_6
    invoke-virtual {v1, v0}, Lq1/c0;->g(I)V

    .line 145
    .line 146
    .line 147
    :cond_7
    :goto_0
    return-void
.end method
