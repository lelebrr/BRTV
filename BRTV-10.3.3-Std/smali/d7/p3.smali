.class public final Ld7/p3;
.super Ld7/q3;
.source "MyApplication"


# instance fields
.field public final d:Ld7/q3;


# direct methods
.method public constructor <init>(Ljava/lang/Object;ILd7/q3;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p1}, Ld7/q3;-><init>(ILjava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Ld7/p3;->d:Ld7/q3;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b()Ld7/f3;
    .locals 1

    .line 1
    iget-object v0, p0, Ld7/p3;->d:Ld7/q3;

    .line 2
    .line 3
    return-object v0
.end method
