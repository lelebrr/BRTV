.class public final Landroidx/fragment/app/u;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Lb/b;


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
    iput-object p1, p0, Landroidx/fragment/app/u;->a:Landroidx/fragment/app/FragmentActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u;->a:Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/fragment/app/FragmentActivity;->r:Landroidx/fragment/app/d;

    .line 4
    .line 5
    iget-object v1, v1, Landroidx/fragment/app/d;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Landroidx/fragment/app/v;

    .line 8
    .line 9
    iget-object v2, v1, Landroidx/fragment/app/v;->i:Landroidx/fragment/app/k0;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-virtual {v2, v1, v1, v3}, Landroidx/fragment/app/j0;->b(Landroidx/fragment/app/v;Lo9/e;Landroidx/fragment/app/s;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, v0, Landroidx/activity/ComponentActivity;->e:Lk3/t;

    .line 16
    .line 17
    iget-object v1, v1, Lk3/t;->d:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v1, Landroidx/appcompat/widget/v;

    .line 20
    .line 21
    const-string v2, "android:support:fragments"

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/v;->c(Ljava/lang/String;)Landroid/os/Bundle;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iget-object v0, v0, Landroidx/fragment/app/FragmentActivity;->r:Landroidx/fragment/app/d;

    .line 34
    .line 35
    iget-object v0, v0, Landroidx/fragment/app/d;->b:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v0, Landroidx/fragment/app/v;

    .line 38
    .line 39
    iget-object v0, v0, Landroidx/fragment/app/v;->i:Landroidx/fragment/app/k0;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroidx/fragment/app/j0;->P(Landroid/os/Parcelable;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void
.end method
