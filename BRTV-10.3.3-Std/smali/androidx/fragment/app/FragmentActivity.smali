.class public Landroidx/fragment/app/FragmentActivity;
.super Landroidx/activity/ComponentActivity;
.source "MyApplication"

# interfaces
.implements Landroidx/core/app/b;
.implements Landroidx/core/app/c;


# instance fields
.field public final r:Landroidx/fragment/app/d;

.field public final s:Landroidx/lifecycle/y;

.field public t:Z

.field public u:Z

.field public v:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/activity/ComponentActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/fragment/app/v;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Landroidx/fragment/app/v;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Landroidx/fragment/app/d;

    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    invoke-direct {v1, v2, v0}, Landroidx/fragment/app/d;-><init>(ILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Landroidx/fragment/app/FragmentActivity;->r:Landroidx/fragment/app/d;

    .line 16
    .line 17
    new-instance v0, Landroidx/lifecycle/y;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Landroidx/lifecycle/y;-><init>(Landroidx/lifecycle/w;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Landroidx/fragment/app/FragmentActivity;->s:Landroidx/lifecycle/y;

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->v:Z

    .line 26
    .line 27
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->e:Lk3/t;

    .line 28
    .line 29
    iget-object v0, v0, Lk3/t;->d:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v0, Landroidx/appcompat/widget/v;

    .line 32
    .line 33
    new-instance v1, Landroidx/fragment/app/t;

    .line 34
    .line 35
    invoke-direct {v1, p0}, Landroidx/fragment/app/t;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 36
    .line 37
    .line 38
    const-string v2, "android:support:fragments"

    .line 39
    .line 40
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/widget/v;->f(Ljava/lang/String;Lv1/d;)V

    .line 41
    .line 42
    .line 43
    new-instance v0, Landroidx/fragment/app/u;

    .line 44
    .line 45
    invoke-direct {v0, p0}, Landroidx/fragment/app/u;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v0}, Landroidx/activity/ComponentActivity;->i(Lb/b;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public static l(Landroidx/fragment/app/j0;)Z
    .locals 5

    .line 1
    iget-object p0, p0, Landroidx/fragment/app/j0;->c:La1/b;

    .line 2
    .line 3
    invoke-virtual {p0}, La1/b;->w()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const/4 v0, 0x0

    .line 12
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_5

    .line 17
    .line 18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Landroidx/fragment/app/s;

    .line 23
    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-object v2, v1, Landroidx/fragment/app/s;->t:Landroidx/fragment/app/v;

    .line 28
    .line 29
    if-nez v2, :cond_2

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    goto :goto_1

    .line 33
    :cond_2
    iget-object v2, v2, Landroidx/fragment/app/v;->j:Landroidx/fragment/app/FragmentActivity;

    .line 34
    .line 35
    :goto_1
    if-eqz v2, :cond_3

    .line 36
    .line 37
    invoke-virtual {v1}, Landroidx/fragment/app/s;->i()Landroidx/fragment/app/j0;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-static {v2}, Landroidx/fragment/app/FragmentActivity;->l(Landroidx/fragment/app/j0;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    or-int/2addr v0, v2

    .line 46
    :cond_3
    iget-object v2, v1, Landroidx/fragment/app/s;->N:Landroidx/fragment/app/s0;

    .line 47
    .line 48
    sget-object v3, Landroidx/lifecycle/o;->d:Landroidx/lifecycle/o;

    .line 49
    .line 50
    const/4 v4, 0x1

    .line 51
    if-eqz v2, :cond_4

    .line 52
    .line 53
    invoke-virtual {v2}, Landroidx/fragment/app/s0;->g()V

    .line 54
    .line 55
    .line 56
    iget-object v2, v2, Landroidx/fragment/app/s0;->d:Landroidx/lifecycle/y;

    .line 57
    .line 58
    iget-object v2, v2, Landroidx/lifecycle/y;->d:Landroidx/lifecycle/o;

    .line 59
    .line 60
    invoke-virtual {v2, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-ltz v2, :cond_4

    .line 65
    .line 66
    iget-object v0, v1, Landroidx/fragment/app/s;->N:Landroidx/fragment/app/s0;

    .line 67
    .line 68
    iget-object v0, v0, Landroidx/fragment/app/s0;->d:Landroidx/lifecycle/y;

    .line 69
    .line 70
    invoke-virtual {v0}, Landroidx/lifecycle/y;->h()V

    .line 71
    .line 72
    .line 73
    const/4 v0, 0x1

    .line 74
    :cond_4
    iget-object v2, v1, Landroidx/fragment/app/s;->M:Landroidx/lifecycle/y;

    .line 75
    .line 76
    iget-object v2, v2, Landroidx/lifecycle/y;->d:Landroidx/lifecycle/o;

    .line 77
    .line 78
    invoke-virtual {v2, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-ltz v2, :cond_0

    .line 83
    .line 84
    iget-object v0, v1, Landroidx/fragment/app/s;->M:Landroidx/lifecycle/y;

    .line 85
    .line 86
    invoke-virtual {v0}, Landroidx/lifecycle/y;->h()V

    .line 87
    .line 88
    .line 89
    const/4 v0, 0x1

    .line 90
    goto :goto_0

    .line 91
    :cond_5
    return v0
.end method


# virtual methods
.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "Local FragmentActivity "

    .line 8
    .line 9
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v0, " State:"

    .line 24
    .line 25
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, "  "

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-string v1, "mCreated="

    .line 49
    .line 50
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-boolean v1, p0, Landroidx/fragment/app/FragmentActivity;->t:Z

    .line 54
    .line 55
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 56
    .line 57
    .line 58
    const-string v1, " mResumed="

    .line 59
    .line 60
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-boolean v1, p0, Landroidx/fragment/app/FragmentActivity;->u:Z

    .line 64
    .line 65
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 66
    .line 67
    .line 68
    const-string v1, " mStopped="

    .line 69
    .line 70
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget-boolean v1, p0, Landroidx/fragment/app/FragmentActivity;->v:Z

    .line 74
    .line 75
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    if-eqz v1, :cond_0

    .line 83
    .line 84
    new-instance v1, La7/f;

    .line 85
    .line 86
    invoke-interface {p0}, Landroidx/lifecycle/a1;->e()Landroidx/lifecycle/z0;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-direct {v1, p0, v2}, La7/f;-><init>(Landroidx/lifecycle/w;Landroidx/lifecycle/z0;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v0, p3}, La7/f;->z(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 94
    .line 95
    .line 96
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->r:Landroidx/fragment/app/d;

    .line 97
    .line 98
    iget-object v0, v0, Landroidx/fragment/app/d;->b:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast v0, Landroidx/fragment/app/v;

    .line 101
    .line 102
    iget-object v0, v0, Landroidx/fragment/app/v;->i:Landroidx/fragment/app/k0;

    .line 103
    .line 104
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/fragment/app/j0;->r(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    return-void
.end method

.method public final k()Landroidx/fragment/app/k0;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->r:Landroidx/fragment/app/d;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/fragment/app/d;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Landroidx/fragment/app/v;

    .line 6
    .line 7
    iget-object v0, v0, Landroidx/fragment/app/v;->i:Landroidx/fragment/app/k0;

    .line 8
    .line 9
    return-object v0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->r:Landroidx/fragment/app/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/d;->b()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3}, Landroidx/activity/ComponentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->r:Landroidx/fragment/app/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/d;->b()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, v0, Landroidx/fragment/app/d;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Landroidx/fragment/app/v;

    .line 12
    .line 13
    iget-object v0, v0, Landroidx/fragment/app/v;->i:Landroidx/fragment/app/k0;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Landroidx/fragment/app/j0;->h(Landroid/content/res/Configuration;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Landroidx/fragment/app/FragmentActivity;->s:Landroidx/lifecycle/y;

    .line 5
    .line 6
    sget-object v0, Landroidx/lifecycle/n;->ON_CREATE:Landroidx/lifecycle/n;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroidx/lifecycle/y;->f(Landroidx/lifecycle/n;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Landroidx/fragment/app/FragmentActivity;->r:Landroidx/fragment/app/d;

    .line 12
    .line 13
    iget-object p1, p1, Landroidx/fragment/app/d;->b:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p1, Landroidx/fragment/app/v;

    .line 16
    .line 17
    iget-object p1, p1, Landroidx/fragment/app/v;->i:Landroidx/fragment/app/k0;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p1, Landroidx/fragment/app/j0;->y:Z

    .line 21
    .line 22
    iput-boolean v0, p1, Landroidx/fragment/app/j0;->z:Z

    .line 23
    .line 24
    iget-object v1, p1, Landroidx/fragment/app/j0;->F:Landroidx/fragment/app/l0;

    .line 25
    .line 26
    iput-boolean v0, v1, Landroidx/fragment/app/l0;->i:Z

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    invoke-virtual {p1, v0}, Landroidx/fragment/app/j0;->p(I)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Landroidx/fragment/app/FragmentActivity;->r:Landroidx/fragment/app/d;

    .line 11
    .line 12
    iget-object p1, p1, Landroidx/fragment/app/d;->b:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p1, Landroidx/fragment/app/v;

    .line 15
    .line 16
    iget-object p1, p1, Landroidx/fragment/app/v;->i:Landroidx/fragment/app/k0;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/fragment/app/j0;->j()Z

    .line 19
    .line 20
    .line 21
    return v0

    .line 22
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    .line 23
    .line 24
    .line 25
    return v0
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->r:Landroidx/fragment/app/d;

    iget-object v0, v0, Landroidx/fragment/app/d;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/v;

    .line 2
    iget-object v0, v0, Landroidx/fragment/app/v;->i:Landroidx/fragment/app/k0;

    iget-object v0, v0, Landroidx/fragment/app/j0;->f:Landroidx/fragment/app/y;

    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/fragment/app/y;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public final onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2

    .line 5
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->r:Landroidx/fragment/app/d;

    iget-object v0, v0, Landroidx/fragment/app/d;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/v;

    .line 6
    iget-object v0, v0, Landroidx/fragment/app/v;->i:Landroidx/fragment/app/k0;

    iget-object v0, v0, Landroidx/fragment/app/j0;->f:Landroidx/fragment/app/y;

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1, p1, p2, p3}, Landroidx/fragment/app/y;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 8
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->r:Landroidx/fragment/app/d;

    .line 5
    .line 6
    iget-object v0, v0, Landroidx/fragment/app/d;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroidx/fragment/app/v;

    .line 9
    .line 10
    iget-object v0, v0, Landroidx/fragment/app/v;->i:Landroidx/fragment/app/k0;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/fragment/app/j0;->k()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->s:Landroidx/lifecycle/y;

    .line 16
    .line 17
    sget-object v1, Landroidx/lifecycle/n;->ON_DESTROY:Landroidx/lifecycle/n;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroidx/lifecycle/y;->f(Landroidx/lifecycle/n;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final onLowMemory()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->r:Landroidx/fragment/app/d;

    .line 5
    .line 6
    iget-object v0, v0, Landroidx/fragment/app/d;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroidx/fragment/app/v;

    .line 9
    .line 10
    iget-object v0, v0, Landroidx/fragment/app/v;->i:Landroidx/fragment/app/k0;

    .line 11
    .line 12
    iget-object v0, v0, Landroidx/fragment/app/j0;->c:La1/b;

    .line 13
    .line 14
    invoke-virtual {v0}, La1/b;->w()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Landroidx/fragment/app/s;

    .line 33
    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    invoke-virtual {v1}, Landroidx/fragment/app/s;->G()V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    return p1

    .line 9
    :cond_0
    iget-object p2, p0, Landroidx/fragment/app/FragmentActivity;->r:Landroidx/fragment/app/d;

    .line 10
    .line 11
    if-eqz p1, :cond_2

    .line 12
    .line 13
    const/4 v0, 0x6

    .line 14
    if-eq p1, v0, :cond_1

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    return p1

    .line 18
    :cond_1
    iget-object p1, p2, Landroidx/fragment/app/d;->b:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p1, Landroidx/fragment/app/v;

    .line 21
    .line 22
    iget-object p1, p1, Landroidx/fragment/app/v;->i:Landroidx/fragment/app/k0;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroidx/fragment/app/j0;->i()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    return p1

    .line 29
    :cond_2
    iget-object p1, p2, Landroidx/fragment/app/d;->b:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast p1, Landroidx/fragment/app/v;

    .line 32
    .line 33
    iget-object p1, p1, Landroidx/fragment/app/v;->i:Landroidx/fragment/app/k0;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroidx/fragment/app/j0;->l()Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    return p1
.end method

.method public final onMultiWindowModeChanged(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->r:Landroidx/fragment/app/d;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/fragment/app/d;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Landroidx/fragment/app/v;

    .line 6
    .line 7
    iget-object v0, v0, Landroidx/fragment/app/v;->i:Landroidx/fragment/app/k0;

    .line 8
    .line 9
    iget-object v0, v0, Landroidx/fragment/app/j0;->c:La1/b;

    .line 10
    .line 11
    invoke-virtual {v0}, La1/b;->w()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Landroidx/fragment/app/s;

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    invoke-virtual {v1, p1}, Landroidx/fragment/app/s;->H(Z)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    return-void
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->r:Landroidx/fragment/app/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/d;->b()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->r:Landroidx/fragment/app/d;

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/fragment/app/d;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Landroidx/fragment/app/v;

    .line 8
    .line 9
    iget-object v0, v0, Landroidx/fragment/app/v;->i:Landroidx/fragment/app/k0;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/fragment/app/j0;->m()V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->u:Z

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->r:Landroidx/fragment/app/d;

    .line 8
    .line 9
    iget-object v0, v0, Landroidx/fragment/app/d;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Landroidx/fragment/app/v;

    .line 12
    .line 13
    const/4 v1, 0x5

    .line 14
    iget-object v0, v0, Landroidx/fragment/app/v;->i:Landroidx/fragment/app/k0;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroidx/fragment/app/j0;->p(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->s:Landroidx/lifecycle/y;

    .line 20
    .line 21
    sget-object v1, Landroidx/lifecycle/n;->ON_PAUSE:Landroidx/lifecycle/n;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroidx/lifecycle/y;->f(Landroidx/lifecycle/n;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final onPictureInPictureModeChanged(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->r:Landroidx/fragment/app/d;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/fragment/app/d;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Landroidx/fragment/app/v;

    .line 6
    .line 7
    iget-object v0, v0, Landroidx/fragment/app/v;->i:Landroidx/fragment/app/k0;

    .line 8
    .line 9
    iget-object v0, v0, Landroidx/fragment/app/j0;->c:La1/b;

    .line 10
    .line 11
    invoke-virtual {v0}, La1/b;->w()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Landroidx/fragment/app/s;

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    invoke-virtual {v1, p1}, Landroidx/fragment/app/s;->I(Z)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    return-void
.end method

.method public onPostResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->s:Landroidx/lifecycle/y;

    .line 5
    .line 6
    sget-object v1, Landroidx/lifecycle/n;->ON_RESUME:Landroidx/lifecycle/n;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroidx/lifecycle/y;->f(Landroidx/lifecycle/n;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->r:Landroidx/fragment/app/d;

    .line 12
    .line 13
    iget-object v0, v0, Landroidx/fragment/app/d;->b:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Landroidx/fragment/app/v;

    .line 16
    .line 17
    iget-object v0, v0, Landroidx/fragment/app/v;->i:Landroidx/fragment/app/k0;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    iput-boolean v1, v0, Landroidx/fragment/app/j0;->y:Z

    .line 21
    .line 22
    iput-boolean v1, v0, Landroidx/fragment/app/j0;->z:Z

    .line 23
    .line 24
    iget-object v2, v0, Landroidx/fragment/app/j0;->F:Landroidx/fragment/app/l0;

    .line 25
    .line 26
    iput-boolean v1, v2, Landroidx/fragment/app/l0;->i:Z

    .line 27
    .line 28
    const/4 v1, 0x7

    .line 29
    invoke-virtual {v0, v1}, Landroidx/fragment/app/j0;->p(I)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    invoke-super {p0, p1, p2, p3}, Landroidx/activity/ComponentActivity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Landroidx/fragment/app/FragmentActivity;->r:Landroidx/fragment/app/d;

    .line 9
    .line 10
    iget-object p1, p1, Landroidx/fragment/app/d;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p1, Landroidx/fragment/app/v;

    .line 13
    .line 14
    iget-object p1, p1, Landroidx/fragment/app/v;->i:Landroidx/fragment/app/k0;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroidx/fragment/app/j0;->o()Z

    .line 17
    .line 18
    .line 19
    return v0

    .line 20
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/activity/ComponentActivity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    .line 21
    .line 22
    .line 23
    return v0
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->r:Landroidx/fragment/app/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/d;->b()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3}, Landroidx/activity/ComponentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->r:Landroidx/fragment/app/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/d;->b()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    iput-boolean v1, p0, Landroidx/fragment/app/FragmentActivity;->u:Z

    .line 11
    .line 12
    iget-object v0, v0, Landroidx/fragment/app/d;->b:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Landroidx/fragment/app/v;

    .line 15
    .line 16
    iget-object v0, v0, Landroidx/fragment/app/v;->i:Landroidx/fragment/app/k0;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroidx/fragment/app/j0;->u(Z)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public onStart()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->r:Landroidx/fragment/app/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/d;->b()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-boolean v1, p0, Landroidx/fragment/app/FragmentActivity;->v:Z

    .line 11
    .line 12
    iget-boolean v2, p0, Landroidx/fragment/app/FragmentActivity;->t:Z

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    iget-object v0, v0, Landroidx/fragment/app/d;->b:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Landroidx/fragment/app/v;

    .line 18
    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    iput-boolean v3, p0, Landroidx/fragment/app/FragmentActivity;->t:Z

    .line 22
    .line 23
    iget-object v2, v0, Landroidx/fragment/app/v;->i:Landroidx/fragment/app/k0;

    .line 24
    .line 25
    iput-boolean v1, v2, Landroidx/fragment/app/j0;->y:Z

    .line 26
    .line 27
    iput-boolean v1, v2, Landroidx/fragment/app/j0;->z:Z

    .line 28
    .line 29
    iget-object v4, v2, Landroidx/fragment/app/j0;->F:Landroidx/fragment/app/l0;

    .line 30
    .line 31
    iput-boolean v1, v4, Landroidx/fragment/app/l0;->i:Z

    .line 32
    .line 33
    const/4 v4, 0x4

    .line 34
    invoke-virtual {v2, v4}, Landroidx/fragment/app/j0;->p(I)V

    .line 35
    .line 36
    .line 37
    :cond_0
    iget-object v2, v0, Landroidx/fragment/app/v;->i:Landroidx/fragment/app/k0;

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Landroidx/fragment/app/j0;->u(Z)Z

    .line 40
    .line 41
    .line 42
    iget-object v2, p0, Landroidx/fragment/app/FragmentActivity;->s:Landroidx/lifecycle/y;

    .line 43
    .line 44
    sget-object v3, Landroidx/lifecycle/n;->ON_START:Landroidx/lifecycle/n;

    .line 45
    .line 46
    invoke-virtual {v2, v3}, Landroidx/lifecycle/y;->f(Landroidx/lifecycle/n;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, v0, Landroidx/fragment/app/v;->i:Landroidx/fragment/app/k0;

    .line 50
    .line 51
    iput-boolean v1, v0, Landroidx/fragment/app/j0;->y:Z

    .line 52
    .line 53
    iput-boolean v1, v0, Landroidx/fragment/app/j0;->z:Z

    .line 54
    .line 55
    iget-object v2, v0, Landroidx/fragment/app/j0;->F:Landroidx/fragment/app/l0;

    .line 56
    .line 57
    iput-boolean v1, v2, Landroidx/fragment/app/l0;->i:Z

    .line 58
    .line 59
    const/4 v1, 0x5

    .line 60
    invoke-virtual {v0, v1}, Landroidx/fragment/app/j0;->p(I)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public final onStateNotSaved()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->r:Landroidx/fragment/app/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/d;->b()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onStop()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->v:Z

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->k()Landroidx/fragment/app/k0;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v1}, Landroidx/fragment/app/FragmentActivity;->l(Landroidx/fragment/app/j0;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Landroidx/fragment/app/FragmentActivity;->r:Landroidx/fragment/app/d;

    .line 18
    .line 19
    iget-object v1, v1, Landroidx/fragment/app/d;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v1, Landroidx/fragment/app/v;

    .line 22
    .line 23
    iget-object v1, v1, Landroidx/fragment/app/v;->i:Landroidx/fragment/app/k0;

    .line 24
    .line 25
    iput-boolean v0, v1, Landroidx/fragment/app/j0;->z:Z

    .line 26
    .line 27
    iget-object v2, v1, Landroidx/fragment/app/j0;->F:Landroidx/fragment/app/l0;

    .line 28
    .line 29
    iput-boolean v0, v2, Landroidx/fragment/app/l0;->i:Z

    .line 30
    .line 31
    const/4 v0, 0x4

    .line 32
    invoke-virtual {v1, v0}, Landroidx/fragment/app/j0;->p(I)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->s:Landroidx/lifecycle/y;

    .line 36
    .line 37
    sget-object v1, Landroidx/lifecycle/n;->ON_STOP:Landroidx/lifecycle/n;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroidx/lifecycle/y;->f(Landroidx/lifecycle/n;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method
