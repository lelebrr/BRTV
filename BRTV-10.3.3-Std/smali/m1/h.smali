.class public final Lm1/h;
.super Lm1/f;
.source "MyApplication"


# instance fields
.field public final synthetic c:Lm1/i;


# direct methods
.method public constructor <init>(Lm1/i;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm1/h;->c:Lm1/i;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lm1/f;-><init>(Lm1/g;Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onLoadChildren(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p3}, Landroid/support/v4/media/session/MediaSessionCompat;->ensureClassLoader(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lm1/h;->c:Lm1/i;

    .line 5
    .line 6
    iget-object p2, p1, Lm1/i;->f:Landroidx/media/MediaBrowserServiceCompat;

    .line 7
    .line 8
    iget-object p3, p2, Landroidx/media/MediaBrowserServiceCompat;->b:Lm1/b;

    .line 9
    .line 10
    invoke-virtual {p2}, Landroidx/media/MediaBrowserServiceCompat;->b()V

    .line 11
    .line 12
    .line 13
    iget-object p1, p1, Lm1/i;->f:Landroidx/media/MediaBrowserServiceCompat;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    return-void
.end method
