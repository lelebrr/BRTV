.class public final Ld7/s3;
.super Ld7/t3;
.source "MyApplication"


# instance fields
.field public final c:Ld7/t3;


# direct methods
.method public constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILd7/t3;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3, p1}, Ld7/t3;-><init>(Ljava/lang/Object;ILjava/lang/ref/ReferenceQueue;)V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Ld7/s3;->c:Ld7/t3;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b()Ld7/f3;
    .locals 1

    .line 1
    iget-object v0, p0, Ld7/s3;->c:Ld7/t3;

    .line 2
    .line 3
    return-object v0
.end method
