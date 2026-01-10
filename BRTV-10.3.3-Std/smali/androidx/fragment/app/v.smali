.class public final Landroidx/fragment/app/v;
.super Lo9/e;
.source "MyApplication"

# interfaces
.implements Landroidx/lifecycle/a1;
.implements La/r;
.implements Lc/b;
.implements Landroidx/fragment/app/m0;


# instance fields
.field public final f:Landroidx/fragment/app/FragmentActivity;

.field public final g:Landroidx/fragment/app/FragmentActivity;

.field public final h:Landroid/os/Handler;

.field public final i:Landroidx/fragment/app/k0;

.field public final synthetic j:Landroidx/fragment/app/FragmentActivity;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/fragment/app/v;->j:Landroidx/fragment/app/FragmentActivity;

    .line 5
    .line 6
    new-instance v0, Landroid/os/Handler;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v1, Landroidx/fragment/app/k0;

    .line 12
    .line 13
    invoke-direct {v1}, Landroidx/fragment/app/j0;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Landroidx/fragment/app/v;->i:Landroidx/fragment/app/k0;

    .line 17
    .line 18
    iput-object p1, p0, Landroidx/fragment/app/v;->f:Landroidx/fragment/app/FragmentActivity;

    .line 19
    .line 20
    const-string v1, "context == null"

    .line 21
    .line 22
    invoke-static {p1, v1}, La2/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Landroidx/fragment/app/v;->g:Landroidx/fragment/app/FragmentActivity;

    .line 26
    .line 27
    iput-object v0, p0, Landroidx/fragment/app/v;->h:Landroid/os/Handler;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final B(I)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/v;->j:Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final C()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/v;->j:Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method public final b()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/v;->j:Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final e()Landroidx/lifecycle/z0;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/v;->j:Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->e()Landroidx/lifecycle/z0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final f()Landroidx/lifecycle/p;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/v;->j:Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/fragment/app/FragmentActivity;->s:Landroidx/lifecycle/y;

    .line 4
    .line 5
    return-object v0
.end method
