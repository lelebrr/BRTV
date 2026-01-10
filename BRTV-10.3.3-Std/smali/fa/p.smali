.class public abstract Lfa/p;
.super Landroidx/recyclerview/widget/k0;
.source "MyApplication"


# static fields
.field public static final f:Ljava/lang/String;


# instance fields
.field public a:I

.field public b:I

.field public c:Landroidx/recyclerview/widget/RecyclerView;

.field public final d:I

.field public e:La7/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "4263Gjvl8mLZarscNcf6ZttItws=\n"

    .line 2
    .line 3
    const-string v1, "qzzSeUKGngc=\n"

    .line 4
    .line 5
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lfa/p;->f:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/k0;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lfa/p;->a:I

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lfa/p;->b:I

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lfa/p;->e:La7/f;

    .line 12
    .line 13
    iput p1, p0, Lfa/p;->d:I

    .line 14
    .line 15
    return-void
.end method

.method public static a(Lfa/p;I)Z
    .locals 3

    .line 1
    iget v0, p0, Lfa/p;->a:I

    .line 2
    .line 3
    add-int/2addr v0, p1

    .line 4
    iput v0, p0, Lfa/p;->b:I

    .line 5
    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v0, "It0MfBLBBPMrxx11GphQ\n"

    .line 12
    .line 13
    const-string v1, "T45pEHeicJY=\n"

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
    iget v0, p0, Lfa/p;->a:I

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v0, "dyqI6tdF5OgyJ5nb13Psvnc=\n"

    .line 28
    .line 29
    const-string v1, "V0TtkqMWgYQ=\n"

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
    iget v0, p0, Lfa/p;->b:I

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
    sget-object v0, Lfa/p;->f:Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {v0, p1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget p1, p0, Lfa/p;->b:I

    .line 55
    .line 56
    const/4 v0, 0x1

    .line 57
    if-ltz p1, :cond_0

    .line 58
    .line 59
    invoke-virtual {p0}, Landroidx/recyclerview/widget/k0;->getItemCount()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-ge p1, v1, :cond_0

    .line 64
    .line 65
    iget p1, p0, Lfa/p;->a:I

    .line 66
    .line 67
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/k0;->notifyItemChanged(I)V

    .line 68
    .line 69
    .line 70
    iget p1, p0, Lfa/p;->b:I

    .line 71
    .line 72
    iput p1, p0, Lfa/p;->a:I

    .line 73
    .line 74
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/k0;->notifyItemChanged(I)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lfa/p;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 78
    .line 79
    iget p0, p0, Lfa/p;->a:I

    .line 80
    .line 81
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_0
    iget p1, p0, Lfa/p;->b:I

    .line 86
    .line 87
    invoke-virtual {p0}, Landroidx/recyclerview/widget/k0;->getItemCount()I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-ne p1, v1, :cond_1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_1
    iget p1, p0, Lfa/p;->b:I

    .line 95
    .line 96
    const/4 v1, -0x1

    .line 97
    const/4 v2, 0x0

    .line 98
    if-ne p1, v1, :cond_2

    .line 99
    .line 100
    sget-object p1, Lea/d;->d:Lea/d;

    .line 101
    .line 102
    sput-object p1, Lka/m0;->F0:Lea/d;

    .line 103
    .line 104
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/k0;->notifyItemChanged(I)V

    .line 105
    .line 106
    .line 107
    iget p0, p0, Lfa/p;->d:I

    .line 108
    .line 109
    const/4 p1, 0x2

    .line 110
    if-ne p0, p1, :cond_2

    .line 111
    .line 112
    sget-object p0, Lorg/bitspark/android/Spark;->X1:Lea/u;

    .line 113
    .line 114
    const/16 p1, 0x78

    .line 115
    .line 116
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_2
    const/4 v0, 0x0

    .line 121
    :goto_0
    return v0
.end method


# virtual methods
.method public final onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/k0;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lfa/p;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    .line 6
    new-instance v0, Lfa/l;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-direct {v0, p0, v1, p1}, Lfa/l;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 13
    .line 14
    .line 15
    new-instance v0, Landroidx/appcompat/widget/r2;

    .line 16
    .line 17
    const/4 v1, 0x3

    .line 18
    invoke-direct {v0, v1, p0}, Landroidx/appcompat/widget/r2;-><init>(ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
