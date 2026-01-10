.class public final Lq2/a;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Lq2/d;


# instance fields
.field public final b:I

.field public final c:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lq2/a;->b:I

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lq2/a;->c:Z

    .line 8
    .line 9
    if-lez p1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 13
    .line 14
    const-string v0, "durationMillis must be > 0."

    .line 15
    .line 16
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p1
.end method


# virtual methods
.method public final a(Lo2/a;Lm2/j;)Lq2/e;
    .locals 3

    .line 1
    instance-of v0, p2, Lm2/q;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lq2/c;

    .line 6
    .line 7
    invoke-direct {v0, p1, p2}, Lq2/c;-><init>(Lo2/a;Lm2/j;)V

    .line 8
    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_0
    move-object v0, p2

    .line 12
    check-cast v0, Lm2/q;

    .line 13
    .line 14
    iget-object v0, v0, Lm2/q;->c:Ld2/f;

    .line 15
    .line 16
    sget-object v1, Ld2/f;->a:Ld2/f;

    .line 17
    .line 18
    if-ne v0, v1, :cond_1

    .line 19
    .line 20
    new-instance v0, Lq2/c;

    .line 21
    .line 22
    invoke-direct {v0, p1, p2}, Lq2/c;-><init>(Lo2/a;Lm2/j;)V

    .line 23
    .line 24
    .line 25
    return-object v0

    .line 26
    :cond_1
    new-instance v0, Lc6/c;

    .line 27
    .line 28
    iget v1, p0, Lq2/a;->b:I

    .line 29
    .line 30
    iget-boolean v2, p0, Lq2/a;->c:Z

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object p1, v0, Lc6/c;->c:Ljava/lang/Object;

    .line 36
    .line 37
    iput-object p2, v0, Lc6/c;->d:Ljava/lang/Object;

    .line 38
    .line 39
    iput v1, v0, Lc6/c;->a:I

    .line 40
    .line 41
    iput-boolean v2, v0, Lc6/c;->b:Z

    .line 42
    .line 43
    if-lez v1, :cond_2

    .line 44
    .line 45
    return-object v0

    .line 46
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 47
    .line 48
    const-string p2, "durationMillis must be > 0."

    .line 49
    .line 50
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lq2/a;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    check-cast p1, Lq2/a;

    .line 10
    .line 11
    iget v1, p1, Lq2/a;->b:I

    .line 12
    .line 13
    iget v2, p0, Lq2/a;->b:I

    .line 14
    .line 15
    if-ne v2, v1, :cond_1

    .line 16
    .line 17
    iget-boolean v1, p0, Lq2/a;->c:Z

    .line 18
    .line 19
    iget-boolean p1, p1, Lq2/a;->c:Z

    .line 20
    .line 21
    if-ne v1, p1, :cond_1

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

.method public final hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lq2/a;->b:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    iget-boolean v1, p0, Lq2/a;->c:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/16 v1, 0x4cf

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/16 v1, 0x4d5

    .line 13
    .line 14
    :goto_0
    add-int/2addr v0, v1

    .line 15
    return v0
.end method
