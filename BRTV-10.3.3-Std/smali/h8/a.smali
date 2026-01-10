.class public abstract Lh8/a;
.super Ljava/lang/Object;
.source "MyApplication"


# static fields
.field public static final a:Lh8/e;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lh8/b;->a:Li8/f;

    .line 6
    .line 7
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 8
    .line 9
    const/16 v2, 0x16

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    if-ge v1, v2, :cond_0

    .line 13
    .line 14
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    :try_start_0
    invoke-static {v1}, Landroid/support/v4/media/session/a;->f(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    const/4 v3, 0x0

    .line 23
    :goto_0
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 24
    .line 25
    .line 26
    :cond_0
    new-instance v1, Lh8/e;

    .line 27
    .line 28
    new-instance v2, Landroid/os/Handler;

    .line 29
    .line 30
    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, v2, v3}, Lh8/e;-><init>(Landroid/os/Handler;Z)V

    .line 34
    .line 35
    .line 36
    sput-object v1, Lh8/a;->a:Lh8/e;

    .line 37
    .line 38
    return-void
.end method
