.class public abstract Ld7/h1;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field public final a:Lb7/m;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lb7/a;->a:Lb7/a;

    iput-object v0, p0, Ld7/h1;->a:Lb7/m;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lb7/z;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-direct {v0, p1}, Lb7/z;-><init>(Ljava/lang/Iterable;)V

    .line 7
    iput-object v0, p0, Ld7/h1;->a:Lb7/m;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ld7/h1;->a:Lb7/m;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lb7/m;->a(Ld7/h1;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Iterable;

    .line 8
    .line 9
    invoke-static {v0}, Ld7/d0;->F(Ljava/lang/Iterable;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method
