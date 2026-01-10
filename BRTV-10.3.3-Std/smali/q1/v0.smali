.class public final Lq1/v0;
.super Ljava/lang/Object;
.source "MyApplication"


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Ljava/lang/Runnable;

.field public c:J

.field public d:J

.field public e:Z


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lq1/v0;->a:Landroid/os/Handler;

    .line 14
    .line 15
    iput-object p1, p0, Lq1/v0;->b:Ljava/lang/Runnable;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final a(JZ)V
    .locals 6

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-wide v0, p0, Lq1/v0;->d:J

    .line 5
    .line 6
    sub-long v2, v0, p1

    .line 7
    .line 8
    const-wide/16 v4, 0x7530

    .line 9
    .line 10
    cmp-long p3, v2, v4

    .line 11
    .line 12
    if-ltz p3, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    iget-wide v2, p0, Lq1/v0;->c:J

    .line 16
    .line 17
    add-long/2addr p1, v4

    .line 18
    sub-long/2addr p1, v0

    .line 19
    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->max(JJ)J

    .line 20
    .line 21
    .line 22
    move-result-wide p1

    .line 23
    iput-wide p1, p0, Lq1/v0;->c:J

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, Lq1/v0;->e:Z

    .line 27
    .line 28
    return-void
.end method
