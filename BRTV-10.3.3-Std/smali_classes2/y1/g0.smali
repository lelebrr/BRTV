.class public abstract Ly1/g0;
.super Ljava/lang/Object;
.source "MyApplication"


# static fields
.field public static final a:Ly1/h0;

.field public static final b:Landroidx/appcompat/widget/g3;

.field public static final c:Landroidx/appcompat/widget/g3;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    new-instance v0, Ly1/k0;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    sput-object v0, Ly1/g0;->a:Ly1/h0;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/16 v1, 0x17

    .line 16
    .line 17
    if-lt v0, v1, :cond_1

    .line 18
    .line 19
    new-instance v0, Ly1/j0;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    sput-object v0, Ly1/g0;->a:Ly1/h0;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/16 v1, 0x16

    .line 28
    .line 29
    if-lt v0, v1, :cond_2

    .line 30
    .line 31
    new-instance v0, Ly1/i0;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 34
    .line 35
    .line 36
    sput-object v0, Ly1/g0;->a:Ly1/h0;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    new-instance v0, Ly1/h0;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 42
    .line 43
    .line 44
    sput-object v0, Ly1/g0;->a:Ly1/h0;

    .line 45
    .line 46
    :goto_0
    new-instance v0, Landroidx/appcompat/widget/g3;

    .line 47
    .line 48
    const-class v1, Ljava/lang/Float;

    .line 49
    .line 50
    const-string v2, "translationAlpha"

    .line 51
    .line 52
    const/16 v3, 0x12

    .line 53
    .line 54
    invoke-direct {v0, v2, v1, v3}, Landroidx/appcompat/widget/g3;-><init>(Ljava/lang/String;Ljava/lang/Class;I)V

    .line 55
    .line 56
    .line 57
    sput-object v0, Ly1/g0;->b:Landroidx/appcompat/widget/g3;

    .line 58
    .line 59
    new-instance v0, Landroidx/appcompat/widget/g3;

    .line 60
    .line 61
    const-class v1, Landroid/graphics/Rect;

    .line 62
    .line 63
    const-string v2, "clipBounds"

    .line 64
    .line 65
    const/16 v3, 0x13

    .line 66
    .line 67
    invoke-direct {v0, v2, v1, v3}, Landroidx/appcompat/widget/g3;-><init>(Ljava/lang/String;Ljava/lang/Class;I)V

    .line 68
    .line 69
    .line 70
    sput-object v0, Ly1/g0;->c:Landroidx/appcompat/widget/g3;

    .line 71
    .line 72
    return-void
.end method

.method public static a(Landroid/view/View;IIII)V
    .locals 6

    .line 1
    sget-object v0, Ly1/g0;->a:Ly1/h0;

    .line 2
    .line 3
    move-object v1, p0

    .line 4
    move v2, p1

    .line 5
    move v3, p2

    .line 6
    move v4, p3

    .line 7
    move v5, p4

    .line 8
    invoke-virtual/range {v0 .. v5}, Ly1/v;->h(Landroid/view/View;IIII)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static b(Landroid/view/View;F)V
    .locals 1

    .line 1
    sget-object v0, Ly1/g0;->a:Ly1/h0;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1}, Ly1/h0;->m(Landroid/view/View;F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static c(ILandroid/view/View;)V
    .locals 1

    .line 1
    sget-object v0, Ly1/g0;->a:Ly1/h0;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1}, Ly1/v;->i(ILandroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
