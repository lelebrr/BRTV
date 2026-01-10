.class public abstract Ld7/b3;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ld7/f3;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:I


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Ld7/b3;->a:Ljava/lang/Object;

    .line 5
    .line 6
    iput p1, p0, Ld7/b3;->b:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public b()Ld7/f3;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public final c()I
    .locals 1

    .line 1
    iget v0, p0, Ld7/b3;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ld7/b3;->a:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method
