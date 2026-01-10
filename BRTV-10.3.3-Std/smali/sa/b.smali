.class public final Lsa/b;
.super Landroidx/recyclerview/widget/t0;
.source "MyApplication"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lsa/b;->a:I

    .line 5
    .line 6
    iput p2, p0, Lsa/b;->b:I

    .line 7
    .line 8
    iput p3, p0, Lsa/b;->c:I

    .line 9
    .line 10
    iput p4, p0, Lsa/b;->d:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/l1;)V
    .locals 2

    .line 1
    const-string v0, "viXS2pkuEw==\n"

    .line 2
    .line 3
    const-string v1, "0VCmiPxNZ0Q=\n"

    .line 4
    .line 5
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {p1, v0}, Lj9/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "rg8GHA==\n"

    .line 13
    .line 14
    const-string v1, "2GZjaxM3zuc=\n"

    .line 15
    .line 16
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {p2, v0}, Lj9/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v0, "U/KQInSs\n"

    .line 24
    .line 25
    const-string v1, "I5PiRxrYdGw=\n"

    .line 26
    .line 27
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {p3, v0}, Lj9/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string v0, "ZOLu/LQ=\n"

    .line 35
    .line 36
    const-string v1, "F5aPiNG0Yec=\n"

    .line 37
    .line 38
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {p4, v0}, Lj9/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/t0;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/l1;)V

    .line 46
    .line 47
    .line 48
    iget p2, p0, Lsa/b;->c:I

    .line 49
    .line 50
    iget p3, p0, Lsa/b;->d:I

    .line 51
    .line 52
    iget p4, p0, Lsa/b;->a:I

    .line 53
    .line 54
    iget v0, p0, Lsa/b;->b:I

    .line 55
    .line 56
    invoke-virtual {p1, p4, v0, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 57
    .line 58
    .line 59
    return-void
.end method
