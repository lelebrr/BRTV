.class public final Landroidx/appcompat/app/b0;
.super Landroid/content/BroadcastReceiver;
.source "MyApplication"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/appcompat/app/b0;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/appcompat/app/b0;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    iget p1, p0, Landroidx/appcompat/app/b0;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Landroidx/appcompat/app/b0;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Lq1/n1;

    .line 9
    .line 10
    invoke-virtual {p1}, Lq1/n1;->a()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    iget-object p1, p0, Landroidx/appcompat/app/b0;->b:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p1, Lk3/s;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    new-instance p2, Lk3/r;

    .line 22
    .line 23
    const/4 v0, 0x2

    .line 24
    invoke-direct {p2, p1, v0}, Lk3/r;-><init>(Lk3/s;I)V

    .line 25
    .line 26
    .line 27
    sget-object p1, Lk3/s;->g:Ljava/util/concurrent/Executor;

    .line 28
    .line 29
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :pswitch_1
    const-string p1, "android.intent.action.SCREEN_OFF"

    .line 34
    .line 35
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_0

    .line 44
    .line 45
    iget-object p1, p0, Landroidx/appcompat/app/b0;->b:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast p1, Landroidx/mediarouter/app/f;

    .line 48
    .line 49
    invoke-virtual {p1}, Landroidx/mediarouter/app/f;->dismiss()V

    .line 50
    .line 51
    .line 52
    :cond_0
    return-void

    .line 53
    :pswitch_2
    iget-object p1, p0, Landroidx/appcompat/app/b0;->b:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast p1, Landroidx/appcompat/app/c0;

    .line 56
    .line 57
    invoke-virtual {p1}, Landroidx/appcompat/app/c0;->l()V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
