.class public final synthetic Landroidx/media3/exoplayer/analytics/n;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroidx/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:J

.field public final synthetic e:J


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJI)V
    .locals 0

    .line 1
    iput p7, p0, Landroidx/media3/exoplayer/analytics/n;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/media3/exoplayer/analytics/n;->b:Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    .line 4
    .line 5
    iput-object p2, p0, Landroidx/media3/exoplayer/analytics/n;->c:Ljava/lang/String;

    .line 6
    .line 7
    iput-wide p3, p0, Landroidx/media3/exoplayer/analytics/n;->d:J

    .line 8
    .line 9
    iput-wide p5, p0, Landroidx/media3/exoplayer/analytics/n;->e:J

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/media3/exoplayer/analytics/n;->a:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    move-object/from16 v8, p1

    .line 9
    .line 10
    check-cast v8, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 11
    .line 12
    iget-object v3, v0, Landroidx/media3/exoplayer/analytics/n;->c:Ljava/lang/String;

    .line 13
    .line 14
    iget-wide v4, v0, Landroidx/media3/exoplayer/analytics/n;->d:J

    .line 15
    .line 16
    iget-object v2, v0, Landroidx/media3/exoplayer/analytics/n;->b:Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    .line 17
    .line 18
    iget-wide v6, v0, Landroidx/media3/exoplayer/analytics/n;->e:J

    .line 19
    .line 20
    invoke-static/range {v2 .. v8}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->z(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJLandroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_0
    move-object/from16 v15, p1

    .line 25
    .line 26
    check-cast v15, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 27
    .line 28
    iget-object v10, v0, Landroidx/media3/exoplayer/analytics/n;->c:Ljava/lang/String;

    .line 29
    .line 30
    iget-wide v11, v0, Landroidx/media3/exoplayer/analytics/n;->d:J

    .line 31
    .line 32
    iget-object v9, v0, Landroidx/media3/exoplayer/analytics/n;->b:Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    .line 33
    .line 34
    iget-wide v13, v0, Landroidx/media3/exoplayer/analytics/n;->e:J

    .line 35
    .line 36
    invoke-static/range {v9 .. v15}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->f(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJLandroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    nop

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
