.class public final Lm1/o;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lm1/p;

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:I

.field public final synthetic e:Lj7/c;


# direct methods
.method public constructor <init>(IILandroid/os/Bundle;Lj7/c;Ljava/lang/String;Lm1/p;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Lm1/o;->e:Lj7/c;

    .line 5
    .line 6
    iput-object p6, p0, Lm1/o;->a:Lm1/p;

    .line 7
    .line 8
    iput p1, p0, Lm1/o;->b:I

    .line 9
    .line 10
    iput-object p5, p0, Lm1/o;->c:Ljava/lang/String;

    .line 11
    .line 12
    iput p2, p0, Lm1/o;->d:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget-object v6, p0, Lm1/o;->a:Lm1/p;

    .line 2
    .line 3
    iget-object v0, v6, Lm1/p;->a:Landroid/os/Messenger;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    .line 6
    .line 7
    .line 8
    move-result-object v7

    .line 9
    iget-object v8, p0, Lm1/o;->e:Lj7/c;

    .line 10
    .line 11
    iget-object v0, v8, Lj7/c;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Landroidx/media/MediaBrowserServiceCompat;

    .line 14
    .line 15
    iget-object v0, v0, Landroidx/media/MediaBrowserServiceCompat;->d:Lp/e;

    .line 16
    .line 17
    invoke-virtual {v0, v7}, Lp/l;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    iget-object v0, v8, Lj7/c;->b:Ljava/lang/Object;

    .line 21
    .line 22
    move-object v9, v0

    .line 23
    check-cast v9, Landroidx/media/MediaBrowserServiceCompat;

    .line 24
    .line 25
    iget-object v0, v9, Landroidx/media/MediaBrowserServiceCompat;->c:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v10

    .line 31
    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const/4 v1, 0x0

    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Lm1/b;

    .line 43
    .line 44
    iget v2, v0, Lm1/b;->c:I

    .line 45
    .line 46
    iget v3, p0, Lm1/o;->b:I

    .line 47
    .line 48
    if-ne v2, v3, :cond_0

    .line 49
    .line 50
    iget-object v2, p0, Lm1/o;->c:Ljava/lang/String;

    .line 51
    .line 52
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-nez v2, :cond_1

    .line 57
    .line 58
    iget v2, p0, Lm1/o;->d:I

    .line 59
    .line 60
    if-gtz v2, :cond_2

    .line 61
    .line 62
    :cond_1
    new-instance v11, Lm1/b;

    .line 63
    .line 64
    iget v3, v0, Lm1/b;->b:I

    .line 65
    .line 66
    iget v4, v0, Lm1/b;->c:I

    .line 67
    .line 68
    iget-object v1, v8, Lj7/c;->b:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v1, Landroidx/media/MediaBrowserServiceCompat;

    .line 71
    .line 72
    iget-object v2, v0, Lm1/b;->a:Ljava/lang/String;

    .line 73
    .line 74
    move-object v0, v11

    .line 75
    move-object v5, v6

    .line 76
    invoke-direct/range {v0 .. v5}, Lm1/b;-><init>(Landroidx/media/MediaBrowserServiceCompat;Ljava/lang/String;IILm1/p;)V

    .line 77
    .line 78
    .line 79
    move-object v1, v11

    .line 80
    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    .line 81
    .line 82
    .line 83
    :cond_3
    if-nez v1, :cond_4

    .line 84
    .line 85
    new-instance v10, Lm1/b;

    .line 86
    .line 87
    iget v3, p0, Lm1/o;->d:I

    .line 88
    .line 89
    iget v4, p0, Lm1/o;->b:I

    .line 90
    .line 91
    iget-object v0, v8, Lj7/c;->b:Ljava/lang/Object;

    .line 92
    .line 93
    move-object v1, v0

    .line 94
    check-cast v1, Landroidx/media/MediaBrowserServiceCompat;

    .line 95
    .line 96
    iget-object v2, p0, Lm1/o;->c:Ljava/lang/String;

    .line 97
    .line 98
    move-object v0, v10

    .line 99
    move-object v5, v6

    .line 100
    invoke-direct/range {v0 .. v5}, Lm1/b;-><init>(Landroidx/media/MediaBrowserServiceCompat;Ljava/lang/String;IILm1/p;)V

    .line 101
    .line 102
    .line 103
    move-object v1, v10

    .line 104
    :cond_4
    iget-object v0, v9, Landroidx/media/MediaBrowserServiceCompat;->d:Lp/e;

    .line 105
    .line 106
    invoke-virtual {v0, v7, v1}, Lp/l;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    const/4 v0, 0x0

    .line 110
    :try_start_0
    invoke-interface {v7, v1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :catch_0
    const-string v0, "MBServiceCompat"

    .line 115
    .line 116
    const-string v1, "IBinder is already dead."

    .line 117
    .line 118
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    :goto_0
    return-void
.end method
