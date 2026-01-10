.class public final synthetic Landroidx/media3/exoplayer/c;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field public final synthetic a:Landroidx/media3/exoplayer/AudioFocusManager;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/AudioFocusManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/c;->a:Landroidx/media3/exoplayer/AudioFocusManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAudioFocusChange(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/c;->a:Landroidx/media3/exoplayer/AudioFocusManager;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/media3/exoplayer/AudioFocusManager;->b(Landroidx/media3/exoplayer/AudioFocusManager;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
