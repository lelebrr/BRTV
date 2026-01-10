.class public abstract Landroidx/media/MediaBrowserServiceCompat;
.super Landroid/app/Service;
.source "MyApplication"


# instance fields
.field public a:Lm1/e;

.field public final b:Lm1/b;

.field public final c:Ljava/util/ArrayList;

.field public final d:Lp/e;

.field public final e:Landroidx/mediarouter/app/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "MBServiceCompat"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v6, Lm1/b;

    .line 5
    .line 6
    const/4 v3, -0x1

    .line 7
    const/4 v4, -0x1

    .line 8
    const-string v2, "android.media.session.MediaController"

    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    move-object v0, v6

    .line 12
    move-object v1, p0

    .line 13
    invoke-direct/range {v0 .. v5}, Lm1/b;-><init>(Landroidx/media/MediaBrowserServiceCompat;Ljava/lang/String;IILm1/p;)V

    .line 14
    .line 15
    .line 16
    iput-object v6, p0, Landroidx/media/MediaBrowserServiceCompat;->b:Lm1/b;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Landroidx/media/MediaBrowserServiceCompat;->c:Ljava/util/ArrayList;

    .line 24
    .line 25
    new-instance v0, Lp/e;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-direct {v0, v1}, Lp/l;-><init>(I)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Landroidx/media/MediaBrowserServiceCompat;->d:Lp/e;

    .line 32
    .line 33
    new-instance v0, Landroidx/mediarouter/app/c;

    .line 34
    .line 35
    invoke-direct {v0, p0}, Landroidx/mediarouter/app/c;-><init>(Landroidx/media/MediaBrowserServiceCompat;)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Landroidx/media/MediaBrowserServiceCompat;->e:Landroidx/mediarouter/app/c;

    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public abstract a()Lcom/bumptech/glide/d;
.end method

.method public abstract b()V
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat;->a:Lm1/e;

    .line 2
    .line 3
    iget-object v0, v0, Lm1/e;->b:Lm1/d;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/service/media/MediaBrowserService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final onCreate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    .line 3
    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 v1, 0x1c

    .line 7
    .line 8
    if-lt v0, v1, :cond_0

    .line 9
    .line 10
    new-instance v0, Lm1/j;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Lm1/i;-><init>(Landroidx/media/MediaBrowserServiceCompat;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Landroidx/media/MediaBrowserServiceCompat;->a:Lm1/e;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/16 v1, 0x1a

    .line 19
    .line 20
    if-lt v0, v1, :cond_1

    .line 21
    .line 22
    new-instance v0, Lm1/i;

    .line 23
    .line 24
    invoke-direct {v0, p0}, Lm1/i;-><init>(Landroidx/media/MediaBrowserServiceCompat;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Landroidx/media/MediaBrowserServiceCompat;->a:Lm1/e;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/16 v1, 0x17

    .line 31
    .line 32
    if-lt v0, v1, :cond_2

    .line 33
    .line 34
    new-instance v0, Lm1/g;

    .line 35
    .line 36
    invoke-direct {v0, p0}, Lm1/g;-><init>(Landroidx/media/MediaBrowserServiceCompat;)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Landroidx/media/MediaBrowserServiceCompat;->a:Lm1/e;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    new-instance v0, Lm1/e;

    .line 43
    .line 44
    invoke-direct {v0, p0}, Lm1/e;-><init>(Landroidx/media/MediaBrowserServiceCompat;)V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Landroidx/media/MediaBrowserServiceCompat;->a:Lm1/e;

    .line 48
    .line 49
    :goto_0
    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat;->a:Lm1/e;

    .line 50
    .line 51
    invoke-interface {v0}, Lm1/c;->a()V

    .line 52
    .line 53
    .line 54
    return-void
.end method
