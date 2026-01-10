.class public final synthetic Landroidx/media3/common/d0;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:J

.field public final synthetic c:F


# direct methods
.method public synthetic constructor <init>(JJF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Landroidx/media3/common/d0;->a:J

    .line 5
    .line 6
    iput-wide p3, p0, Landroidx/media3/common/d0;->b:J

    .line 7
    .line 8
    iput p5, p0, Landroidx/media3/common/d0;->c:F

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final get()J
    .locals 5

    .line 1
    iget v0, p0, Landroidx/media3/common/d0;->c:F

    .line 2
    .line 3
    iget-wide v1, p0, Landroidx/media3/common/d0;->a:J

    .line 4
    .line 5
    iget-wide v3, p0, Landroidx/media3/common/d0;->b:J

    .line 6
    .line 7
    invoke-static {v1, v2, v3, v4, v0}, Landroidx/media3/common/f0;->d(JJF)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method
