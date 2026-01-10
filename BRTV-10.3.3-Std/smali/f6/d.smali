.class public final Lf6/d;
.super Ljava/lang/Object;
.source "MyApplication"


# instance fields
.field public a:F

.field public b:F

.field public c:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lf6/d;->a:F

    .line 3
    iput p2, p0, Lf6/d;->b:F

    .line 4
    iput p3, p0, Lf6/d;->c:F

    return-void
.end method

.method public constructor <init>(Lf6/d;)V
    .locals 2

    .line 5
    iget v0, p1, Lf6/d;->a:F

    iget v1, p1, Lf6/d;->b:F

    iget p1, p1, Lf6/d;->c:F

    invoke-direct {p0, v0, v1, p1}, Lf6/d;-><init>(FFF)V

    return-void
.end method
