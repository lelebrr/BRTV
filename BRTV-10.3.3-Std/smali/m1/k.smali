.class public final Lm1/k;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lm1/p;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:I

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
    iput-object p4, p0, Lm1/k;->e:Lj7/c;

    .line 5
    .line 6
    iput-object p6, p0, Lm1/k;->a:Lm1/p;

    .line 7
    .line 8
    iput-object p5, p0, Lm1/k;->b:Ljava/lang/String;

    .line 9
    .line 10
    iput p1, p0, Lm1/k;->c:I

    .line 11
    .line 12
    iput p2, p0, Lm1/k;->d:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v5, p0, Lm1/k;->a:Lm1/p;

    .line 2
    .line 3
    iget-object v6, v5, Lm1/p;->a:Landroid/os/Messenger;

    .line 4
    .line 5
    invoke-virtual {v6}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v7, p0, Lm1/k;->e:Lj7/c;

    .line 10
    .line 11
    iget-object v1, v7, Lj7/c;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v1, Landroidx/media/MediaBrowserServiceCompat;

    .line 14
    .line 15
    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat;->d:Lp/e;

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Lp/l;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    new-instance v0, Lm1/b;

    .line 21
    .line 22
    iget-object v8, p0, Lm1/k;->b:Ljava/lang/String;

    .line 23
    .line 24
    iget v3, p0, Lm1/k;->c:I

    .line 25
    .line 26
    iget v4, p0, Lm1/k;->d:I

    .line 27
    .line 28
    iget-object v1, v7, Lj7/c;->b:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v1, Landroidx/media/MediaBrowserServiceCompat;

    .line 31
    .line 32
    move-object v2, v8

    .line 33
    invoke-direct/range {v0 .. v5}, Lm1/b;-><init>(Landroidx/media/MediaBrowserServiceCompat;Ljava/lang/String;IILm1/p;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, v7, Lj7/c;->b:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v0, Landroidx/media/MediaBrowserServiceCompat;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Landroidx/media/MediaBrowserServiceCompat;->a()Lcom/bumptech/glide/d;

    .line 44
    .line 45
    .line 46
    const-string v0, "MBServiceCompat"

    .line 47
    .line 48
    const-string v1, "No root for client "

    .line 49
    .line 50
    const-string v2, " from service "

    .line 51
    .line 52
    invoke-static {v1, v8, v2}, La/e;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    const-class v2, Lm1/k;

    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    const/4 v2, 0x2

    .line 77
    iput v2, v1, Landroid/os/Message;->what:I

    .line 78
    .line 79
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 80
    .line 81
    const/4 v2, 0x0

    .line 82
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v6, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :catch_0
    const-string v1, "Calling onConnectFailed() failed. Ignoring. pkg="

    .line 90
    .line 91
    invoke-virtual {v1, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    :goto_0
    return-void
.end method
