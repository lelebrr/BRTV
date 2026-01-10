.class public final Ln7/e;
.super Ll7/r;
.source "MyApplication"


# instance fields
.field public a:Ll7/r;

.field public final synthetic b:Z

.field public final synthetic c:Z

.field public final synthetic d:Ll7/k;

.field public final synthetic e:Ls7/a;

.field public final synthetic f:Ln7/f;


# direct methods
.method public constructor <init>(Ln7/f;ZZLl7/k;Ls7/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ln7/e;->f:Ln7/f;

    .line 5
    .line 6
    iput-boolean p2, p0, Ln7/e;->b:Z

    .line 7
    .line 8
    iput-boolean p3, p0, Ln7/e;->c:Z

    .line 9
    .line 10
    iput-object p4, p0, Ln7/e;->d:Ll7/k;

    .line 11
    .line 12
    iput-object p5, p0, Ln7/e;->e:Ls7/a;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a(Lt7/a;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-boolean v0, p0, Ln7/e;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lt7/a;->z()V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    return-object p1

    .line 10
    :cond_0
    iget-object v0, p0, Ln7/e;->a:Ll7/r;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_1
    iget-object v0, p0, Ln7/e;->e:Ls7/a;

    .line 16
    .line 17
    iget-object v1, p0, Ln7/e;->d:Ll7/k;

    .line 18
    .line 19
    iget-object v2, v1, Ll7/k;->e:Ljava/util/List;

    .line 20
    .line 21
    iget-object v3, p0, Ln7/e;->f:Ln7/f;

    .line 22
    .line 23
    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-nez v4, :cond_2

    .line 28
    .line 29
    iget-object v3, v1, Ll7/k;->d:Lo7/c;

    .line 30
    .line 31
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    const/4 v4, 0x0

    .line 36
    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    if-eqz v5, :cond_5

    .line 41
    .line 42
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    check-cast v5, Ll7/s;

    .line 47
    .line 48
    if-nez v4, :cond_4

    .line 49
    .line 50
    if-ne v5, v3, :cond_3

    .line 51
    .line 52
    const/4 v4, 0x1

    .line 53
    goto :goto_0

    .line 54
    :cond_4
    invoke-interface {v5, v1, v0}, Ll7/s;->a(Ll7/k;Ls7/a;)Ll7/r;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    if-eqz v5, :cond_3

    .line 59
    .line 60
    iput-object v5, p0, Ln7/e;->a:Ll7/r;

    .line 61
    .line 62
    move-object v0, v5

    .line 63
    :goto_1
    invoke-virtual {v0, p1}, Ll7/r;->a(Lt7/a;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    return-object p1

    .line 68
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 69
    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string v2, "GSON cannot serialize "

    .line 73
    .line 74
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p1
.end method

.method public final b(Lt7/b;Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Ln7/e;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lt7/b;->i()Lt7/b;

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Ln7/e;->a:Ll7/r;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_1
    iget-object v0, p0, Ln7/e;->e:Ls7/a;

    .line 15
    .line 16
    iget-object v1, p0, Ln7/e;->d:Ll7/k;

    .line 17
    .line 18
    iget-object v2, v1, Ll7/k;->e:Ljava/util/List;

    .line 19
    .line 20
    iget-object v3, p0, Ln7/e;->f:Ln7/f;

    .line 21
    .line 22
    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-nez v4, :cond_2

    .line 27
    .line 28
    iget-object v3, v1, Ll7/k;->d:Lo7/c;

    .line 29
    .line 30
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const/4 v4, 0x0

    .line 35
    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-eqz v5, :cond_5

    .line 40
    .line 41
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    check-cast v5, Ll7/s;

    .line 46
    .line 47
    if-nez v4, :cond_4

    .line 48
    .line 49
    if-ne v5, v3, :cond_3

    .line 50
    .line 51
    const/4 v4, 0x1

    .line 52
    goto :goto_0

    .line 53
    :cond_4
    invoke-interface {v5, v1, v0}, Ll7/s;->a(Ll7/k;Ls7/a;)Ll7/r;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    if-eqz v5, :cond_3

    .line 58
    .line 59
    iput-object v5, p0, Ln7/e;->a:Ll7/r;

    .line 60
    .line 61
    move-object v0, v5

    .line 62
    :goto_1
    invoke-virtual {v0, p1, p2}, Ll7/r;->b(Lt7/b;Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 67
    .line 68
    new-instance p2, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string v1, "GSON cannot serialize "

    .line 71
    .line 72
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw p1
.end method
