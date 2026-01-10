.class public final synthetic Landroidx/media3/common/q;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Lb7/e0;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/media3/common/SimpleBasePlayer$State;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/common/SimpleBasePlayer$State;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Landroidx/media3/common/q;->a:I

    iput-object p1, p0, Landroidx/media3/common/q;->b:Landroidx/media3/common/SimpleBasePlayer$State;

    iput-object p2, p0, Landroidx/media3/common/q;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/common/SimpleBasePlayer;Landroidx/media3/common/SimpleBasePlayer$State;)V
    .locals 1

    .line 2
    const/4 v0, 0x5

    iput v0, p0, Landroidx/media3/common/q;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/q;->c:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/media3/common/q;->b:Landroidx/media3/common/SimpleBasePlayer$State;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media3/common/q;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/media3/common/q;->b:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/media3/common/q;->c:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Landroidx/media3/common/TrackSelectionParameters;

    .line 11
    .line 12
    invoke-static {v0, v1}, Landroidx/media3/common/SimpleBasePlayer;->K(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/TrackSelectionParameters;)Landroidx/media3/common/SimpleBasePlayer$State;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0

    .line 17
    :pswitch_0
    iget-object v0, p0, Landroidx/media3/common/q;->b:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 18
    .line 19
    iget-object v1, p0, Landroidx/media3/common/q;->c:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v1, Landroidx/media3/common/PlaybackParameters;

    .line 22
    .line 23
    invoke-static {v0, v1}, Landroidx/media3/common/SimpleBasePlayer;->t(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/PlaybackParameters;)Landroidx/media3/common/SimpleBasePlayer$State;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0

    .line 28
    :pswitch_1
    iget-object v0, p0, Landroidx/media3/common/q;->c:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v0, Landroidx/media3/common/SimpleBasePlayer;

    .line 31
    .line 32
    iget-object v1, p0, Landroidx/media3/common/q;->b:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 33
    .line 34
    invoke-static {v0, v1}, Landroidx/media3/common/SimpleBasePlayer;->Q(Landroidx/media3/common/SimpleBasePlayer;Landroidx/media3/common/SimpleBasePlayer$State;)Landroidx/media3/common/SimpleBasePlayer$State;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    return-object v0

    .line 39
    :pswitch_2
    iget-object v0, p0, Landroidx/media3/common/q;->b:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 40
    .line 41
    iget-object v1, p0, Landroidx/media3/common/q;->c:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v1, Landroidx/media3/common/AudioAttributes;

    .line 44
    .line 45
    invoke-static {v0, v1}, Landroidx/media3/common/SimpleBasePlayer;->z(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/AudioAttributes;)Landroidx/media3/common/SimpleBasePlayer$State;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    return-object v0

    .line 50
    :pswitch_3
    iget-object v0, p0, Landroidx/media3/common/q;->b:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 51
    .line 52
    iget-object v1, p0, Landroidx/media3/common/q;->c:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v1, Landroid/view/SurfaceView;

    .line 55
    .line 56
    invoke-static {v0, v1}, Landroidx/media3/common/SimpleBasePlayer;->Y(Landroidx/media3/common/SimpleBasePlayer$State;Landroid/view/SurfaceView;)Landroidx/media3/common/SimpleBasePlayer$State;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    return-object v0

    .line 61
    :pswitch_4
    iget-object v0, p0, Landroidx/media3/common/q;->b:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 62
    .line 63
    iget-object v1, p0, Landroidx/media3/common/q;->c:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v1, Landroid/view/SurfaceHolder;

    .line 66
    .line 67
    invoke-static {v0, v1}, Landroidx/media3/common/SimpleBasePlayer;->Z(Landroidx/media3/common/SimpleBasePlayer$State;Landroid/view/SurfaceHolder;)Landroidx/media3/common/SimpleBasePlayer$State;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    return-object v0

    .line 72
    :pswitch_5
    iget-object v0, p0, Landroidx/media3/common/q;->b:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 73
    .line 74
    iget-object v1, p0, Landroidx/media3/common/q;->c:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v1, Landroidx/media3/common/MediaMetadata;

    .line 77
    .line 78
    invoke-static {v0, v1}, Landroidx/media3/common/SimpleBasePlayer;->l(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/MediaMetadata;)Landroidx/media3/common/SimpleBasePlayer$State;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    return-object v0

    .line 83
    :pswitch_6
    iget-object v0, p0, Landroidx/media3/common/q;->b:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 84
    .line 85
    iget-object v1, p0, Landroidx/media3/common/q;->c:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v1, Landroidx/media3/common/util/Size;

    .line 88
    .line 89
    invoke-static {v0, v1}, Landroidx/media3/common/SimpleBasePlayer;->i0(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/util/Size;)Landroidx/media3/common/SimpleBasePlayer$State;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    return-object v0

    .line 94
    nop

    .line 95
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
