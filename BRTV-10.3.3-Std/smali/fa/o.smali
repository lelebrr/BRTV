.class public abstract Lfa/o;
.super Landroidx/recyclerview/widget/k0;
.source "MyApplication"


# static fields
.field public static final i:Ljava/lang/String;


# instance fields
.field public final a:Landroid/content/Context;

.field public b:I

.field public c:I

.field public d:I

.field public e:Landroidx/recyclerview/widget/RecyclerView;

.field public final f:Lea/d;

.field public g:I

.field public h:Lfa/n0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "5SimTOGF6urBNqpa5Yns5OM+rljHhfs=\n"

    .line 2
    .line 3
    const-string v1, "olrPKLPgiZM=\n"

    .line 4
    .line 5
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lfa/o;->i:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lea/d;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/k0;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lfa/o;->b:I

    .line 6
    .line 7
    const/16 v0, -0x64

    .line 8
    .line 9
    iput v0, p0, Lfa/o;->c:I

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lfa/o;->d:I

    .line 13
    .line 14
    const/4 v0, 0x5

    .line 15
    iput v0, p0, Lfa/o;->g:I

    .line 16
    .line 17
    iput-object p1, p0, Lfa/o;->a:Landroid/content/Context;

    .line 18
    .line 19
    iput-object p2, p0, Lfa/o;->f:Lea/d;

    .line 20
    .line 21
    sget-object p1, Lea/d;->e:Lea/d;

    .line 22
    .line 23
    if-ne p2, p1, :cond_0

    .line 24
    .line 25
    sget p1, Lea/h;->t:I

    .line 26
    .line 27
    iput p1, p0, Lfa/o;->g:I

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    sget-object p1, Lea/d;->g:Lea/d;

    .line 31
    .line 32
    if-ne p2, p1, :cond_1

    .line 33
    .line 34
    sget p1, Lea/h;->w:I

    .line 35
    .line 36
    iput p1, p0, Lfa/o;->g:I

    .line 37
    .line 38
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 3

    .line 1
    iget v0, p0, Lfa/o;->b:I

    .line 2
    .line 3
    add-int/2addr v0, p1

    .line 4
    iput v0, p0, Lfa/o;->d:I

    .line 5
    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v0, "huXpWYL93t+P//hQiqSK\n"

    .line 12
    .line 13
    const-string v1, "67aMNeeeqro=\n"

    .line 14
    .line 15
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget v0, p0, Lfa/o;->b:I

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v0, "TN5x8hUSkvMJ02DDFSSapUw=\n"

    .line 28
    .line 29
    const-string v1, "bLAUimFB958=\n"

    .line 30
    .line 31
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v0, p0, Lfa/o;->d:I

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    sget-boolean v0, Lorg/bitspark/android/utils/m;->b:Z

    .line 48
    .line 49
    sget-object v0, Lfa/o;->i:Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {v0, p1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget p1, p0, Lfa/o;->d:I

    .line 55
    .line 56
    const/4 v0, 0x0

    .line 57
    if-gez p1, :cond_0

    .line 58
    .line 59
    iget p1, p0, Lfa/o;->b:I

    .line 60
    .line 61
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/k0;->notifyItemChanged(I)V

    .line 62
    .line 63
    .line 64
    return v0

    .line 65
    :cond_0
    const/4 v1, 0x1

    .line 66
    if-ltz p1, :cond_1

    .line 67
    .line 68
    invoke-virtual {p0}, Landroidx/recyclerview/widget/k0;->getItemCount()I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-ge p1, v2, :cond_1

    .line 73
    .line 74
    iget p1, p0, Lfa/o;->b:I

    .line 75
    .line 76
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/k0;->notifyItemChanged(I)V

    .line 77
    .line 78
    .line 79
    iget p1, p0, Lfa/o;->b:I

    .line 80
    .line 81
    iput p1, p0, Lfa/o;->c:I

    .line 82
    .line 83
    iget p1, p0, Lfa/o;->d:I

    .line 84
    .line 85
    iput p1, p0, Lfa/o;->b:I

    .line 86
    .line 87
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/k0;->notifyItemChanged(I)V

    .line 88
    .line 89
    .line 90
    iget-object p1, p0, Lfa/o;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 91
    .line 92
    iget v0, p0, Lfa/o;->b:I

    .line 93
    .line 94
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 95
    .line 96
    .line 97
    return v1

    .line 98
    :cond_1
    iget p1, p0, Lfa/o;->d:I

    .line 99
    .line 100
    invoke-virtual {p0}, Landroidx/recyclerview/widget/k0;->getItemCount()I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-lt p1, v2, :cond_2

    .line 105
    .line 106
    return v1

    .line 107
    :cond_2
    return v0
.end method

.method public final onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/k0;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lfa/o;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    .line 6
    new-instance v0, Lfa/l;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p0, v1, p1}, Lfa/l;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 13
    .line 14
    .line 15
    new-instance v0, Lfa/m;

    .line 16
    .line 17
    invoke-direct {v0, p0, v1}, Lfa/m;-><init>(Landroidx/recyclerview/widget/k0;I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 21
    .line 22
    .line 23
    new-instance v0, Landroidx/appcompat/app/a;

    .line 24
    .line 25
    const/16 v1, 0xa

    .line 26
    .line 27
    invoke-direct {v0, v1, p0}, Landroidx/appcompat/app/a;-><init>(ILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    .line 32
    .line 33
    new-instance v0, Lfa/n;

    .line 34
    .line 35
    invoke-direct {v0, p0, p1}, Lfa/n;-><init>(Lfa/o;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
