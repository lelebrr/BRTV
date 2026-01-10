.class public Ld7/q3;
.super Ld7/b3;
.source "MyApplication"

# interfaces
.implements Ld7/y3;


# instance fields
.field public volatile c:Ld7/z3;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ld7/b3;-><init>(ILjava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Ld7/c4;->j:Ld7/a3;

    .line 5
    .line 6
    iput-object p1, p0, Ld7/q3;->c:Ld7/z3;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Ld7/z3;
    .locals 1

    .line 1
    iget-object v0, p0, Ld7/q3;->c:Ld7/z3;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ld7/q3;->c:Ld7/z3;

    .line 2
    .line 3
    invoke-interface {v0}, Ld7/z3;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
