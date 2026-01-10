.class public Lc7/t;
.super Lc7/g;
.source "MyApplication"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:I

.field public final c:Lc7/c0;

.field public volatile d:Lc7/v;


# direct methods
.method public constructor <init>(Ljava/lang/Object;ILc7/c0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lc7/b0;->s:Lc7/e;

    .line 5
    .line 6
    iput-object v0, p0, Lc7/t;->d:Lc7/v;

    .line 7
    .line 8
    iput-object p1, p0, Lc7/t;->a:Ljava/lang/Object;

    .line 9
    .line 10
    iput p2, p0, Lc7/t;->b:I

    .line 11
    .line 12
    iput-object p3, p0, Lc7/t;->c:Lc7/c0;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a()Lc7/v;
    .locals 1

    .line 1
    iget-object v0, p0, Lc7/t;->d:Lc7/v;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Lc7/c0;
    .locals 1

    .line 1
    iget-object v0, p0, Lc7/t;->c:Lc7/c0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()I
    .locals 1

    .line 1
    iget v0, p0, Lc7/t;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lc7/t;->a:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public final j(Lc7/v;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc7/t;->d:Lc7/v;

    .line 2
    .line 3
    return-void
.end method
