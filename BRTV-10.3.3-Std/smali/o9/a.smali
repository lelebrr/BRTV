.class public abstract Lo9/a;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lk9/a;


# instance fields
.field public final a:C

.field public final b:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v0, v1, v0}, Lo9/d;->p(III)I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    int-to-char v1, v1

    .line 11
    iput-char v1, p0, Lo9/a;->a:C

    .line 12
    .line 13
    iput v0, p0, Lo9/a;->b:I

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 3

    .line 1
    new-instance v0, Lo9/b;

    .line 2
    .line 3
    iget v1, p0, Lo9/a;->b:I

    .line 4
    .line 5
    iget-char v2, p0, Lo9/a;->a:C

    .line 6
    .line 7
    invoke-direct {v0, v2, v1}, Lo9/b;-><init>(CI)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method
