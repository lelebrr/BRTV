.class public final Ld7/s1;
.super Ld7/p1;
.source "MyApplication"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-direct {p0, v0}, Ld7/p1;-><init>(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ld7/p1;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ld7/p1;->a(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public final g()Ld7/c5;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ld7/p1;->c:Z

    .line 3
    .line 4
    iget-object v0, p0, Ld7/p1;->a:[Ljava/lang/Object;

    .line 5
    .line 6
    iget v1, p0, Ld7/p1;->b:I

    .line 7
    .line 8
    invoke-static {v0, v1}, Ld7/u1;->j([Ljava/lang/Object;I)Ld7/c5;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method
