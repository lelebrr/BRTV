.class public final Ld7/j0;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public final synthetic d:Ld7/k0;


# direct methods
.method public constructor <init>(Ld7/k0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ld7/j0;->d:Ld7/k0;

    .line 5
    .line 6
    iget v0, p1, Ld7/k0;->d:I

    .line 7
    .line 8
    iput v0, p0, Ld7/j0;->a:I

    .line 9
    .line 10
    iget p1, p1, Ld7/k0;->h:I

    .line 11
    .line 12
    iput p1, p0, Ld7/j0;->b:I

    .line 13
    .line 14
    const/4 p1, -0x1

    .line 15
    iput p1, p0, Ld7/j0;->c:I

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .line 1
    iget v0, p0, Ld7/j0;->b:I

    .line 2
    .line 3
    if-ltz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Ld7/j0;->d:Ld7/k0;

    .line 2
    .line 3
    iget v1, v0, Ld7/k0;->d:I

    .line 4
    .line 5
    iget v2, p0, Ld7/j0;->a:I

    .line 6
    .line 7
    if-ne v1, v2, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Ld7/j0;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget v1, p0, Ld7/j0;->b:I

    .line 16
    .line 17
    iput v1, p0, Ld7/j0;->c:I

    .line 18
    .line 19
    invoke-virtual {v0}, Ld7/k0;->g()[Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    aget-object v1, v2, v1

    .line 24
    .line 25
    iget v2, p0, Ld7/j0;->b:I

    .line 26
    .line 27
    iget-object v0, v0, Ld7/k0;->g:[I

    .line 28
    .line 29
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    aget v0, v0, v2

    .line 33
    .line 34
    add-int/lit8 v0, v0, -0x1

    .line 35
    .line 36
    iput v0, p0, Ld7/j0;->b:I

    .line 37
    .line 38
    return-object v1

    .line 39
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 42
    .line 43
    .line 44
    throw v0

    .line 45
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    .line 46
    .line 47
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 48
    .line 49
    .line 50
    throw v0
.end method

.method public final remove()V
    .locals 3

    .line 1
    iget-object v0, p0, Ld7/j0;->d:Ld7/k0;

    .line 2
    .line 3
    iget v1, v0, Ld7/k0;->d:I

    .line 4
    .line 5
    iget v2, p0, Ld7/j0;->a:I

    .line 6
    .line 7
    if-ne v1, v2, :cond_2

    .line 8
    .line 9
    iget v1, p0, Ld7/j0;->c:I

    .line 10
    .line 11
    if-ltz v1, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    :goto_0
    const-string v2, "no calls to next() since the last call to remove()"

    .line 17
    .line 18
    invoke-static {v2, v1}, Lb7/b;->n(Ljava/lang/String;Z)V

    .line 19
    .line 20
    .line 21
    iget v1, p0, Ld7/j0;->a:I

    .line 22
    .line 23
    add-int/lit8 v1, v1, 0x20

    .line 24
    .line 25
    iput v1, p0, Ld7/j0;->a:I

    .line 26
    .line 27
    iget v1, p0, Ld7/j0;->c:I

    .line 28
    .line 29
    invoke-virtual {v0}, Ld7/k0;->g()[Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    aget-object v1, v2, v1

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ld7/k0;->remove(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    iget v1, p0, Ld7/j0;->b:I

    .line 39
    .line 40
    iget v2, p0, Ld7/j0;->c:I

    .line 41
    .line 42
    invoke-virtual {v0}, Ld7/k0;->size()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-lt v1, v0, :cond_1

    .line 47
    .line 48
    move v1, v2

    .line 49
    :cond_1
    iput v1, p0, Ld7/j0;->b:I

    .line 50
    .line 51
    const/4 v0, -0x1

    .line 52
    iput v0, p0, Ld7/j0;->c:I

    .line 53
    .line 54
    return-void

    .line 55
    :cond_2
    new-instance v0, Ljava/util/ConcurrentModificationException;

    .line 56
    .line 57
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 58
    .line 59
    .line 60
    throw v0
.end method
