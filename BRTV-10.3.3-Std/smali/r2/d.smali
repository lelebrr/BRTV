.class public abstract Lr2/d;
.super Ljava/lang/Object;
.source "MyApplication"


# static fields
.field public static final a:Lm2/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lm2/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lm2/c;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lr2/d;->a:Lm2/c;

    .line 7
    .line 8
    return-void
.end method

.method public static final a(Lm2/i;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lm2/i;->e:Ln2/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    if-eq v0, v2, :cond_2

    .line 12
    .line 13
    const/4 v3, 0x2

    .line 14
    if-ne v0, v3, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lm2/i;->v:Ln2/i;

    .line 17
    .line 18
    instance-of v3, v0, Ln2/c;

    .line 19
    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object p0, p0, Lm2/i;->c:Lo2/a;

    .line 24
    .line 25
    instance-of v3, p0, Lo2/a;

    .line 26
    .line 27
    if-eqz v3, :cond_3

    .line 28
    .line 29
    instance-of v3, v0, Ln2/f;

    .line 30
    .line 31
    if-eqz v3, :cond_3

    .line 32
    .line 33
    iget-object p0, p0, Lo2/a;->b:Landroid/widget/ImageView;

    .line 34
    .line 35
    instance-of v3, p0, Landroid/widget/ImageView;

    .line 36
    .line 37
    if-eqz v3, :cond_3

    .line 38
    .line 39
    check-cast v0, Ln2/f;

    .line 40
    .line 41
    iget-object v0, v0, Ln2/f;->a:Landroid/widget/ImageView;

    .line 42
    .line 43
    if-ne p0, v0, :cond_3

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    new-instance p0, Landroidx/fragment/app/q;

    .line 47
    .line 48
    const/16 v0, 0xd

    .line 49
    .line 50
    invoke-direct {p0, v0}, Landroidx/fragment/app/q;-><init>(I)V

    .line 51
    .line 52
    .line 53
    throw p0

    .line 54
    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 55
    :cond_3
    return v1
.end method

.method public static final b(Lm2/i;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    if-nez p1, :cond_3

    .line 2
    .line 3
    if-eqz p2, :cond_2

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p0, p0, Lm2/i;->a:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-static {p0, p1}, Lcom/bumptech/glide/c;->h(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    if-eqz p0, :cond_1

    .line 24
    .line 25
    move-object p1, p0

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const-string p0, "Invalid resource ID: "

    .line 28
    .line 29
    invoke-static {p1, p0}, La/e;->n(ILjava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p1

    .line 43
    :cond_2
    move-object p1, p3

    .line 44
    :cond_3
    :goto_0
    return-object p1
.end method
