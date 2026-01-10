.class public final Lq1/o;
.super Landroid/media/MediaRouter2$TransferCallback;
.source "MyApplication"


# instance fields
.field public final synthetic a:Lq1/p;


# direct methods
.method public constructor <init>(Lq1/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lq1/o;->a:Lq1/p;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/media/MediaRouter2$TransferCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onStop(Landroid/media/MediaRouter2$RoutingController;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lq1/o;->a:Lq1/p;

    .line 2
    .line 3
    iget-object v0, v0, Lq1/p;->k:Landroid/util/ArrayMap;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lq1/c0;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object p1, p0, Lq1/o;->a:Lq1/p;

    .line 14
    .line 15
    iget-object p1, p1, Lq1/p;->j:Lq1/a;

    .line 16
    .line 17
    iget-object p1, p1, Lq1/a;->a:Lq1/h;

    .line 18
    .line 19
    iget-object v1, p1, Lq1/h;->e:Lq1/c0;

    .line 20
    .line 21
    if-ne v0, v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1}, Lq1/h;->c()Lq1/s0;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p1}, Lq1/h;->g()Lq1/s0;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-eq v1, v0, :cond_2

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    const/4 v2, 0x2

    .line 35
    invoke-virtual {p1, v0, v2, v1}, Lq1/h;->k(Lq1/s0;IZ)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    sget p1, Lq1/h;->F:I

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v1, "onStop: No matching routeController found. routingController="

    .line 45
    .line 46
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    const-string v0, "MR2Provider"

    .line 57
    .line 58
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    :cond_2
    :goto_0
    return-void
.end method

.method public final onTransfer(Landroid/media/MediaRouter2$RoutingController;Landroid/media/MediaRouter2$RoutingController;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lq1/o;->a:Lq1/p;

    .line 2
    .line 3
    iget-object v0, v0, Lq1/p;->k:Landroid/util/ArrayMap;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lq1/o;->a:Lq1/p;

    .line 9
    .line 10
    iget-object p1, p1, Lq1/p;->i:Landroid/media/MediaRouter2;

    .line 11
    .line 12
    invoke-static {p1}, Landroidx/media3/common/d;->i(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$RoutingController;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const/4 v0, 0x1

    .line 17
    const/4 v1, 0x3

    .line 18
    if-ne p2, p1, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Lq1/o;->a:Lq1/p;

    .line 21
    .line 22
    iget-object p1, p1, Lq1/p;->j:Lq1/a;

    .line 23
    .line 24
    iget-object p1, p1, Lq1/a;->a:Lq1/h;

    .line 25
    .line 26
    invoke-virtual {p1}, Lq1/h;->c()Lq1/s0;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-virtual {p1}, Lq1/h;->g()Lq1/s0;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    if-eq v2, p2, :cond_6

    .line 35
    .line 36
    invoke-virtual {p1, p2, v1, v0}, Lq1/h;->k(Lq1/s0;IZ)V

    .line 37
    .line 38
    .line 39
    goto/16 :goto_3

    .line 40
    .line 41
    :cond_0
    invoke-static {p2}, Landroidx/media3/common/d;->o(Landroid/media/MediaRouter2$RoutingController;)Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_1

    .line 50
    .line 51
    const-string p1, "MR2Provider"

    .line 52
    .line 53
    const-string p2, "Selected routes are empty. This shouldn\'t happen."

    .line 54
    .line 55
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_1
    const/4 v2, 0x0

    .line 60
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-static {p1}, Landroidx/media3/common/d;->f(Ljava/lang/Object;)Landroid/media/MediaRoute2Info;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-static {p1}, Ln0/p1;->g(Landroid/media/MediaRoute2Info;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    new-instance v2, Lq1/l;

    .line 73
    .line 74
    iget-object v3, p0, Lq1/o;->a:Lq1/p;

    .line 75
    .line 76
    invoke-direct {v2, v3, p2, p1}, Lq1/l;-><init>(Lq1/p;Landroid/media/MediaRouter2$RoutingController;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-object v3, p0, Lq1/o;->a:Lq1/p;

    .line 80
    .line 81
    iget-object v3, v3, Lq1/p;->k:Landroid/util/ArrayMap;

    .line 82
    .line 83
    invoke-virtual {v3, p2, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    iget-object v2, p0, Lq1/o;->a:Lq1/p;

    .line 87
    .line 88
    iget-object v2, v2, Lq1/p;->j:Lq1/a;

    .line 89
    .line 90
    iget-object v2, v2, Lq1/a;->a:Lq1/h;

    .line 91
    .line 92
    iget-object v3, v2, Lq1/h;->i:Ljava/util/ArrayList;

    .line 93
    .line 94
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    if-eqz v4, :cond_4

    .line 103
    .line 104
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    check-cast v4, Lq1/s0;

    .line 109
    .line 110
    invoke-virtual {v4}, Lq1/s0;->c()Lq1/e0;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    iget-object v6, v2, Lq1/h;->r:Lq1/p;

    .line 115
    .line 116
    if-eq v5, v6, :cond_3

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_3
    iget-object v5, v4, Lq1/s0;->b:Ljava/lang/String;

    .line 120
    .line 121
    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 122
    .line 123
    .line 124
    move-result v5

    .line 125
    if-eqz v5, :cond_2

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_4
    const/4 v4, 0x0

    .line 129
    :goto_1
    if-nez v4, :cond_5

    .line 130
    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    const-string v1, "onSelectRoute: The target RouteInfo is not found for descriptorId="

    .line 134
    .line 135
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    const-string v0, "AxMediaRouter"

    .line 146
    .line 147
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_5
    invoke-virtual {v2, v4, v1, v0}, Lq1/h;->k(Lq1/s0;IZ)V

    .line 152
    .line 153
    .line 154
    :goto_2
    iget-object p1, p0, Lq1/o;->a:Lq1/p;

    .line 155
    .line 156
    invoke-virtual {p1, p2}, Lq1/p;->j(Landroid/media/MediaRouter2$RoutingController;)V

    .line 157
    .line 158
    .line 159
    :cond_6
    :goto_3
    return-void
.end method

.method public final onTransferFailure(Landroid/media/MediaRoute2Info;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Transfer failed. requestedRoute="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v0, "MR2Provider"

    .line 16
    .line 17
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    return-void
.end method
