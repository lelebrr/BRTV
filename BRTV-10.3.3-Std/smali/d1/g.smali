.class public final Ld1/g;
.super Lcom/bumptech/glide/d;
.source "MyApplication"


# instance fields
.field public final a:Ld1/f;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ld1/f;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ld1/f;-><init>(Landroid/widget/TextView;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Ld1/g;->a:Ld1/f;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final E(Z)V
    .locals 1

    .line 1
    sget-object v0, Lb1/i;->j:Lb1/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    if-nez v0, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    iget-object v0, p0, Ld1/g;->a:Ld1/f;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ld1/f;->E(Z)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final F(Z)V
    .locals 2

    .line 1
    sget-object v0, Lb1/i;->j:Lb1/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    iget-object v1, p0, Ld1/g;->a:Ld1/f;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    iput-boolean p1, v1, Ld1/f;->c:Z

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_1
    invoke-virtual {v1, p1}, Ld1/f;->F(Z)V

    .line 16
    .line 17
    .line 18
    :goto_1
    return-void
.end method

.method public final I(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;
    .locals 1

    .line 1
    sget-object v0, Lb1/i;->j:Lb1/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    if-nez v0, :cond_1

    .line 9
    .line 10
    return-object p1

    .line 11
    :cond_1
    iget-object v0, p0, Ld1/g;->a:Ld1/f;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ld1/f;->I(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final o([Landroid/text/InputFilter;)[Landroid/text/InputFilter;
    .locals 1

    .line 1
    sget-object v0, Lb1/i;->j:Lb1/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    if-nez v0, :cond_1

    .line 9
    .line 10
    return-object p1

    .line 11
    :cond_1
    iget-object v0, p0, Ld1/g;->a:Ld1/f;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ld1/f;->o([Landroid/text/InputFilter;)[Landroid/text/InputFilter;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final t()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ld1/g;->a:Ld1/f;

    .line 2
    .line 3
    iget-boolean v0, v0, Ld1/f;->c:Z

    .line 4
    .line 5
    return v0
.end method
