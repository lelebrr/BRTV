.class public final Lya/c;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "MyApplication"


# instance fields
.field public volatile a:Ljava/lang/Object;

.field public final b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lya/b;->b:Lya/b;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lya/c;->b:Z

    .line 8
    .line 9
    return-void
.end method
