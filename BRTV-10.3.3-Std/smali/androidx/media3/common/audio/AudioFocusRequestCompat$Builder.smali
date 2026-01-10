.class public final Landroidx/media3/common/audio/AudioFocusRequestCompat$Builder;
.super Ljava/lang/Object;
.source "MyApplication"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/audio/AudioFocusRequestCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private audioAttributes:Landroidx/media3/common/AudioAttributes;

.field private focusChangeHandler:Landroid/os/Handler;

.field private focusGain:I

.field private onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private pauseOnDuck:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Landroidx/media3/common/AudioAttributes;->DEFAULT:Landroidx/media3/common/AudioAttributes;

    iput-object v0, p0, Landroidx/media3/common/audio/AudioFocusRequestCompat$Builder;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    .line 4
    iput p1, p0, Landroidx/media3/common/audio/AudioFocusRequestCompat$Builder;->focusGain:I

    return-void
.end method

.method private constructor <init>(Landroidx/media3/common/audio/AudioFocusRequestCompat;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-virtual {p1}, Landroidx/media3/common/audio/AudioFocusRequestCompat;->getFocusGain()I

    move-result v0

    iput v0, p0, Landroidx/media3/common/audio/AudioFocusRequestCompat$Builder;->focusGain:I

    .line 7
    invoke-virtual {p1}, Landroidx/media3/common/audio/AudioFocusRequestCompat;->getOnAudioFocusChangeListener()Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/audio/AudioFocusRequestCompat$Builder;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 8
    invoke-virtual {p1}, Landroidx/media3/common/audio/AudioFocusRequestCompat;->getFocusChangeHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/audio/AudioFocusRequestCompat$Builder;->focusChangeHandler:Landroid/os/Handler;

    .line 9
    invoke-virtual {p1}, Landroidx/media3/common/audio/AudioFocusRequestCompat;->getAudioAttributes()Landroidx/media3/common/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/audio/AudioFocusRequestCompat$Builder;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    .line 10
    invoke-virtual {p1}, Landroidx/media3/common/audio/AudioFocusRequestCompat;->willPauseWhenDucked()Z

    move-result p1

    iput-boolean p1, p0, Landroidx/media3/common/audio/AudioFocusRequestCompat$Builder;->pauseOnDuck:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/common/audio/AudioFocusRequestCompat;Landroidx/media3/common/audio/AudioFocusRequestCompat$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/common/audio/AudioFocusRequestCompat$Builder;-><init>(Landroidx/media3/common/audio/AudioFocusRequestCompat;)V

    return-void
.end method

.method private static isValidFocusGain(I)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_0

    .line 3
    .line 4
    const/4 v1, 0x2

    .line 5
    if-eq p0, v1, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x3

    .line 8
    if-eq p0, v1, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x4

    .line 11
    if-eq p0, v1, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return p0

    .line 15
    :cond_0
    return v0
.end method


# virtual methods
.method public build()Landroidx/media3/common/audio/AudioFocusRequestCompat;
    .locals 7

    .line 1
    iget-object v2, p0, Landroidx/media3/common/audio/AudioFocusRequestCompat$Builder;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 2
    .line 3
    if-eqz v2, :cond_0

    .line 4
    .line 5
    new-instance v6, Landroidx/media3/common/audio/AudioFocusRequestCompat;

    .line 6
    .line 7
    iget v1, p0, Landroidx/media3/common/audio/AudioFocusRequestCompat$Builder;->focusGain:I

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/media3/common/audio/AudioFocusRequestCompat$Builder;->focusChangeHandler:Landroid/os/Handler;

    .line 10
    .line 11
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    move-object v3, v0

    .line 16
    check-cast v3, Landroid/os/Handler;

    .line 17
    .line 18
    iget-object v4, p0, Landroidx/media3/common/audio/AudioFocusRequestCompat$Builder;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    .line 19
    .line 20
    iget-boolean v5, p0, Landroidx/media3/common/audio/AudioFocusRequestCompat$Builder;->pauseOnDuck:Z

    .line 21
    .line 22
    move-object v0, v6

    .line 23
    invoke-direct/range {v0 .. v5}, Landroidx/media3/common/audio/AudioFocusRequestCompat;-><init>(ILandroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;Landroidx/media3/common/AudioAttributes;Z)V

    .line 24
    .line 25
    .line 26
    return-object v6

    .line 27
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 28
    .line 29
    const-string v1, "Can\'t build an AudioFocusRequestCompat instance without a listener"

    .line 30
    .line 31
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw v0
.end method

.method public setAudioAttributes(Landroidx/media3/common/AudioAttributes;)Landroidx/media3/common/audio/AudioFocusRequestCompat$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/common/audio/AudioFocusRequestCompat$Builder;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    .line 5
    .line 6
    return-object p0
.end method

.method public setFocusGain(I)Landroidx/media3/common/audio/AudioFocusRequestCompat$Builder;
    .locals 1

    .line 1
    invoke-static {p1}, Landroidx/media3/common/audio/AudioFocusRequestCompat$Builder;->isValidFocusGain(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 6
    .line 7
    .line 8
    iput p1, p0, Landroidx/media3/common/audio/AudioFocusRequestCompat$Builder;->focusGain:I

    .line 9
    .line 10
    return-object p0
.end method

.method public setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroidx/media3/common/audio/AudioFocusRequestCompat$Builder;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p0, p1, v0}, Landroidx/media3/common/audio/AudioFocusRequestCompat$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;)Landroidx/media3/common/audio/AudioFocusRequestCompat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;)Landroidx/media3/common/audio/AudioFocusRequestCompat$Builder;
    .locals 0

    .line 2
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Landroidx/media3/common/audio/AudioFocusRequestCompat$Builder;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 5
    iput-object p2, p0, Landroidx/media3/common/audio/AudioFocusRequestCompat$Builder;->focusChangeHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public setWillPauseWhenDucked(Z)Landroidx/media3/common/audio/AudioFocusRequestCompat$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/media3/common/audio/AudioFocusRequestCompat$Builder;->pauseOnDuck:Z

    .line 2
    .line 3
    return-object p0
.end method
