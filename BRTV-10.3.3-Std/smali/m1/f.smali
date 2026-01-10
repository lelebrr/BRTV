.class public Lm1/f;
.super Lm1/d;
.source "MyApplication"


# instance fields
.field public final synthetic b:Lm1/g;


# direct methods
.method public constructor <init>(Lm1/g;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm1/f;->b:Lm1/g;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lm1/d;-><init>(Lm1/e;Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onLoadItem(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V
    .locals 1

    .line 1
    new-instance p1, Lj7/c;

    .line 2
    .line 3
    const/16 v0, 0xc

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lj7/c;-><init>(ILjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object p2, p0, Lm1/f;->b:Lm1/g;

    .line 9
    .line 10
    iget-object p2, p2, Lm1/g;->e:Landroidx/media/MediaBrowserServiceCompat;

    .line 11
    .line 12
    iget-object p2, p2, Landroidx/media/MediaBrowserServiceCompat;->b:Lm1/b;

    .line 13
    .line 14
    const/4 p2, 0x0

    .line 15
    iget-object p1, p1, Lj7/c;->b:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p1, Landroid/service/media/MediaBrowserService$Result;

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Landroid/service/media/MediaBrowserService$Result;->sendResult(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
