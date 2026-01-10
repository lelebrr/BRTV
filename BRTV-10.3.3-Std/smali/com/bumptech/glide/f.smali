.class public final Lcom/bumptech/glide/f;
.super Landroid/content/ContextWrapper;
.source "MyApplication"


# static fields
.field public static final k:Lcom/bumptech/glide/a;


# instance fields
.field public final a:Ly2/f;

.field public final b:Lb/a;

.field public final c:Lx4/e;

.field public final d:Lu6/e;

.field public final e:Ljava/util/List;

.field public final f:Lp/e;

.field public final g:Lx2/l;

.field public final h:La0/b;

.field public final i:I

.field public j:Ln3/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/bumptech/glide/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/bumptech/glide/p;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/bumptech/glide/f;->k:Lcom/bumptech/glide/a;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ly2/f;Lk3/t;Lx4/e;Lu6/e;Lp/e;Ljava/util/List;Lx2/l;La0/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    iput-object p2, p0, Lcom/bumptech/glide/f;->a:Ly2/f;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/bumptech/glide/f;->c:Lx4/e;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/bumptech/glide/f;->d:Lu6/e;

    .line 13
    .line 14
    iput-object p7, p0, Lcom/bumptech/glide/f;->e:Ljava/util/List;

    .line 15
    .line 16
    iput-object p6, p0, Lcom/bumptech/glide/f;->f:Lp/e;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/bumptech/glide/f;->g:Lx2/l;

    .line 19
    .line 20
    iput-object p9, p0, Lcom/bumptech/glide/f;->h:La0/b;

    .line 21
    .line 22
    iput p10, p0, Lcom/bumptech/glide/f;->i:I

    .line 23
    .line 24
    new-instance p1, Lb/a;

    .line 25
    .line 26
    invoke-direct {p1, p3}, Lb/a;-><init>(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lcom/bumptech/glide/f;->b:Lb/a;

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Ln3/e;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/f;->j:Ln3/e;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/bumptech/glide/f;->d:Lu6/e;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    new-instance v0, Ln3/e;

    .line 12
    .line 13
    invoke-direct {v0}, Ln3/a;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    iput-boolean v1, v0, Ln3/a;->p:Z

    .line 18
    .line 19
    iput-object v0, p0, Lcom/bumptech/glide/f;->j:Ln3/e;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bumptech/glide/f;->j:Ln3/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    monitor-exit p0

    .line 27
    return-object v0

    .line 28
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    throw v0
.end method

.method public final b()Lcom/bumptech/glide/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/f;->b:Lb/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lb/a;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/bumptech/glide/j;

    .line 8
    .line 9
    return-object v0
.end method
