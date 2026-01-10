.class public final synthetic Landroidx/media3/exoplayer/analytics/l;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroidx/media3/common/util/ListenerSet$Event;
.implements Landroidx/media3/common/util/Consumer;


# instance fields
.field public final synthetic a:Landroidx/media3/exoplayer/source/LoadEventInfo;

.field public final synthetic b:Landroidx/media3/exoplayer/source/MediaLoadData;

.field public final synthetic c:Ljava/io/IOException;

.field public final synthetic d:Z

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/analytics/l;->e:Ljava/lang/Object;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/media3/exoplayer/analytics/l;->a:Landroidx/media3/exoplayer/source/LoadEventInfo;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/media3/exoplayer/analytics/l;->b:Landroidx/media3/exoplayer/source/MediaLoadData;

    .line 6
    .line 7
    iput-object p4, p0, Landroidx/media3/exoplayer/analytics/l;->c:Ljava/io/IOException;

    .line 8
    .line 9
    iput-boolean p5, p0, Landroidx/media3/exoplayer/analytics/l;->d:Z

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 6

    .line 1
    move-object v5, p1

    .line 2
    check-cast v5, Landroidx/media3/exoplayer/source/MediaSourceEventListener;

    .line 3
    .line 4
    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/l;->b:Landroidx/media3/exoplayer/source/MediaLoadData;

    .line 5
    .line 6
    iget-object v3, p0, Landroidx/media3/exoplayer/analytics/l;->c:Ljava/io/IOException;

    .line 7
    .line 8
    iget-object p1, p0, Landroidx/media3/exoplayer/analytics/l;->e:Ljava/lang/Object;

    .line 9
    .line 10
    move-object v0, p1

    .line 11
    check-cast v0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/l;->a:Landroidx/media3/exoplayer/source/LoadEventInfo;

    .line 14
    .line 15
    iget-boolean v4, p0, Landroidx/media3/exoplayer/analytics/l;->d:Z

    .line 16
    .line 17
    invoke-static/range {v0 .. v5}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->b(Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;ZLandroidx/media3/exoplayer/source/MediaSourceEventListener;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 6

    .line 1
    move-object v5, p1

    .line 2
    check-cast v5, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 3
    .line 4
    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/l;->b:Landroidx/media3/exoplayer/source/MediaLoadData;

    .line 5
    .line 6
    iget-object v3, p0, Landroidx/media3/exoplayer/analytics/l;->c:Ljava/io/IOException;

    .line 7
    .line 8
    iget-object p1, p0, Landroidx/media3/exoplayer/analytics/l;->e:Ljava/lang/Object;

    .line 9
    .line 10
    move-object v0, p1

    .line 11
    check-cast v0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/l;->a:Landroidx/media3/exoplayer/source/LoadEventInfo;

    .line 14
    .line 15
    iget-boolean v4, p0, Landroidx/media3/exoplayer/analytics/l;->d:Z

    .line 16
    .line 17
    invoke-static/range {v0 .. v5}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->O(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;ZLandroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
