.class public final Lp8/e;
.super Lp8/a;
.source "MyApplication"


# instance fields
.field public final k:Li8/f;

.field public final l:I


# direct methods
.method public constructor <init>(Lo9/d;Li8/f;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lp8/a;-><init>(Lo9/d;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lp8/e;->k:Li8/f;

    .line 5
    .line 6
    iput p3, p0, Lp8/e;->l:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final G(Li8/c;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lp8/e;->k:Li8/f;

    .line 2
    .line 3
    instance-of v1, v0, Lq8/q;

    .line 4
    .line 5
    iget-object v2, p0, Lp8/a;->j:Lo9/d;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v2, p1}, Lo9/d;->F(Li8/c;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v0}, Li8/f;->a()Li8/e;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Lp8/d;

    .line 18
    .line 19
    iget v3, p0, Lp8/e;->l:I

    .line 20
    .line 21
    invoke-direct {v1, p1, v0, v3}, Lp8/d;-><init>(Li8/c;Li8/e;I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v1}, Lo9/d;->F(Li8/c;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    return-void
.end method
