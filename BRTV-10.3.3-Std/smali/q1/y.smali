.class public final synthetic Lq1/y;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p5, p0, Lq1/y;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lq1/y;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lq1/y;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Lq1/y;->d:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p4, p0, Lq1/y;->e:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lq1/y;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lq1/y;->d:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroid/os/Handler;

    .line 9
    .line 10
    iget-object v1, p0, Lq1/y;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Landroid/media/AudioTrack;

    .line 13
    .line 14
    iget-object v2, p0, Lq1/y;->c:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v2, Landroidx/media3/exoplayer/audio/AudioSink$Listener;

    .line 17
    .line 18
    iget-object v3, p0, Lq1/y;->e:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v3, Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;

    .line 21
    .line 22
    invoke-static {v1, v2, v0, v3}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->c(Landroid/media/AudioTrack;Landroidx/media3/exoplayer/audio/AudioSink$Listener;Landroid/os/Handler;Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_0
    iget-object v0, p0, Lq1/y;->b:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v0, Lq1/b0;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lq1/y;->e:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v1, Ljava/util/ArrayList;

    .line 36
    .line 37
    iget-object v2, p0, Lq1/y;->c:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v2, Lq1/a0;

    .line 40
    .line 41
    iget-object v3, p0, Lq1/y;->d:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v3, Lq1/w;

    .line 44
    .line 45
    invoke-interface {v2, v0, v3, v1}, Lq1/a0;->c(Lq1/b0;Lq1/w;Ljava/util/ArrayList;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :pswitch_1
    iget-object v0, p0, Lq1/y;->b:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v0, Lq1/b0;

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lq1/y;->e:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v1, Ljava/util/ArrayList;

    .line 59
    .line 60
    iget-object v2, p0, Lq1/y;->c:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v2, Lq1/a0;

    .line 63
    .line 64
    iget-object v3, p0, Lq1/y;->d:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v3, Lq1/w;

    .line 67
    .line 68
    invoke-interface {v2, v0, v3, v1}, Lq1/a0;->c(Lq1/b0;Lq1/w;Ljava/util/ArrayList;)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    nop

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
