.class public final Lm2/q;
.super Lm2/j;
.source "MyApplication"


# instance fields
.field public final a:Landroid/graphics/drawable/Drawable;

.field public final b:Lm2/i;

.field public final c:Ld2/f;

.field public final d:Lcoil/memory/MemoryCache$Key;

.field public final e:Ljava/lang/String;

.field public final f:Z

.field public final g:Z


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Lm2/i;Ld2/f;Lcoil/memory/MemoryCache$Key;Ljava/lang/String;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lm2/q;->a:Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    iput-object p2, p0, Lm2/q;->b:Lm2/i;

    .line 7
    .line 8
    iput-object p3, p0, Lm2/q;->c:Ld2/f;

    .line 9
    .line 10
    iput-object p4, p0, Lm2/q;->d:Lcoil/memory/MemoryCache$Key;

    .line 11
    .line 12
    iput-object p5, p0, Lm2/q;->e:Ljava/lang/String;

    .line 13
    .line 14
    iput-boolean p6, p0, Lm2/q;->f:Z

    .line 15
    .line 16
    iput-boolean p7, p0, Lm2/q;->g:Z

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lm2/q;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Lm2/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lm2/q;->b:Lm2/i;

    .line 2
    .line 3
    return-object v0
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
    instance-of v1, p1, Lm2/q;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    check-cast p1, Lm2/q;

    .line 10
    .line 11
    iget-object v1, p1, Lm2/q;->a:Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    iget-object v2, p0, Lm2/q;->a:Landroid/graphics/drawable/Drawable;

    .line 14
    .line 15
    invoke-static {v2, v1}, Lj9/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    iget-object v1, p1, Lm2/q;->b:Lm2/i;

    .line 22
    .line 23
    iget-object v2, p0, Lm2/q;->b:Lm2/i;

    .line 24
    .line 25
    invoke-static {v2, v1}, Lj9/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    iget-object v1, p0, Lm2/q;->c:Ld2/f;

    .line 32
    .line 33
    iget-object v2, p1, Lm2/q;->c:Ld2/f;

    .line 34
    .line 35
    if-ne v1, v2, :cond_1

    .line 36
    .line 37
    iget-object v1, p0, Lm2/q;->d:Lcoil/memory/MemoryCache$Key;

    .line 38
    .line 39
    iget-object v2, p1, Lm2/q;->d:Lcoil/memory/MemoryCache$Key;

    .line 40
    .line 41
    invoke-static {v1, v2}, Lj9/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    iget-object v1, p0, Lm2/q;->e:Ljava/lang/String;

    .line 48
    .line 49
    iget-object v2, p1, Lm2/q;->e:Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {v1, v2}, Lj9/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_1

    .line 56
    .line 57
    iget-boolean v1, p0, Lm2/q;->f:Z

    .line 58
    .line 59
    iget-boolean v2, p1, Lm2/q;->f:Z

    .line 60
    .line 61
    if-ne v1, v2, :cond_1

    .line 62
    .line 63
    iget-boolean v1, p0, Lm2/q;->g:Z

    .line 64
    .line 65
    iget-boolean p1, p1, Lm2/q;->g:Z

    .line 66
    .line 67
    if-ne v1, p1, :cond_1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    const/4 v0, 0x0

    .line 71
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lm2/q;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lm2/q;->b:Lm2/i;

    .line 10
    .line 11
    invoke-virtual {v1}, Lm2/i;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v1, v0

    .line 16
    mul-int/lit8 v1, v1, 0x1f

    .line 17
    .line 18
    iget-object v0, p0, Lm2/q;->c:Ld2/f;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    add-int/2addr v0, v1

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    iget-object v2, p0, Lm2/q;->d:Lcoil/memory/MemoryCache$Key;

    .line 29
    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    invoke-virtual {v2}, Lcoil/memory/MemoryCache$Key;->hashCode()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 v2, 0x0

    .line 38
    :goto_0
    add-int/2addr v0, v2

    .line 39
    mul-int/lit8 v0, v0, 0x1f

    .line 40
    .line 41
    iget-object v2, p0, Lm2/q;->e:Ljava/lang/String;

    .line 42
    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    :cond_1
    add-int/2addr v0, v1

    .line 50
    mul-int/lit8 v0, v0, 0x1f

    .line 51
    .line 52
    const/16 v1, 0x4d5

    .line 53
    .line 54
    const/16 v2, 0x4cf

    .line 55
    .line 56
    iget-boolean v3, p0, Lm2/q;->f:Z

    .line 57
    .line 58
    if-eqz v3, :cond_2

    .line 59
    .line 60
    const/16 v3, 0x4cf

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_2
    const/16 v3, 0x4d5

    .line 64
    .line 65
    :goto_1
    add-int/2addr v0, v3

    .line 66
    mul-int/lit8 v0, v0, 0x1f

    .line 67
    .line 68
    iget-boolean v3, p0, Lm2/q;->g:Z

    .line 69
    .line 70
    if-eqz v3, :cond_3

    .line 71
    .line 72
    const/16 v1, 0x4cf

    .line 73
    .line 74
    :cond_3
    add-int/2addr v0, v1

    .line 75
    return v0
.end method
