.class public Lm1/d;
.super Landroid/service/media/MediaBrowserService;
.source "MyApplication"


# instance fields
.field public final synthetic a:Lm1/e;


# direct methods
.method public constructor <init>(Lm1/e;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm1/d;->a:Lm1/e;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/service/media/MediaBrowserService;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p2}, Landroid/content/ContextWrapper;->attachBaseContext(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/service/media/MediaBrowserService$BrowserRoot;
    .locals 11

    .line 1
    invoke-static {p3}, Landroid/support/v4/media/session/MediaSessionCompat;->ensureClassLoader(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    if-nez p3, :cond_0

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    .line 10
    .line 11
    invoke-direct {v1, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 12
    .line 13
    .line 14
    :goto_0
    iget-object p3, p0, Lm1/d;->a:Lm1/e;

    .line 15
    .line 16
    iget-object v2, p3, Lm1/e;->d:Landroidx/media/MediaBrowserServiceCompat;

    .line 17
    .line 18
    const/4 v3, -0x1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    const-string v5, "extra_client_version"

    .line 23
    .line 24
    invoke-virtual {v1, v5, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-eqz v4, :cond_1

    .line 29
    .line 30
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    new-instance v4, Landroid/os/Messenger;

    .line 34
    .line 35
    iget-object v5, v2, Landroidx/media/MediaBrowserServiceCompat;->e:Landroidx/mediarouter/app/c;

    .line 36
    .line 37
    invoke-direct {v4, v5}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 38
    .line 39
    .line 40
    iput-object v4, p3, Lm1/e;->c:Landroid/os/Messenger;

    .line 41
    .line 42
    new-instance v4, Landroid/os/Bundle;

    .line 43
    .line 44
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v5, "extra_service_version"

    .line 48
    .line 49
    const/4 v6, 0x2

    .line 50
    invoke-virtual {v4, v5, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 51
    .line 52
    .line 53
    iget-object v5, p3, Lm1/e;->c:Landroid/os/Messenger;

    .line 54
    .line 55
    invoke-virtual {v5}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    const-string v6, "extra_messenger"

    .line 60
    .line 61
    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 62
    .line 63
    .line 64
    iget-object v5, p3, Lm1/e;->a:Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    const-string v4, "extra_calling_pid"

    .line 70
    .line 71
    invoke-virtual {v1, v4, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    move v8, v3

    .line 79
    goto :goto_1

    .line 80
    :cond_1
    const/4 v8, -0x1

    .line 81
    :goto_1
    new-instance v1, Lm1/b;

    .line 82
    .line 83
    iget-object v6, p3, Lm1/e;->d:Landroidx/media/MediaBrowserServiceCompat;

    .line 84
    .line 85
    const/4 v10, 0x0

    .line 86
    move-object v5, v1

    .line 87
    move-object v7, p1

    .line 88
    move v9, p2

    .line 89
    invoke-direct/range {v5 .. v10}, Lm1/b;-><init>(Landroidx/media/MediaBrowserServiceCompat;Ljava/lang/String;IILm1/p;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2}, Landroidx/media/MediaBrowserServiceCompat;->a()Lcom/bumptech/glide/d;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    if-nez p1, :cond_2

    .line 100
    .line 101
    return-object v0

    .line 102
    :cond_2
    iget-object p1, p3, Lm1/e;->c:Landroid/os/Messenger;

    .line 103
    .line 104
    if-eqz p1, :cond_3

    .line 105
    .line 106
    iget-object p1, v2, Landroidx/media/MediaBrowserServiceCompat;->c:Ljava/util/ArrayList;

    .line 107
    .line 108
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    :cond_3
    throw v0
.end method

.method public final onLoadChildren(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lm1/d;->a:Lm1/e;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p1, p1, Lm1/e;->d:Landroidx/media/MediaBrowserServiceCompat;

    .line 7
    .line 8
    iget-object p2, p1, Landroidx/media/MediaBrowserServiceCompat;->b:Lm1/b;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/media/MediaBrowserServiceCompat;->b()V

    .line 11
    .line 12
    .line 13
    return-void
.end method
