.class public abstract Lo3/b;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Lo3/h;


# instance fields
.field public final a:I

.field public final b:I

.field public c:Ln3/c;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, -0x80000000

    .line 5
    .line 6
    invoke-static {v0, v0}, Lr3/n;->i(II)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iput v0, p0, Lo3/b;->a:I

    .line 13
    .line 14
    iput v0, p0, Lo3/b;->b:I

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 18
    .line 19
    const-string v1, "Width and height must both be > 0 or Target#SIZE_ORIGINAL, but given width: -2147483648 and height: -2147483648"

    .line 20
    .line 21
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw v0
.end method


# virtual methods
.method public final a(Ln3/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo3/b;->c:Ln3/c;

    .line 2
    .line 3
    return-void
.end method

.method public final b(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final c()V
    .locals 0

    .line 1
    return-void
.end method

.method public final e(Ln3/f;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final f(Ln3/f;)V
    .locals 2

    .line 1
    iget v0, p0, Lo3/b;->b:I

    .line 2
    .line 3
    iget v1, p0, Lo3/b;->a:I

    .line 4
    .line 5
    invoke-virtual {p1, v1, v0}, Ln3/f;->m(II)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final g(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final getRequest()Ln3/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lo3/b;->c:Ln3/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public final i()V
    .locals 0

    .line 1
    return-void
.end method

.method public final j()V
    .locals 0

    .line 1
    return-void
.end method
