.class public final Lm1/l;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lm1/p;

.field public final synthetic c:Lj7/c;


# direct methods
.method public synthetic constructor <init>(Lj7/c;Lm1/p;I)V
    .locals 0

    .line 1
    iput p3, p0, Lm1/l;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lm1/l;->c:Lj7/c;

    .line 4
    .line 5
    iput-object p2, p0, Lm1/l;->b:Lm1/p;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lm1/l;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lm1/l;->b:Lm1/p;

    .line 7
    .line 8
    iget-object v0, v0, Lm1/p;->a:Landroid/os/Messenger;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lm1/l;->c:Lj7/c;

    .line 15
    .line 16
    iget-object v1, v1, Lj7/c;->b:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Landroidx/media/MediaBrowserServiceCompat;

    .line 19
    .line 20
    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat;->d:Lp/e;

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Lp/l;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lm1/b;

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void

    .line 35
    :pswitch_0
    iget-object v0, p0, Lm1/l;->b:Lm1/p;

    .line 36
    .line 37
    iget-object v0, v0, Lm1/p;->a:Landroid/os/Messenger;

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget-object v1, p0, Lm1/l;->c:Lj7/c;

    .line 44
    .line 45
    iget-object v1, v1, Lj7/c;->b:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v1, Landroidx/media/MediaBrowserServiceCompat;

    .line 48
    .line 49
    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat;->d:Lp/e;

    .line 50
    .line 51
    invoke-virtual {v1, v0}, Lp/l;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Lm1/b;

    .line 56
    .line 57
    if-eqz v0, :cond_1

    .line 58
    .line 59
    iget-object v1, v0, Lm1/b;->d:Lm1/p;

    .line 60
    .line 61
    iget-object v1, v1, Lm1/p;->a:Landroid/os/Messenger;

    .line 62
    .line 63
    invoke-virtual {v1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    const/4 v2, 0x0

    .line 68
    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 69
    .line 70
    .line 71
    :cond_1
    return-void

    .line 72
    nop

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
