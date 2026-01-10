.class public final Lo7/l;
.super Ll7/r;
.source "MyApplication"


# instance fields
.field public final a:Ll7/k;

.field public final b:Ll7/r;

.field public final c:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Ll7/k;Ll7/r;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lo7/l;->a:Ll7/k;

    .line 5
    .line 6
    iput-object p2, p0, Lo7/l;->b:Ll7/r;

    .line 7
    .line 8
    iput-object p3, p0, Lo7/l;->c:Ljava/lang/reflect/Type;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Lt7/a;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lo7/l;->b:Ll7/r;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ll7/r;->a(Lt7/a;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final b(Lt7/b;Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lo7/l;->c:Ljava/lang/reflect/Type;

    .line 2
    .line 3
    if-eqz p2, :cond_1

    .line 4
    .line 5
    const-class v1, Ljava/lang/Object;

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    instance-of v1, v0, Ljava/lang/reflect/TypeVariable;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    instance-of v1, v0, Ljava/lang/Class;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    move-object v1, v0

    .line 23
    :goto_0
    iget-object v2, p0, Lo7/l;->b:Ll7/r;

    .line 24
    .line 25
    if-eq v1, v0, :cond_4

    .line 26
    .line 27
    new-instance v0, Ls7/a;

    .line 28
    .line 29
    invoke-direct {v0, v1}, Ls7/a;-><init>(Ljava/lang/reflect/Type;)V

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lo7/l;->a:Ll7/k;

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Ll7/k;->c(Ls7/a;)Ll7/r;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    instance-of v1, v0, Lo7/j;

    .line 39
    .line 40
    if-nez v1, :cond_2

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    instance-of v1, v2, Lo7/j;

    .line 44
    .line 45
    if-nez v1, :cond_3

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_3
    :goto_1
    move-object v2, v0

    .line 49
    :cond_4
    :goto_2
    invoke-virtual {v2, p1, p2}, Ll7/r;->b(Lt7/b;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method
