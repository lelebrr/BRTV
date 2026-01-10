.class public final Lq1/q;
.super Lq1/o0;
.source "MyApplication"


# instance fields
.field public final synthetic a:Landroid/os/Messenger;

.field public final synthetic b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Intent;Landroid/os/Messenger;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lq1/q;->a:Landroid/os/Messenger;

    .line 5
    .line 6
    iput p4, p0, Lq1/q;->b:I

    .line 7
    .line 8
    return-void
.end method

.method public static c(Landroid/os/Messenger;IILandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput p1, v0, Landroid/os/Message;->what:I

    .line 6
    .line 7
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 11
    .line 12
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 13
    .line 14
    invoke-virtual {v0, p4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 15
    .line 16
    .line 17
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception p0

    .line 22
    const-string p1, "MR2ProviderService"

    .line 23
    .line 24
    const-string p2, "Could not send message to the client."

    .line 25
    .line 26
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 27
    .line 28
    .line 29
    :catch_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5

    .line 1
    sget v0, Lq1/v;->f:I

    .line 2
    .line 3
    const/4 v0, 0x4

    .line 4
    iget-object v1, p0, Lq1/q;->a:Landroid/os/Messenger;

    .line 5
    .line 6
    iget v2, p0, Lq1/q;->b:I

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    new-instance v3, Landroid/os/Bundle;

    .line 11
    .line 12
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v4, "error"

    .line 16
    .line 17
    invoke-virtual {v3, v4, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v1, v0, v2, p2, v3}, Lq1/q;->c(Landroid/os/Messenger;IILandroid/os/Bundle;Landroid/os/Bundle;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    invoke-static {v1, v0, v2, p2, p1}, Lq1/q;->c(Landroid/os/Messenger;IILandroid/os/Bundle;Landroid/os/Bundle;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    sget v0, Lq1/v;->f:I

    .line 2
    .line 3
    const/4 v0, 0x3

    .line 4
    iget v1, p0, Lq1/q;->b:I

    .line 5
    .line 6
    iget-object v2, p0, Lq1/q;->a:Landroid/os/Messenger;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-static {v2, v0, v1, p1, v3}, Lq1/q;->c(Landroid/os/Messenger;IILandroid/os/Bundle;Landroid/os/Bundle;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
