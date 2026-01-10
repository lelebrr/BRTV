.class public final Ls1/a;
.super Ljava/lang/Object;
.source "MyApplication"


# instance fields
.field public final a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public final synthetic j:Ls1/b;


# direct methods
.method public constructor <init>(Ls1/b;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ls1/a;->j:Ls1/b;

    .line 5
    .line 6
    iput p2, p0, Ls1/a;->a:I

    .line 7
    .line 8
    iput p3, p0, Ls1/a;->b:I

    .line 9
    .line 10
    invoke-virtual {p0}, Ls1/a;->a()V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 13

    .line 1
    iget-object v0, p0, Ls1/a;->j:Ls1/b;

    .line 2
    .line 3
    iget-object v1, v0, Ls1/b;->a:[I

    .line 4
    .line 5
    iget-object v0, v0, Ls1/b;->b:[I

    .line 6
    .line 7
    iget v2, p0, Ls1/a;->a:I

    .line 8
    .line 9
    const v3, 0x7fffffff

    .line 10
    .line 11
    .line 12
    const/high16 v4, -0x80000000

    .line 13
    .line 14
    const/4 v5, 0x0

    .line 15
    const v4, 0x7fffffff

    .line 16
    .line 17
    .line 18
    const v5, 0x7fffffff

    .line 19
    .line 20
    .line 21
    const/high16 v6, -0x80000000

    .line 22
    .line 23
    const/high16 v7, -0x80000000

    .line 24
    .line 25
    const/high16 v8, -0x80000000

    .line 26
    .line 27
    const/4 v9, 0x0

    .line 28
    :goto_0
    iget v10, p0, Ls1/a;->b:I

    .line 29
    .line 30
    if-gt v2, v10, :cond_6

    .line 31
    .line 32
    aget v10, v1, v2

    .line 33
    .line 34
    aget v11, v0, v10

    .line 35
    .line 36
    add-int/2addr v9, v11

    .line 37
    shr-int/lit8 v11, v10, 0xa

    .line 38
    .line 39
    and-int/lit8 v11, v11, 0x1f

    .line 40
    .line 41
    shr-int/lit8 v12, v10, 0x5

    .line 42
    .line 43
    and-int/lit8 v12, v12, 0x1f

    .line 44
    .line 45
    and-int/lit8 v10, v10, 0x1f

    .line 46
    .line 47
    if-le v11, v6, :cond_0

    .line 48
    .line 49
    move v6, v11

    .line 50
    :cond_0
    if-ge v11, v3, :cond_1

    .line 51
    .line 52
    move v3, v11

    .line 53
    :cond_1
    if-le v12, v7, :cond_2

    .line 54
    .line 55
    move v7, v12

    .line 56
    :cond_2
    if-ge v12, v4, :cond_3

    .line 57
    .line 58
    move v4, v12

    .line 59
    :cond_3
    if-le v10, v8, :cond_4

    .line 60
    .line 61
    move v8, v10

    .line 62
    :cond_4
    if-ge v10, v5, :cond_5

    .line 63
    .line 64
    move v5, v10

    .line 65
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_6
    iput v3, p0, Ls1/a;->d:I

    .line 69
    .line 70
    iput v6, p0, Ls1/a;->e:I

    .line 71
    .line 72
    iput v4, p0, Ls1/a;->f:I

    .line 73
    .line 74
    iput v7, p0, Ls1/a;->g:I

    .line 75
    .line 76
    iput v5, p0, Ls1/a;->h:I

    .line 77
    .line 78
    iput v8, p0, Ls1/a;->i:I

    .line 79
    .line 80
    iput v9, p0, Ls1/a;->c:I

    .line 81
    .line 82
    return-void
.end method

.method public final b()I
    .locals 3

    .line 1
    iget v0, p0, Ls1/a;->e:I

    .line 2
    .line 3
    iget v1, p0, Ls1/a;->d:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    add-int/lit8 v0, v0, 0x1

    .line 7
    .line 8
    iget v1, p0, Ls1/a;->g:I

    .line 9
    .line 10
    iget v2, p0, Ls1/a;->f:I

    .line 11
    .line 12
    sub-int/2addr v1, v2

    .line 13
    add-int/lit8 v1, v1, 0x1

    .line 14
    .line 15
    mul-int v1, v1, v0

    .line 16
    .line 17
    iget v0, p0, Ls1/a;->i:I

    .line 18
    .line 19
    iget v2, p0, Ls1/a;->h:I

    .line 20
    .line 21
    sub-int/2addr v0, v2

    .line 22
    add-int/lit8 v0, v0, 0x1

    .line 23
    .line 24
    mul-int v0, v0, v1

    .line 25
    .line 26
    return v0
.end method
