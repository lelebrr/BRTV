.class public final Lq1/e;
.super Ljava/lang/Object;
.source "MyApplication"


# instance fields
.field public final a:Landroid/support/v4/media/session/MediaSessionCompat;

.field public b:Lq1/d;

.field public final synthetic c:Lq1/h;


# direct methods
.method public constructor <init>(Lq1/h;Landroid/support/v4/media/session/MediaSessionCompat;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lq1/e;->c:Lq1/h;

    .line 5
    .line 6
    iput-object p2, p0, Lq1/e;->a:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lq1/e;->a:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lq1/e;->c:Lq1/h;

    .line 6
    .line 7
    iget-object v1, v1, Lq1/h;->n:Lq1/o1;

    .line 8
    .line 9
    iget v1, v1, Lq1/o1;->d:I

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackToLocal(I)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lq1/e;->b:Lq1/d;

    .line 16
    .line 17
    :cond_0
    return-void
.end method
