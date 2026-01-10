.class public abstract Landroidx/fragment/app/j0;
.super Ljava/lang/Object;
.source "MyApplication"


# instance fields
.field public A:Z

.field public B:Z

.field public C:Ljava/util/ArrayList;

.field public D:Ljava/util/ArrayList;

.field public E:Ljava/util/ArrayList;

.field public F:Landroidx/fragment/app/l0;

.field public final G:Landroidx/fragment/app/e;

.field public final a:Ljava/util/ArrayList;

.field public b:Z

.field public final c:La1/b;

.field public d:Ljava/util/ArrayList;

.field public e:Ljava/util/ArrayList;

.field public final f:Landroidx/fragment/app/y;

.field public g:La/q;

.field public final h:Landroidx/fragment/app/b0;

.field public final i:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final j:Ljava/util/Map;

.field public final k:La7/f;

.field public final l:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public m:I

.field public n:Landroidx/fragment/app/v;

.field public o:Lo9/e;

.field public p:Landroidx/fragment/app/s;

.field public q:Landroidx/fragment/app/s;

.field public final r:Landroidx/fragment/app/d0;

.field public final s:Landroidx/fragment/app/c0;

.field public t:La7/f;

.field public u:La7/f;

.field public v:La7/f;

.field public w:Ljava/util/ArrayDeque;

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/fragment/app/j0;->a:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, La1/b;

    .line 12
    .line 13
    const/4 v1, 0x7

    .line 14
    invoke-direct {v0, v1}, La1/b;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Landroidx/fragment/app/j0;->c:La1/b;

    .line 18
    .line 19
    new-instance v0, Landroidx/fragment/app/y;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Landroidx/fragment/app/y;-><init>(Landroidx/fragment/app/j0;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Landroidx/fragment/app/j0;->f:Landroidx/fragment/app/y;

    .line 25
    .line 26
    new-instance v0, Landroidx/fragment/app/b0;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Landroidx/fragment/app/b0;-><init>(Landroidx/fragment/app/j0;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Landroidx/fragment/app/j0;->h:Landroidx/fragment/app/b0;

    .line 32
    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Landroidx/fragment/app/j0;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 39
    .line 40
    new-instance v0, Ljava/util/HashMap;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iput-object v0, p0, Landroidx/fragment/app/j0;->j:Ljava/util/Map;

    .line 50
    .line 51
    new-instance v0, Ljava/util/HashMap;

    .line 52
    .line 53
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 57
    .line 58
    .line 59
    new-instance v0, Ljava/util/HashMap;

    .line 60
    .line 61
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 65
    .line 66
    .line 67
    new-instance v0, La7/f;

    .line 68
    .line 69
    invoke-direct {v0, p0}, La7/f;-><init>(Landroidx/fragment/app/j0;)V

    .line 70
    .line 71
    .line 72
    iput-object v0, p0, Landroidx/fragment/app/j0;->k:La7/f;

    .line 73
    .line 74
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 75
    .line 76
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 77
    .line 78
    .line 79
    iput-object v0, p0, Landroidx/fragment/app/j0;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 80
    .line 81
    const/4 v0, -0x1

    .line 82
    iput v0, p0, Landroidx/fragment/app/j0;->m:I

    .line 83
    .line 84
    new-instance v0, Landroidx/fragment/app/d0;

    .line 85
    .line 86
    invoke-direct {v0, p0}, Landroidx/fragment/app/d0;-><init>(Landroidx/fragment/app/j0;)V

    .line 87
    .line 88
    .line 89
    iput-object v0, p0, Landroidx/fragment/app/j0;->r:Landroidx/fragment/app/d0;

    .line 90
    .line 91
    new-instance v0, Landroidx/fragment/app/c0;

    .line 92
    .line 93
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 94
    .line 95
    .line 96
    iput-object v0, p0, Landroidx/fragment/app/j0;->s:Landroidx/fragment/app/c0;

    .line 97
    .line 98
    new-instance v0, Ljava/util/ArrayDeque;

    .line 99
    .line 100
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 101
    .line 102
    .line 103
    iput-object v0, p0, Landroidx/fragment/app/j0;->w:Ljava/util/ArrayDeque;

    .line 104
    .line 105
    new-instance v0, Landroidx/fragment/app/e;

    .line 106
    .line 107
    const/4 v1, 0x2

    .line 108
    invoke-direct {v0, v1, p0}, Landroidx/fragment/app/e;-><init>(ILjava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    iput-object v0, p0, Landroidx/fragment/app/j0;->G:Landroidx/fragment/app/e;

    .line 112
    .line 113
    return-void
.end method

.method public static F(Landroidx/fragment/app/s;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Landroidx/fragment/app/s;->u:Landroidx/fragment/app/k0;

    .line 5
    .line 6
    iget-object p0, p0, Landroidx/fragment/app/j0;->c:La1/b;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, La1/b;->c:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p0, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Landroidx/fragment/app/p0;

    .line 39
    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    iget-object v1, v1, Landroidx/fragment/app/p0;->c:Landroidx/fragment/app/s;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const/4 v1, 0x0

    .line 49
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    const/4 v0, 0x0

    .line 58
    const/4 v1, 0x0

    .line 59
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_4

    .line 64
    .line 65
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    check-cast v2, Landroidx/fragment/app/s;

    .line 70
    .line 71
    if-eqz v2, :cond_3

    .line 72
    .line 73
    invoke-static {v2}, Landroidx/fragment/app/j0;->F(Landroidx/fragment/app/s;)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    :cond_3
    if-eqz v1, :cond_2

    .line 78
    .line 79
    const/4 v0, 0x1

    .line 80
    :cond_4
    return v0
.end method

.method public static G(Landroidx/fragment/app/s;)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-boolean v1, p0, Landroidx/fragment/app/s;->C:Z

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/fragment/app/s;->s:Landroidx/fragment/app/j0;

    .line 10
    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    iget-object p0, p0, Landroidx/fragment/app/s;->v:Landroidx/fragment/app/s;

    .line 14
    .line 15
    invoke-static {p0}, Landroidx/fragment/app/j0;->G(Landroidx/fragment/app/s;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 v0, 0x0

    .line 23
    :cond_2
    :goto_0
    return v0
.end method

.method public static H(Landroidx/fragment/app/s;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/s;->s:Landroidx/fragment/app/j0;

    .line 6
    .line 7
    iget-object v2, v1, Landroidx/fragment/app/j0;->q:Landroidx/fragment/app/s;

    .line 8
    .line 9
    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    iget-object p0, v1, Landroidx/fragment/app/j0;->p:Landroidx/fragment/app/s;

    .line 16
    .line 17
    invoke-static {p0}, Landroidx/fragment/app/j0;->H(Landroidx/fragment/app/s;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v0, 0x0

    .line 25
    :goto_0
    return v0
.end method

.method public static W(Landroidx/fragment/app/s;)V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    const-string v1, "FragmentManager"

    .line 3
    .line 4
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "show: "

    .line 13
    .line 14
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-boolean v0, p0, Landroidx/fragment/app/s;->z:Z

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Landroidx/fragment/app/s;->z:Z

    .line 33
    .line 34
    iget-boolean v0, p0, Landroidx/fragment/app/s;->J:Z

    .line 35
    .line 36
    xor-int/lit8 v0, v0, 0x1

    .line 37
    .line 38
    iput-boolean v0, p0, Landroidx/fragment/app/s;->J:Z

    .line 39
    .line 40
    :cond_1
    return-void
.end method


# virtual methods
.method public final A()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/j0;->e()Ljava/util/HashSet;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroidx/fragment/app/i;

    .line 20
    .line 21
    iget-boolean v2, v1, Landroidx/fragment/app/i;->e:Z

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    iput-boolean v2, v1, Landroidx/fragment/app/i;->e:Z

    .line 27
    .line 28
    invoke-virtual {v1}, Landroidx/fragment/app/i;->c()V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    return-void
.end method

.method public final B(Landroidx/fragment/app/s;)Landroid/view/ViewGroup;
    .locals 2

    .line 1
    iget-object v0, p1, Landroidx/fragment/app/s;->E:Landroid/view/ViewGroup;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    iget v0, p1, Landroidx/fragment/app/s;->x:I

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-gtz v0, :cond_1

    .line 10
    .line 11
    return-object v1

    .line 12
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/j0;->o:Lo9/e;

    .line 13
    .line 14
    invoke-virtual {v0}, Lo9/e;->C()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    iget-object v0, p0, Landroidx/fragment/app/j0;->o:Lo9/e;

    .line 21
    .line 22
    iget p1, p1, Landroidx/fragment/app/s;->x:I

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Lo9/e;->B(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    instance-of v0, p1, Landroid/view/ViewGroup;

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    check-cast p1, Landroid/view/ViewGroup;

    .line 33
    .line 34
    return-object p1

    .line 35
    :cond_2
    return-object v1
.end method

.method public final C()Landroidx/fragment/app/d0;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/j0;->p:Landroidx/fragment/app/s;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/fragment/app/s;->s:Landroidx/fragment/app/j0;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/fragment/app/j0;->C()Landroidx/fragment/app/d0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/j0;->r:Landroidx/fragment/app/d0;

    .line 13
    .line 14
    return-object v0
.end method

.method public final D()Landroidx/fragment/app/c0;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/j0;->p:Landroidx/fragment/app/s;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/fragment/app/s;->s:Landroidx/fragment/app/j0;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/fragment/app/j0;->D()Landroidx/fragment/app/c0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/j0;->s:Landroidx/fragment/app/c0;

    .line 13
    .line 14
    return-object v0
.end method

.method public final E(Landroidx/fragment/app/s;)V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    const-string v1, "FragmentManager"

    .line 3
    .line 4
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "hide: "

    .line 13
    .line 14
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-boolean v0, p1, Landroidx/fragment/app/s;->z:Z

    .line 28
    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p1, Landroidx/fragment/app/s;->z:Z

    .line 33
    .line 34
    iget-boolean v1, p1, Landroidx/fragment/app/s;->J:Z

    .line 35
    .line 36
    xor-int/2addr v0, v1

    .line 37
    iput-boolean v0, p1, Landroidx/fragment/app/s;->J:Z

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Landroidx/fragment/app/j0;->V(Landroidx/fragment/app/s;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    return-void
.end method

.method public final I()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/j0;->y:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Landroidx/fragment/app/j0;->z:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    :goto_1
    return v0
.end method

.method public final J(IZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/j0;->n:Landroidx/fragment/app/v;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 10
    .line 11
    const-string p2, "No activity"

    .line 12
    .line 13
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw p1

    .line 17
    :cond_1
    :goto_0
    if-nez p2, :cond_2

    .line 18
    .line 19
    iget p2, p0, Landroidx/fragment/app/j0;->m:I

    .line 20
    .line 21
    if-ne p1, p2, :cond_2

    .line 22
    .line 23
    return-void

    .line 24
    :cond_2
    iput p1, p0, Landroidx/fragment/app/j0;->m:I

    .line 25
    .line 26
    iget-object p1, p0, Landroidx/fragment/app/j0;->c:La1/b;

    .line 27
    .line 28
    iget-object p2, p1, La1/b;->b:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p2, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    iget-object v1, p1, La1/b;->c:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v1, Ljava/util/HashMap;

    .line 43
    .line 44
    if-eqz v0, :cond_4

    .line 45
    .line 46
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Landroidx/fragment/app/s;

    .line 51
    .line 52
    iget-object v0, v0, Landroidx/fragment/app/s;->f:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Landroidx/fragment/app/p0;

    .line 59
    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    invoke-virtual {v0}, Landroidx/fragment/app/p0;->k()V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_4
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    :cond_5
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_7

    .line 79
    .line 80
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Landroidx/fragment/app/p0;

    .line 85
    .line 86
    if-eqz v0, :cond_5

    .line 87
    .line 88
    invoke-virtual {v0}, Landroidx/fragment/app/p0;->k()V

    .line 89
    .line 90
    .line 91
    iget-object v1, v0, Landroidx/fragment/app/p0;->c:Landroidx/fragment/app/s;

    .line 92
    .line 93
    iget-boolean v2, v1, Landroidx/fragment/app/s;->m:Z

    .line 94
    .line 95
    if-eqz v2, :cond_5

    .line 96
    .line 97
    iget v1, v1, Landroidx/fragment/app/s;->r:I

    .line 98
    .line 99
    if-lez v1, :cond_6

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_6
    invoke-virtual {p1, v0}, La1/b;->A(Landroidx/fragment/app/p0;)V

    .line 103
    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/j0;->X()V

    .line 107
    .line 108
    .line 109
    iget-boolean p1, p0, Landroidx/fragment/app/j0;->x:Z

    .line 110
    .line 111
    if-eqz p1, :cond_8

    .line 112
    .line 113
    iget-object p1, p0, Landroidx/fragment/app/j0;->n:Landroidx/fragment/app/v;

    .line 114
    .line 115
    if-eqz p1, :cond_8

    .line 116
    .line 117
    iget p2, p0, Landroidx/fragment/app/j0;->m:I

    .line 118
    .line 119
    const/4 v0, 0x7

    .line 120
    if-ne p2, v0, :cond_8

    .line 121
    .line 122
    iget-object p1, p1, Landroidx/fragment/app/v;->j:Landroidx/fragment/app/FragmentActivity;

    .line 123
    .line 124
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->g()V

    .line 125
    .line 126
    .line 127
    const/4 p1, 0x0

    .line 128
    iput-boolean p1, p0, Landroidx/fragment/app/j0;->x:Z

    .line 129
    .line 130
    :cond_8
    return-void
.end method

.method public final K()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/j0;->n:Landroidx/fragment/app/v;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Landroidx/fragment/app/j0;->y:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Landroidx/fragment/app/j0;->z:Z

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/fragment/app/j0;->F:Landroidx/fragment/app/l0;

    .line 12
    .line 13
    iput-boolean v0, v1, Landroidx/fragment/app/l0;->i:Z

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/fragment/app/j0;->c:La1/b;

    .line 16
    .line 17
    invoke-virtual {v0}, La1/b;->w()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Landroidx/fragment/app/s;

    .line 36
    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    iget-object v1, v1, Landroidx/fragment/app/s;->u:Landroidx/fragment/app/k0;

    .line 40
    .line 41
    invoke-virtual {v1}, Landroidx/fragment/app/j0;->K()V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    return-void
.end method

.method public final L()Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/fragment/app/j0;->u(Z)Z

    .line 3
    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {p0, v1}, Landroidx/fragment/app/j0;->t(Z)V

    .line 7
    .line 8
    .line 9
    iget-object v2, p0, Landroidx/fragment/app/j0;->q:Landroidx/fragment/app/s;

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {v2}, Landroidx/fragment/app/s;->i()Landroidx/fragment/app/j0;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Landroidx/fragment/app/j0;->L()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    iget-object v2, p0, Landroidx/fragment/app/j0;->C:Ljava/util/ArrayList;

    .line 25
    .line 26
    iget-object v3, p0, Landroidx/fragment/app/j0;->D:Ljava/util/ArrayList;

    .line 27
    .line 28
    const/4 v4, -0x1

    .line 29
    invoke-virtual {p0, v2, v3, v4, v0}, Landroidx/fragment/app/j0;->M(Ljava/util/ArrayList;Ljava/util/ArrayList;II)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    iput-boolean v1, p0, Landroidx/fragment/app/j0;->b:Z

    .line 36
    .line 37
    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/j0;->C:Ljava/util/ArrayList;

    .line 38
    .line 39
    iget-object v2, p0, Landroidx/fragment/app/j0;->D:Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/j0;->O(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Landroidx/fragment/app/j0;->d()V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception v0

    .line 49
    invoke-virtual {p0}, Landroidx/fragment/app/j0;->d()V

    .line 50
    .line 51
    .line 52
    throw v0

    .line 53
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/j0;->Z()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Landroidx/fragment/app/j0;->q()V

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Landroidx/fragment/app/j0;->c:La1/b;

    .line 60
    .line 61
    iget-object v1, v1, La1/b;->c:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v1, Ljava/util/HashMap;

    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    const/4 v2, 0x0

    .line 70
    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-interface {v1, v2}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 75
    .line 76
    .line 77
    move v1, v0

    .line 78
    :goto_1
    return v1
.end method

.method public final M(Ljava/util/ArrayList;Ljava/util/ArrayList;II)Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/j0;->d:Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const/4 v2, 0x1

    .line 8
    if-gez p3, :cond_2

    .line 9
    .line 10
    and-int/lit8 v3, p4, 0x1

    .line 11
    .line 12
    if-nez v3, :cond_2

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result p3

    .line 18
    sub-int/2addr p3, v2

    .line 19
    if-gez p3, :cond_1

    .line 20
    .line 21
    return v1

    .line 22
    :cond_1
    iget-object p4, p0, Landroidx/fragment/app/j0;->d:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p3

    .line 28
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 32
    .line 33
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    goto :goto_4

    .line 37
    :cond_2
    if-ltz p3, :cond_6

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    sub-int/2addr v0, v2

    .line 44
    :goto_0
    if-ltz v0, :cond_4

    .line 45
    .line 46
    iget-object v3, p0, Landroidx/fragment/app/j0;->d:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Landroidx/fragment/app/a;

    .line 53
    .line 54
    if-ltz p3, :cond_3

    .line 55
    .line 56
    iget v3, v3, Landroidx/fragment/app/a;->s:I

    .line 57
    .line 58
    if-ne p3, v3, :cond_3

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_3
    add-int/lit8 v0, v0, -0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_4
    :goto_1
    if-gez v0, :cond_5

    .line 65
    .line 66
    return v1

    .line 67
    :cond_5
    and-int/2addr p4, v2

    .line 68
    if-eqz p4, :cond_7

    .line 69
    .line 70
    :goto_2
    add-int/lit8 v0, v0, -0x1

    .line 71
    .line 72
    if-ltz v0, :cond_7

    .line 73
    .line 74
    iget-object p4, p0, Landroidx/fragment/app/j0;->d:Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p4

    .line 80
    check-cast p4, Landroidx/fragment/app/a;

    .line 81
    .line 82
    if-ltz p3, :cond_7

    .line 83
    .line 84
    iget p4, p4, Landroidx/fragment/app/a;->s:I

    .line 85
    .line 86
    if-ne p3, p4, :cond_7

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_6
    const/4 v0, -0x1

    .line 90
    :cond_7
    iget-object p3, p0, Landroidx/fragment/app/j0;->d:Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 93
    .line 94
    .line 95
    move-result p3

    .line 96
    sub-int/2addr p3, v2

    .line 97
    if-ne v0, p3, :cond_8

    .line 98
    .line 99
    return v1

    .line 100
    :cond_8
    iget-object p3, p0, Landroidx/fragment/app/j0;->d:Ljava/util/ArrayList;

    .line 101
    .line 102
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 103
    .line 104
    .line 105
    move-result p3

    .line 106
    sub-int/2addr p3, v2

    .line 107
    :goto_3
    if-le p3, v0, :cond_9

    .line 108
    .line 109
    iget-object p4, p0, Landroidx/fragment/app/j0;->d:Ljava/util/ArrayList;

    .line 110
    .line 111
    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p4

    .line 115
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 119
    .line 120
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    add-int/lit8 p3, p3, -0x1

    .line 124
    .line 125
    goto :goto_3

    .line 126
    :cond_9
    :goto_4
    return v2
.end method

.method public final N(Landroidx/fragment/app/s;)V
    .locals 4

    .line 1
    const-string v0, "FragmentManager"

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "remove: "

    .line 13
    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v2, " nesting="

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget v2, p1, Landroidx/fragment/app/s;->r:I

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    :cond_0
    iget v0, p1, Landroidx/fragment/app/s;->r:I

    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    const/4 v2, 0x1

    .line 41
    if-lez v0, :cond_1

    .line 42
    .line 43
    const/4 v0, 0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 v0, 0x0

    .line 46
    :goto_0
    iget-boolean v3, p1, Landroidx/fragment/app/s;->A:Z

    .line 47
    .line 48
    if-eqz v3, :cond_2

    .line 49
    .line 50
    if-nez v0, :cond_4

    .line 51
    .line 52
    :cond_2
    iget-object v0, p0, Landroidx/fragment/app/j0;->c:La1/b;

    .line 53
    .line 54
    iget-object v3, v0, La1/b;->b:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v3, Ljava/util/ArrayList;

    .line 57
    .line 58
    monitor-enter v3

    .line 59
    :try_start_0
    iget-object v0, v0, La1/b;->b:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v0, Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    iput-boolean v1, p1, Landroidx/fragment/app/s;->l:Z

    .line 68
    .line 69
    invoke-static {p1}, Landroidx/fragment/app/j0;->F(Landroidx/fragment/app/s;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_3

    .line 74
    .line 75
    iput-boolean v2, p0, Landroidx/fragment/app/j0;->x:Z

    .line 76
    .line 77
    :cond_3
    iput-boolean v2, p1, Landroidx/fragment/app/s;->m:Z

    .line 78
    .line 79
    invoke-virtual {p0, p1}, Landroidx/fragment/app/j0;->V(Landroidx/fragment/app/s;)V

    .line 80
    .line 81
    .line 82
    :cond_4
    return-void

    .line 83
    :catchall_0
    move-exception p1

    .line 84
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    throw p1
.end method

.method public final O(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-ne v0, v1, :cond_6

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x0

    .line 23
    const/4 v2, 0x0

    .line 24
    :goto_0
    if-ge v1, v0, :cond_4

    .line 25
    .line 26
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Landroidx/fragment/app/a;

    .line 31
    .line 32
    iget-boolean v3, v3, Landroidx/fragment/app/a;->p:Z

    .line 33
    .line 34
    if-nez v3, :cond_3

    .line 35
    .line 36
    if-eq v2, v1, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0, p1, p2, v2, v1}, Landroidx/fragment/app/j0;->w(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 39
    .line 40
    .line 41
    :cond_1
    add-int/lit8 v2, v1, 0x1

    .line 42
    .line 43
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Ljava/lang/Boolean;

    .line 48
    .line 49
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_2

    .line 54
    .line 55
    :goto_1
    if-ge v2, v0, :cond_2

    .line 56
    .line 57
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    check-cast v3, Ljava/lang/Boolean;

    .line 62
    .line 63
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-eqz v3, :cond_2

    .line 68
    .line 69
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    check-cast v3, Landroidx/fragment/app/a;

    .line 74
    .line 75
    iget-boolean v3, v3, Landroidx/fragment/app/a;->p:Z

    .line 76
    .line 77
    if-nez v3, :cond_2

    .line 78
    .line 79
    add-int/lit8 v2, v2, 0x1

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_2
    invoke-virtual {p0, p1, p2, v1, v2}, Landroidx/fragment/app/j0;->w(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 83
    .line 84
    .line 85
    add-int/lit8 v1, v2, -0x1

    .line 86
    .line 87
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_4
    if-eq v2, v0, :cond_5

    .line 91
    .line 92
    invoke-virtual {p0, p1, p2, v2, v0}, Landroidx/fragment/app/j0;->w(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 93
    .line 94
    .line 95
    :cond_5
    return-void

    .line 96
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 97
    .line 98
    const-string p2, "Internal error with the back stack records"

    .line 99
    .line 100
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw p1
.end method

.method public final P(Landroid/os/Parcelable;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    move-object/from16 v1, p1

    .line 7
    .line 8
    check-cast v1, Landroidx/fragment/app/FragmentManagerState;

    .line 9
    .line 10
    iget-object v2, v1, Landroidx/fragment/app/FragmentManagerState;->a:Ljava/util/ArrayList;

    .line 11
    .line 12
    if-nez v2, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    iget-object v2, v0, Landroidx/fragment/app/j0;->c:La1/b;

    .line 16
    .line 17
    iget-object v3, v2, La1/b;->c:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v3, Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 22
    .line 23
    .line 24
    iget-object v3, v1, Landroidx/fragment/app/FragmentManagerState;->a:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    const/4 v5, 0x2

    .line 35
    iget-object v6, v0, Landroidx/fragment/app/j0;->k:La7/f;

    .line 36
    .line 37
    const-string v7, "): "

    .line 38
    .line 39
    const-string v8, "FragmentManager"

    .line 40
    .line 41
    if-eqz v4, :cond_6

    .line 42
    .line 43
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    move-object v14, v4

    .line 48
    check-cast v14, Landroidx/fragment/app/FragmentState;

    .line 49
    .line 50
    if-eqz v14, :cond_2

    .line 51
    .line 52
    iget-object v4, v0, Landroidx/fragment/app/j0;->F:Landroidx/fragment/app/l0;

    .line 53
    .line 54
    iget-object v4, v4, Landroidx/fragment/app/l0;->d:Ljava/util/HashMap;

    .line 55
    .line 56
    iget-object v9, v14, Landroidx/fragment/app/FragmentState;->b:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v4, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    check-cast v4, Landroidx/fragment/app/s;

    .line 63
    .line 64
    if-eqz v4, :cond_4

    .line 65
    .line 66
    invoke-static {v8, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 67
    .line 68
    .line 69
    move-result v9

    .line 70
    if-eqz v9, :cond_3

    .line 71
    .line 72
    new-instance v9, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v10, "restoreSaveState: re-attaching retained "

    .line 75
    .line 76
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v9

    .line 86
    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    :cond_3
    new-instance v9, Landroidx/fragment/app/p0;

    .line 90
    .line 91
    invoke-direct {v9, v6, v2, v4, v14}, Landroidx/fragment/app/p0;-><init>(La7/f;La1/b;Landroidx/fragment/app/s;Landroidx/fragment/app/FragmentState;)V

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_4
    new-instance v4, Landroidx/fragment/app/p0;

    .line 96
    .line 97
    iget-object v6, v0, Landroidx/fragment/app/j0;->n:Landroidx/fragment/app/v;

    .line 98
    .line 99
    iget-object v6, v6, Landroidx/fragment/app/v;->g:Landroidx/fragment/app/FragmentActivity;

    .line 100
    .line 101
    invoke-virtual {v6}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 102
    .line 103
    .line 104
    move-result-object v12

    .line 105
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/j0;->C()Landroidx/fragment/app/d0;

    .line 106
    .line 107
    .line 108
    move-result-object v13

    .line 109
    iget-object v10, v0, Landroidx/fragment/app/j0;->k:La7/f;

    .line 110
    .line 111
    iget-object v11, v0, Landroidx/fragment/app/j0;->c:La1/b;

    .line 112
    .line 113
    move-object v9, v4

    .line 114
    invoke-direct/range {v9 .. v14}, Landroidx/fragment/app/p0;-><init>(La7/f;La1/b;Ljava/lang/ClassLoader;Landroidx/fragment/app/d0;Landroidx/fragment/app/FragmentState;)V

    .line 115
    .line 116
    .line 117
    :goto_1
    iget-object v4, v9, Landroidx/fragment/app/p0;->c:Landroidx/fragment/app/s;

    .line 118
    .line 119
    iput-object v0, v4, Landroidx/fragment/app/s;->s:Landroidx/fragment/app/j0;

    .line 120
    .line 121
    invoke-static {v8, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 122
    .line 123
    .line 124
    move-result v5

    .line 125
    if-eqz v5, :cond_5

    .line 126
    .line 127
    new-instance v5, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    const-string v6, "restoreSaveState: active ("

    .line 130
    .line 131
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    iget-object v6, v4, Landroidx/fragment/app/s;->f:Ljava/lang/String;

    .line 135
    .line 136
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    invoke-static {v8, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .line 151
    .line 152
    :cond_5
    iget-object v4, v0, Landroidx/fragment/app/j0;->n:Landroidx/fragment/app/v;

    .line 153
    .line 154
    iget-object v4, v4, Landroidx/fragment/app/v;->g:Landroidx/fragment/app/FragmentActivity;

    .line 155
    .line 156
    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    invoke-virtual {v9, v4}, Landroidx/fragment/app/p0;->m(Ljava/lang/ClassLoader;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2, v9}, La1/b;->z(Landroidx/fragment/app/p0;)V

    .line 164
    .line 165
    .line 166
    iget v4, v0, Landroidx/fragment/app/j0;->m:I

    .line 167
    .line 168
    iput v4, v9, Landroidx/fragment/app/p0;->e:I

    .line 169
    .line 170
    goto/16 :goto_0

    .line 171
    .line 172
    :cond_6
    iget-object v3, v0, Landroidx/fragment/app/j0;->F:Landroidx/fragment/app/l0;

    .line 173
    .line 174
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 175
    .line 176
    .line 177
    new-instance v4, Ljava/util/ArrayList;

    .line 178
    .line 179
    iget-object v3, v3, Landroidx/fragment/app/l0;->d:Ljava/util/HashMap;

    .line 180
    .line 181
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    :cond_7
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 193
    .line 194
    .line 195
    move-result v4

    .line 196
    const/4 v10, 0x1

    .line 197
    if-eqz v4, :cond_a

    .line 198
    .line 199
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v4

    .line 203
    check-cast v4, Landroidx/fragment/app/s;

    .line 204
    .line 205
    iget-object v11, v4, Landroidx/fragment/app/s;->f:Ljava/lang/String;

    .line 206
    .line 207
    iget-object v12, v2, La1/b;->c:Ljava/lang/Object;

    .line 208
    .line 209
    check-cast v12, Ljava/util/HashMap;

    .line 210
    .line 211
    invoke-virtual {v12, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v11

    .line 215
    if-eqz v11, :cond_8

    .line 216
    .line 217
    const/4 v9, 0x1

    .line 218
    goto :goto_3

    .line 219
    :cond_8
    const/4 v9, 0x0

    .line 220
    :goto_3
    if-nez v9, :cond_7

    .line 221
    .line 222
    invoke-static {v8, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 223
    .line 224
    .line 225
    move-result v9

    .line 226
    if-eqz v9, :cond_9

    .line 227
    .line 228
    new-instance v9, Ljava/lang/StringBuilder;

    .line 229
    .line 230
    const-string v11, "Discarding retained Fragment "

    .line 231
    .line 232
    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    const-string v11, " that was not found in the set of active Fragments "

    .line 239
    .line 240
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    iget-object v11, v1, Landroidx/fragment/app/FragmentManagerState;->a:Ljava/util/ArrayList;

    .line 244
    .line 245
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v9

    .line 252
    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    .line 254
    .line 255
    :cond_9
    iget-object v9, v0, Landroidx/fragment/app/j0;->F:Landroidx/fragment/app/l0;

    .line 256
    .line 257
    invoke-virtual {v9, v4}, Landroidx/fragment/app/l0;->c(Landroidx/fragment/app/s;)V

    .line 258
    .line 259
    .line 260
    iput-object v0, v4, Landroidx/fragment/app/s;->s:Landroidx/fragment/app/j0;

    .line 261
    .line 262
    new-instance v9, Landroidx/fragment/app/p0;

    .line 263
    .line 264
    invoke-direct {v9, v6, v2, v4}, Landroidx/fragment/app/p0;-><init>(La7/f;La1/b;Landroidx/fragment/app/s;)V

    .line 265
    .line 266
    .line 267
    iput v10, v9, Landroidx/fragment/app/p0;->e:I

    .line 268
    .line 269
    invoke-virtual {v9}, Landroidx/fragment/app/p0;->k()V

    .line 270
    .line 271
    .line 272
    iput-boolean v10, v4, Landroidx/fragment/app/s;->m:Z

    .line 273
    .line 274
    invoke-virtual {v9}, Landroidx/fragment/app/p0;->k()V

    .line 275
    .line 276
    .line 277
    goto :goto_2

    .line 278
    :cond_a
    iget-object v3, v1, Landroidx/fragment/app/FragmentManagerState;->b:Ljava/util/ArrayList;

    .line 279
    .line 280
    iget-object v4, v2, La1/b;->b:Ljava/lang/Object;

    .line 281
    .line 282
    check-cast v4, Ljava/util/ArrayList;

    .line 283
    .line 284
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 285
    .line 286
    .line 287
    if-eqz v3, :cond_d

    .line 288
    .line 289
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 290
    .line 291
    .line 292
    move-result-object v3

    .line 293
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 294
    .line 295
    .line 296
    move-result v4

    .line 297
    if-eqz v4, :cond_d

    .line 298
    .line 299
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object v4

    .line 303
    check-cast v4, Ljava/lang/String;

    .line 304
    .line 305
    invoke-virtual {v2, v4}, La1/b;->l(Ljava/lang/String;)Landroidx/fragment/app/s;

    .line 306
    .line 307
    .line 308
    move-result-object v6

    .line 309
    if-eqz v6, :cond_c

    .line 310
    .line 311
    invoke-static {v8, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 312
    .line 313
    .line 314
    move-result v11

    .line 315
    if-eqz v11, :cond_b

    .line 316
    .line 317
    new-instance v11, Ljava/lang/StringBuilder;

    .line 318
    .line 319
    const-string v12, "restoreSaveState: added ("

    .line 320
    .line 321
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v4

    .line 337
    invoke-static {v8, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    .line 339
    .line 340
    :cond_b
    invoke-virtual {v2, v6}, La1/b;->f(Landroidx/fragment/app/s;)V

    .line 341
    .line 342
    .line 343
    goto :goto_4

    .line 344
    :cond_c
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 345
    .line 346
    const-string v2, "No instantiated fragment for ("

    .line 347
    .line 348
    const-string v3, ")"

    .line 349
    .line 350
    invoke-static {v2, v4, v3}, La/e;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v2

    .line 354
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    throw v1

    .line 358
    :cond_d
    iget-object v3, v1, Landroidx/fragment/app/FragmentManagerState;->c:[Landroidx/fragment/app/BackStackState;

    .line 359
    .line 360
    const/4 v4, 0x0

    .line 361
    if-eqz v3, :cond_13

    .line 362
    .line 363
    new-instance v3, Ljava/util/ArrayList;

    .line 364
    .line 365
    iget-object v6, v1, Landroidx/fragment/app/FragmentManagerState;->c:[Landroidx/fragment/app/BackStackState;

    .line 366
    .line 367
    array-length v6, v6

    .line 368
    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 369
    .line 370
    .line 371
    iput-object v3, v0, Landroidx/fragment/app/j0;->d:Ljava/util/ArrayList;

    .line 372
    .line 373
    const/4 v3, 0x0

    .line 374
    :goto_5
    iget-object v6, v1, Landroidx/fragment/app/FragmentManagerState;->c:[Landroidx/fragment/app/BackStackState;

    .line 375
    .line 376
    array-length v11, v6

    .line 377
    if-ge v3, v11, :cond_12

    .line 378
    .line 379
    aget-object v6, v6, v3

    .line 380
    .line 381
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 382
    .line 383
    .line 384
    new-instance v11, Landroidx/fragment/app/a;

    .line 385
    .line 386
    invoke-direct {v11, v0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/j0;)V

    .line 387
    .line 388
    .line 389
    const/4 v12, 0x0

    .line 390
    const/4 v13, 0x0

    .line 391
    :goto_6
    iget-object v14, v6, Landroidx/fragment/app/BackStackState;->a:[I

    .line 392
    .line 393
    array-length v15, v14

    .line 394
    if-ge v12, v15, :cond_10

    .line 395
    .line 396
    new-instance v15, Landroidx/fragment/app/r0;

    .line 397
    .line 398
    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    .line 399
    .line 400
    .line 401
    add-int/lit8 v16, v12, 0x1

    .line 402
    .line 403
    aget v9, v14, v12

    .line 404
    .line 405
    iput v9, v15, Landroidx/fragment/app/r0;->a:I

    .line 406
    .line 407
    invoke-static {v8, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 408
    .line 409
    .line 410
    move-result v9

    .line 411
    if-eqz v9, :cond_e

    .line 412
    .line 413
    new-instance v9, Ljava/lang/StringBuilder;

    .line 414
    .line 415
    const-string v5, "Instantiate "

    .line 416
    .line 417
    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 418
    .line 419
    .line 420
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    const-string v5, " op #"

    .line 424
    .line 425
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    .line 427
    .line 428
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 429
    .line 430
    .line 431
    const-string v5, " base fragment #"

    .line 432
    .line 433
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    .line 435
    .line 436
    aget v5, v14, v16

    .line 437
    .line 438
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v5

    .line 445
    invoke-static {v8, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    .line 447
    .line 448
    :cond_e
    iget-object v5, v6, Landroidx/fragment/app/BackStackState;->b:Ljava/util/ArrayList;

    .line 449
    .line 450
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 451
    .line 452
    .line 453
    move-result-object v5

    .line 454
    check-cast v5, Ljava/lang/String;

    .line 455
    .line 456
    if-eqz v5, :cond_f

    .line 457
    .line 458
    invoke-virtual {v2, v5}, La1/b;->l(Ljava/lang/String;)Landroidx/fragment/app/s;

    .line 459
    .line 460
    .line 461
    move-result-object v5

    .line 462
    iput-object v5, v15, Landroidx/fragment/app/r0;->b:Landroidx/fragment/app/s;

    .line 463
    .line 464
    goto :goto_7

    .line 465
    :cond_f
    iput-object v4, v15, Landroidx/fragment/app/r0;->b:Landroidx/fragment/app/s;

    .line 466
    .line 467
    :goto_7
    invoke-static {}, Landroidx/lifecycle/o;->values()[Landroidx/lifecycle/o;

    .line 468
    .line 469
    .line 470
    move-result-object v5

    .line 471
    iget-object v9, v6, Landroidx/fragment/app/BackStackState;->c:[I

    .line 472
    .line 473
    aget v9, v9, v13

    .line 474
    .line 475
    aget-object v5, v5, v9

    .line 476
    .line 477
    iput-object v5, v15, Landroidx/fragment/app/r0;->g:Landroidx/lifecycle/o;

    .line 478
    .line 479
    invoke-static {}, Landroidx/lifecycle/o;->values()[Landroidx/lifecycle/o;

    .line 480
    .line 481
    .line 482
    move-result-object v5

    .line 483
    iget-object v9, v6, Landroidx/fragment/app/BackStackState;->d:[I

    .line 484
    .line 485
    aget v9, v9, v13

    .line 486
    .line 487
    aget-object v5, v5, v9

    .line 488
    .line 489
    iput-object v5, v15, Landroidx/fragment/app/r0;->h:Landroidx/lifecycle/o;

    .line 490
    .line 491
    add-int/lit8 v5, v12, 0x2

    .line 492
    .line 493
    aget v9, v14, v16

    .line 494
    .line 495
    iput v9, v15, Landroidx/fragment/app/r0;->c:I

    .line 496
    .line 497
    add-int/lit8 v16, v12, 0x3

    .line 498
    .line 499
    aget v5, v14, v5

    .line 500
    .line 501
    iput v5, v15, Landroidx/fragment/app/r0;->d:I

    .line 502
    .line 503
    add-int/lit8 v17, v12, 0x4

    .line 504
    .line 505
    aget v4, v14, v16

    .line 506
    .line 507
    iput v4, v15, Landroidx/fragment/app/r0;->e:I

    .line 508
    .line 509
    add-int/lit8 v12, v12, 0x5

    .line 510
    .line 511
    aget v14, v14, v17

    .line 512
    .line 513
    iput v14, v15, Landroidx/fragment/app/r0;->f:I

    .line 514
    .line 515
    iput v9, v11, Landroidx/fragment/app/a;->b:I

    .line 516
    .line 517
    iput v5, v11, Landroidx/fragment/app/a;->c:I

    .line 518
    .line 519
    iput v4, v11, Landroidx/fragment/app/a;->d:I

    .line 520
    .line 521
    iput v14, v11, Landroidx/fragment/app/a;->e:I

    .line 522
    .line 523
    invoke-virtual {v11, v15}, Landroidx/fragment/app/a;->b(Landroidx/fragment/app/r0;)V

    .line 524
    .line 525
    .line 526
    add-int/lit8 v13, v13, 0x1

    .line 527
    .line 528
    const/4 v4, 0x0

    .line 529
    const/4 v5, 0x2

    .line 530
    goto/16 :goto_6

    .line 531
    .line 532
    :cond_10
    iget v4, v6, Landroidx/fragment/app/BackStackState;->e:I

    .line 533
    .line 534
    iput v4, v11, Landroidx/fragment/app/a;->f:I

    .line 535
    .line 536
    iget-object v4, v6, Landroidx/fragment/app/BackStackState;->f:Ljava/lang/String;

    .line 537
    .line 538
    iput-object v4, v11, Landroidx/fragment/app/a;->i:Ljava/lang/String;

    .line 539
    .line 540
    iget v4, v6, Landroidx/fragment/app/BackStackState;->g:I

    .line 541
    .line 542
    iput v4, v11, Landroidx/fragment/app/a;->s:I

    .line 543
    .line 544
    iput-boolean v10, v11, Landroidx/fragment/app/a;->g:Z

    .line 545
    .line 546
    iget v4, v6, Landroidx/fragment/app/BackStackState;->h:I

    .line 547
    .line 548
    iput v4, v11, Landroidx/fragment/app/a;->j:I

    .line 549
    .line 550
    iget-object v4, v6, Landroidx/fragment/app/BackStackState;->i:Ljava/lang/CharSequence;

    .line 551
    .line 552
    iput-object v4, v11, Landroidx/fragment/app/a;->k:Ljava/lang/CharSequence;

    .line 553
    .line 554
    iget v4, v6, Landroidx/fragment/app/BackStackState;->j:I

    .line 555
    .line 556
    iput v4, v11, Landroidx/fragment/app/a;->l:I

    .line 557
    .line 558
    iget-object v4, v6, Landroidx/fragment/app/BackStackState;->k:Ljava/lang/CharSequence;

    .line 559
    .line 560
    iput-object v4, v11, Landroidx/fragment/app/a;->m:Ljava/lang/CharSequence;

    .line 561
    .line 562
    iget-object v4, v6, Landroidx/fragment/app/BackStackState;->l:Ljava/util/ArrayList;

    .line 563
    .line 564
    iput-object v4, v11, Landroidx/fragment/app/a;->n:Ljava/util/ArrayList;

    .line 565
    .line 566
    iget-object v4, v6, Landroidx/fragment/app/BackStackState;->m:Ljava/util/ArrayList;

    .line 567
    .line 568
    iput-object v4, v11, Landroidx/fragment/app/a;->o:Ljava/util/ArrayList;

    .line 569
    .line 570
    iget-boolean v4, v6, Landroidx/fragment/app/BackStackState;->n:Z

    .line 571
    .line 572
    iput-boolean v4, v11, Landroidx/fragment/app/a;->p:Z

    .line 573
    .line 574
    invoke-virtual {v11, v10}, Landroidx/fragment/app/a;->d(I)V

    .line 575
    .line 576
    .line 577
    const/4 v4, 0x2

    .line 578
    invoke-static {v8, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 579
    .line 580
    .line 581
    move-result v5

    .line 582
    if-eqz v5, :cond_11

    .line 583
    .line 584
    const-string v5, "restoreAllState: back stack #"

    .line 585
    .line 586
    const-string v6, " (index "

    .line 587
    .line 588
    invoke-static {v3, v5, v6}, La/e;->u(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    .line 590
    .line 591
    move-result-object v5

    .line 592
    iget v6, v11, Landroidx/fragment/app/a;->s:I

    .line 593
    .line 594
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 595
    .line 596
    .line 597
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    .line 599
    .line 600
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 601
    .line 602
    .line 603
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 604
    .line 605
    .line 606
    move-result-object v5

    .line 607
    invoke-static {v8, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    .line 609
    .line 610
    new-instance v5, Landroidx/fragment/app/t0;

    .line 611
    .line 612
    invoke-direct {v5}, Landroidx/fragment/app/t0;-><init>()V

    .line 613
    .line 614
    .line 615
    new-instance v6, Ljava/io/PrintWriter;

    .line 616
    .line 617
    invoke-direct {v6, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 618
    .line 619
    .line 620
    const-string v5, "  "

    .line 621
    .line 622
    const/4 v9, 0x0

    .line 623
    invoke-virtual {v11, v5, v6, v9}, Landroidx/fragment/app/a;->g(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 624
    .line 625
    .line 626
    invoke-virtual {v6}, Ljava/io/PrintWriter;->close()V

    .line 627
    .line 628
    .line 629
    goto :goto_8

    .line 630
    :cond_11
    const/4 v9, 0x0

    .line 631
    :goto_8
    iget-object v5, v0, Landroidx/fragment/app/j0;->d:Ljava/util/ArrayList;

    .line 632
    .line 633
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 634
    .line 635
    .line 636
    add-int/lit8 v3, v3, 0x1

    .line 637
    .line 638
    const/4 v4, 0x0

    .line 639
    const/4 v5, 0x2

    .line 640
    goto/16 :goto_5

    .line 641
    .line 642
    :cond_12
    const/4 v9, 0x0

    .line 643
    goto :goto_9

    .line 644
    :cond_13
    move-object v3, v4

    .line 645
    const/4 v9, 0x0

    .line 646
    iput-object v3, v0, Landroidx/fragment/app/j0;->d:Ljava/util/ArrayList;

    .line 647
    .line 648
    :goto_9
    iget-object v3, v0, Landroidx/fragment/app/j0;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 649
    .line 650
    iget v4, v1, Landroidx/fragment/app/FragmentManagerState;->d:I

    .line 651
    .line 652
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 653
    .line 654
    .line 655
    iget-object v3, v1, Landroidx/fragment/app/FragmentManagerState;->e:Ljava/lang/String;

    .line 656
    .line 657
    if-eqz v3, :cond_14

    .line 658
    .line 659
    invoke-virtual {v2, v3}, La1/b;->l(Ljava/lang/String;)Landroidx/fragment/app/s;

    .line 660
    .line 661
    .line 662
    move-result-object v2

    .line 663
    iput-object v2, v0, Landroidx/fragment/app/j0;->q:Landroidx/fragment/app/s;

    .line 664
    .line 665
    invoke-virtual {v0, v2}, Landroidx/fragment/app/j0;->n(Landroidx/fragment/app/s;)V

    .line 666
    .line 667
    .line 668
    :cond_14
    iget-object v2, v1, Landroidx/fragment/app/FragmentManagerState;->f:Ljava/util/ArrayList;

    .line 669
    .line 670
    if-eqz v2, :cond_15

    .line 671
    .line 672
    :goto_a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 673
    .line 674
    .line 675
    move-result v3

    .line 676
    if-ge v9, v3, :cond_15

    .line 677
    .line 678
    iget-object v3, v1, Landroidx/fragment/app/FragmentManagerState;->g:Ljava/util/ArrayList;

    .line 679
    .line 680
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 681
    .line 682
    .line 683
    move-result-object v3

    .line 684
    check-cast v3, Landroid/os/Bundle;

    .line 685
    .line 686
    iget-object v4, v0, Landroidx/fragment/app/j0;->n:Landroidx/fragment/app/v;

    .line 687
    .line 688
    iget-object v4, v4, Landroidx/fragment/app/v;->g:Landroidx/fragment/app/FragmentActivity;

    .line 689
    .line 690
    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 691
    .line 692
    .line 693
    move-result-object v4

    .line 694
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 695
    .line 696
    .line 697
    iget-object v4, v0, Landroidx/fragment/app/j0;->j:Ljava/util/Map;

    .line 698
    .line 699
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 700
    .line 701
    .line 702
    move-result-object v5

    .line 703
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    .line 705
    .line 706
    add-int/lit8 v9, v9, 0x1

    .line 707
    .line 708
    goto :goto_a

    .line 709
    :cond_15
    new-instance v2, Ljava/util/ArrayDeque;

    .line 710
    .line 711
    iget-object v1, v1, Landroidx/fragment/app/FragmentManagerState;->h:Ljava/util/ArrayList;

    .line 712
    .line 713
    invoke-direct {v2, v1}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    .line 714
    .line 715
    .line 716
    iput-object v2, v0, Landroidx/fragment/app/j0;->w:Ljava/util/ArrayDeque;

    .line 717
    .line 718
    return-void
.end method

.method public final Q()Landroid/os/Parcelable;
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/j0;->A()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/j0;->e()Ljava/util/HashSet;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Landroidx/fragment/app/i;

    .line 23
    .line 24
    invoke-virtual {v1}, Landroidx/fragment/app/i;->e()V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x1

    .line 29
    invoke-virtual {p0, v0}, Landroidx/fragment/app/j0;->u(Z)Z

    .line 30
    .line 31
    .line 32
    iput-boolean v0, p0, Landroidx/fragment/app/j0;->y:Z

    .line 33
    .line 34
    iget-object v1, p0, Landroidx/fragment/app/j0;->F:Landroidx/fragment/app/l0;

    .line 35
    .line 36
    iput-boolean v0, v1, Landroidx/fragment/app/l0;->i:Z

    .line 37
    .line 38
    iget-object v0, p0, Landroidx/fragment/app/j0;->c:La1/b;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    new-instance v1, Ljava/util/ArrayList;

    .line 44
    .line 45
    iget-object v0, v0, La1/b;->c:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v0, Ljava/util/HashMap;

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    const/4 v3, 0x2

    .line 69
    if-eqz v2, :cond_5

    .line 70
    .line 71
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    check-cast v2, Landroidx/fragment/app/p0;

    .line 76
    .line 77
    if-eqz v2, :cond_1

    .line 78
    .line 79
    new-instance v4, Landroidx/fragment/app/FragmentState;

    .line 80
    .line 81
    iget-object v5, v2, Landroidx/fragment/app/p0;->c:Landroidx/fragment/app/s;

    .line 82
    .line 83
    invoke-direct {v4, v5}, Landroidx/fragment/app/FragmentState;-><init>(Landroidx/fragment/app/s;)V

    .line 84
    .line 85
    .line 86
    iget v6, v5, Landroidx/fragment/app/s;->a:I

    .line 87
    .line 88
    const/4 v7, -0x1

    .line 89
    if-le v6, v7, :cond_3

    .line 90
    .line 91
    iget-object v6, v4, Landroidx/fragment/app/FragmentState;->m:Landroid/os/Bundle;

    .line 92
    .line 93
    if-nez v6, :cond_3

    .line 94
    .line 95
    invoke-virtual {v2}, Landroidx/fragment/app/p0;->o()Landroid/os/Bundle;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    iput-object v2, v4, Landroidx/fragment/app/FragmentState;->m:Landroid/os/Bundle;

    .line 100
    .line 101
    iget-object v6, v5, Landroidx/fragment/app/s;->i:Ljava/lang/String;

    .line 102
    .line 103
    if-eqz v6, :cond_4

    .line 104
    .line 105
    if-nez v2, :cond_2

    .line 106
    .line 107
    new-instance v2, Landroid/os/Bundle;

    .line 108
    .line 109
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 110
    .line 111
    .line 112
    iput-object v2, v4, Landroidx/fragment/app/FragmentState;->m:Landroid/os/Bundle;

    .line 113
    .line 114
    :cond_2
    iget-object v2, v4, Landroidx/fragment/app/FragmentState;->m:Landroid/os/Bundle;

    .line 115
    .line 116
    const-string v6, "android:target_state"

    .line 117
    .line 118
    iget-object v7, v5, Landroidx/fragment/app/s;->i:Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {v2, v6, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    iget v2, v5, Landroidx/fragment/app/s;->j:I

    .line 124
    .line 125
    if-eqz v2, :cond_4

    .line 126
    .line 127
    iget-object v6, v4, Landroidx/fragment/app/FragmentState;->m:Landroid/os/Bundle;

    .line 128
    .line 129
    const-string v7, "android:target_req_state"

    .line 130
    .line 131
    invoke-virtual {v6, v7, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 132
    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_3
    iget-object v2, v5, Landroidx/fragment/app/s;->b:Landroid/os/Bundle;

    .line 136
    .line 137
    iput-object v2, v4, Landroidx/fragment/app/FragmentState;->m:Landroid/os/Bundle;

    .line 138
    .line 139
    :cond_4
    :goto_2
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    const-string v2, "FragmentManager"

    .line 143
    .line 144
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 145
    .line 146
    .line 147
    move-result v3

    .line 148
    if-eqz v3, :cond_1

    .line 149
    .line 150
    new-instance v3, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    const-string v6, "Saved state of "

    .line 153
    .line 154
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string v5, ": "

    .line 161
    .line 162
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    iget-object v4, v4, Landroidx/fragment/app/FragmentState;->m:Landroid/os/Bundle;

    .line 166
    .line 167
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    goto :goto_1

    .line 178
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    const/4 v2, 0x0

    .line 183
    if-eqz v0, :cond_7

    .line 184
    .line 185
    const-string v0, "FragmentManager"

    .line 186
    .line 187
    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    if-eqz v0, :cond_6

    .line 192
    .line 193
    const-string v0, "FragmentManager"

    .line 194
    .line 195
    const-string v1, "saveAllState: no fragments!"

    .line 196
    .line 197
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    .line 199
    .line 200
    :cond_6
    return-object v2

    .line 201
    :cond_7
    iget-object v0, p0, Landroidx/fragment/app/j0;->c:La1/b;

    .line 202
    .line 203
    iget-object v4, v0, La1/b;->b:Ljava/lang/Object;

    .line 204
    .line 205
    check-cast v4, Ljava/util/ArrayList;

    .line 206
    .line 207
    monitor-enter v4

    .line 208
    :try_start_0
    iget-object v5, v0, La1/b;->b:Ljava/lang/Object;

    .line 209
    .line 210
    check-cast v5, Ljava/util/ArrayList;

    .line 211
    .line 212
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 213
    .line 214
    .line 215
    move-result v5

    .line 216
    if-eqz v5, :cond_8

    .line 217
    .line 218
    monitor-exit v4

    .line 219
    move-object v5, v2

    .line 220
    goto :goto_4

    .line 221
    :catchall_0
    move-exception v0

    .line 222
    goto/16 :goto_6

    .line 223
    .line 224
    :cond_8
    new-instance v5, Ljava/util/ArrayList;

    .line 225
    .line 226
    iget-object v6, v0, La1/b;->b:Ljava/lang/Object;

    .line 227
    .line 228
    check-cast v6, Ljava/util/ArrayList;

    .line 229
    .line 230
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 231
    .line 232
    .line 233
    move-result v6

    .line 234
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 235
    .line 236
    .line 237
    iget-object v0, v0, La1/b;->b:Ljava/lang/Object;

    .line 238
    .line 239
    check-cast v0, Ljava/util/ArrayList;

    .line 240
    .line 241
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    :cond_9
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 246
    .line 247
    .line 248
    move-result v6

    .line 249
    if-eqz v6, :cond_a

    .line 250
    .line 251
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v6

    .line 255
    check-cast v6, Landroidx/fragment/app/s;

    .line 256
    .line 257
    iget-object v7, v6, Landroidx/fragment/app/s;->f:Ljava/lang/String;

    .line 258
    .line 259
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    const-string v7, "FragmentManager"

    .line 263
    .line 264
    invoke-static {v7, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 265
    .line 266
    .line 267
    move-result v7

    .line 268
    if-eqz v7, :cond_9

    .line 269
    .line 270
    const-string v7, "FragmentManager"

    .line 271
    .line 272
    new-instance v8, Ljava/lang/StringBuilder;

    .line 273
    .line 274
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 275
    .line 276
    .line 277
    const-string v9, "saveAllState: adding fragment ("

    .line 278
    .line 279
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    iget-object v9, v6, Landroidx/fragment/app/s;->f:Ljava/lang/String;

    .line 283
    .line 284
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    const-string v9, "): "

    .line 288
    .line 289
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v6

    .line 299
    invoke-static {v7, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    .line 301
    .line 302
    goto :goto_3

    .line 303
    :cond_a
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    :goto_4
    iget-object v0, p0, Landroidx/fragment/app/j0;->d:Ljava/util/ArrayList;

    .line 305
    .line 306
    if-eqz v0, :cond_c

    .line 307
    .line 308
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 309
    .line 310
    .line 311
    move-result v0

    .line 312
    if-lez v0, :cond_c

    .line 313
    .line 314
    new-array v4, v0, [Landroidx/fragment/app/BackStackState;

    .line 315
    .line 316
    const/4 v6, 0x0

    .line 317
    :goto_5
    if-ge v6, v0, :cond_d

    .line 318
    .line 319
    new-instance v7, Landroidx/fragment/app/BackStackState;

    .line 320
    .line 321
    iget-object v8, p0, Landroidx/fragment/app/j0;->d:Ljava/util/ArrayList;

    .line 322
    .line 323
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object v8

    .line 327
    check-cast v8, Landroidx/fragment/app/a;

    .line 328
    .line 329
    invoke-direct {v7, v8}, Landroidx/fragment/app/BackStackState;-><init>(Landroidx/fragment/app/a;)V

    .line 330
    .line 331
    .line 332
    aput-object v7, v4, v6

    .line 333
    .line 334
    const-string v7, "FragmentManager"

    .line 335
    .line 336
    invoke-static {v7, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 337
    .line 338
    .line 339
    move-result v7

    .line 340
    if-eqz v7, :cond_b

    .line 341
    .line 342
    const-string v7, "FragmentManager"

    .line 343
    .line 344
    const-string v8, "saveAllState: adding back stack #"

    .line 345
    .line 346
    const-string v9, ": "

    .line 347
    .line 348
    invoke-static {v6, v8, v9}, La/e;->u(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    move-result-object v8

    .line 352
    iget-object v9, p0, Landroidx/fragment/app/j0;->d:Ljava/util/ArrayList;

    .line 353
    .line 354
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object v9

    .line 358
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v8

    .line 365
    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    .line 367
    .line 368
    :cond_b
    add-int/lit8 v6, v6, 0x1

    .line 369
    .line 370
    goto :goto_5

    .line 371
    :cond_c
    move-object v4, v2

    .line 372
    :cond_d
    new-instance v0, Landroidx/fragment/app/FragmentManagerState;

    .line 373
    .line 374
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 375
    .line 376
    .line 377
    iput-object v2, v0, Landroidx/fragment/app/FragmentManagerState;->e:Ljava/lang/String;

    .line 378
    .line 379
    new-instance v2, Ljava/util/ArrayList;

    .line 380
    .line 381
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 382
    .line 383
    .line 384
    iput-object v2, v0, Landroidx/fragment/app/FragmentManagerState;->f:Ljava/util/ArrayList;

    .line 385
    .line 386
    new-instance v3, Ljava/util/ArrayList;

    .line 387
    .line 388
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 389
    .line 390
    .line 391
    iput-object v3, v0, Landroidx/fragment/app/FragmentManagerState;->g:Ljava/util/ArrayList;

    .line 392
    .line 393
    iput-object v1, v0, Landroidx/fragment/app/FragmentManagerState;->a:Ljava/util/ArrayList;

    .line 394
    .line 395
    iput-object v5, v0, Landroidx/fragment/app/FragmentManagerState;->b:Ljava/util/ArrayList;

    .line 396
    .line 397
    iput-object v4, v0, Landroidx/fragment/app/FragmentManagerState;->c:[Landroidx/fragment/app/BackStackState;

    .line 398
    .line 399
    iget-object v1, p0, Landroidx/fragment/app/j0;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 400
    .line 401
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 402
    .line 403
    .line 404
    move-result v1

    .line 405
    iput v1, v0, Landroidx/fragment/app/FragmentManagerState;->d:I

    .line 406
    .line 407
    iget-object v1, p0, Landroidx/fragment/app/j0;->q:Landroidx/fragment/app/s;

    .line 408
    .line 409
    if-eqz v1, :cond_e

    .line 410
    .line 411
    iget-object v1, v1, Landroidx/fragment/app/s;->f:Ljava/lang/String;

    .line 412
    .line 413
    iput-object v1, v0, Landroidx/fragment/app/FragmentManagerState;->e:Ljava/lang/String;

    .line 414
    .line 415
    :cond_e
    iget-object v1, p0, Landroidx/fragment/app/j0;->j:Ljava/util/Map;

    .line 416
    .line 417
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 418
    .line 419
    .line 420
    move-result-object v1

    .line 421
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 422
    .line 423
    .line 424
    iget-object v1, p0, Landroidx/fragment/app/j0;->j:Ljava/util/Map;

    .line 425
    .line 426
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 427
    .line 428
    .line 429
    move-result-object v1

    .line 430
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 431
    .line 432
    .line 433
    new-instance v1, Ljava/util/ArrayList;

    .line 434
    .line 435
    iget-object v2, p0, Landroidx/fragment/app/j0;->w:Ljava/util/ArrayDeque;

    .line 436
    .line 437
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 438
    .line 439
    .line 440
    iput-object v1, v0, Landroidx/fragment/app/FragmentManagerState;->h:Ljava/util/ArrayList;

    .line 441
    .line 442
    return-object v0

    .line 443
    :goto_6
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 444
    throw v0
.end method

.method public final R()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/j0;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/j0;->a:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x1

    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/fragment/app/j0;->n:Landroidx/fragment/app/v;

    .line 14
    .line 15
    iget-object v1, v1, Landroidx/fragment/app/v;->h:Landroid/os/Handler;

    .line 16
    .line 17
    iget-object v2, p0, Landroidx/fragment/app/j0;->G:Landroidx/fragment/app/e;

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Landroidx/fragment/app/j0;->n:Landroidx/fragment/app/v;

    .line 23
    .line 24
    iget-object v1, v1, Landroidx/fragment/app/v;->h:Landroid/os/Handler;

    .line 25
    .line 26
    iget-object v2, p0, Landroidx/fragment/app/j0;->G:Landroidx/fragment/app/e;

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/fragment/app/j0;->Z()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception v1

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    :goto_0
    monitor-exit v0

    .line 38
    return-void

    .line 39
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw v1
.end method

.method public final S(Landroidx/fragment/app/s;Z)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/j0;->B(Landroidx/fragment/app/s;)Landroid/view/ViewGroup;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    instance-of v0, p1, Landroidx/fragment/app/FragmentContainerView;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    check-cast p1, Landroidx/fragment/app/FragmentContainerView;

    .line 12
    .line 13
    xor-int/lit8 p2, p2, 0x1

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentContainerView;->setDrawDisappearingViewsLast(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final T(Landroidx/fragment/app/s;Landroidx/lifecycle/o;)V
    .locals 2

    .line 1
    iget-object v0, p1, Landroidx/fragment/app/s;->f:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/fragment/app/j0;->c:La1/b;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, La1/b;->l(Ljava/lang/String;)Landroidx/fragment/app/s;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p1, Landroidx/fragment/app/s;->t:Landroidx/fragment/app/v;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p1, Landroidx/fragment/app/s;->s:Landroidx/fragment/app/j0;

    .line 20
    .line 21
    if-ne v0, p0, :cond_1

    .line 22
    .line 23
    :cond_0
    iput-object p2, p1, Landroidx/fragment/app/s;->L:Landroidx/lifecycle/o;

    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 27
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v1, "Fragment "

    .line 31
    .line 32
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string p1, " is not an active fragment of FragmentManager "

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p2
.end method

.method public final U(Landroidx/fragment/app/s;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p1, Landroidx/fragment/app/s;->f:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/fragment/app/j0;->c:La1/b;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, La1/b;->l(Ljava/lang/String;)Landroidx/fragment/app/s;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p1, Landroidx/fragment/app/s;->t:Landroidx/fragment/app/v;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p1, Landroidx/fragment/app/s;->s:Landroidx/fragment/app/j0;

    .line 22
    .line 23
    if-ne v0, p0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 27
    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v2, "Fragment "

    .line 31
    .line 32
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string p1, " is not an active fragment of FragmentManager "

    .line 39
    .line 40
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw v0

    .line 54
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/j0;->q:Landroidx/fragment/app/s;

    .line 55
    .line 56
    iput-object p1, p0, Landroidx/fragment/app/j0;->q:Landroidx/fragment/app/s;

    .line 57
    .line 58
    invoke-virtual {p0, v0}, Landroidx/fragment/app/j0;->n(Landroidx/fragment/app/s;)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Landroidx/fragment/app/j0;->q:Landroidx/fragment/app/s;

    .line 62
    .line 63
    invoke-virtual {p0, p1}, Landroidx/fragment/app/j0;->n(Landroidx/fragment/app/s;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public final V(Landroidx/fragment/app/s;)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/j0;->B(Landroidx/fragment/app/s;)Landroid/view/ViewGroup;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    iget-object v1, p1, Landroidx/fragment/app/s;->I:Landroidx/fragment/app/p;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget v3, v1, Landroidx/fragment/app/p;->b:I

    .line 15
    .line 16
    :goto_0
    if-nez v1, :cond_1

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    iget v4, v1, Landroidx/fragment/app/p;->c:I

    .line 21
    .line 22
    :goto_1
    add-int/2addr v4, v3

    .line 23
    if-nez v1, :cond_2

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    goto :goto_2

    .line 27
    :cond_2
    iget v3, v1, Landroidx/fragment/app/p;->d:I

    .line 28
    .line 29
    :goto_2
    add-int/2addr v3, v4

    .line 30
    if-nez v1, :cond_3

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    goto :goto_3

    .line 34
    :cond_3
    iget v1, v1, Landroidx/fragment/app/p;->e:I

    .line 35
    .line 36
    :goto_3
    add-int/2addr v1, v3

    .line 37
    if-lez v1, :cond_7

    .line 38
    .line 39
    const v1, 0x7f0b047e

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    if-nez v3, :cond_4

    .line 47
    .line 48
    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    :cond_4
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Landroidx/fragment/app/s;

    .line 56
    .line 57
    iget-object p1, p1, Landroidx/fragment/app/s;->I:Landroidx/fragment/app/p;

    .line 58
    .line 59
    if-nez p1, :cond_5

    .line 60
    .line 61
    goto :goto_4

    .line 62
    :cond_5
    iget-boolean v2, p1, Landroidx/fragment/app/p;->a:Z

    .line 63
    .line 64
    :goto_4
    iget-object p1, v0, Landroidx/fragment/app/s;->I:Landroidx/fragment/app/p;

    .line 65
    .line 66
    if-nez p1, :cond_6

    .line 67
    .line 68
    goto :goto_5

    .line 69
    :cond_6
    invoke-virtual {v0}, Landroidx/fragment/app/s;->g()Landroidx/fragment/app/p;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    iput-boolean v2, p1, Landroidx/fragment/app/p;->a:Z

    .line 74
    .line 75
    :cond_7
    :goto_5
    return-void
.end method

.method public final X()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/j0;->c:La1/b;

    .line 2
    .line 3
    invoke-virtual {v0}, La1/b;->q()Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroidx/fragment/app/p0;

    .line 22
    .line 23
    iget-object v2, v1, Landroidx/fragment/app/p0;->c:Landroidx/fragment/app/s;

    .line 24
    .line 25
    iget-boolean v3, v2, Landroidx/fragment/app/s;->G:Z

    .line 26
    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    iget-boolean v3, p0, Landroidx/fragment/app/j0;->b:Z

    .line 30
    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    iput-boolean v1, p0, Landroidx/fragment/app/j0;->B:Z

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v3, 0x0

    .line 38
    iput-boolean v3, v2, Landroidx/fragment/app/s;->G:Z

    .line 39
    .line 40
    invoke-virtual {v1}, Landroidx/fragment/app/p0;->k()V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    return-void
.end method

.method public final Y(Ljava/lang/IllegalStateException;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "FragmentManager"

    .line 6
    .line 7
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    const-string v0, "Activity state:"

    .line 11
    .line 12
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    new-instance v0, Landroidx/fragment/app/t0;

    .line 16
    .line 17
    invoke-direct {v0}, Landroidx/fragment/app/t0;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance v2, Ljava/io/PrintWriter;

    .line 21
    .line 22
    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Landroidx/fragment/app/j0;->n:Landroidx/fragment/app/v;

    .line 26
    .line 27
    const-string v3, "Failed dumping state"

    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    const/4 v5, 0x0

    .line 31
    const-string v6, "  "

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    :try_start_0
    new-array v4, v4, [Ljava/lang/String;

    .line 36
    .line 37
    iget-object v0, v0, Landroidx/fragment/app/v;->j:Landroidx/fragment/app/FragmentActivity;

    .line 38
    .line 39
    invoke-virtual {v0, v6, v5, v2, v4}, Landroidx/fragment/app/FragmentActivity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    :try_start_1
    new-array v0, v4, [Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {p0, v6, v5, v2, v0}, Landroidx/fragment/app/j0;->r(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catch_1
    move-exception v0

    .line 55
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    .line 57
    .line 58
    :goto_0
    throw p1
.end method

.method public final Z()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/j0;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/j0;->a:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x1

    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/fragment/app/j0;->h:Landroidx/fragment/app/b0;

    .line 14
    .line 15
    iput-boolean v2, v1, Landroidx/fragment/app/b0;->a:Z

    .line 16
    .line 17
    iget-object v1, v1, Landroidx/fragment/app/b0;->c:La/l;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 22
    .line 23
    invoke-virtual {v1, v2}, La/l;->accept(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    monitor-exit v0

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception v1

    .line 29
    goto :goto_2

    .line 30
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    iget-object v0, p0, Landroidx/fragment/app/j0;->h:Landroidx/fragment/app/b0;

    .line 32
    .line 33
    iget-object v1, p0, Landroidx/fragment/app/j0;->d:Ljava/util/ArrayList;

    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    const/4 v1, 0x0

    .line 44
    :goto_0
    if-lez v1, :cond_3

    .line 45
    .line 46
    iget-object v1, p0, Landroidx/fragment/app/j0;->p:Landroidx/fragment/app/s;

    .line 47
    .line 48
    invoke-static {v1}, Landroidx/fragment/app/j0;->H(Landroidx/fragment/app/s;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_3

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_3
    const/4 v2, 0x0

    .line 56
    :goto_1
    iput-boolean v2, v0, Landroidx/fragment/app/b0;->a:Z

    .line 57
    .line 58
    iget-object v0, v0, Landroidx/fragment/app/b0;->c:La/l;

    .line 59
    .line 60
    if-eqz v0, :cond_4

    .line 61
    .line 62
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, La/l;->accept(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    :cond_4
    return-void

    .line 70
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    throw v1
.end method

.method public final a(Landroidx/fragment/app/s;)Landroidx/fragment/app/p0;
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    const-string v1, "FragmentManager"

    .line 3
    .line 4
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "add: "

    .line 13
    .line 14
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/j0;->f(Landroidx/fragment/app/s;)Landroidx/fragment/app/p0;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object p0, p1, Landroidx/fragment/app/s;->s:Landroidx/fragment/app/j0;

    .line 32
    .line 33
    iget-object v1, p0, Landroidx/fragment/app/j0;->c:La1/b;

    .line 34
    .line 35
    invoke-virtual {v1, v0}, La1/b;->z(Landroidx/fragment/app/p0;)V

    .line 36
    .line 37
    .line 38
    iget-boolean v2, p1, Landroidx/fragment/app/s;->A:Z

    .line 39
    .line 40
    if-nez v2, :cond_2

    .line 41
    .line 42
    invoke-virtual {v1, p1}, La1/b;->f(Landroidx/fragment/app/s;)V

    .line 43
    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    iput-boolean v1, p1, Landroidx/fragment/app/s;->m:Z

    .line 47
    .line 48
    iget-object v2, p1, Landroidx/fragment/app/s;->F:Landroid/view/View;

    .line 49
    .line 50
    if-nez v2, :cond_1

    .line 51
    .line 52
    iput-boolean v1, p1, Landroidx/fragment/app/s;->J:Z

    .line 53
    .line 54
    :cond_1
    invoke-static {p1}, Landroidx/fragment/app/j0;->F(Landroidx/fragment/app/s;)Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-eqz p1, :cond_2

    .line 59
    .line 60
    const/4 p1, 0x1

    .line 61
    iput-boolean p1, p0, Landroidx/fragment/app/j0;->x:Z

    .line 62
    .line 63
    :cond_2
    return-object v0
.end method

.method public final b(Landroidx/fragment/app/v;Lo9/e;Landroidx/fragment/app/s;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/j0;->n:Landroidx/fragment/app/v;

    .line 2
    .line 3
    if-nez v0, :cond_b

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/fragment/app/j0;->n:Landroidx/fragment/app/v;

    .line 6
    .line 7
    iput-object p2, p0, Landroidx/fragment/app/j0;->o:Lo9/e;

    .line 8
    .line 9
    iput-object p3, p0, Landroidx/fragment/app/j0;->p:Landroidx/fragment/app/s;

    .line 10
    .line 11
    iget-object p2, p0, Landroidx/fragment/app/j0;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 12
    .line 13
    if-eqz p3, :cond_0

    .line 14
    .line 15
    new-instance v0, Landroidx/fragment/app/e0;

    .line 16
    .line 17
    invoke-direct {v0, p3}, Landroidx/fragment/app/e0;-><init>(Landroidx/fragment/app/s;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    instance-of v0, p1, Landroidx/fragment/app/m0;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {p2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    :cond_1
    :goto_0
    iget-object p2, p0, Landroidx/fragment/app/j0;->p:Landroidx/fragment/app/s;

    .line 32
    .line 33
    if-eqz p2, :cond_2

    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/fragment/app/j0;->Z()V

    .line 36
    .line 37
    .line 38
    :cond_2
    instance-of p2, p1, La/r;

    .line 39
    .line 40
    if-eqz p2, :cond_5

    .line 41
    .line 42
    iget-object p2, p1, Landroidx/fragment/app/v;->j:Landroidx/fragment/app/FragmentActivity;

    .line 43
    .line 44
    iget-object p2, p2, Landroidx/activity/ComponentActivity;->h:La/q;

    .line 45
    .line 46
    iput-object p2, p0, Landroidx/fragment/app/j0;->g:La/q;

    .line 47
    .line 48
    if-eqz p3, :cond_3

    .line 49
    .line 50
    move-object v0, p3

    .line 51
    goto :goto_1

    .line 52
    :cond_3
    move-object v0, p1

    .line 53
    :goto_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    invoke-interface {v0}, Landroidx/lifecycle/w;->f()Landroidx/lifecycle/p;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Landroidx/lifecycle/p;->b()Landroidx/lifecycle/o;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    sget-object v2, Landroidx/lifecycle/o;->a:Landroidx/lifecycle/o;

    .line 65
    .line 66
    if-ne v1, v2, :cond_4

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_4
    new-instance v1, La/o;

    .line 70
    .line 71
    iget-object v2, p0, Landroidx/fragment/app/j0;->h:Landroidx/fragment/app/b0;

    .line 72
    .line 73
    invoke-direct {v1, p2, v0, v2}, La/o;-><init>(La/q;Landroidx/lifecycle/p;Landroidx/fragment/app/b0;)V

    .line 74
    .line 75
    .line 76
    iget-object v0, v2, Landroidx/fragment/app/b0;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    invoke-static {}, Lj0/b;->a()Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-eqz v0, :cond_5

    .line 86
    .line 87
    invoke-virtual {p2}, La/q;->d()V

    .line 88
    .line 89
    .line 90
    iget-object p2, p2, La/q;->d:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast p2, La/l;

    .line 93
    .line 94
    iput-object p2, v2, Landroidx/fragment/app/b0;->c:La/l;

    .line 95
    .line 96
    :cond_5
    :goto_2
    if-eqz p3, :cond_7

    .line 97
    .line 98
    iget-object p1, p3, Landroidx/fragment/app/s;->s:Landroidx/fragment/app/j0;

    .line 99
    .line 100
    iget-object p1, p1, Landroidx/fragment/app/j0;->F:Landroidx/fragment/app/l0;

    .line 101
    .line 102
    iget-object p2, p1, Landroidx/fragment/app/l0;->e:Ljava/util/HashMap;

    .line 103
    .line 104
    iget-object v0, p3, Landroidx/fragment/app/s;->f:Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    check-cast v0, Landroidx/fragment/app/l0;

    .line 111
    .line 112
    if-nez v0, :cond_6

    .line 113
    .line 114
    new-instance v0, Landroidx/fragment/app/l0;

    .line 115
    .line 116
    iget-boolean p1, p1, Landroidx/fragment/app/l0;->g:Z

    .line 117
    .line 118
    invoke-direct {v0, p1}, Landroidx/fragment/app/l0;-><init>(Z)V

    .line 119
    .line 120
    .line 121
    iget-object p1, p3, Landroidx/fragment/app/s;->f:Ljava/lang/String;

    .line 122
    .line 123
    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    :cond_6
    iput-object v0, p0, Landroidx/fragment/app/j0;->F:Landroidx/fragment/app/l0;

    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_7
    instance-of p2, p1, Landroidx/lifecycle/a1;

    .line 130
    .line 131
    if-eqz p2, :cond_8

    .line 132
    .line 133
    iget-object p1, p1, Landroidx/fragment/app/v;->j:Landroidx/fragment/app/FragmentActivity;

    .line 134
    .line 135
    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->e()Landroidx/lifecycle/z0;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    new-instance p2, La1/b;

    .line 140
    .line 141
    sget-object v0, Landroidx/fragment/app/l0;->j:Landroidx/fragment/app/c0;

    .line 142
    .line 143
    invoke-direct {p2, p1, v0}, La1/b;-><init>(Landroidx/lifecycle/z0;Landroidx/lifecycle/y0;)V

    .line 144
    .line 145
    .line 146
    const-class p1, Landroidx/fragment/app/l0;

    .line 147
    .line 148
    invoke-virtual {p2, p1}, La1/b;->n(Ljava/lang/Class;)Landroidx/lifecycle/v0;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    check-cast p1, Landroidx/fragment/app/l0;

    .line 153
    .line 154
    iput-object p1, p0, Landroidx/fragment/app/j0;->F:Landroidx/fragment/app/l0;

    .line 155
    .line 156
    goto :goto_3

    .line 157
    :cond_8
    new-instance p1, Landroidx/fragment/app/l0;

    .line 158
    .line 159
    const/4 p2, 0x0

    .line 160
    invoke-direct {p1, p2}, Landroidx/fragment/app/l0;-><init>(Z)V

    .line 161
    .line 162
    .line 163
    iput-object p1, p0, Landroidx/fragment/app/j0;->F:Landroidx/fragment/app/l0;

    .line 164
    .line 165
    :goto_3
    iget-object p1, p0, Landroidx/fragment/app/j0;->F:Landroidx/fragment/app/l0;

    .line 166
    .line 167
    invoke-virtual {p0}, Landroidx/fragment/app/j0;->I()Z

    .line 168
    .line 169
    .line 170
    move-result p2

    .line 171
    iput-boolean p2, p1, Landroidx/fragment/app/l0;->i:Z

    .line 172
    .line 173
    iget-object p1, p0, Landroidx/fragment/app/j0;->F:Landroidx/fragment/app/l0;

    .line 174
    .line 175
    iget-object p2, p0, Landroidx/fragment/app/j0;->c:La1/b;

    .line 176
    .line 177
    iput-object p1, p2, La1/b;->d:Ljava/lang/Object;

    .line 178
    .line 179
    iget-object p1, p0, Landroidx/fragment/app/j0;->n:Landroidx/fragment/app/v;

    .line 180
    .line 181
    instance-of p2, p1, Lc/b;

    .line 182
    .line 183
    if-eqz p2, :cond_a

    .line 184
    .line 185
    iget-object p1, p1, Landroidx/fragment/app/v;->j:Landroidx/fragment/app/FragmentActivity;

    .line 186
    .line 187
    iget-object p1, p1, Landroidx/activity/ComponentActivity;->i:La/g;

    .line 188
    .line 189
    if-eqz p3, :cond_9

    .line 190
    .line 191
    new-instance p2, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .line 195
    .line 196
    iget-object p3, p3, Landroidx/fragment/app/s;->f:Ljava/lang/String;

    .line 197
    .line 198
    const-string v0, ":"

    .line 199
    .line 200
    invoke-static {p2, p3, v0}, La/e;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object p2

    .line 204
    goto :goto_4

    .line 205
    :cond_9
    const-string p2, ""

    .line 206
    .line 207
    :goto_4
    const-string p3, "FragmentManager:"

    .line 208
    .line 209
    invoke-static {p3, p2}, Lea/q;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p2

    .line 213
    const-string p3, "StartActivityForResult"

    .line 214
    .line 215
    invoke-static {p2, p3}, Lea/q;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p3

    .line 219
    new-instance v0, Landroidx/fragment/app/f0;

    .line 220
    .line 221
    const/4 v1, 0x2

    .line 222
    invoke-direct {v0, v1}, Landroidx/fragment/app/f0;-><init>(I)V

    .line 223
    .line 224
    .line 225
    new-instance v1, Landroidx/fragment/app/a0;

    .line 226
    .line 227
    const/4 v2, 0x2

    .line 228
    invoke-direct {v1, p0, v2}, Landroidx/fragment/app/a0;-><init>(Landroidx/fragment/app/j0;I)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {p1, p3, v0, v1}, La/g;->b(Ljava/lang/String;La2/a;Landroidx/fragment/app/a0;)La7/f;

    .line 232
    .line 233
    .line 234
    move-result-object p3

    .line 235
    iput-object p3, p0, Landroidx/fragment/app/j0;->t:La7/f;

    .line 236
    .line 237
    const-string p3, "StartIntentSenderForResult"

    .line 238
    .line 239
    invoke-static {p2, p3}, Lea/q;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object p3

    .line 243
    new-instance v0, Landroidx/fragment/app/f0;

    .line 244
    .line 245
    const/4 v1, 0x0

    .line 246
    invoke-direct {v0, v1}, Landroidx/fragment/app/f0;-><init>(I)V

    .line 247
    .line 248
    .line 249
    new-instance v1, Landroidx/fragment/app/a0;

    .line 250
    .line 251
    const/4 v2, 0x0

    .line 252
    invoke-direct {v1, p0, v2}, Landroidx/fragment/app/a0;-><init>(Landroidx/fragment/app/j0;I)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {p1, p3, v0, v1}, La/g;->b(Ljava/lang/String;La2/a;Landroidx/fragment/app/a0;)La7/f;

    .line 256
    .line 257
    .line 258
    move-result-object p3

    .line 259
    iput-object p3, p0, Landroidx/fragment/app/j0;->u:La7/f;

    .line 260
    .line 261
    const-string p3, "RequestPermissions"

    .line 262
    .line 263
    invoke-static {p2, p3}, Lea/q;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object p2

    .line 267
    new-instance p3, Landroidx/fragment/app/f0;

    .line 268
    .line 269
    const/4 v0, 0x1

    .line 270
    invoke-direct {p3, v0}, Landroidx/fragment/app/f0;-><init>(I)V

    .line 271
    .line 272
    .line 273
    new-instance v0, Landroidx/fragment/app/a0;

    .line 274
    .line 275
    const/4 v1, 0x1

    .line 276
    invoke-direct {v0, p0, v1}, Landroidx/fragment/app/a0;-><init>(Landroidx/fragment/app/j0;I)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {p1, p2, p3, v0}, La/g;->b(Ljava/lang/String;La2/a;Landroidx/fragment/app/a0;)La7/f;

    .line 280
    .line 281
    .line 282
    move-result-object p1

    .line 283
    iput-object p1, p0, Landroidx/fragment/app/j0;->v:La7/f;

    .line 284
    .line 285
    :cond_a
    return-void

    .line 286
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 287
    .line 288
    const-string p2, "Already attached"

    .line 289
    .line 290
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    throw p1
.end method

.method public final c(Landroidx/fragment/app/s;)V
    .locals 4

    .line 1
    const-string v0, "FragmentManager"

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v3, "attach: "

    .line 13
    .line 14
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-boolean v2, p1, Landroidx/fragment/app/s;->A:Z

    .line 28
    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    iput-boolean v2, p1, Landroidx/fragment/app/s;->A:Z

    .line 33
    .line 34
    iget-boolean v2, p1, Landroidx/fragment/app/s;->l:Z

    .line 35
    .line 36
    if-nez v2, :cond_2

    .line 37
    .line 38
    iget-object v2, p0, Landroidx/fragment/app/j0;->c:La1/b;

    .line 39
    .line 40
    invoke-virtual {v2, p1}, La1/b;->f(Landroidx/fragment/app/s;)V

    .line 41
    .line 42
    .line 43
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v2, "add from attach: "

    .line 52
    .line 53
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    :cond_1
    invoke-static {p1}, Landroidx/fragment/app/j0;->F(Landroidx/fragment/app/s;)Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-eqz p1, :cond_2

    .line 71
    .line 72
    const/4 p1, 0x1

    .line 73
    iput-boolean p1, p0, Landroidx/fragment/app/j0;->x:Z

    .line 74
    .line 75
    :cond_2
    return-void
.end method

.method public final d()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/j0;->b:Z

    .line 3
    .line 4
    iget-object v0, p0, Landroidx/fragment/app/j0;->D:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Landroidx/fragment/app/j0;->C:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final e()Ljava/util/HashSet;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroidx/fragment/app/j0;->c:La1/b;

    .line 7
    .line 8
    invoke-virtual {v1}, La1/b;->q()Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Landroidx/fragment/app/p0;

    .line 27
    .line 28
    iget-object v2, v2, Landroidx/fragment/app/p0;->c:Landroidx/fragment/app/s;

    .line 29
    .line 30
    iget-object v2, v2, Landroidx/fragment/app/s;->E:Landroid/view/ViewGroup;

    .line 31
    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    invoke-virtual {p0}, Landroidx/fragment/app/j0;->D()Landroidx/fragment/app/c0;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-static {v2, v3}, Landroidx/fragment/app/i;->f(Landroid/view/ViewGroup;Landroidx/fragment/app/c0;)Landroidx/fragment/app/i;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    return-object v0
.end method

.method public final f(Landroidx/fragment/app/s;)Landroidx/fragment/app/p0;
    .locals 3

    .line 1
    iget-object v0, p1, Landroidx/fragment/app/s;->f:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/fragment/app/j0;->c:La1/b;

    .line 4
    .line 5
    iget-object v2, v1, La1/b;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v2, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroidx/fragment/app/p0;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_0
    new-instance v0, Landroidx/fragment/app/p0;

    .line 19
    .line 20
    iget-object v2, p0, Landroidx/fragment/app/j0;->k:La7/f;

    .line 21
    .line 22
    invoke-direct {v0, v2, v1, p1}, Landroidx/fragment/app/p0;-><init>(La7/f;La1/b;Landroidx/fragment/app/s;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Landroidx/fragment/app/j0;->n:Landroidx/fragment/app/v;

    .line 26
    .line 27
    iget-object p1, p1, Landroidx/fragment/app/v;->g:Landroidx/fragment/app/FragmentActivity;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {v0, p1}, Landroidx/fragment/app/p0;->m(Ljava/lang/ClassLoader;)V

    .line 34
    .line 35
    .line 36
    iget p1, p0, Landroidx/fragment/app/j0;->m:I

    .line 37
    .line 38
    iput p1, v0, Landroidx/fragment/app/p0;->e:I

    .line 39
    .line 40
    return-object v0
.end method

.method public final g(Landroidx/fragment/app/s;)V
    .locals 4

    .line 1
    const-string v0, "FragmentManager"

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v3, "detach: "

    .line 13
    .line 14
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-boolean v2, p1, Landroidx/fragment/app/s;->A:Z

    .line 28
    .line 29
    if-nez v2, :cond_3

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    iput-boolean v2, p1, Landroidx/fragment/app/s;->A:Z

    .line 33
    .line 34
    iget-boolean v3, p1, Landroidx/fragment/app/s;->l:Z

    .line 35
    .line 36
    if-eqz v3, :cond_3

    .line 37
    .line 38
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v3, "remove from detach: "

    .line 47
    .line 48
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/j0;->c:La1/b;

    .line 62
    .line 63
    iget-object v1, v0, La1/b;->b:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v1, Ljava/util/ArrayList;

    .line 66
    .line 67
    monitor-enter v1

    .line 68
    :try_start_0
    iget-object v0, v0, La1/b;->b:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v0, Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p1, Landroidx/fragment/app/s;->l:Z

    .line 78
    .line 79
    invoke-static {p1}, Landroidx/fragment/app/j0;->F(Landroidx/fragment/app/s;)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_2

    .line 84
    .line 85
    iput-boolean v2, p0, Landroidx/fragment/app/j0;->x:Z

    .line 86
    .line 87
    :cond_2
    invoke-virtual {p0, p1}, Landroidx/fragment/app/j0;->V(Landroidx/fragment/app/s;)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :catchall_0
    move-exception p1

    .line 92
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    throw p1

    .line 94
    :cond_3
    :goto_0
    return-void
.end method

.method public final h(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/j0;->c:La1/b;

    .line 2
    .line 3
    invoke-virtual {v0}, La1/b;->w()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroidx/fragment/app/s;

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {v1, p1}, Landroidx/fragment/app/s;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 26
    .line 27
    .line 28
    iget-object v1, v1, Landroidx/fragment/app/s;->u:Landroidx/fragment/app/k0;

    .line 29
    .line 30
    invoke-virtual {v1, p1}, Landroidx/fragment/app/j0;->h(Landroid/content/res/Configuration;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    return-void
.end method

.method public final i()Z
    .locals 5

    .line 1
    iget v0, p0, Landroidx/fragment/app/j0;->m:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ge v0, v2, :cond_0

    .line 6
    .line 7
    return v1

    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/j0;->c:La1/b;

    .line 9
    .line 10
    invoke-virtual {v0}, La1/b;->w()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_3

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Landroidx/fragment/app/s;

    .line 29
    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    iget-boolean v4, v3, Landroidx/fragment/app/s;->z:Z

    .line 33
    .line 34
    if-nez v4, :cond_2

    .line 35
    .line 36
    iget-object v3, v3, Landroidx/fragment/app/s;->u:Landroidx/fragment/app/k0;

    .line 37
    .line 38
    invoke-virtual {v3}, Landroidx/fragment/app/j0;->i()Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    const/4 v3, 0x0

    .line 44
    :goto_0
    if-eqz v3, :cond_1

    .line 45
    .line 46
    return v2

    .line 47
    :cond_3
    return v1
.end method

.method public final j()Z
    .locals 7

    .line 1
    iget v0, p0, Landroidx/fragment/app/j0;->m:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ge v0, v2, :cond_0

    .line 6
    .line 7
    return v1

    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/j0;->c:La1/b;

    .line 9
    .line 10
    invoke-virtual {v0}, La1/b;->w()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v4, 0x0

    .line 20
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    if-eqz v5, :cond_4

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    check-cast v5, Landroidx/fragment/app/s;

    .line 31
    .line 32
    if-eqz v5, :cond_1

    .line 33
    .line 34
    invoke-static {v5}, Landroidx/fragment/app/j0;->G(Landroidx/fragment/app/s;)Z

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    if-eqz v6, :cond_1

    .line 39
    .line 40
    iget-boolean v6, v5, Landroidx/fragment/app/s;->z:Z

    .line 41
    .line 42
    if-nez v6, :cond_2

    .line 43
    .line 44
    iget-object v6, v5, Landroidx/fragment/app/s;->u:Landroidx/fragment/app/k0;

    .line 45
    .line 46
    invoke-virtual {v6}, Landroidx/fragment/app/j0;->j()Z

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    const/4 v6, 0x0

    .line 52
    :goto_1
    if-eqz v6, :cond_1

    .line 53
    .line 54
    if-nez v3, :cond_3

    .line 55
    .line 56
    new-instance v3, Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .line 60
    .line 61
    :cond_3
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    const/4 v4, 0x1

    .line 65
    goto :goto_0

    .line 66
    :cond_4
    iget-object v0, p0, Landroidx/fragment/app/j0;->e:Ljava/util/ArrayList;

    .line 67
    .line 68
    if-eqz v0, :cond_7

    .line 69
    .line 70
    :goto_2
    iget-object v0, p0, Landroidx/fragment/app/j0;->e:Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-ge v1, v0, :cond_7

    .line 77
    .line 78
    iget-object v0, p0, Landroidx/fragment/app/j0;->e:Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Landroidx/fragment/app/s;

    .line 85
    .line 86
    if-eqz v3, :cond_5

    .line 87
    .line 88
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    if-nez v2, :cond_6

    .line 93
    .line 94
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_7
    iput-object v3, p0, Landroidx/fragment/app/j0;->e:Ljava/util/ArrayList;

    .line 101
    .line 102
    return v4
.end method

.method public final k()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/j0;->A:Z

    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroidx/fragment/app/j0;->u(Z)Z

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/j0;->e()Ljava/util/HashSet;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Landroidx/fragment/app/i;

    .line 26
    .line 27
    invoke-virtual {v1}, Landroidx/fragment/app/i;->e()V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, -0x1

    .line 32
    invoke-virtual {p0, v0}, Landroidx/fragment/app/j0;->p(I)V

    .line 33
    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Landroidx/fragment/app/j0;->n:Landroidx/fragment/app/v;

    .line 37
    .line 38
    iput-object v0, p0, Landroidx/fragment/app/j0;->o:Lo9/e;

    .line 39
    .line 40
    iput-object v0, p0, Landroidx/fragment/app/j0;->p:Landroidx/fragment/app/s;

    .line 41
    .line 42
    iget-object v1, p0, Landroidx/fragment/app/j0;->g:La/q;

    .line 43
    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    iget-object v1, p0, Landroidx/fragment/app/j0;->h:Landroidx/fragment/app/b0;

    .line 47
    .line 48
    iget-object v1, v1, Landroidx/fragment/app/b0;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_1

    .line 59
    .line 60
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    check-cast v2, La/a;

    .line 65
    .line 66
    invoke-interface {v2}, La/a;->cancel()V

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    iput-object v0, p0, Landroidx/fragment/app/j0;->g:La/q;

    .line 71
    .line 72
    :cond_2
    iget-object v0, p0, Landroidx/fragment/app/j0;->t:La7/f;

    .line 73
    .line 74
    if-eqz v0, :cond_3

    .line 75
    .line 76
    invoke-virtual {v0}, La7/f;->H()V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Landroidx/fragment/app/j0;->u:La7/f;

    .line 80
    .line 81
    invoke-virtual {v0}, La7/f;->H()V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Landroidx/fragment/app/j0;->v:La7/f;

    .line 85
    .line 86
    invoke-virtual {v0}, La7/f;->H()V

    .line 87
    .line 88
    .line 89
    :cond_3
    return-void
.end method

.method public final l()Z
    .locals 5

    .line 1
    iget v0, p0, Landroidx/fragment/app/j0;->m:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ge v0, v2, :cond_0

    .line 6
    .line 7
    return v1

    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/j0;->c:La1/b;

    .line 9
    .line 10
    invoke-virtual {v0}, La1/b;->w()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_3

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Landroidx/fragment/app/s;

    .line 29
    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    iget-boolean v4, v3, Landroidx/fragment/app/s;->z:Z

    .line 33
    .line 34
    if-nez v4, :cond_2

    .line 35
    .line 36
    iget-object v3, v3, Landroidx/fragment/app/s;->u:Landroidx/fragment/app/k0;

    .line 37
    .line 38
    invoke-virtual {v3}, Landroidx/fragment/app/j0;->l()Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    const/4 v3, 0x0

    .line 44
    :goto_0
    if-eqz v3, :cond_1

    .line 45
    .line 46
    return v2

    .line 47
    :cond_3
    return v1
.end method

.method public final m()V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/fragment/app/j0;->m:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/j0;->c:La1/b;

    .line 8
    .line 9
    invoke-virtual {v0}, La1/b;->w()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Landroidx/fragment/app/s;

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    iget-boolean v2, v1, Landroidx/fragment/app/s;->z:Z

    .line 32
    .line 33
    if-nez v2, :cond_1

    .line 34
    .line 35
    iget-object v1, v1, Landroidx/fragment/app/s;->u:Landroidx/fragment/app/k0;

    .line 36
    .line 37
    invoke-virtual {v1}, Landroidx/fragment/app/j0;->m()V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    return-void
.end method

.method public final n(Landroidx/fragment/app/s;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p1, Landroidx/fragment/app/s;->f:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/fragment/app/j0;->c:La1/b;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, La1/b;->l(Ljava/lang/String;)Landroidx/fragment/app/s;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p1, Landroidx/fragment/app/s;->s:Landroidx/fragment/app/j0;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Landroidx/fragment/app/j0;->H(Landroidx/fragment/app/s;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iget-object v1, p1, Landroidx/fragment/app/s;->k:Ljava/lang/Boolean;

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eq v1, v0, :cond_1

    .line 35
    .line 36
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iput-object v0, p1, Landroidx/fragment/app/s;->k:Ljava/lang/Boolean;

    .line 41
    .line 42
    iget-object p1, p1, Landroidx/fragment/app/s;->u:Landroidx/fragment/app/k0;

    .line 43
    .line 44
    invoke-virtual {p1}, Landroidx/fragment/app/j0;->Z()V

    .line 45
    .line 46
    .line 47
    iget-object v0, p1, Landroidx/fragment/app/j0;->q:Landroidx/fragment/app/s;

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Landroidx/fragment/app/j0;->n(Landroidx/fragment/app/s;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    return-void
.end method

.method public final o()Z
    .locals 5

    .line 1
    iget v0, p0, Landroidx/fragment/app/j0;->m:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ge v0, v2, :cond_0

    .line 6
    .line 7
    return v1

    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/j0;->c:La1/b;

    .line 9
    .line 10
    invoke-virtual {v0}, La1/b;->w()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_3

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Landroidx/fragment/app/s;

    .line 29
    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    invoke-static {v3}, Landroidx/fragment/app/j0;->G(Landroidx/fragment/app/s;)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_1

    .line 37
    .line 38
    iget-boolean v4, v3, Landroidx/fragment/app/s;->z:Z

    .line 39
    .line 40
    if-nez v4, :cond_2

    .line 41
    .line 42
    iget-object v3, v3, Landroidx/fragment/app/s;->u:Landroidx/fragment/app/k0;

    .line 43
    .line 44
    invoke-virtual {v3}, Landroidx/fragment/app/j0;->o()Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    goto :goto_1

    .line 49
    :cond_2
    const/4 v3, 0x0

    .line 50
    :goto_1
    if-eqz v3, :cond_1

    .line 51
    .line 52
    const/4 v1, 0x1

    .line 53
    goto :goto_0

    .line 54
    :cond_3
    return v1
.end method

.method public final p(I)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    iput-boolean v0, p0, Landroidx/fragment/app/j0;->b:Z

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/fragment/app/j0;->c:La1/b;

    .line 6
    .line 7
    iget-object v2, v2, La1/b;->c:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Landroidx/fragment/app/p0;

    .line 30
    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    iput p1, v3, Landroidx/fragment/app/p0;->e:I

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/j0;->J(IZ)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroidx/fragment/app/j0;->e()Ljava/util/HashSet;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_2

    .line 52
    .line 53
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Landroidx/fragment/app/i;

    .line 58
    .line 59
    invoke-virtual {v2}, Landroidx/fragment/app/i;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :catchall_0
    move-exception p1

    .line 64
    goto :goto_2

    .line 65
    :cond_2
    iput-boolean v1, p0, Landroidx/fragment/app/j0;->b:Z

    .line 66
    .line 67
    invoke-virtual {p0, v0}, Landroidx/fragment/app/j0;->u(Z)Z

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :goto_2
    iput-boolean v1, p0, Landroidx/fragment/app/j0;->b:Z

    .line 72
    .line 73
    throw p1
.end method

.method public final q()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/j0;->B:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Landroidx/fragment/app/j0;->B:Z

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/j0;->X()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final r(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9

    .line 1
    const-string v0, "    "

    .line 2
    .line 3
    invoke-static {p1, v0}, Lea/q;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroidx/fragment/app/j0;->c:La1/b;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v3, "    "

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    iget-object v3, v1, La1/b;->c:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v3, Ljava/util/HashMap;

    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-nez v4, :cond_1b

    .line 38
    .line 39
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string v4, "Active Fragments:"

    .line 43
    .line 44
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-eqz v4, :cond_1b

    .line 60
    .line 61
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    check-cast v4, Landroidx/fragment/app/p0;

    .line 66
    .line 67
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    if-eqz v4, :cond_1a

    .line 71
    .line 72
    iget-object v4, v4, Landroidx/fragment/app/p0;->c:Landroidx/fragment/app/s;

    .line 73
    .line 74
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    const-string v5, "mFragmentId=#"

    .line 84
    .line 85
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget v5, v4, Landroidx/fragment/app/s;->w:I

    .line 89
    .line 90
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    const-string v5, " mContainerId=#"

    .line 98
    .line 99
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    iget v5, v4, Landroidx/fragment/app/s;->x:I

    .line 103
    .line 104
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    const-string v5, " mTag="

    .line 112
    .line 113
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    iget-object v5, v4, Landroidx/fragment/app/s;->y:Ljava/lang/String;

    .line 117
    .line 118
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    const-string v5, "mState="

    .line 125
    .line 126
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    iget v5, v4, Landroidx/fragment/app/s;->a:I

    .line 130
    .line 131
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 132
    .line 133
    .line 134
    const-string v5, " mWho="

    .line 135
    .line 136
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    iget-object v5, v4, Landroidx/fragment/app/s;->f:Ljava/lang/String;

    .line 140
    .line 141
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    const-string v5, " mBackStackNesting="

    .line 145
    .line 146
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    iget v5, v4, Landroidx/fragment/app/s;->r:I

    .line 150
    .line 151
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    const-string v5, "mAdded="

    .line 158
    .line 159
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    iget-boolean v5, v4, Landroidx/fragment/app/s;->l:Z

    .line 163
    .line 164
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Z)V

    .line 165
    .line 166
    .line 167
    const-string v5, " mRemoving="

    .line 168
    .line 169
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    iget-boolean v5, v4, Landroidx/fragment/app/s;->m:Z

    .line 173
    .line 174
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Z)V

    .line 175
    .line 176
    .line 177
    const-string v5, " mFromLayout="

    .line 178
    .line 179
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    iget-boolean v5, v4, Landroidx/fragment/app/s;->n:Z

    .line 183
    .line 184
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Z)V

    .line 185
    .line 186
    .line 187
    const-string v5, " mInLayout="

    .line 188
    .line 189
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    iget-boolean v5, v4, Landroidx/fragment/app/s;->o:Z

    .line 193
    .line 194
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    const-string v5, "mHidden="

    .line 201
    .line 202
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    iget-boolean v5, v4, Landroidx/fragment/app/s;->z:Z

    .line 206
    .line 207
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Z)V

    .line 208
    .line 209
    .line 210
    const-string v5, " mDetached="

    .line 211
    .line 212
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    iget-boolean v5, v4, Landroidx/fragment/app/s;->A:Z

    .line 216
    .line 217
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Z)V

    .line 218
    .line 219
    .line 220
    const-string v5, " mMenuVisible="

    .line 221
    .line 222
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    iget-boolean v5, v4, Landroidx/fragment/app/s;->C:Z

    .line 226
    .line 227
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Z)V

    .line 228
    .line 229
    .line 230
    const-string v5, " mHasMenu="

    .line 231
    .line 232
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    const/4 v5, 0x0

    .line 236
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    const-string v6, "mRetainInstance="

    .line 243
    .line 244
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    iget-boolean v6, v4, Landroidx/fragment/app/s;->B:Z

    .line 248
    .line 249
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 250
    .line 251
    .line 252
    const-string v6, " mUserVisibleHint="

    .line 253
    .line 254
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    iget-boolean v6, v4, Landroidx/fragment/app/s;->H:Z

    .line 258
    .line 259
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 260
    .line 261
    .line 262
    iget-object v6, v4, Landroidx/fragment/app/s;->s:Landroidx/fragment/app/j0;

    .line 263
    .line 264
    if-eqz v6, :cond_0

    .line 265
    .line 266
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    const-string v6, "mFragmentManager="

    .line 270
    .line 271
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    iget-object v6, v4, Landroidx/fragment/app/s;->s:Landroidx/fragment/app/j0;

    .line 275
    .line 276
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 277
    .line 278
    .line 279
    :cond_0
    iget-object v6, v4, Landroidx/fragment/app/s;->t:Landroidx/fragment/app/v;

    .line 280
    .line 281
    if-eqz v6, :cond_1

    .line 282
    .line 283
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    const-string v6, "mHost="

    .line 287
    .line 288
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    iget-object v6, v4, Landroidx/fragment/app/s;->t:Landroidx/fragment/app/v;

    .line 292
    .line 293
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 294
    .line 295
    .line 296
    :cond_1
    iget-object v6, v4, Landroidx/fragment/app/s;->v:Landroidx/fragment/app/s;

    .line 297
    .line 298
    if-eqz v6, :cond_2

    .line 299
    .line 300
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    const-string v6, "mParentFragment="

    .line 304
    .line 305
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    iget-object v6, v4, Landroidx/fragment/app/s;->v:Landroidx/fragment/app/s;

    .line 309
    .line 310
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 311
    .line 312
    .line 313
    :cond_2
    iget-object v6, v4, Landroidx/fragment/app/s;->g:Landroid/os/Bundle;

    .line 314
    .line 315
    if-eqz v6, :cond_3

    .line 316
    .line 317
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    const-string v6, "mArguments="

    .line 321
    .line 322
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    iget-object v6, v4, Landroidx/fragment/app/s;->g:Landroid/os/Bundle;

    .line 326
    .line 327
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 328
    .line 329
    .line 330
    :cond_3
    iget-object v6, v4, Landroidx/fragment/app/s;->b:Landroid/os/Bundle;

    .line 331
    .line 332
    if-eqz v6, :cond_4

    .line 333
    .line 334
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    const-string v6, "mSavedFragmentState="

    .line 338
    .line 339
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    iget-object v6, v4, Landroidx/fragment/app/s;->b:Landroid/os/Bundle;

    .line 343
    .line 344
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 345
    .line 346
    .line 347
    :cond_4
    iget-object v6, v4, Landroidx/fragment/app/s;->c:Landroid/util/SparseArray;

    .line 348
    .line 349
    if-eqz v6, :cond_5

    .line 350
    .line 351
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    const-string v6, "mSavedViewState="

    .line 355
    .line 356
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    iget-object v6, v4, Landroidx/fragment/app/s;->c:Landroid/util/SparseArray;

    .line 360
    .line 361
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 362
    .line 363
    .line 364
    :cond_5
    iget-object v6, v4, Landroidx/fragment/app/s;->d:Landroid/os/Bundle;

    .line 365
    .line 366
    if-eqz v6, :cond_6

    .line 367
    .line 368
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    const-string v6, "mSavedViewRegistryState="

    .line 372
    .line 373
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    iget-object v6, v4, Landroidx/fragment/app/s;->d:Landroid/os/Bundle;

    .line 377
    .line 378
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 379
    .line 380
    .line 381
    :cond_6
    iget-object v6, v4, Landroidx/fragment/app/s;->h:Landroidx/fragment/app/s;

    .line 382
    .line 383
    const/4 v7, 0x0

    .line 384
    if-eqz v6, :cond_7

    .line 385
    .line 386
    goto :goto_1

    .line 387
    :cond_7
    iget-object v6, v4, Landroidx/fragment/app/s;->s:Landroidx/fragment/app/j0;

    .line 388
    .line 389
    if-eqz v6, :cond_8

    .line 390
    .line 391
    iget-object v8, v4, Landroidx/fragment/app/s;->i:Ljava/lang/String;

    .line 392
    .line 393
    if-eqz v8, :cond_8

    .line 394
    .line 395
    iget-object v6, v6, Landroidx/fragment/app/j0;->c:La1/b;

    .line 396
    .line 397
    invoke-virtual {v6, v8}, La1/b;->l(Ljava/lang/String;)Landroidx/fragment/app/s;

    .line 398
    .line 399
    .line 400
    move-result-object v6

    .line 401
    goto :goto_1

    .line 402
    :cond_8
    move-object v6, v7

    .line 403
    :goto_1
    if-eqz v6, :cond_9

    .line 404
    .line 405
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    const-string v7, "mTarget="

    .line 409
    .line 410
    invoke-virtual {p3, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 411
    .line 412
    .line 413
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 414
    .line 415
    .line 416
    const-string v6, " mTargetRequestCode="

    .line 417
    .line 418
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    iget v6, v4, Landroidx/fragment/app/s;->j:I

    .line 422
    .line 423
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 424
    .line 425
    .line 426
    :cond_9
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 427
    .line 428
    .line 429
    const-string v6, "mPopDirection="

    .line 430
    .line 431
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 432
    .line 433
    .line 434
    iget-object v6, v4, Landroidx/fragment/app/s;->I:Landroidx/fragment/app/p;

    .line 435
    .line 436
    if-nez v6, :cond_a

    .line 437
    .line 438
    const/4 v6, 0x0

    .line 439
    goto :goto_2

    .line 440
    :cond_a
    iget-boolean v6, v6, Landroidx/fragment/app/p;->a:Z

    .line 441
    .line 442
    :goto_2
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 443
    .line 444
    .line 445
    iget-object v6, v4, Landroidx/fragment/app/s;->I:Landroidx/fragment/app/p;

    .line 446
    .line 447
    if-nez v6, :cond_b

    .line 448
    .line 449
    const/4 v6, 0x0

    .line 450
    goto :goto_3

    .line 451
    :cond_b
    iget v6, v6, Landroidx/fragment/app/p;->b:I

    .line 452
    .line 453
    :goto_3
    if-eqz v6, :cond_d

    .line 454
    .line 455
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    const-string v6, "getEnterAnim="

    .line 459
    .line 460
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 461
    .line 462
    .line 463
    iget-object v6, v4, Landroidx/fragment/app/s;->I:Landroidx/fragment/app/p;

    .line 464
    .line 465
    if-nez v6, :cond_c

    .line 466
    .line 467
    const/4 v6, 0x0

    .line 468
    goto :goto_4

    .line 469
    :cond_c
    iget v6, v6, Landroidx/fragment/app/p;->b:I

    .line 470
    .line 471
    :goto_4
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 472
    .line 473
    .line 474
    :cond_d
    iget-object v6, v4, Landroidx/fragment/app/s;->I:Landroidx/fragment/app/p;

    .line 475
    .line 476
    if-nez v6, :cond_e

    .line 477
    .line 478
    const/4 v6, 0x0

    .line 479
    goto :goto_5

    .line 480
    :cond_e
    iget v6, v6, Landroidx/fragment/app/p;->c:I

    .line 481
    .line 482
    :goto_5
    if-eqz v6, :cond_10

    .line 483
    .line 484
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 485
    .line 486
    .line 487
    const-string v6, "getExitAnim="

    .line 488
    .line 489
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 490
    .line 491
    .line 492
    iget-object v6, v4, Landroidx/fragment/app/s;->I:Landroidx/fragment/app/p;

    .line 493
    .line 494
    if-nez v6, :cond_f

    .line 495
    .line 496
    const/4 v6, 0x0

    .line 497
    goto :goto_6

    .line 498
    :cond_f
    iget v6, v6, Landroidx/fragment/app/p;->c:I

    .line 499
    .line 500
    :goto_6
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 501
    .line 502
    .line 503
    :cond_10
    iget-object v6, v4, Landroidx/fragment/app/s;->I:Landroidx/fragment/app/p;

    .line 504
    .line 505
    if-nez v6, :cond_11

    .line 506
    .line 507
    const/4 v6, 0x0

    .line 508
    goto :goto_7

    .line 509
    :cond_11
    iget v6, v6, Landroidx/fragment/app/p;->d:I

    .line 510
    .line 511
    :goto_7
    if-eqz v6, :cond_13

    .line 512
    .line 513
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 514
    .line 515
    .line 516
    const-string v6, "getPopEnterAnim="

    .line 517
    .line 518
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 519
    .line 520
    .line 521
    iget-object v6, v4, Landroidx/fragment/app/s;->I:Landroidx/fragment/app/p;

    .line 522
    .line 523
    if-nez v6, :cond_12

    .line 524
    .line 525
    const/4 v6, 0x0

    .line 526
    goto :goto_8

    .line 527
    :cond_12
    iget v6, v6, Landroidx/fragment/app/p;->d:I

    .line 528
    .line 529
    :goto_8
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 530
    .line 531
    .line 532
    :cond_13
    iget-object v6, v4, Landroidx/fragment/app/s;->I:Landroidx/fragment/app/p;

    .line 533
    .line 534
    if-nez v6, :cond_14

    .line 535
    .line 536
    const/4 v6, 0x0

    .line 537
    goto :goto_9

    .line 538
    :cond_14
    iget v6, v6, Landroidx/fragment/app/p;->e:I

    .line 539
    .line 540
    :goto_9
    if-eqz v6, :cond_16

    .line 541
    .line 542
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 543
    .line 544
    .line 545
    const-string v6, "getPopExitAnim="

    .line 546
    .line 547
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 548
    .line 549
    .line 550
    iget-object v6, v4, Landroidx/fragment/app/s;->I:Landroidx/fragment/app/p;

    .line 551
    .line 552
    if-nez v6, :cond_15

    .line 553
    .line 554
    goto :goto_a

    .line 555
    :cond_15
    iget v5, v6, Landroidx/fragment/app/p;->e:I

    .line 556
    .line 557
    :goto_a
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 558
    .line 559
    .line 560
    :cond_16
    iget-object v5, v4, Landroidx/fragment/app/s;->E:Landroid/view/ViewGroup;

    .line 561
    .line 562
    if-eqz v5, :cond_17

    .line 563
    .line 564
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 565
    .line 566
    .line 567
    const-string v5, "mContainer="

    .line 568
    .line 569
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 570
    .line 571
    .line 572
    iget-object v5, v4, Landroidx/fragment/app/s;->E:Landroid/view/ViewGroup;

    .line 573
    .line 574
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 575
    .line 576
    .line 577
    :cond_17
    iget-object v5, v4, Landroidx/fragment/app/s;->F:Landroid/view/View;

    .line 578
    .line 579
    if-eqz v5, :cond_18

    .line 580
    .line 581
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 582
    .line 583
    .line 584
    const-string v5, "mView="

    .line 585
    .line 586
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 587
    .line 588
    .line 589
    iget-object v5, v4, Landroidx/fragment/app/s;->F:Landroid/view/View;

    .line 590
    .line 591
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 592
    .line 593
    .line 594
    :cond_18
    invoke-virtual {v4}, Landroidx/fragment/app/s;->j()Landroid/content/Context;

    .line 595
    .line 596
    .line 597
    move-result-object v5

    .line 598
    if-eqz v5, :cond_19

    .line 599
    .line 600
    new-instance v5, La7/f;

    .line 601
    .line 602
    invoke-interface {v4}, Landroidx/lifecycle/a1;->e()Landroidx/lifecycle/z0;

    .line 603
    .line 604
    .line 605
    move-result-object v6

    .line 606
    invoke-direct {v5, v4, v6}, La7/f;-><init>(Landroidx/lifecycle/w;Landroidx/lifecycle/z0;)V

    .line 607
    .line 608
    .line 609
    invoke-virtual {v5, v2, p3}, La7/f;->z(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 610
    .line 611
    .line 612
    :cond_19
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 613
    .line 614
    .line 615
    new-instance v5, Ljava/lang/StringBuilder;

    .line 616
    .line 617
    const-string v6, "Child "

    .line 618
    .line 619
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 620
    .line 621
    .line 622
    iget-object v6, v4, Landroidx/fragment/app/s;->u:Landroidx/fragment/app/k0;

    .line 623
    .line 624
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 625
    .line 626
    .line 627
    const-string v6, ":"

    .line 628
    .line 629
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    .line 631
    .line 632
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 633
    .line 634
    .line 635
    move-result-object v5

    .line 636
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 637
    .line 638
    .line 639
    iget-object v4, v4, Landroidx/fragment/app/s;->u:Landroidx/fragment/app/k0;

    .line 640
    .line 641
    const-string v5, "  "

    .line 642
    .line 643
    invoke-static {v2, v5}, Lea/q;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 644
    .line 645
    .line 646
    move-result-object v5

    .line 647
    invoke-virtual {v4, v5, p2, p3, p4}, Landroidx/fragment/app/j0;->r(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 648
    .line 649
    .line 650
    goto/16 :goto_0

    .line 651
    .line 652
    :cond_1a
    const-string v4, "null"

    .line 653
    .line 654
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 655
    .line 656
    .line 657
    goto/16 :goto_0

    .line 658
    .line 659
    :cond_1b
    iget-object p2, v1, La1/b;->b:Ljava/lang/Object;

    .line 660
    .line 661
    check-cast p2, Ljava/util/ArrayList;

    .line 662
    .line 663
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 664
    .line 665
    .line 666
    move-result p4

    .line 667
    const/4 v1, 0x0

    .line 668
    if-lez p4, :cond_1c

    .line 669
    .line 670
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 671
    .line 672
    .line 673
    const-string v2, "Added Fragments:"

    .line 674
    .line 675
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 676
    .line 677
    .line 678
    const/4 v2, 0x0

    .line 679
    :goto_b
    if-ge v2, p4, :cond_1c

    .line 680
    .line 681
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 682
    .line 683
    .line 684
    move-result-object v3

    .line 685
    check-cast v3, Landroidx/fragment/app/s;

    .line 686
    .line 687
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 688
    .line 689
    .line 690
    const-string v4, "  #"

    .line 691
    .line 692
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 693
    .line 694
    .line 695
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 696
    .line 697
    .line 698
    const-string v4, ": "

    .line 699
    .line 700
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 701
    .line 702
    .line 703
    invoke-virtual {v3}, Landroidx/fragment/app/s;->toString()Ljava/lang/String;

    .line 704
    .line 705
    .line 706
    move-result-object v3

    .line 707
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 708
    .line 709
    .line 710
    add-int/lit8 v2, v2, 0x1

    .line 711
    .line 712
    goto :goto_b

    .line 713
    :cond_1c
    iget-object p2, p0, Landroidx/fragment/app/j0;->e:Ljava/util/ArrayList;

    .line 714
    .line 715
    if-eqz p2, :cond_1d

    .line 716
    .line 717
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 718
    .line 719
    .line 720
    move-result p2

    .line 721
    if-lez p2, :cond_1d

    .line 722
    .line 723
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 724
    .line 725
    .line 726
    const-string p4, "Fragments Created Menus:"

    .line 727
    .line 728
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 729
    .line 730
    .line 731
    const/4 p4, 0x0

    .line 732
    :goto_c
    if-ge p4, p2, :cond_1d

    .line 733
    .line 734
    iget-object v2, p0, Landroidx/fragment/app/j0;->e:Ljava/util/ArrayList;

    .line 735
    .line 736
    invoke-virtual {v2, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 737
    .line 738
    .line 739
    move-result-object v2

    .line 740
    check-cast v2, Landroidx/fragment/app/s;

    .line 741
    .line 742
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 743
    .line 744
    .line 745
    const-string v3, "  #"

    .line 746
    .line 747
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 748
    .line 749
    .line 750
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    .line 751
    .line 752
    .line 753
    const-string v3, ": "

    .line 754
    .line 755
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 756
    .line 757
    .line 758
    invoke-virtual {v2}, Landroidx/fragment/app/s;->toString()Ljava/lang/String;

    .line 759
    .line 760
    .line 761
    move-result-object v2

    .line 762
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 763
    .line 764
    .line 765
    add-int/lit8 p4, p4, 0x1

    .line 766
    .line 767
    goto :goto_c

    .line 768
    :cond_1d
    iget-object p2, p0, Landroidx/fragment/app/j0;->d:Ljava/util/ArrayList;

    .line 769
    .line 770
    if-eqz p2, :cond_1e

    .line 771
    .line 772
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 773
    .line 774
    .line 775
    move-result p2

    .line 776
    if-lez p2, :cond_1e

    .line 777
    .line 778
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 779
    .line 780
    .line 781
    const-string p4, "Back Stack:"

    .line 782
    .line 783
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 784
    .line 785
    .line 786
    const/4 p4, 0x0

    .line 787
    :goto_d
    if-ge p4, p2, :cond_1e

    .line 788
    .line 789
    iget-object v2, p0, Landroidx/fragment/app/j0;->d:Ljava/util/ArrayList;

    .line 790
    .line 791
    invoke-virtual {v2, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 792
    .line 793
    .line 794
    move-result-object v2

    .line 795
    check-cast v2, Landroidx/fragment/app/a;

    .line 796
    .line 797
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 798
    .line 799
    .line 800
    const-string v3, "  #"

    .line 801
    .line 802
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 803
    .line 804
    .line 805
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    .line 806
    .line 807
    .line 808
    const-string v3, ": "

    .line 809
    .line 810
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 811
    .line 812
    .line 813
    invoke-virtual {v2}, Landroidx/fragment/app/a;->toString()Ljava/lang/String;

    .line 814
    .line 815
    .line 816
    move-result-object v3

    .line 817
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 818
    .line 819
    .line 820
    const/4 v3, 0x1

    .line 821
    invoke-virtual {v2, v0, p3, v3}, Landroidx/fragment/app/a;->g(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 822
    .line 823
    .line 824
    add-int/lit8 p4, p4, 0x1

    .line 825
    .line 826
    goto :goto_d

    .line 827
    :cond_1e
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 828
    .line 829
    .line 830
    new-instance p2, Ljava/lang/StringBuilder;

    .line 831
    .line 832
    const-string p4, "Back Stack Index: "

    .line 833
    .line 834
    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 835
    .line 836
    .line 837
    iget-object p4, p0, Landroidx/fragment/app/j0;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 838
    .line 839
    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 840
    .line 841
    .line 842
    move-result p4

    .line 843
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 844
    .line 845
    .line 846
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 847
    .line 848
    .line 849
    move-result-object p2

    .line 850
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 851
    .line 852
    .line 853
    iget-object p2, p0, Landroidx/fragment/app/j0;->a:Ljava/util/ArrayList;

    .line 854
    .line 855
    monitor-enter p2

    .line 856
    :try_start_0
    iget-object p4, p0, Landroidx/fragment/app/j0;->a:Ljava/util/ArrayList;

    .line 857
    .line 858
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    .line 859
    .line 860
    .line 861
    move-result p4

    .line 862
    if-lez p4, :cond_1f

    .line 863
    .line 864
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 865
    .line 866
    .line 867
    const-string v0, "Pending Actions:"

    .line 868
    .line 869
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 870
    .line 871
    .line 872
    :goto_e
    if-ge v1, p4, :cond_1f

    .line 873
    .line 874
    iget-object v0, p0, Landroidx/fragment/app/j0;->a:Ljava/util/ArrayList;

    .line 875
    .line 876
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 877
    .line 878
    .line 879
    move-result-object v0

    .line 880
    check-cast v0, Landroidx/fragment/app/h0;

    .line 881
    .line 882
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 883
    .line 884
    .line 885
    const-string v2, "  #"

    .line 886
    .line 887
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 888
    .line 889
    .line 890
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 891
    .line 892
    .line 893
    const-string v2, ": "

    .line 894
    .line 895
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 896
    .line 897
    .line 898
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 899
    .line 900
    .line 901
    add-int/lit8 v1, v1, 0x1

    .line 902
    .line 903
    goto :goto_e

    .line 904
    :catchall_0
    move-exception p1

    .line 905
    goto :goto_f

    .line 906
    :cond_1f
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 907
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 908
    .line 909
    .line 910
    const-string p2, "FragmentManager misc state:"

    .line 911
    .line 912
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 913
    .line 914
    .line 915
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 916
    .line 917
    .line 918
    const-string p2, "  mHost="

    .line 919
    .line 920
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 921
    .line 922
    .line 923
    iget-object p2, p0, Landroidx/fragment/app/j0;->n:Landroidx/fragment/app/v;

    .line 924
    .line 925
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 926
    .line 927
    .line 928
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 929
    .line 930
    .line 931
    const-string p2, "  mContainer="

    .line 932
    .line 933
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 934
    .line 935
    .line 936
    iget-object p2, p0, Landroidx/fragment/app/j0;->o:Lo9/e;

    .line 937
    .line 938
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 939
    .line 940
    .line 941
    iget-object p2, p0, Landroidx/fragment/app/j0;->p:Landroidx/fragment/app/s;

    .line 942
    .line 943
    if-eqz p2, :cond_20

    .line 944
    .line 945
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 946
    .line 947
    .line 948
    const-string p2, "  mParent="

    .line 949
    .line 950
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 951
    .line 952
    .line 953
    iget-object p2, p0, Landroidx/fragment/app/j0;->p:Landroidx/fragment/app/s;

    .line 954
    .line 955
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 956
    .line 957
    .line 958
    :cond_20
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 959
    .line 960
    .line 961
    const-string p2, "  mCurState="

    .line 962
    .line 963
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 964
    .line 965
    .line 966
    iget p2, p0, Landroidx/fragment/app/j0;->m:I

    .line 967
    .line 968
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    .line 969
    .line 970
    .line 971
    const-string p2, " mStateSaved="

    .line 972
    .line 973
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 974
    .line 975
    .line 976
    iget-boolean p2, p0, Landroidx/fragment/app/j0;->y:Z

    .line 977
    .line 978
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    .line 979
    .line 980
    .line 981
    const-string p2, " mStopped="

    .line 982
    .line 983
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 984
    .line 985
    .line 986
    iget-boolean p2, p0, Landroidx/fragment/app/j0;->z:Z

    .line 987
    .line 988
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    .line 989
    .line 990
    .line 991
    const-string p2, " mDestroyed="

    .line 992
    .line 993
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 994
    .line 995
    .line 996
    iget-boolean p2, p0, Landroidx/fragment/app/j0;->A:Z

    .line 997
    .line 998
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 999
    .line 1000
    .line 1001
    iget-boolean p2, p0, Landroidx/fragment/app/j0;->x:Z

    .line 1002
    .line 1003
    if-eqz p2, :cond_21

    .line 1004
    .line 1005
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1006
    .line 1007
    .line 1008
    const-string p1, "  mNeedMenuInvalidate="

    .line 1009
    .line 1010
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1011
    .line 1012
    .line 1013
    iget-boolean p1, p0, Landroidx/fragment/app/j0;->x:Z

    .line 1014
    .line 1015
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1016
    .line 1017
    .line 1018
    :cond_21
    return-void

    .line 1019
    :goto_f
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1020
    throw p1
.end method

.method public final s(Landroidx/fragment/app/h0;Z)V
    .locals 2

    .line 1
    if-nez p2, :cond_3

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/fragment/app/j0;->n:Landroidx/fragment/app/v;

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-boolean p1, p0, Landroidx/fragment/app/j0;->A:Z

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 12
    .line 13
    const-string p2, "FragmentManager has been destroyed"

    .line 14
    .line 15
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw p1

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string p2, "FragmentManager has not been attached to a host."

    .line 22
    .line 23
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1

    .line 27
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/j0;->I()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 35
    .line 36
    const-string p2, "Can not perform this action after onSaveInstanceState"

    .line 37
    .line 38
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p1

    .line 42
    :cond_3
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/j0;->a:Ljava/util/ArrayList;

    .line 43
    .line 44
    monitor-enter v0

    .line 45
    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/j0;->n:Landroidx/fragment/app/v;

    .line 46
    .line 47
    if-nez v1, :cond_5

    .line 48
    .line 49
    if-eqz p2, :cond_4

    .line 50
    .line 51
    monitor-exit v0

    .line 52
    return-void

    .line 53
    :catchall_0
    move-exception p1

    .line 54
    goto :goto_1

    .line 55
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 56
    .line 57
    const-string p2, "Activity has been destroyed"

    .line 58
    .line 59
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p1

    .line 63
    :cond_5
    iget-object p2, p0, Landroidx/fragment/app/j0;->a:Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Landroidx/fragment/app/j0;->R()V

    .line 69
    .line 70
    .line 71
    monitor-exit v0

    .line 72
    return-void

    .line 73
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    throw p1
.end method

.method public final t(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/j0;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_6

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/fragment/app/j0;->n:Landroidx/fragment/app/v;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-boolean p1, p0, Landroidx/fragment/app/j0;->A:Z

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 14
    .line 15
    const-string v0, "FragmentManager has been destroyed"

    .line 16
    .line 17
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p1

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    const-string v0, "FragmentManager has not been attached to a host."

    .line 24
    .line 25
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p1

    .line 29
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v1, p0, Landroidx/fragment/app/j0;->n:Landroidx/fragment/app/v;

    .line 34
    .line 35
    iget-object v1, v1, Landroidx/fragment/app/v;->h:Landroid/os/Handler;

    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    if-ne v0, v1, :cond_5

    .line 42
    .line 43
    if-nez p1, :cond_3

    .line 44
    .line 45
    invoke-virtual {p0}, Landroidx/fragment/app/j0;->I()Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-nez p1, :cond_2

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 53
    .line 54
    const-string v0, "Can not perform this action after onSaveInstanceState"

    .line 55
    .line 56
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p1

    .line 60
    :cond_3
    :goto_0
    iget-object p1, p0, Landroidx/fragment/app/j0;->C:Ljava/util/ArrayList;

    .line 61
    .line 62
    if-nez p1, :cond_4

    .line 63
    .line 64
    new-instance p1, Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .line 68
    .line 69
    iput-object p1, p0, Landroidx/fragment/app/j0;->C:Ljava/util/ArrayList;

    .line 70
    .line 71
    new-instance p1, Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .line 75
    .line 76
    iput-object p1, p0, Landroidx/fragment/app/j0;->D:Ljava/util/ArrayList;

    .line 77
    .line 78
    :cond_4
    const/4 p1, 0x0

    .line 79
    iput-boolean p1, p0, Landroidx/fragment/app/j0;->b:Z

    .line 80
    .line 81
    return-void

    .line 82
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 83
    .line 84
    const-string v0, "Must be called from main thread of fragment host"

    .line 85
    .line 86
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw p1

    .line 90
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 91
    .line 92
    const-string v0, "FragmentManager is already executing transactions"

    .line 93
    .line 94
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const/16 v1, 0x80

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const-string v1, "FragmentManager{"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, " in "

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Landroidx/fragment/app/j0;->p:Landroidx/fragment/app/s;

    .line 30
    .line 31
    const-string v2, "}"

    .line 32
    .line 33
    const-string v3, "{"

    .line 34
    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Landroidx/fragment/app/j0;->p:Landroidx/fragment/app/s;

    .line 52
    .line 53
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/j0;->n:Landroidx/fragment/app/v;

    .line 69
    .line 70
    if-eqz v1, :cond_1

    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    iget-object v1, p0, Landroidx/fragment/app/j0;->n:Landroidx/fragment/app/v;

    .line 87
    .line 88
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_1
    const-string v1, "null"

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    :goto_0
    const-string v1, "}}"

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    return-object v0
.end method

.method public final u(Z)Z
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/j0;->t(Z)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    const/4 v0, 0x0

    .line 6
    :goto_0
    iget-object v1, p0, Landroidx/fragment/app/j0;->C:Ljava/util/ArrayList;

    .line 7
    .line 8
    iget-object v2, p0, Landroidx/fragment/app/j0;->D:Ljava/util/ArrayList;

    .line 9
    .line 10
    iget-object v3, p0, Landroidx/fragment/app/j0;->a:Ljava/util/ArrayList;

    .line 11
    .line 12
    monitor-enter v3

    .line 13
    :try_start_0
    iget-object v4, p0, Landroidx/fragment/app/j0;->a:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    monitor-exit v3

    .line 22
    const/4 v6, 0x0

    .line 23
    goto :goto_2

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto :goto_3

    .line 26
    :cond_0
    iget-object v4, p0, Landroidx/fragment/app/j0;->a:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    const/4 v5, 0x0

    .line 33
    const/4 v6, 0x0

    .line 34
    :goto_1
    if-ge v5, v4, :cond_1

    .line 35
    .line 36
    iget-object v7, p0, Landroidx/fragment/app/j0;->a:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    check-cast v7, Landroidx/fragment/app/h0;

    .line 43
    .line 44
    invoke-interface {v7, v1, v2}, Landroidx/fragment/app/h0;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    or-int/2addr v6, v7

    .line 49
    add-int/lit8 v5, v5, 0x1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    iget-object v1, p0, Landroidx/fragment/app/j0;->a:Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 55
    .line 56
    .line 57
    iget-object v1, p0, Landroidx/fragment/app/j0;->n:Landroidx/fragment/app/v;

    .line 58
    .line 59
    iget-object v1, v1, Landroidx/fragment/app/v;->h:Landroid/os/Handler;

    .line 60
    .line 61
    iget-object v2, p0, Landroidx/fragment/app/j0;->G:Landroidx/fragment/app/e;

    .line 62
    .line 63
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 64
    .line 65
    .line 66
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :goto_2
    if-eqz v6, :cond_2

    .line 68
    .line 69
    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Landroidx/fragment/app/j0;->b:Z

    .line 71
    .line 72
    :try_start_1
    iget-object v1, p0, Landroidx/fragment/app/j0;->C:Ljava/util/ArrayList;

    .line 73
    .line 74
    iget-object v2, p0, Landroidx/fragment/app/j0;->D:Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/j0;->O(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Landroidx/fragment/app/j0;->d()V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :catchall_1
    move-exception p1

    .line 84
    invoke-virtual {p0}, Landroidx/fragment/app/j0;->d()V

    .line 85
    .line 86
    .line 87
    throw p1

    .line 88
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/j0;->Z()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Landroidx/fragment/app/j0;->q()V

    .line 92
    .line 93
    .line 94
    iget-object p1, p0, Landroidx/fragment/app/j0;->c:La1/b;

    .line 95
    .line 96
    iget-object p1, p1, La1/b;->c:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast p1, Ljava/util/HashMap;

    .line 99
    .line 100
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    const/4 v1, 0x0

    .line 105
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-interface {p1, v1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 110
    .line 111
    .line 112
    return v0

    .line 113
    :goto_3
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 114
    throw p1
.end method

.method public final v(Landroidx/fragment/app/a;Z)V
    .locals 1

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/fragment/app/j0;->n:Landroidx/fragment/app/v;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-boolean v0, p0, Landroidx/fragment/app/j0;->A:Z

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    :cond_0
    return-void

    .line 12
    :cond_1
    invoke-virtual {p0, p2}, Landroidx/fragment/app/j0;->t(Z)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Landroidx/fragment/app/j0;->C:Ljava/util/ArrayList;

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/fragment/app/j0;->D:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {p1, p2, v0}, Landroidx/fragment/app/a;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    .line 20
    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    iput-boolean p1, p0, Landroidx/fragment/app/j0;->b:Z

    .line 24
    .line 25
    :try_start_0
    iget-object p1, p0, Landroidx/fragment/app/j0;->C:Ljava/util/ArrayList;

    .line 26
    .line 27
    iget-object p2, p0, Landroidx/fragment/app/j0;->D:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/j0;->O(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroidx/fragment/app/j0;->d()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/fragment/app/j0;->Z()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroidx/fragment/app/j0;->q()V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Landroidx/fragment/app/j0;->c:La1/b;

    .line 42
    .line 43
    iget-object p1, p1, La1/b;->c:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p1, Ljava/util/HashMap;

    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const/4 p2, 0x0

    .line 52
    invoke-static {p2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-interface {p1, p2}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :catchall_0
    move-exception p1

    .line 61
    invoke-virtual {p0}, Landroidx/fragment/app/j0;->d()V

    .line 62
    .line 63
    .line 64
    throw p1
.end method

.method public final w(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    move/from16 v4, p4

    .line 10
    .line 11
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    check-cast v5, Landroidx/fragment/app/a;

    .line 16
    .line 17
    iget-boolean v5, v5, Landroidx/fragment/app/a;->p:Z

    .line 18
    .line 19
    iget-object v6, v1, Landroidx/fragment/app/j0;->E:Ljava/util/ArrayList;

    .line 20
    .line 21
    if-nez v6, :cond_0

    .line 22
    .line 23
    new-instance v6, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v6, v1, Landroidx/fragment/app/j0;->E:Ljava/util/ArrayList;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 32
    .line 33
    .line 34
    :goto_0
    iget-object v6, v1, Landroidx/fragment/app/j0;->E:Ljava/util/ArrayList;

    .line 35
    .line 36
    iget-object v7, v1, Landroidx/fragment/app/j0;->c:La1/b;

    .line 37
    .line 38
    invoke-virtual {v7}, La1/b;->w()Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v8

    .line 42
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 43
    .line 44
    .line 45
    iget-object v6, v1, Landroidx/fragment/app/j0;->q:Landroidx/fragment/app/s;

    .line 46
    .line 47
    move v9, v3

    .line 48
    const/4 v10, 0x0

    .line 49
    :goto_1
    const/4 v11, 0x1

    .line 50
    if-ge v9, v4, :cond_12

    .line 51
    .line 52
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v12

    .line 56
    check-cast v12, Landroidx/fragment/app/a;

    .line 57
    .line 58
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v13

    .line 62
    check-cast v13, Ljava/lang/Boolean;

    .line 63
    .line 64
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    .line 65
    .line 66
    .line 67
    move-result v13

    .line 68
    if-nez v13, :cond_c

    .line 69
    .line 70
    iget-object v13, v1, Landroidx/fragment/app/j0;->E:Ljava/util/ArrayList;

    .line 71
    .line 72
    const/4 v8, 0x0

    .line 73
    :goto_2
    iget-object v15, v12, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 76
    .line 77
    .line 78
    move-result v14

    .line 79
    if-ge v8, v14, :cond_b

    .line 80
    .line 81
    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v14

    .line 85
    check-cast v14, Landroidx/fragment/app/r0;

    .line 86
    .line 87
    iget v3, v14, Landroidx/fragment/app/r0;->a:I

    .line 88
    .line 89
    if-eq v3, v11, :cond_3

    .line 90
    .line 91
    const/4 v11, 0x2

    .line 92
    const/16 v2, 0x9

    .line 93
    .line 94
    if-eq v3, v11, :cond_5

    .line 95
    .line 96
    const/4 v11, 0x3

    .line 97
    if-eq v3, v11, :cond_4

    .line 98
    .line 99
    const/4 v11, 0x6

    .line 100
    if-eq v3, v11, :cond_4

    .line 101
    .line 102
    const/4 v11, 0x7

    .line 103
    if-eq v3, v11, :cond_3

    .line 104
    .line 105
    const/16 v11, 0x8

    .line 106
    .line 107
    if-eq v3, v11, :cond_1

    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_1
    new-instance v3, Landroidx/fragment/app/r0;

    .line 111
    .line 112
    invoke-direct {v3, v2, v6}, Landroidx/fragment/app/r0;-><init>(ILandroidx/fragment/app/s;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v15, v8, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    add-int/lit8 v8, v8, 0x1

    .line 119
    .line 120
    iget-object v2, v14, Landroidx/fragment/app/r0;->b:Landroidx/fragment/app/s;

    .line 121
    .line 122
    move-object v6, v2

    .line 123
    :cond_2
    :goto_3
    move-object/from16 v19, v7

    .line 124
    .line 125
    const/4 v0, 0x1

    .line 126
    goto/16 :goto_7

    .line 127
    .line 128
    :cond_3
    move-object/from16 v19, v7

    .line 129
    .line 130
    const/4 v0, 0x1

    .line 131
    goto/16 :goto_6

    .line 132
    .line 133
    :cond_4
    iget-object v3, v14, Landroidx/fragment/app/r0;->b:Landroidx/fragment/app/s;

    .line 134
    .line 135
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    iget-object v3, v14, Landroidx/fragment/app/r0;->b:Landroidx/fragment/app/s;

    .line 139
    .line 140
    if-ne v3, v6, :cond_2

    .line 141
    .line 142
    new-instance v6, Landroidx/fragment/app/r0;

    .line 143
    .line 144
    invoke-direct {v6, v2, v3}, Landroidx/fragment/app/r0;-><init>(ILandroidx/fragment/app/s;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v15, v8, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    add-int/lit8 v8, v8, 0x1

    .line 151
    .line 152
    move-object/from16 v19, v7

    .line 153
    .line 154
    const/4 v0, 0x1

    .line 155
    const/4 v6, 0x0

    .line 156
    goto/16 :goto_7

    .line 157
    .line 158
    :cond_5
    iget-object v3, v14, Landroidx/fragment/app/r0;->b:Landroidx/fragment/app/s;

    .line 159
    .line 160
    iget v11, v3, Landroidx/fragment/app/s;->x:I

    .line 161
    .line 162
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 163
    .line 164
    .line 165
    move-result v17

    .line 166
    const/16 v16, 0x1

    .line 167
    .line 168
    add-int/lit8 v17, v17, -0x1

    .line 169
    .line 170
    move/from16 v2, v17

    .line 171
    .line 172
    const/16 v17, 0x0

    .line 173
    .line 174
    :goto_4
    if-ltz v2, :cond_9

    .line 175
    .line 176
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v18

    .line 180
    move-object/from16 v19, v7

    .line 181
    .line 182
    move-object/from16 v7, v18

    .line 183
    .line 184
    check-cast v7, Landroidx/fragment/app/s;

    .line 185
    .line 186
    iget v0, v7, Landroidx/fragment/app/s;->x:I

    .line 187
    .line 188
    if-ne v0, v11, :cond_8

    .line 189
    .line 190
    if-ne v7, v3, :cond_6

    .line 191
    .line 192
    const/4 v0, 0x1

    .line 193
    const/16 v17, 0x1

    .line 194
    .line 195
    goto :goto_5

    .line 196
    :cond_6
    if-ne v7, v6, :cond_7

    .line 197
    .line 198
    new-instance v0, Landroidx/fragment/app/r0;

    .line 199
    .line 200
    const/16 v6, 0x9

    .line 201
    .line 202
    invoke-direct {v0, v6, v7}, Landroidx/fragment/app/r0;-><init>(ILandroidx/fragment/app/s;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v15, v8, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    add-int/lit8 v8, v8, 0x1

    .line 209
    .line 210
    const/4 v6, 0x0

    .line 211
    :cond_7
    new-instance v0, Landroidx/fragment/app/r0;

    .line 212
    .line 213
    move-object/from16 v18, v6

    .line 214
    .line 215
    const/4 v6, 0x3

    .line 216
    invoke-direct {v0, v6, v7}, Landroidx/fragment/app/r0;-><init>(ILandroidx/fragment/app/s;)V

    .line 217
    .line 218
    .line 219
    iget v6, v14, Landroidx/fragment/app/r0;->c:I

    .line 220
    .line 221
    iput v6, v0, Landroidx/fragment/app/r0;->c:I

    .line 222
    .line 223
    iget v6, v14, Landroidx/fragment/app/r0;->e:I

    .line 224
    .line 225
    iput v6, v0, Landroidx/fragment/app/r0;->e:I

    .line 226
    .line 227
    iget v6, v14, Landroidx/fragment/app/r0;->d:I

    .line 228
    .line 229
    iput v6, v0, Landroidx/fragment/app/r0;->d:I

    .line 230
    .line 231
    iget v6, v14, Landroidx/fragment/app/r0;->f:I

    .line 232
    .line 233
    iput v6, v0, Landroidx/fragment/app/r0;->f:I

    .line 234
    .line 235
    invoke-virtual {v15, v8, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    const/4 v0, 0x1

    .line 242
    add-int/2addr v8, v0

    .line 243
    move-object/from16 v6, v18

    .line 244
    .line 245
    goto :goto_5

    .line 246
    :cond_8
    const/4 v0, 0x1

    .line 247
    :goto_5
    add-int/lit8 v2, v2, -0x1

    .line 248
    .line 249
    move-object/from16 v0, p1

    .line 250
    .line 251
    move-object/from16 v7, v19

    .line 252
    .line 253
    goto :goto_4

    .line 254
    :cond_9
    move-object/from16 v19, v7

    .line 255
    .line 256
    const/4 v0, 0x1

    .line 257
    if-eqz v17, :cond_a

    .line 258
    .line 259
    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    add-int/lit8 v8, v8, -0x1

    .line 263
    .line 264
    goto :goto_7

    .line 265
    :cond_a
    iput v0, v14, Landroidx/fragment/app/r0;->a:I

    .line 266
    .line 267
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    goto :goto_7

    .line 271
    :goto_6
    iget-object v2, v14, Landroidx/fragment/app/r0;->b:Landroidx/fragment/app/s;

    .line 272
    .line 273
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    :goto_7
    add-int/2addr v8, v0

    .line 277
    move-object/from16 v0, p1

    .line 278
    .line 279
    move-object/from16 v2, p2

    .line 280
    .line 281
    move/from16 v3, p3

    .line 282
    .line 283
    move-object/from16 v7, v19

    .line 284
    .line 285
    const/4 v11, 0x1

    .line 286
    goto/16 :goto_2

    .line 287
    .line 288
    :cond_b
    move-object/from16 v19, v7

    .line 289
    .line 290
    goto :goto_a

    .line 291
    :cond_c
    move-object/from16 v19, v7

    .line 292
    .line 293
    const/4 v0, 0x1

    .line 294
    iget-object v2, v1, Landroidx/fragment/app/j0;->E:Ljava/util/ArrayList;

    .line 295
    .line 296
    iget-object v3, v12, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    .line 297
    .line 298
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 299
    .line 300
    .line 301
    move-result v7

    .line 302
    sub-int/2addr v7, v0

    .line 303
    :goto_8
    if-ltz v7, :cond_f

    .line 304
    .line 305
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v8

    .line 309
    check-cast v8, Landroidx/fragment/app/r0;

    .line 310
    .line 311
    iget v11, v8, Landroidx/fragment/app/r0;->a:I

    .line 312
    .line 313
    if-eq v11, v0, :cond_e

    .line 314
    .line 315
    const/4 v0, 0x3

    .line 316
    if-eq v11, v0, :cond_d

    .line 317
    .line 318
    packed-switch v11, :pswitch_data_0

    .line 319
    .line 320
    .line 321
    goto :goto_9

    .line 322
    :pswitch_0
    iget-object v11, v8, Landroidx/fragment/app/r0;->g:Landroidx/lifecycle/o;

    .line 323
    .line 324
    iput-object v11, v8, Landroidx/fragment/app/r0;->h:Landroidx/lifecycle/o;

    .line 325
    .line 326
    goto :goto_9

    .line 327
    :pswitch_1
    iget-object v6, v8, Landroidx/fragment/app/r0;->b:Landroidx/fragment/app/s;

    .line 328
    .line 329
    goto :goto_9

    .line 330
    :pswitch_2
    const/4 v6, 0x0

    .line 331
    goto :goto_9

    .line 332
    :cond_d
    :pswitch_3
    iget-object v8, v8, Landroidx/fragment/app/r0;->b:Landroidx/fragment/app/s;

    .line 333
    .line 334
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    .line 336
    .line 337
    goto :goto_9

    .line 338
    :cond_e
    const/4 v0, 0x3

    .line 339
    :pswitch_4
    iget-object v8, v8, Landroidx/fragment/app/r0;->b:Landroidx/fragment/app/s;

    .line 340
    .line 341
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    :goto_9
    add-int/lit8 v7, v7, -0x1

    .line 345
    .line 346
    const/4 v0, 0x1

    .line 347
    goto :goto_8

    .line 348
    :cond_f
    :goto_a
    if-nez v10, :cond_11

    .line 349
    .line 350
    iget-boolean v0, v12, Landroidx/fragment/app/a;->g:Z

    .line 351
    .line 352
    if-eqz v0, :cond_10

    .line 353
    .line 354
    goto :goto_b

    .line 355
    :cond_10
    const/4 v10, 0x0

    .line 356
    goto :goto_c

    .line 357
    :cond_11
    :goto_b
    const/4 v10, 0x1

    .line 358
    :goto_c
    add-int/lit8 v9, v9, 0x1

    .line 359
    .line 360
    move-object/from16 v0, p1

    .line 361
    .line 362
    move-object/from16 v2, p2

    .line 363
    .line 364
    move/from16 v3, p3

    .line 365
    .line 366
    move-object/from16 v7, v19

    .line 367
    .line 368
    goto/16 :goto_1

    .line 369
    .line 370
    :cond_12
    move-object/from16 v19, v7

    .line 371
    .line 372
    iget-object v0, v1, Landroidx/fragment/app/j0;->E:Ljava/util/ArrayList;

    .line 373
    .line 374
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 375
    .line 376
    .line 377
    if-nez v5, :cond_15

    .line 378
    .line 379
    iget v0, v1, Landroidx/fragment/app/j0;->m:I

    .line 380
    .line 381
    const/4 v2, 0x1

    .line 382
    if-lt v0, v2, :cond_15

    .line 383
    .line 384
    move/from16 v0, p3

    .line 385
    .line 386
    :goto_d
    if-ge v0, v4, :cond_15

    .line 387
    .line 388
    move-object/from16 v2, p1

    .line 389
    .line 390
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 391
    .line 392
    .line 393
    move-result-object v3

    .line 394
    check-cast v3, Landroidx/fragment/app/a;

    .line 395
    .line 396
    iget-object v3, v3, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    .line 397
    .line 398
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 399
    .line 400
    .line 401
    move-result-object v3

    .line 402
    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 403
    .line 404
    .line 405
    move-result v5

    .line 406
    if-eqz v5, :cond_14

    .line 407
    .line 408
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 409
    .line 410
    .line 411
    move-result-object v5

    .line 412
    check-cast v5, Landroidx/fragment/app/r0;

    .line 413
    .line 414
    iget-object v5, v5, Landroidx/fragment/app/r0;->b:Landroidx/fragment/app/s;

    .line 415
    .line 416
    if-eqz v5, :cond_13

    .line 417
    .line 418
    iget-object v6, v5, Landroidx/fragment/app/s;->s:Landroidx/fragment/app/j0;

    .line 419
    .line 420
    if-eqz v6, :cond_13

    .line 421
    .line 422
    invoke-virtual {v1, v5}, Landroidx/fragment/app/j0;->f(Landroidx/fragment/app/s;)Landroidx/fragment/app/p0;

    .line 423
    .line 424
    .line 425
    move-result-object v5

    .line 426
    move-object/from16 v6, v19

    .line 427
    .line 428
    invoke-virtual {v6, v5}, La1/b;->z(Landroidx/fragment/app/p0;)V

    .line 429
    .line 430
    .line 431
    goto :goto_f

    .line 432
    :cond_13
    move-object/from16 v6, v19

    .line 433
    .line 434
    :goto_f
    move-object/from16 v19, v6

    .line 435
    .line 436
    goto :goto_e

    .line 437
    :cond_14
    move-object/from16 v6, v19

    .line 438
    .line 439
    add-int/lit8 v0, v0, 0x1

    .line 440
    .line 441
    goto :goto_d

    .line 442
    :cond_15
    move-object/from16 v2, p1

    .line 443
    .line 444
    move/from16 v0, p3

    .line 445
    .line 446
    :goto_10
    const/4 v3, -0x1

    .line 447
    if-ge v0, v4, :cond_21

    .line 448
    .line 449
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 450
    .line 451
    .line 452
    move-result-object v5

    .line 453
    check-cast v5, Landroidx/fragment/app/a;

    .line 454
    .line 455
    move-object/from16 v6, p2

    .line 456
    .line 457
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 458
    .line 459
    .line 460
    move-result-object v7

    .line 461
    check-cast v7, Ljava/lang/Boolean;

    .line 462
    .line 463
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 464
    .line 465
    .line 466
    move-result v7

    .line 467
    if-eqz v7, :cond_1c

    .line 468
    .line 469
    invoke-virtual {v5, v3}, Landroidx/fragment/app/a;->d(I)V

    .line 470
    .line 471
    .line 472
    iget-object v3, v5, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    .line 473
    .line 474
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 475
    .line 476
    .line 477
    move-result v7

    .line 478
    const/4 v8, 0x1

    .line 479
    sub-int/2addr v7, v8

    .line 480
    :goto_11
    if-ltz v7, :cond_20

    .line 481
    .line 482
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 483
    .line 484
    .line 485
    move-result-object v9

    .line 486
    check-cast v9, Landroidx/fragment/app/r0;

    .line 487
    .line 488
    iget-object v10, v9, Landroidx/fragment/app/r0;->b:Landroidx/fragment/app/s;

    .line 489
    .line 490
    if-eqz v10, :cond_1b

    .line 491
    .line 492
    iget-object v11, v10, Landroidx/fragment/app/s;->I:Landroidx/fragment/app/p;

    .line 493
    .line 494
    if-nez v11, :cond_16

    .line 495
    .line 496
    goto :goto_12

    .line 497
    :cond_16
    invoke-virtual {v10}, Landroidx/fragment/app/s;->g()Landroidx/fragment/app/p;

    .line 498
    .line 499
    .line 500
    move-result-object v11

    .line 501
    iput-boolean v8, v11, Landroidx/fragment/app/p;->a:Z

    .line 502
    .line 503
    :goto_12
    iget v11, v5, Landroidx/fragment/app/a;->f:I

    .line 504
    .line 505
    const/16 v12, 0x2002

    .line 506
    .line 507
    const/16 v13, 0x1001

    .line 508
    .line 509
    if-eq v11, v13, :cond_19

    .line 510
    .line 511
    const/16 v14, 0x1003

    .line 512
    .line 513
    if-eq v11, v14, :cond_18

    .line 514
    .line 515
    if-eq v11, v12, :cond_17

    .line 516
    .line 517
    const/4 v12, 0x0

    .line 518
    goto :goto_13

    .line 519
    :cond_17
    const/16 v12, 0x1001

    .line 520
    .line 521
    goto :goto_13

    .line 522
    :cond_18
    const/16 v12, 0x1003

    .line 523
    .line 524
    :cond_19
    :goto_13
    iget-object v11, v10, Landroidx/fragment/app/s;->I:Landroidx/fragment/app/p;

    .line 525
    .line 526
    if-nez v11, :cond_1a

    .line 527
    .line 528
    if-nez v12, :cond_1a

    .line 529
    .line 530
    goto :goto_14

    .line 531
    :cond_1a
    invoke-virtual {v10}, Landroidx/fragment/app/s;->g()Landroidx/fragment/app/p;

    .line 532
    .line 533
    .line 534
    iget-object v11, v10, Landroidx/fragment/app/s;->I:Landroidx/fragment/app/p;

    .line 535
    .line 536
    iput v12, v11, Landroidx/fragment/app/p;->f:I

    .line 537
    .line 538
    :goto_14
    invoke-virtual {v10}, Landroidx/fragment/app/s;->g()Landroidx/fragment/app/p;

    .line 539
    .line 540
    .line 541
    iget-object v11, v10, Landroidx/fragment/app/s;->I:Landroidx/fragment/app/p;

    .line 542
    .line 543
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 544
    .line 545
    .line 546
    :cond_1b
    iget v11, v9, Landroidx/fragment/app/r0;->a:I

    .line 547
    .line 548
    iget-object v12, v5, Landroidx/fragment/app/a;->q:Landroidx/fragment/app/j0;

    .line 549
    .line 550
    packed-switch v11, :pswitch_data_1

    .line 551
    .line 552
    .line 553
    :pswitch_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 554
    .line 555
    new-instance v2, Ljava/lang/StringBuilder;

    .line 556
    .line 557
    const-string v3, "Unknown cmd: "

    .line 558
    .line 559
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 560
    .line 561
    .line 562
    iget v3, v9, Landroidx/fragment/app/r0;->a:I

    .line 563
    .line 564
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 565
    .line 566
    .line 567
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 568
    .line 569
    .line 570
    move-result-object v2

    .line 571
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 572
    .line 573
    .line 574
    throw v0

    .line 575
    :pswitch_6
    iget-object v9, v9, Landroidx/fragment/app/r0;->g:Landroidx/lifecycle/o;

    .line 576
    .line 577
    invoke-virtual {v12, v10, v9}, Landroidx/fragment/app/j0;->T(Landroidx/fragment/app/s;Landroidx/lifecycle/o;)V

    .line 578
    .line 579
    .line 580
    goto :goto_15

    .line 581
    :pswitch_7
    invoke-virtual {v12, v10}, Landroidx/fragment/app/j0;->U(Landroidx/fragment/app/s;)V

    .line 582
    .line 583
    .line 584
    goto :goto_15

    .line 585
    :pswitch_8
    const/4 v9, 0x0

    .line 586
    invoke-virtual {v12, v9}, Landroidx/fragment/app/j0;->U(Landroidx/fragment/app/s;)V

    .line 587
    .line 588
    .line 589
    goto :goto_15

    .line 590
    :pswitch_9
    iget v11, v9, Landroidx/fragment/app/r0;->c:I

    .line 591
    .line 592
    iget v13, v9, Landroidx/fragment/app/r0;->d:I

    .line 593
    .line 594
    iget v14, v9, Landroidx/fragment/app/r0;->e:I

    .line 595
    .line 596
    iget v9, v9, Landroidx/fragment/app/r0;->f:I

    .line 597
    .line 598
    invoke-virtual {v10, v11, v13, v14, v9}, Landroidx/fragment/app/s;->N(IIII)V

    .line 599
    .line 600
    .line 601
    invoke-virtual {v12, v10, v8}, Landroidx/fragment/app/j0;->S(Landroidx/fragment/app/s;Z)V

    .line 602
    .line 603
    .line 604
    invoke-virtual {v12, v10}, Landroidx/fragment/app/j0;->g(Landroidx/fragment/app/s;)V

    .line 605
    .line 606
    .line 607
    goto :goto_15

    .line 608
    :pswitch_a
    iget v11, v9, Landroidx/fragment/app/r0;->c:I

    .line 609
    .line 610
    iget v13, v9, Landroidx/fragment/app/r0;->d:I

    .line 611
    .line 612
    iget v14, v9, Landroidx/fragment/app/r0;->e:I

    .line 613
    .line 614
    iget v9, v9, Landroidx/fragment/app/r0;->f:I

    .line 615
    .line 616
    invoke-virtual {v10, v11, v13, v14, v9}, Landroidx/fragment/app/s;->N(IIII)V

    .line 617
    .line 618
    .line 619
    invoke-virtual {v12, v10}, Landroidx/fragment/app/j0;->c(Landroidx/fragment/app/s;)V

    .line 620
    .line 621
    .line 622
    goto :goto_15

    .line 623
    :pswitch_b
    iget v11, v9, Landroidx/fragment/app/r0;->c:I

    .line 624
    .line 625
    iget v13, v9, Landroidx/fragment/app/r0;->d:I

    .line 626
    .line 627
    iget v14, v9, Landroidx/fragment/app/r0;->e:I

    .line 628
    .line 629
    iget v9, v9, Landroidx/fragment/app/r0;->f:I

    .line 630
    .line 631
    invoke-virtual {v10, v11, v13, v14, v9}, Landroidx/fragment/app/s;->N(IIII)V

    .line 632
    .line 633
    .line 634
    invoke-virtual {v12, v10, v8}, Landroidx/fragment/app/j0;->S(Landroidx/fragment/app/s;Z)V

    .line 635
    .line 636
    .line 637
    invoke-virtual {v12, v10}, Landroidx/fragment/app/j0;->E(Landroidx/fragment/app/s;)V

    .line 638
    .line 639
    .line 640
    goto :goto_15

    .line 641
    :pswitch_c
    iget v11, v9, Landroidx/fragment/app/r0;->c:I

    .line 642
    .line 643
    iget v13, v9, Landroidx/fragment/app/r0;->d:I

    .line 644
    .line 645
    iget v14, v9, Landroidx/fragment/app/r0;->e:I

    .line 646
    .line 647
    iget v9, v9, Landroidx/fragment/app/r0;->f:I

    .line 648
    .line 649
    invoke-virtual {v10, v11, v13, v14, v9}, Landroidx/fragment/app/s;->N(IIII)V

    .line 650
    .line 651
    .line 652
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 653
    .line 654
    .line 655
    invoke-static {v10}, Landroidx/fragment/app/j0;->W(Landroidx/fragment/app/s;)V

    .line 656
    .line 657
    .line 658
    goto :goto_15

    .line 659
    :pswitch_d
    iget v11, v9, Landroidx/fragment/app/r0;->c:I

    .line 660
    .line 661
    iget v13, v9, Landroidx/fragment/app/r0;->d:I

    .line 662
    .line 663
    iget v14, v9, Landroidx/fragment/app/r0;->e:I

    .line 664
    .line 665
    iget v9, v9, Landroidx/fragment/app/r0;->f:I

    .line 666
    .line 667
    invoke-virtual {v10, v11, v13, v14, v9}, Landroidx/fragment/app/s;->N(IIII)V

    .line 668
    .line 669
    .line 670
    invoke-virtual {v12, v10}, Landroidx/fragment/app/j0;->a(Landroidx/fragment/app/s;)Landroidx/fragment/app/p0;

    .line 671
    .line 672
    .line 673
    goto :goto_15

    .line 674
    :pswitch_e
    iget v11, v9, Landroidx/fragment/app/r0;->c:I

    .line 675
    .line 676
    iget v13, v9, Landroidx/fragment/app/r0;->d:I

    .line 677
    .line 678
    iget v14, v9, Landroidx/fragment/app/r0;->e:I

    .line 679
    .line 680
    iget v9, v9, Landroidx/fragment/app/r0;->f:I

    .line 681
    .line 682
    invoke-virtual {v10, v11, v13, v14, v9}, Landroidx/fragment/app/s;->N(IIII)V

    .line 683
    .line 684
    .line 685
    invoke-virtual {v12, v10, v8}, Landroidx/fragment/app/j0;->S(Landroidx/fragment/app/s;Z)V

    .line 686
    .line 687
    .line 688
    invoke-virtual {v12, v10}, Landroidx/fragment/app/j0;->N(Landroidx/fragment/app/s;)V

    .line 689
    .line 690
    .line 691
    :goto_15
    add-int/lit8 v7, v7, -0x1

    .line 692
    .line 693
    goto/16 :goto_11

    .line 694
    .line 695
    :cond_1c
    const/4 v3, 0x1

    .line 696
    invoke-virtual {v5, v3}, Landroidx/fragment/app/a;->d(I)V

    .line 697
    .line 698
    .line 699
    iget-object v3, v5, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    .line 700
    .line 701
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 702
    .line 703
    .line 704
    move-result v7

    .line 705
    const/4 v8, 0x0

    .line 706
    const/4 v9, 0x0

    .line 707
    :goto_16
    if-ge v9, v7, :cond_20

    .line 708
    .line 709
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 710
    .line 711
    .line 712
    move-result-object v10

    .line 713
    check-cast v10, Landroidx/fragment/app/r0;

    .line 714
    .line 715
    iget-object v11, v10, Landroidx/fragment/app/r0;->b:Landroidx/fragment/app/s;

    .line 716
    .line 717
    if-eqz v11, :cond_1f

    .line 718
    .line 719
    iget-object v12, v11, Landroidx/fragment/app/s;->I:Landroidx/fragment/app/p;

    .line 720
    .line 721
    if-nez v12, :cond_1d

    .line 722
    .line 723
    goto :goto_17

    .line 724
    :cond_1d
    invoke-virtual {v11}, Landroidx/fragment/app/s;->g()Landroidx/fragment/app/p;

    .line 725
    .line 726
    .line 727
    move-result-object v12

    .line 728
    iput-boolean v8, v12, Landroidx/fragment/app/p;->a:Z

    .line 729
    .line 730
    :goto_17
    iget v12, v5, Landroidx/fragment/app/a;->f:I

    .line 731
    .line 732
    iget-object v13, v11, Landroidx/fragment/app/s;->I:Landroidx/fragment/app/p;

    .line 733
    .line 734
    if-nez v13, :cond_1e

    .line 735
    .line 736
    if-nez v12, :cond_1e

    .line 737
    .line 738
    goto :goto_18

    .line 739
    :cond_1e
    invoke-virtual {v11}, Landroidx/fragment/app/s;->g()Landroidx/fragment/app/p;

    .line 740
    .line 741
    .line 742
    iget-object v13, v11, Landroidx/fragment/app/s;->I:Landroidx/fragment/app/p;

    .line 743
    .line 744
    iput v12, v13, Landroidx/fragment/app/p;->f:I

    .line 745
    .line 746
    :goto_18
    invoke-virtual {v11}, Landroidx/fragment/app/s;->g()Landroidx/fragment/app/p;

    .line 747
    .line 748
    .line 749
    iget-object v12, v11, Landroidx/fragment/app/s;->I:Landroidx/fragment/app/p;

    .line 750
    .line 751
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 752
    .line 753
    .line 754
    :cond_1f
    iget v12, v10, Landroidx/fragment/app/r0;->a:I

    .line 755
    .line 756
    iget-object v13, v5, Landroidx/fragment/app/a;->q:Landroidx/fragment/app/j0;

    .line 757
    .line 758
    packed-switch v12, :pswitch_data_2

    .line 759
    .line 760
    .line 761
    :pswitch_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 762
    .line 763
    new-instance v2, Ljava/lang/StringBuilder;

    .line 764
    .line 765
    const-string v3, "Unknown cmd: "

    .line 766
    .line 767
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 768
    .line 769
    .line 770
    iget v3, v10, Landroidx/fragment/app/r0;->a:I

    .line 771
    .line 772
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 773
    .line 774
    .line 775
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 776
    .line 777
    .line 778
    move-result-object v2

    .line 779
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 780
    .line 781
    .line 782
    throw v0

    .line 783
    :pswitch_10
    iget-object v10, v10, Landroidx/fragment/app/r0;->h:Landroidx/lifecycle/o;

    .line 784
    .line 785
    invoke-virtual {v13, v11, v10}, Landroidx/fragment/app/j0;->T(Landroidx/fragment/app/s;Landroidx/lifecycle/o;)V

    .line 786
    .line 787
    .line 788
    goto :goto_19

    .line 789
    :pswitch_11
    const/4 v10, 0x0

    .line 790
    invoke-virtual {v13, v10}, Landroidx/fragment/app/j0;->U(Landroidx/fragment/app/s;)V

    .line 791
    .line 792
    .line 793
    goto :goto_19

    .line 794
    :pswitch_12
    invoke-virtual {v13, v11}, Landroidx/fragment/app/j0;->U(Landroidx/fragment/app/s;)V

    .line 795
    .line 796
    .line 797
    goto :goto_19

    .line 798
    :pswitch_13
    iget v12, v10, Landroidx/fragment/app/r0;->c:I

    .line 799
    .line 800
    iget v14, v10, Landroidx/fragment/app/r0;->d:I

    .line 801
    .line 802
    iget v15, v10, Landroidx/fragment/app/r0;->e:I

    .line 803
    .line 804
    iget v10, v10, Landroidx/fragment/app/r0;->f:I

    .line 805
    .line 806
    invoke-virtual {v11, v12, v14, v15, v10}, Landroidx/fragment/app/s;->N(IIII)V

    .line 807
    .line 808
    .line 809
    invoke-virtual {v13, v11, v8}, Landroidx/fragment/app/j0;->S(Landroidx/fragment/app/s;Z)V

    .line 810
    .line 811
    .line 812
    invoke-virtual {v13, v11}, Landroidx/fragment/app/j0;->c(Landroidx/fragment/app/s;)V

    .line 813
    .line 814
    .line 815
    goto :goto_19

    .line 816
    :pswitch_14
    iget v12, v10, Landroidx/fragment/app/r0;->c:I

    .line 817
    .line 818
    iget v14, v10, Landroidx/fragment/app/r0;->d:I

    .line 819
    .line 820
    iget v15, v10, Landroidx/fragment/app/r0;->e:I

    .line 821
    .line 822
    iget v10, v10, Landroidx/fragment/app/r0;->f:I

    .line 823
    .line 824
    invoke-virtual {v11, v12, v14, v15, v10}, Landroidx/fragment/app/s;->N(IIII)V

    .line 825
    .line 826
    .line 827
    invoke-virtual {v13, v11}, Landroidx/fragment/app/j0;->g(Landroidx/fragment/app/s;)V

    .line 828
    .line 829
    .line 830
    goto :goto_19

    .line 831
    :pswitch_15
    iget v12, v10, Landroidx/fragment/app/r0;->c:I

    .line 832
    .line 833
    iget v14, v10, Landroidx/fragment/app/r0;->d:I

    .line 834
    .line 835
    iget v15, v10, Landroidx/fragment/app/r0;->e:I

    .line 836
    .line 837
    iget v10, v10, Landroidx/fragment/app/r0;->f:I

    .line 838
    .line 839
    invoke-virtual {v11, v12, v14, v15, v10}, Landroidx/fragment/app/s;->N(IIII)V

    .line 840
    .line 841
    .line 842
    invoke-virtual {v13, v11, v8}, Landroidx/fragment/app/j0;->S(Landroidx/fragment/app/s;Z)V

    .line 843
    .line 844
    .line 845
    invoke-static {v11}, Landroidx/fragment/app/j0;->W(Landroidx/fragment/app/s;)V

    .line 846
    .line 847
    .line 848
    goto :goto_19

    .line 849
    :pswitch_16
    iget v12, v10, Landroidx/fragment/app/r0;->c:I

    .line 850
    .line 851
    iget v14, v10, Landroidx/fragment/app/r0;->d:I

    .line 852
    .line 853
    iget v15, v10, Landroidx/fragment/app/r0;->e:I

    .line 854
    .line 855
    iget v10, v10, Landroidx/fragment/app/r0;->f:I

    .line 856
    .line 857
    invoke-virtual {v11, v12, v14, v15, v10}, Landroidx/fragment/app/s;->N(IIII)V

    .line 858
    .line 859
    .line 860
    invoke-virtual {v13, v11}, Landroidx/fragment/app/j0;->E(Landroidx/fragment/app/s;)V

    .line 861
    .line 862
    .line 863
    goto :goto_19

    .line 864
    :pswitch_17
    iget v12, v10, Landroidx/fragment/app/r0;->c:I

    .line 865
    .line 866
    iget v14, v10, Landroidx/fragment/app/r0;->d:I

    .line 867
    .line 868
    iget v15, v10, Landroidx/fragment/app/r0;->e:I

    .line 869
    .line 870
    iget v10, v10, Landroidx/fragment/app/r0;->f:I

    .line 871
    .line 872
    invoke-virtual {v11, v12, v14, v15, v10}, Landroidx/fragment/app/s;->N(IIII)V

    .line 873
    .line 874
    .line 875
    invoke-virtual {v13, v11}, Landroidx/fragment/app/j0;->N(Landroidx/fragment/app/s;)V

    .line 876
    .line 877
    .line 878
    goto :goto_19

    .line 879
    :pswitch_18
    iget v12, v10, Landroidx/fragment/app/r0;->c:I

    .line 880
    .line 881
    iget v14, v10, Landroidx/fragment/app/r0;->d:I

    .line 882
    .line 883
    iget v15, v10, Landroidx/fragment/app/r0;->e:I

    .line 884
    .line 885
    iget v10, v10, Landroidx/fragment/app/r0;->f:I

    .line 886
    .line 887
    invoke-virtual {v11, v12, v14, v15, v10}, Landroidx/fragment/app/s;->N(IIII)V

    .line 888
    .line 889
    .line 890
    invoke-virtual {v13, v11, v8}, Landroidx/fragment/app/j0;->S(Landroidx/fragment/app/s;Z)V

    .line 891
    .line 892
    .line 893
    invoke-virtual {v13, v11}, Landroidx/fragment/app/j0;->a(Landroidx/fragment/app/s;)Landroidx/fragment/app/p0;

    .line 894
    .line 895
    .line 896
    :goto_19
    add-int/lit8 v9, v9, 0x1

    .line 897
    .line 898
    goto/16 :goto_16

    .line 899
    .line 900
    :cond_20
    add-int/lit8 v0, v0, 0x1

    .line 901
    .line 902
    goto/16 :goto_10

    .line 903
    .line 904
    :cond_21
    move-object/from16 v6, p2

    .line 905
    .line 906
    add-int/lit8 v0, v4, -0x1

    .line 907
    .line 908
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 909
    .line 910
    .line 911
    move-result-object v0

    .line 912
    check-cast v0, Ljava/lang/Boolean;

    .line 913
    .line 914
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 915
    .line 916
    .line 917
    move-result v0

    .line 918
    move/from16 v5, p3

    .line 919
    .line 920
    :goto_1a
    if-ge v5, v4, :cond_26

    .line 921
    .line 922
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 923
    .line 924
    .line 925
    move-result-object v7

    .line 926
    check-cast v7, Landroidx/fragment/app/a;

    .line 927
    .line 928
    if-eqz v0, :cond_23

    .line 929
    .line 930
    iget-object v8, v7, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    .line 931
    .line 932
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 933
    .line 934
    .line 935
    move-result v8

    .line 936
    const/4 v9, 0x1

    .line 937
    sub-int/2addr v8, v9

    .line 938
    :goto_1b
    if-ltz v8, :cond_25

    .line 939
    .line 940
    iget-object v9, v7, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    .line 941
    .line 942
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 943
    .line 944
    .line 945
    move-result-object v9

    .line 946
    check-cast v9, Landroidx/fragment/app/r0;

    .line 947
    .line 948
    iget-object v9, v9, Landroidx/fragment/app/r0;->b:Landroidx/fragment/app/s;

    .line 949
    .line 950
    if-eqz v9, :cond_22

    .line 951
    .line 952
    invoke-virtual {v1, v9}, Landroidx/fragment/app/j0;->f(Landroidx/fragment/app/s;)Landroidx/fragment/app/p0;

    .line 953
    .line 954
    .line 955
    move-result-object v9

    .line 956
    invoke-virtual {v9}, Landroidx/fragment/app/p0;->k()V

    .line 957
    .line 958
    .line 959
    :cond_22
    add-int/lit8 v8, v8, -0x1

    .line 960
    .line 961
    goto :goto_1b

    .line 962
    :cond_23
    iget-object v7, v7, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    .line 963
    .line 964
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 965
    .line 966
    .line 967
    move-result-object v7

    .line 968
    :cond_24
    :goto_1c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 969
    .line 970
    .line 971
    move-result v8

    .line 972
    if-eqz v8, :cond_25

    .line 973
    .line 974
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 975
    .line 976
    .line 977
    move-result-object v8

    .line 978
    check-cast v8, Landroidx/fragment/app/r0;

    .line 979
    .line 980
    iget-object v8, v8, Landroidx/fragment/app/r0;->b:Landroidx/fragment/app/s;

    .line 981
    .line 982
    if-eqz v8, :cond_24

    .line 983
    .line 984
    invoke-virtual {v1, v8}, Landroidx/fragment/app/j0;->f(Landroidx/fragment/app/s;)Landroidx/fragment/app/p0;

    .line 985
    .line 986
    .line 987
    move-result-object v8

    .line 988
    invoke-virtual {v8}, Landroidx/fragment/app/p0;->k()V

    .line 989
    .line 990
    .line 991
    goto :goto_1c

    .line 992
    :cond_25
    add-int/lit8 v5, v5, 0x1

    .line 993
    .line 994
    goto :goto_1a

    .line 995
    :cond_26
    iget v5, v1, Landroidx/fragment/app/j0;->m:I

    .line 996
    .line 997
    const/4 v7, 0x1

    .line 998
    invoke-virtual {v1, v5, v7}, Landroidx/fragment/app/j0;->J(IZ)V

    .line 999
    .line 1000
    .line 1001
    new-instance v5, Ljava/util/HashSet;

    .line 1002
    .line 1003
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 1004
    .line 1005
    .line 1006
    move/from16 v7, p3

    .line 1007
    .line 1008
    :goto_1d
    if-ge v7, v4, :cond_29

    .line 1009
    .line 1010
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1011
    .line 1012
    .line 1013
    move-result-object v8

    .line 1014
    check-cast v8, Landroidx/fragment/app/a;

    .line 1015
    .line 1016
    iget-object v8, v8, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    .line 1017
    .line 1018
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v8

    .line 1022
    :cond_27
    :goto_1e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 1023
    .line 1024
    .line 1025
    move-result v9

    .line 1026
    if-eqz v9, :cond_28

    .line 1027
    .line 1028
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1029
    .line 1030
    .line 1031
    move-result-object v9

    .line 1032
    check-cast v9, Landroidx/fragment/app/r0;

    .line 1033
    .line 1034
    iget-object v9, v9, Landroidx/fragment/app/r0;->b:Landroidx/fragment/app/s;

    .line 1035
    .line 1036
    if-eqz v9, :cond_27

    .line 1037
    .line 1038
    iget-object v9, v9, Landroidx/fragment/app/s;->E:Landroid/view/ViewGroup;

    .line 1039
    .line 1040
    if-eqz v9, :cond_27

    .line 1041
    .line 1042
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/j0;->D()Landroidx/fragment/app/c0;

    .line 1043
    .line 1044
    .line 1045
    move-result-object v10

    .line 1046
    invoke-static {v9, v10}, Landroidx/fragment/app/i;->f(Landroid/view/ViewGroup;Landroidx/fragment/app/c0;)Landroidx/fragment/app/i;

    .line 1047
    .line 1048
    .line 1049
    move-result-object v9

    .line 1050
    invoke-virtual {v5, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1051
    .line 1052
    .line 1053
    goto :goto_1e

    .line 1054
    :cond_28
    add-int/lit8 v7, v7, 0x1

    .line 1055
    .line 1056
    goto :goto_1d

    .line 1057
    :cond_29
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 1058
    .line 1059
    .line 1060
    move-result-object v5

    .line 1061
    :goto_1f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1062
    .line 1063
    .line 1064
    move-result v7

    .line 1065
    if-eqz v7, :cond_2c

    .line 1066
    .line 1067
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1068
    .line 1069
    .line 1070
    move-result-object v7

    .line 1071
    check-cast v7, Landroidx/fragment/app/i;

    .line 1072
    .line 1073
    iput-boolean v0, v7, Landroidx/fragment/app/i;->d:Z

    .line 1074
    .line 1075
    iget-object v8, v7, Landroidx/fragment/app/i;->b:Ljava/util/ArrayList;

    .line 1076
    .line 1077
    monitor-enter v8

    .line 1078
    :try_start_0
    invoke-virtual {v7}, Landroidx/fragment/app/i;->g()V

    .line 1079
    .line 1080
    .line 1081
    const/4 v9, 0x0

    .line 1082
    iput-boolean v9, v7, Landroidx/fragment/app/i;->e:Z

    .line 1083
    .line 1084
    iget-object v10, v7, Landroidx/fragment/app/i;->b:Ljava/util/ArrayList;

    .line 1085
    .line 1086
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 1087
    .line 1088
    .line 1089
    move-result v10

    .line 1090
    add-int/lit8 v10, v10, -0x1

    .line 1091
    .line 1092
    :goto_20
    if-ltz v10, :cond_2b

    .line 1093
    .line 1094
    iget-object v11, v7, Landroidx/fragment/app/i;->b:Ljava/util/ArrayList;

    .line 1095
    .line 1096
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1097
    .line 1098
    .line 1099
    move-result-object v11

    .line 1100
    check-cast v11, Landroidx/fragment/app/v0;

    .line 1101
    .line 1102
    iget-object v12, v11, Landroidx/fragment/app/v0;->c:Landroidx/fragment/app/s;

    .line 1103
    .line 1104
    iget-object v12, v12, Landroidx/fragment/app/s;->F:Landroid/view/View;

    .line 1105
    .line 1106
    invoke-static {v12}, La/e;->c(Landroid/view/View;)I

    .line 1107
    .line 1108
    .line 1109
    move-result v12

    .line 1110
    iget v13, v11, Landroidx/fragment/app/v0;->a:I

    .line 1111
    .line 1112
    const/4 v14, 0x2

    .line 1113
    if-ne v13, v14, :cond_2a

    .line 1114
    .line 1115
    if-eq v12, v14, :cond_2a

    .line 1116
    .line 1117
    iget-object v10, v11, Landroidx/fragment/app/v0;->c:Landroidx/fragment/app/s;

    .line 1118
    .line 1119
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1120
    .line 1121
    .line 1122
    iput-boolean v9, v7, Landroidx/fragment/app/i;->e:Z

    .line 1123
    .line 1124
    goto :goto_21

    .line 1125
    :catchall_0
    move-exception v0

    .line 1126
    goto :goto_22

    .line 1127
    :cond_2a
    add-int/lit8 v10, v10, -0x1

    .line 1128
    .line 1129
    goto :goto_20

    .line 1130
    :cond_2b
    :goto_21
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1131
    invoke-virtual {v7}, Landroidx/fragment/app/i;->c()V

    .line 1132
    .line 1133
    .line 1134
    goto :goto_1f

    .line 1135
    :goto_22
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1136
    throw v0

    .line 1137
    :cond_2c
    move/from16 v0, p3

    .line 1138
    .line 1139
    :goto_23
    if-ge v0, v4, :cond_2e

    .line 1140
    .line 1141
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1142
    .line 1143
    .line 1144
    move-result-object v5

    .line 1145
    check-cast v5, Landroidx/fragment/app/a;

    .line 1146
    .line 1147
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1148
    .line 1149
    .line 1150
    move-result-object v7

    .line 1151
    check-cast v7, Ljava/lang/Boolean;

    .line 1152
    .line 1153
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1154
    .line 1155
    .line 1156
    move-result v7

    .line 1157
    if-eqz v7, :cond_2d

    .line 1158
    .line 1159
    iget v7, v5, Landroidx/fragment/app/a;->s:I

    .line 1160
    .line 1161
    if-ltz v7, :cond_2d

    .line 1162
    .line 1163
    iput v3, v5, Landroidx/fragment/app/a;->s:I

    .line 1164
    .line 1165
    :cond_2d
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1166
    .line 1167
    .line 1168
    add-int/lit8 v0, v0, 0x1

    .line 1169
    .line 1170
    goto :goto_23

    .line 1171
    :cond_2e
    return-void

    .line 1172
    nop

    .line 1173
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1174
    .line 1175
    .line 1176
    .line 1177
    .line 1178
    .line 1179
    .line 1180
    .line 1181
    .line 1182
    .line 1183
    .line 1184
    .line 1185
    .line 1186
    .line 1187
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_e
        :pswitch_5
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    .line 1188
    .line 1189
    .line 1190
    .line 1191
    .line 1192
    .line 1193
    .line 1194
    .line 1195
    .line 1196
    .line 1197
    .line 1198
    .line 1199
    .line 1200
    .line 1201
    .line 1202
    .line 1203
    .line 1204
    .line 1205
    .line 1206
    .line 1207
    .line 1208
    .line 1209
    .line 1210
    .line 1211
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_18
        :pswitch_f
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.method public final x(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final y(I)Landroidx/fragment/app/s;
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/j0;->c:La1/b;

    .line 2
    .line 3
    iget-object v1, v0, La1/b;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    add-int/lit8 v2, v2, -0x1

    .line 12
    .line 13
    :goto_0
    if-ltz v2, :cond_1

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Landroidx/fragment/app/s;

    .line 20
    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    iget v4, v3, Landroidx/fragment/app/s;->w:I

    .line 24
    .line 25
    if-ne v4, p1, :cond_0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object v0, v0, La1/b;->c:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v0, Ljava/util/HashMap;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_3

    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Landroidx/fragment/app/p0;

    .line 54
    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    iget-object v3, v1, Landroidx/fragment/app/p0;->c:Landroidx/fragment/app/s;

    .line 58
    .line 59
    iget v1, v3, Landroidx/fragment/app/s;->w:I

    .line 60
    .line 61
    if-ne v1, p1, :cond_2

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_3
    const/4 v3, 0x0

    .line 65
    :goto_1
    return-object v3
.end method

.method public final z(Ljava/lang/String;)Landroidx/fragment/app/s;
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/j0;->c:La1/b;

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    iget-object v1, v0, La1/b;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    add-int/lit8 v2, v2, -0x1

    .line 14
    .line 15
    :goto_0
    if-ltz v2, :cond_1

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Landroidx/fragment/app/s;

    .line 22
    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    iget-object v4, v3, Landroidx/fragment/app/s;->y:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-eqz v4, :cond_0

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    if-eqz p1, :cond_3

    .line 38
    .line 39
    iget-object v0, v0, La1/b;->c:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v0, Ljava/util/HashMap;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_4

    .line 56
    .line 57
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Landroidx/fragment/app/p0;

    .line 62
    .line 63
    if-eqz v1, :cond_2

    .line 64
    .line 65
    iget-object v3, v1, Landroidx/fragment/app/p0;->c:Landroidx/fragment/app/s;

    .line 66
    .line 67
    iget-object v1, v3, Landroidx/fragment/app/s;->y:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_2

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    :cond_4
    const/4 v3, 0x0

    .line 80
    :goto_1
    return-object v3
.end method
