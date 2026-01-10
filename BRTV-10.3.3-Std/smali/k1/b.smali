.class public Lk1/b;
.super Landroidx/lifecycle/v0;
.source "MyApplication"


# static fields
.field public static final e:Lu6/e;


# instance fields
.field public final d:Lp/m;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lu6/e;

    .line 2
    .line 3
    const/16 v1, 0xf

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lu6/e;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lk1/b;->e:Lu6/e;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/v0;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lp/m;

    .line 5
    .line 6
    invoke-direct {v0}, Lp/m;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lk1/b;->d:Lp/m;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 6

    .line 1
    iget-object v0, p0, Lk1/b;->d:Lp/m;

    .line 2
    .line 3
    iget v1, v0, Lp/m;->c:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    if-gtz v1, :cond_1

    .line 8
    .line 9
    iget v1, v0, Lp/m;->c:I

    .line 10
    .line 11
    iget-object v4, v0, Lp/m;->b:[Ljava/lang/Object;

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    :goto_0
    if-ge v5, v1, :cond_0

    .line 15
    .line 16
    aput-object v3, v4, v5

    .line 17
    .line 18
    add-int/lit8 v5, v5, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iput v2, v0, Lp/m;->c:I

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    iget-object v0, v0, Lp/m;->b:[Ljava/lang/Object;

    .line 25
    .line 26
    aget-object v0, v0, v2

    .line 27
    .line 28
    check-cast v0, Lk1/a;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    throw v0
.end method
