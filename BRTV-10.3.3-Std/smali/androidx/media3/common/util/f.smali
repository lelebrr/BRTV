.class public final synthetic Landroidx/media3/common/util/f;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/media3/common/util/NetworkTypeObserver$ListenerHolder;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/common/util/NetworkTypeObserver$ListenerHolder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/common/util/f;->a:Landroidx/media3/common/util/NetworkTypeObserver$ListenerHolder;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/common/util/f;->a:Landroidx/media3/common/util/NetworkTypeObserver$ListenerHolder;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/util/NetworkTypeObserver$ListenerHolder;->a(Landroidx/media3/common/util/NetworkTypeObserver$ListenerHolder;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
