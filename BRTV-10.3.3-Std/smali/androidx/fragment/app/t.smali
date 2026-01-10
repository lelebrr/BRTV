.class public final Landroidx/fragment/app/t;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Lv1/d;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/FragmentActivity;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/fragment/app/t;->a:Landroidx/fragment/app/FragmentActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final saveState()Landroid/os/Bundle;
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/t;->a:Landroidx/fragment/app/FragmentActivity;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->k()Landroidx/fragment/app/k0;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-static {v2}, Landroidx/fragment/app/FragmentActivity;->l(Landroidx/fragment/app/j0;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    iget-object v2, v1, Landroidx/fragment/app/FragmentActivity;->s:Landroidx/lifecycle/y;

    .line 19
    .line 20
    sget-object v3, Landroidx/lifecycle/n;->ON_STOP:Landroidx/lifecycle/n;

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Landroidx/lifecycle/y;->f(Landroidx/lifecycle/n;)V

    .line 23
    .line 24
    .line 25
    iget-object v1, v1, Landroidx/fragment/app/FragmentActivity;->r:Landroidx/fragment/app/d;

    .line 26
    .line 27
    iget-object v1, v1, Landroidx/fragment/app/d;->b:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v1, Landroidx/fragment/app/v;

    .line 30
    .line 31
    iget-object v1, v1, Landroidx/fragment/app/v;->i:Landroidx/fragment/app/k0;

    .line 32
    .line 33
    invoke-virtual {v1}, Landroidx/fragment/app/j0;->Q()Landroid/os/Parcelable;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    const-string v2, "android:support:fragments"

    .line 40
    .line 41
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    return-object v0
.end method
