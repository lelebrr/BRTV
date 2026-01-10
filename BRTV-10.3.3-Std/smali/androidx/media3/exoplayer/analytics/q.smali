.class public final synthetic Landroidx/media3/exoplayer/analytics/q;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroidx/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic a:Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;IIZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/analytics/q;->a:Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    .line 5
    .line 6
    iput p2, p0, Landroidx/media3/exoplayer/analytics/q;->b:I

    .line 7
    .line 8
    iput p3, p0, Landroidx/media3/exoplayer/analytics/q;->c:I

    .line 9
    .line 10
    iput-boolean p4, p0, Landroidx/media3/exoplayer/analytics/q;->d:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 2
    .line 3
    iget v0, p0, Landroidx/media3/exoplayer/analytics/q;->b:I

    .line 4
    .line 5
    iget v1, p0, Landroidx/media3/exoplayer/analytics/q;->c:I

    .line 6
    .line 7
    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/q;->a:Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    .line 8
    .line 9
    iget-boolean v3, p0, Landroidx/media3/exoplayer/analytics/q;->d:Z

    .line 10
    .line 11
    invoke-static {v2, v0, v1, v3, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->l(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;IIZLandroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
