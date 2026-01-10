.class public abstract Landroidx/fragment/app/n0;
.super Lb2/a;
.source "MyApplication"


# instance fields
.field public final c:Landroidx/fragment/app/j0;

.field public d:Landroidx/fragment/app/a;

.field public e:Landroidx/fragment/app/s;

.field public f:Z


# direct methods
.method public constructor <init>(Landroidx/fragment/app/j0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lb2/a;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroidx/fragment/app/n0;->d:Landroidx/fragment/app/a;

    .line 6
    .line 7
    iput-object v0, p0, Landroidx/fragment/app/n0;->e:Landroidx/fragment/app/s;

    .line 8
    .line 9
    iput-object p1, p0, Landroidx/fragment/app/n0;->c:Landroidx/fragment/app/j0;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(Landroidx/fragment/app/s;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n0;->d:Landroidx/fragment/app/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/fragment/app/n0;->c:Landroidx/fragment/app/j0;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance v1, Landroidx/fragment/app/a;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/j0;)V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Landroidx/fragment/app/n0;->d:Landroidx/fragment/app/a;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/n0;->d:Landroidx/fragment/app/a;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    iget-object v1, p1, Landroidx/fragment/app/s;->s:Landroidx/fragment/app/j0;

    .line 23
    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    iget-object v2, v0, Landroidx/fragment/app/a;->q:Landroidx/fragment/app/j0;

    .line 27
    .line 28
    if-ne v1, v2, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 32
    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v2, "Cannot detach Fragment attached to a different FragmentManager. Fragment "

    .line 36
    .line 37
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Landroidx/fragment/app/s;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string p1, " is already attached to a FragmentManager."

    .line 48
    .line 49
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw v0

    .line 60
    :cond_2
    :goto_0
    new-instance v1, Landroidx/fragment/app/r0;

    .line 61
    .line 62
    const/4 v2, 0x6

    .line 63
    invoke-direct {v1, v2, p1}, Landroidx/fragment/app/r0;-><init>(ILandroidx/fragment/app/s;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Landroidx/fragment/app/a;->b(Landroidx/fragment/app/r0;)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Landroidx/fragment/app/n0;->e:Landroidx/fragment/app/s;

    .line 70
    .line 71
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-eqz p1, :cond_3

    .line 76
    .line 77
    const/4 p1, 0x0

    .line 78
    iput-object p1, p0, Landroidx/fragment/app/n0;->e:Landroidx/fragment/app/s;

    .line 79
    .line 80
    :cond_3
    return-void
.end method

.method public final b()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n0;->d:Landroidx/fragment/app/a;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-boolean v1, p0, Landroidx/fragment/app/n0;->f:Z

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x1

    .line 11
    :try_start_0
    iput-boolean v2, p0, Landroidx/fragment/app/n0;->f:Z

    .line 12
    .line 13
    iget-boolean v3, v0, Landroidx/fragment/app/a;->g:Z

    .line 14
    .line 15
    if-nez v3, :cond_0

    .line 16
    .line 17
    iput-boolean v1, v0, Landroidx/fragment/app/a;->h:Z

    .line 18
    .line 19
    iget-object v3, v0, Landroidx/fragment/app/a;->q:Landroidx/fragment/app/j0;

    .line 20
    .line 21
    invoke-virtual {v3, v0, v2}, Landroidx/fragment/app/j0;->v(Landroidx/fragment/app/a;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    iput-boolean v1, p0, Landroidx/fragment/app/n0;->f:Z

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 28
    .line 29
    const-string v2, "This transaction is already being added to the back stack"

    .line 30
    .line 31
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    iput-boolean v1, p0, Landroidx/fragment/app/n0;->f:Z

    .line 37
    .line 38
    throw v0

    .line 39
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Landroidx/fragment/app/n0;->d:Landroidx/fragment/app/a;

    .line 41
    .line 42
    :cond_2
    return-void
.end method

.method public e(Landroidx/viewpager/widget/ViewPager;ILandroidx/fragment/app/s;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/fragment/app/n0;->e:Landroidx/fragment/app/s;

    .line 2
    .line 3
    if-eq p3, p1, :cond_3

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    iget-boolean p2, p1, Landroidx/fragment/app/s;->C:Z

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    iput-boolean v0, p1, Landroidx/fragment/app/s;->C:Z

    .line 13
    .line 14
    :cond_0
    invoke-virtual {p1, v0}, Landroidx/fragment/app/s;->P(Z)V

    .line 15
    .line 16
    .line 17
    :cond_1
    iget-boolean p1, p3, Landroidx/fragment/app/s;->C:Z

    .line 18
    .line 19
    const/4 p2, 0x1

    .line 20
    if-eq p1, p2, :cond_2

    .line 21
    .line 22
    iput-boolean p2, p3, Landroidx/fragment/app/s;->C:Z

    .line 23
    .line 24
    :cond_2
    invoke-virtual {p3, p2}, Landroidx/fragment/app/s;->P(Z)V

    .line 25
    .line 26
    .line 27
    iput-object p3, p0, Landroidx/fragment/app/n0;->e:Landroidx/fragment/app/s;

    .line 28
    .line 29
    :cond_3
    return-void
.end method

.method public final g(Landroidx/viewpager/widget/ViewPager;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, -0x1

    .line 6
    if-eq p1, v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "ViewPager with adapter "

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, " requires a view id"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p1
.end method

.method public abstract h(I)Landroidx/fragment/app/s;
.end method
