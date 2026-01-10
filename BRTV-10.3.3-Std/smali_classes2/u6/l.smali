.class public final Lu6/l;
.super Ljava/lang/Object;
.source "MyApplication"


# instance fields
.field public a:Ln5/d;

.field public b:Ln5/d;

.field public c:Ln5/d;

.field public d:Ln5/d;

.field public e:Lu6/c;

.field public f:Lu6/c;

.field public g:Lu6/c;

.field public h:Lu6/c;

.field public i:Lu6/e;

.field public j:Lu6/e;

.field public k:Lu6/e;

.field public l:Lu6/e;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lu6/k;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lu6/l;->a:Ln5/d;

    .line 10
    .line 11
    new-instance v0, Lu6/k;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lu6/l;->b:Ln5/d;

    .line 17
    .line 18
    new-instance v0, Lu6/k;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lu6/l;->c:Ln5/d;

    .line 24
    .line 25
    new-instance v0, Lu6/k;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lu6/l;->d:Ln5/d;

    .line 31
    .line 32
    new-instance v0, Lu6/a;

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-direct {v0, v1}, Lu6/a;-><init>(F)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lu6/l;->e:Lu6/c;

    .line 39
    .line 40
    new-instance v0, Lu6/a;

    .line 41
    .line 42
    invoke-direct {v0, v1}, Lu6/a;-><init>(F)V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lu6/l;->f:Lu6/c;

    .line 46
    .line 47
    new-instance v0, Lu6/a;

    .line 48
    .line 49
    invoke-direct {v0, v1}, Lu6/a;-><init>(F)V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Lu6/l;->g:Lu6/c;

    .line 53
    .line 54
    new-instance v0, Lu6/a;

    .line 55
    .line 56
    invoke-direct {v0, v1}, Lu6/a;-><init>(F)V

    .line 57
    .line 58
    .line 59
    iput-object v0, p0, Lu6/l;->h:Lu6/c;

    .line 60
    .line 61
    new-instance v0, Lu6/e;

    .line 62
    .line 63
    const/4 v1, 0x0

    .line 64
    invoke-direct {v0, v1}, Lu6/e;-><init>(I)V

    .line 65
    .line 66
    .line 67
    iput-object v0, p0, Lu6/l;->i:Lu6/e;

    .line 68
    .line 69
    new-instance v0, Lu6/e;

    .line 70
    .line 71
    const/4 v1, 0x0

    .line 72
    invoke-direct {v0, v1}, Lu6/e;-><init>(I)V

    .line 73
    .line 74
    .line 75
    iput-object v0, p0, Lu6/l;->j:Lu6/e;

    .line 76
    .line 77
    new-instance v0, Lu6/e;

    .line 78
    .line 79
    const/4 v1, 0x0

    .line 80
    invoke-direct {v0, v1}, Lu6/e;-><init>(I)V

    .line 81
    .line 82
    .line 83
    iput-object v0, p0, Lu6/l;->k:Lu6/e;

    .line 84
    .line 85
    new-instance v0, Lu6/e;

    .line 86
    .line 87
    const/4 v1, 0x0

    .line 88
    invoke-direct {v0, v1}, Lu6/e;-><init>(I)V

    .line 89
    .line 90
    .line 91
    iput-object v0, p0, Lu6/l;->l:Lu6/e;

    .line 92
    .line 93
    return-void
.end method

.method public static b(Ln5/d;)V
    .locals 1

    .line 1
    instance-of v0, p0, Lu6/k;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    instance-of p0, p0, Lu6/d;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Lu6/m;
    .locals 2

    .line 1
    new-instance v0, Lu6/m;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lu6/l;->a:Ln5/d;

    .line 7
    .line 8
    iput-object v1, v0, Lu6/m;->a:Ln5/d;

    .line 9
    .line 10
    iget-object v1, p0, Lu6/l;->b:Ln5/d;

    .line 11
    .line 12
    iput-object v1, v0, Lu6/m;->b:Ln5/d;

    .line 13
    .line 14
    iget-object v1, p0, Lu6/l;->c:Ln5/d;

    .line 15
    .line 16
    iput-object v1, v0, Lu6/m;->c:Ln5/d;

    .line 17
    .line 18
    iget-object v1, p0, Lu6/l;->d:Ln5/d;

    .line 19
    .line 20
    iput-object v1, v0, Lu6/m;->d:Ln5/d;

    .line 21
    .line 22
    iget-object v1, p0, Lu6/l;->e:Lu6/c;

    .line 23
    .line 24
    iput-object v1, v0, Lu6/m;->e:Lu6/c;

    .line 25
    .line 26
    iget-object v1, p0, Lu6/l;->f:Lu6/c;

    .line 27
    .line 28
    iput-object v1, v0, Lu6/m;->f:Lu6/c;

    .line 29
    .line 30
    iget-object v1, p0, Lu6/l;->g:Lu6/c;

    .line 31
    .line 32
    iput-object v1, v0, Lu6/m;->g:Lu6/c;

    .line 33
    .line 34
    iget-object v1, p0, Lu6/l;->h:Lu6/c;

    .line 35
    .line 36
    iput-object v1, v0, Lu6/m;->h:Lu6/c;

    .line 37
    .line 38
    iget-object v1, p0, Lu6/l;->i:Lu6/e;

    .line 39
    .line 40
    iput-object v1, v0, Lu6/m;->i:Lu6/e;

    .line 41
    .line 42
    iget-object v1, p0, Lu6/l;->j:Lu6/e;

    .line 43
    .line 44
    iput-object v1, v0, Lu6/m;->j:Lu6/e;

    .line 45
    .line 46
    iget-object v1, p0, Lu6/l;->k:Lu6/e;

    .line 47
    .line 48
    iput-object v1, v0, Lu6/m;->k:Lu6/e;

    .line 49
    .line 50
    iget-object v1, p0, Lu6/l;->l:Lu6/e;

    .line 51
    .line 52
    iput-object v1, v0, Lu6/m;->l:Lu6/e;

    .line 53
    .line 54
    return-object v0
.end method

.method public final c(F)V
    .locals 1

    .line 1
    new-instance v0, Lu6/a;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lu6/a;-><init>(F)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lu6/l;->e:Lu6/c;

    .line 7
    .line 8
    new-instance v0, Lu6/a;

    .line 9
    .line 10
    invoke-direct {v0, p1}, Lu6/a;-><init>(F)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lu6/l;->f:Lu6/c;

    .line 14
    .line 15
    new-instance v0, Lu6/a;

    .line 16
    .line 17
    invoke-direct {v0, p1}, Lu6/a;-><init>(F)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lu6/l;->g:Lu6/c;

    .line 21
    .line 22
    new-instance v0, Lu6/a;

    .line 23
    .line 24
    invoke-direct {v0, p1}, Lu6/a;-><init>(F)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lu6/l;->h:Lu6/c;

    .line 28
    .line 29
    return-void
.end method
