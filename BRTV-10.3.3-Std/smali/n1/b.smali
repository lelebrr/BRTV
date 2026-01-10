.class public final Ln1/b;
.super Landroidx/core/app/k0;
.source "MyApplication"


# instance fields
.field public a:[I

.field public b:Landroid/support/v4/media/session/MediaSessionCompat$Token;


# virtual methods
.method public final apply(Landroidx/core/app/n;)V
    .locals 3

    .line 1
    check-cast p1, Landroidx/core/app/t0;

    .line 2
    .line 3
    invoke-static {}, Ln1/a;->a()Landroid/app/Notification$MediaStyle;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Ln1/b;->a:[I

    .line 8
    .line 9
    iget-object v2, p0, Ln1/b;->b:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 10
    .line 11
    invoke-static {v0, v1, v2}, Ln1/a;->b(Landroid/app/Notification$MediaStyle;[ILandroid/support/v4/media/session/MediaSessionCompat$Token;)Landroid/app/Notification$MediaStyle;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object p1, p1, Landroidx/core/app/t0;->b:Landroid/app/Notification$Builder;

    .line 16
    .line 17
    invoke-static {p1, v0}, Ln1/a;->d(Landroid/app/Notification$Builder;Landroid/app/Notification$MediaStyle;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final makeBigContentView(Landroidx/core/app/n;)Landroid/widget/RemoteViews;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public final makeContentView(Landroidx/core/app/n;)Landroid/widget/RemoteViews;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method
