.class public final Lqa/o;
.super Ljava/lang/Object;
.source "MyApplication"


# instance fields
.field public final a:Landroid/app/Activity;

.field public final b:Lw8/i;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .line 1
    const-string v0, "btadNX3f7w==\n"

    .line 2
    .line 3
    const-string v1, "DbnzQRinmyI=\n"

    .line 4
    .line 5
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {p1, v0}, Lj9/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lqa/o;->a:Landroid/app/Activity;

    .line 16
    .line 17
    new-instance p1, Lqa/a;

    .line 18
    .line 19
    const/4 v0, 0x2

    .line 20
    invoke-direct {p1, v0, p0}, Lqa/a;-><init>(ILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    new-instance v0, Lw8/i;

    .line 24
    .line 25
    invoke-direct {v0, p1}, Lw8/i;-><init>(Li9/a;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lqa/o;->b:Lw8/i;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lqa/o;->b()Lqa/l;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, v0, Lqa/l;->d:Landroid/app/Dialog;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lqa/l;->a()Landroid/app/Dialog;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Lqa/l;->a()Landroid/app/Dialog;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public final b()Lqa/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lqa/o;->b:Lw8/i;

    .line 2
    .line 3
    invoke-virtual {v0}, Lw8/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lqa/l;

    .line 8
    .line 9
    return-object v0
.end method
