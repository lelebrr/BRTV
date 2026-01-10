.class public final Lr9/b;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ljava/util/Iterator;
.implements Lk9/a;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:Lo9/h;

.field public e:I

.field public final synthetic f:Lr9/c;


# direct methods
.method public constructor <init>(Lr9/c;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lr9/b;->f:Lr9/c;

    .line 5
    .line 6
    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lr9/b;->a:I

    .line 8
    .line 9
    iget v0, p1, Lr9/c;->b:I

    .line 10
    .line 11
    iget-object p1, p1, Lr9/c;->a:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-ltz p1, :cond_2

    .line 18
    .line 19
    if-gez v0, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    if-le v0, p1, :cond_1

    .line 24
    .line 25
    move v0, p1

    .line 26
    :cond_1
    :goto_0
    iput v0, p0, Lr9/b;->b:I

    .line 27
    .line 28
    iput v0, p0, Lr9/b;->c:I

    .line 29
    .line 30
    return-void

    .line 31
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 32
    .line 33
    const-string v1, "Cannot coerce value to an empty range: maximum "

    .line 34
    .line 35
    const-string v2, " is less than minimum 0."

    .line 36
    .line 37
    invoke-static {p1, v1, v2}, Lea/q;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 8

    .line 1
    iget v0, p0, Lr9/b;->c:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-gez v0, :cond_0

    .line 5
    .line 6
    iput v1, p0, Lr9/b;->a:I

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lr9/b;->d:Lo9/h;

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iget-object v2, p0, Lr9/b;->f:Lr9/c;

    .line 13
    .line 14
    iget v3, v2, Lr9/c;->c:I

    .line 15
    .line 16
    iget-object v4, v2, Lr9/c;->a:Ljava/lang/String;

    .line 17
    .line 18
    const/4 v5, -0x1

    .line 19
    const/4 v6, 0x1

    .line 20
    if-lez v3, :cond_1

    .line 21
    .line 22
    iget v7, p0, Lr9/b;->e:I

    .line 23
    .line 24
    add-int/2addr v7, v6

    .line 25
    iput v7, p0, Lr9/b;->e:I

    .line 26
    .line 27
    if-ge v7, v3, :cond_2

    .line 28
    .line 29
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-le v0, v3, :cond_3

    .line 34
    .line 35
    :cond_2
    new-instance v0, Lo9/h;

    .line 36
    .line 37
    iget v1, p0, Lr9/b;->b:I

    .line 38
    .line 39
    invoke-static {v4}, Lr9/f;->Z(Ljava/lang/CharSequence;)I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    invoke-direct {v0, v1, v2, v6}, Lo9/f;-><init>(III)V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lr9/b;->d:Lo9/h;

    .line 47
    .line 48
    iput v5, p0, Lr9/b;->c:I

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    iget-object v0, v2, Lr9/c;->d:Lr9/o;

    .line 52
    .line 53
    iget v2, p0, Lr9/b;->c:I

    .line 54
    .line 55
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v0, v4, v2}, Lr9/o;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Lw8/f;

    .line 64
    .line 65
    if-nez v0, :cond_4

    .line 66
    .line 67
    new-instance v0, Lo9/h;

    .line 68
    .line 69
    iget v1, p0, Lr9/b;->b:I

    .line 70
    .line 71
    invoke-static {v4}, Lr9/f;->Z(Ljava/lang/CharSequence;)I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    invoke-direct {v0, v1, v2, v6}, Lo9/f;-><init>(III)V

    .line 76
    .line 77
    .line 78
    iput-object v0, p0, Lr9/b;->d:Lo9/h;

    .line 79
    .line 80
    iput v5, p0, Lr9/b;->c:I

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_4
    iget-object v2, v0, Lw8/f;->a:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v2, Ljava/lang/Number;

    .line 86
    .line 87
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    iget-object v0, v0, Lw8/f;->b:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast v0, Ljava/lang/Number;

    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    iget v3, p0, Lr9/b;->b:I

    .line 100
    .line 101
    invoke-static {v3, v2}, Lcom/bumptech/glide/c;->o(II)Lo9/h;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    iput-object v3, p0, Lr9/b;->d:Lo9/h;

    .line 106
    .line 107
    add-int/2addr v2, v0

    .line 108
    iput v2, p0, Lr9/b;->b:I

    .line 109
    .line 110
    if-nez v0, :cond_5

    .line 111
    .line 112
    const/4 v1, 0x1

    .line 113
    :cond_5
    add-int/2addr v2, v1

    .line 114
    iput v2, p0, Lr9/b;->c:I

    .line 115
    .line 116
    :goto_0
    iput v6, p0, Lr9/b;->a:I

    .line 117
    .line 118
    :goto_1
    return-void
.end method

.method public final hasNext()Z
    .locals 2

    .line 1
    iget v0, p0, Lr9/b;->a:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lr9/b;->a()V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget v0, p0, Lr9/b;->a:I

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 v1, 0x0

    .line 16
    :goto_0
    return v1
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lr9/b;->a:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lr9/b;->a()V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget v0, p0, Lr9/b;->a:I

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lr9/b;->d:Lo9/h;

    .line 14
    .line 15
    const-string v2, "null cannot be cast to non-null type kotlin.ranges.IntRange"

    .line 16
    .line 17
    invoke-static {v0, v2}, Lj9/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    iput-object v2, p0, Lr9/b;->d:Lo9/h;

    .line 22
    .line 23
    iput v1, p0, Lr9/b;->a:I

    .line 24
    .line 25
    return-object v0

    .line 26
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 29
    .line 30
    .line 31
    throw v0
.end method

.method public final remove()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v1, "Operation is not supported for read-only collection"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method
