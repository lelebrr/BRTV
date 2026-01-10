.class public Landroidx/lifecycle/LifecycleService;
.super Landroid/app/Service;
.source "MyApplication"

# interfaces
.implements Landroidx/lifecycle/w;


# instance fields
.field public final a:La1/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, La1/b;

    .line 5
    .line 6
    invoke-direct {v0, p0}, La1/b;-><init>(Landroidx/lifecycle/LifecycleService;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/lifecycle/LifecycleService;->a:La1/b;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final f()Landroidx/lifecycle/p;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/LifecycleService;->a:La1/b;

    .line 2
    .line 3
    iget-object v0, v0, La1/b;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Landroidx/lifecycle/y;

    .line 6
    .line 7
    return-object v0
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 1
    const-string v0, "intent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lj9/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Landroidx/lifecycle/n;->ON_START:Landroidx/lifecycle/n;

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/lifecycle/LifecycleService;->a:La1/b;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, La1/b;->E(Landroidx/lifecycle/n;)V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    return-object p1
.end method

.method public final onCreate()V
    .locals 2

    .line 1
    sget-object v0, Landroidx/lifecycle/n;->ON_CREATE:Landroidx/lifecycle/n;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/lifecycle/LifecycleService;->a:La1/b;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, La1/b;->E(Landroidx/lifecycle/n;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    sget-object v0, Landroidx/lifecycle/n;->ON_STOP:Landroidx/lifecycle/n;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/lifecycle/LifecycleService;->a:La1/b;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, La1/b;->E(Landroidx/lifecycle/n;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Landroidx/lifecycle/n;->ON_DESTROY:Landroidx/lifecycle/n;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, La1/b;->E(Landroidx/lifecycle/n;)V

    .line 11
    .line 12
    .line 13
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final onStart(Landroid/content/Intent;I)V
    .locals 2

    .line 1
    sget-object v0, Landroidx/lifecycle/n;->ON_START:Landroidx/lifecycle/n;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/lifecycle/LifecycleService;->a:La1/b;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, La1/b;->E(Landroidx/lifecycle/n;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
