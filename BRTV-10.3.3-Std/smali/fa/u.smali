.class public abstract Lfa/u;
.super Landroidx/recyclerview/widget/k0;
.source "MyApplication"


# static fields
.field public static final e:Ljava/lang/String;

.field public static f:I


# instance fields
.field public final a:Lorg/bitspark/android/Constants$VIDEO_TYPE;

.field public b:I

.field public c:I

.field public d:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "DANYkLdqdokhCVKHtH19jS0PXKW8eX+vIRg=\n"

    .line 2
    .line 3
    const-string v1, "RGor5NgYD9s=\n"

    .line 4
    .line 5
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lfa/u;->e:Ljava/lang/String;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    sput v0, Lfa/u;->f:I

    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>(Lorg/bitspark/android/Constants$VIDEO_TYPE;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/k0;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lfa/u;->b:I

    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    iput v1, p0, Lfa/u;->c:I

    .line 9
    .line 10
    iput-object p1, p0, Lfa/u;->a:Lorg/bitspark/android/Constants$VIDEO_TYPE;

    .line 11
    .line 12
    sput v0, Lfa/u;->f:I

    .line 13
    .line 14
    return-void
.end method

.method public static a(Lfa/u;I)Z
    .locals 3

    .line 1
    iget v0, p0, Lfa/u;->b:I

    .line 2
    .line 3
    add-int/2addr v0, p1

    .line 4
    iput v0, p0, Lfa/u;->c:I

    .line 5
    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v0, "pHiZWc5V9uytYohQxgyi\n"

    .line 12
    .line 13
    const-string v1, "ySv8Nas2gok=\n"

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
    iget v0, p0, Lfa/u;->b:I

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v0, "mVg/aBohXI7cVS5ZGhdU2Jk=\n"

    .line 28
    .line 29
    const-string v1, "uTZaEG5yOeI=\n"

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
    iget v0, p0, Lfa/u;->c:I

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
    sget-object v0, Lfa/u;->e:Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {v0, p1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget p1, p0, Lfa/u;->c:I

    .line 55
    .line 56
    const/4 v0, 0x0

    .line 57
    if-gez p1, :cond_0

    .line 58
    .line 59
    iget p1, p0, Lfa/u;->b:I

    .line 60
    .line 61
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/k0;->notifyItemChanged(I)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

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
    iget p1, p0, Lfa/u;->b:I

    .line 75
    .line 76
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/k0;->notifyItemChanged(I)V

    .line 77
    .line 78
    .line 79
    iget p1, p0, Lfa/u;->c:I

    .line 80
    .line 81
    iput p1, p0, Lfa/u;->b:I

    .line 82
    .line 83
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/k0;->notifyItemChanged(I)V

    .line 84
    .line 85
    .line 86
    iget-object p1, p0, Lfa/u;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 87
    .line 88
    iget p0, p0, Lfa/u;->b:I

    .line 89
    .line 90
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 91
    .line 92
    .line 93
    :goto_0
    const/4 v0, 0x1

    .line 94
    goto :goto_1

    .line 95
    :cond_1
    iget p1, p0, Lfa/u;->c:I

    .line 96
    .line 97
    invoke-virtual {p0}, Landroidx/recyclerview/widget/k0;->getItemCount()I

    .line 98
    .line 99
    .line 100
    move-result p0

    .line 101
    if-lt p1, p0, :cond_2

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_2
    :goto_1
    return v0
.end method


# virtual methods
.method public final onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/k0;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lfa/u;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/s0;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-wide/16 v1, 0x0

    .line 11
    .line 12
    iput-wide v1, v0, Landroidx/recyclerview/widget/s0;->f:J

    .line 13
    .line 14
    new-instance v0, Lfa/l;

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    invoke-direct {v0, p0, v1, p1}, Lfa/l;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 21
    .line 22
    .line 23
    new-instance v0, Lfa/m;

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    invoke-direct {v0, p0, v1}, Lfa/m;-><init>(Landroidx/recyclerview/widget/k0;I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 30
    .line 31
    .line 32
    new-instance v0, Landroidx/appcompat/app/a;

    .line 33
    .line 34
    const/16 v1, 0xb

    .line 35
    .line 36
    invoke-direct {v0, v1, p0}, Landroidx/appcompat/app/a;-><init>(ILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    .line 41
    .line 42
    new-instance v0, Landroidx/appcompat/widget/r2;

    .line 43
    .line 44
    const/4 v1, 0x4

    .line 45
    invoke-direct {v0, v1, p0}, Landroidx/appcompat/widget/r2;-><init>(ILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method
