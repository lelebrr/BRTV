.class Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroidx/media3/exoplayer/drm/DefaultDrmSession$ReferenceCountListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReferenceCountListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;


# direct methods
.method private constructor <init>(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;-><init>(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;)V

    return-void
.end method

.method public static synthetic a(Landroidx/media3/exoplayer/drm/DefaultDrmSession;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->lambda$onReferenceCountDecremented$0(Landroidx/media3/exoplayer/drm/DefaultDrmSession;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic lambda$onReferenceCountDecremented$0(Landroidx/media3/exoplayer/drm/DefaultDrmSession;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->release(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public onReferenceCountDecremented(Landroidx/media3/exoplayer/drm/DefaultDrmSession;I)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 3
    .line 4
    .line 5
    .line 6
    .line 7
    if-ne p2, v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    .line 10
    .line 11
    invoke-static {v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->access$800(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-lez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    .line 18
    .line 19
    invoke-static {v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->access$500(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;)J

    .line 20
    .line 21
    .line 22
    move-result-wide v3

    .line 23
    cmp-long v0, v3, v1

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget-object p2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    .line 28
    .line 29
    invoke-static {p2}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->access$600(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;)Ljava/util/Set;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    iget-object p2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    .line 37
    .line 38
    invoke-static {p2}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->access$700(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;)Landroid/os/Handler;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    check-cast p2, Landroid/os/Handler;

    .line 47
    .line 48
    new-instance v0, Landroidx/media3/exoplayer/drm/d;

    .line 49
    .line 50
    const/4 v1, 0x1

    .line 51
    invoke-direct {v0, v1, p1}, Landroidx/media3/exoplayer/drm/d;-><init>(ILjava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 55
    .line 56
    .line 57
    move-result-wide v1

    .line 58
    iget-object v3, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    .line 59
    .line 60
    invoke-static {v3}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->access$500(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;)J

    .line 61
    .line 62
    .line 63
    move-result-wide v3

    .line 64
    add-long/2addr v3, v1

    .line 65
    invoke-virtual {p2, v0, p1, v3, v4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    if-nez p2, :cond_3

    .line 70
    .line 71
    iget-object p2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    .line 72
    .line 73
    invoke-static {p2}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->access$400(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;)Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    iget-object p2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    .line 81
    .line 82
    invoke-static {p2}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->access$900(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;)Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    const/4 v0, 0x0

    .line 87
    if-ne p2, p1, :cond_1

    .line 88
    .line 89
    iget-object p2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    .line 90
    .line 91
    invoke-static {p2, v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->access$902(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;Landroidx/media3/exoplayer/drm/DefaultDrmSession;)Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    .line 92
    .line 93
    .line 94
    :cond_1
    iget-object p2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    .line 95
    .line 96
    invoke-static {p2}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->access$1000(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;)Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    if-ne p2, p1, :cond_2

    .line 101
    .line 102
    iget-object p2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    .line 103
    .line 104
    invoke-static {p2, v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->access$1002(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;Landroidx/media3/exoplayer/drm/DefaultDrmSession;)Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    .line 105
    .line 106
    .line 107
    :cond_2
    iget-object p2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    .line 108
    .line 109
    invoke-static {p2}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->access$1100(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;)Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    invoke-virtual {p2, p1}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;->onSessionFullyReleased(Landroidx/media3/exoplayer/drm/DefaultDrmSession;)V

    .line 114
    .line 115
    .line 116
    iget-object p2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    .line 117
    .line 118
    invoke-static {p2}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->access$500(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;)J

    .line 119
    .line 120
    .line 121
    move-result-wide v3

    .line 122
    cmp-long p2, v3, v1

    .line 123
    .line 124
    if-eqz p2, :cond_3

    .line 125
    .line 126
    iget-object p2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    .line 127
    .line 128
    invoke-static {p2}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->access$700(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;)Landroid/os/Handler;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    check-cast p2, Landroid/os/Handler;

    .line 137
    .line 138
    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    iget-object p2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    .line 142
    .line 143
    invoke-static {p2}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->access$600(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;)Ljava/util/Set;

    .line 144
    .line 145
    .line 146
    move-result-object p2

    .line 147
    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    :cond_3
    :goto_0
    iget-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    .line 151
    .line 152
    invoke-static {p1}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->access$1200(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;)V

    .line 153
    .line 154
    .line 155
    return-void
.end method

.method public onReferenceCountIncremented(Landroidx/media3/exoplayer/drm/DefaultDrmSession;I)V
    .locals 4

    .line 1
    iget-object p2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    .line 2
    .line 3
    invoke-static {p2}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->access$500(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    cmp-long p2, v0, v2

    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    iget-object p2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    .line 17
    .line 18
    invoke-static {p2}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->access$600(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;)Ljava/util/Set;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    iget-object p2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    .line 26
    .line 27
    invoke-static {p2}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->access$700(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;)Landroid/os/Handler;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    check-cast p2, Landroid/os/Handler;

    .line 36
    .line 37
    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method
