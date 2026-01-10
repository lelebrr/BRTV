.class public final Ld7/e4;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Lb7/i;


# instance fields
.field public final synthetic a:La0/b;


# direct methods
.method public constructor <init>(La0/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ld7/e4;->a:La0/b;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/util/Map$Entry;

    .line 2
    .line 3
    iget-object v0, p0, Ld7/e4;->a:La0/b;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    new-instance v1, Ld7/d4;

    .line 12
    .line 13
    invoke-direct {v1, p1, v0}, Ld7/d4;-><init>(Ljava/util/Map$Entry;La0/b;)V

    .line 14
    .line 15
    .line 16
    return-object v1
.end method
