.class public Lorg/bitspark/android/keyboard/custom/MyKeyBoardView;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final a:Landroidx/recyclerview/widget/RecyclerView;

.field public b:Landroid/widget/EditText;

.field public final c:[Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Z

.field public final f:Lma/a;

.field public final g:Ljava/util/ArrayList;

.field public final h:Landroid/view/View;

.field public i:Lna/b;

.field public final j:Landroidx/recyclerview/widget/GridLayoutManager;

.field public final k:Lna/a;

.field public final l:Lna/a;

.field public m:Ljava/util/concurrent/ScheduledExecutorService;

.field public final n:Lna/a;

.field public final o:Landroidx/mediarouter/app/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1f

    invoke-static {v0}, Lcom/nmmedit/protect/NativeUtil;->classesInit0(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .line 9
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    const-string v0, "gR0YJOpyZ9WFHRwk7nJr1YkdECTicm/VjR0UJOZyc9WRHQgk+nJ31ZUdDCT+cnvVmR0AJJhyEdXz\nHW4knHIV1fcdYiSQchM=\n"

    const-string v1, "wDFaCKleI/k=\n"

    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bitspark/android/keyboard/custom/MyKeyBoardView;->d:Ljava/lang/String;

    const/4 v1, 0x1

    .line 11
    iput-boolean v1, p0, Lorg/bitspark/android/keyboard/custom/MyKeyBoardView;->e:Z

    .line 12
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/bitspark/android/keyboard/custom/MyKeyBoardView;->g:Ljava/util/ArrayList;

    .line 13
    new-instance v2, Lna/a;

    invoke-direct {v2, p0}, Lna/a;-><init>(Lorg/bitspark/android/keyboard/custom/MyKeyBoardView;)V

    iput-object v2, p0, Lorg/bitspark/android/keyboard/custom/MyKeyBoardView;->k:Lna/a;

    .line 14
    new-instance v2, Lna/a;

    invoke-direct {v2, p0}, Lna/a;-><init>(Lorg/bitspark/android/keyboard/custom/MyKeyBoardView;)V

    iput-object v2, p0, Lorg/bitspark/android/keyboard/custom/MyKeyBoardView;->l:Lna/a;

    .line 15
    new-instance v2, Lna/a;

    invoke-direct {v2, p0}, Lna/a;-><init>(Lorg/bitspark/android/keyboard/custom/MyKeyBoardView;)V

    iput-object v2, p0, Lorg/bitspark/android/keyboard/custom/MyKeyBoardView;->n:Lna/a;

    .line 16
    new-instance v2, Landroidx/mediarouter/app/c;

    const/4 v3, 0x6

    invoke-direct {v2, v3, p0}, Landroidx/mediarouter/app/c;-><init>(ILjava/lang/Object;)V

    iput-object v2, p0, Lorg/bitspark/android/keyboard/custom/MyKeyBoardView;->o:Landroidx/mediarouter/app/c;

    .line 17
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0e0122

    invoke-virtual {v2, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lorg/bitspark/android/keyboard/custom/MyKeyBoardView;->h:Landroid/view/View;

    const v3, 0x7f0b0383

    .line 18
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    .line 19
    sget-object v4, Lea/i;->a:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x6

    const/4 v4, 0x0

    .line 20
    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    const/16 v5, 0x8

    .line 21
    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 22
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "pA==\n"

    const-string v7, "iM9B9YkjhhM=\n"

    invoke-static {p1, v7}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/bitspark/android/keyboard/custom/MyKeyBoardView;->d:Ljava/lang/String;

    .line 23
    :cond_0
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lorg/bitspark/android/keyboard/custom/MyKeyBoardView;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 24
    const-string p1, "Uw==\n"

    const-string v0, "f1lP4XziRTk=\n"

    invoke-static {p1, v0}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/bitspark/android/keyboard/custom/MyKeyBoardView;->d:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/bitspark/android/keyboard/custom/MyKeyBoardView;->c:[Ljava/lang/String;

    const/4 p1, 0x0

    .line 25
    :goto_0
    iget-object v0, p0, Lorg/bitspark/android/keyboard/custom/MyKeyBoardView;->c:[Ljava/lang/String;

    array-length v2, v0

    iget-object v3, p0, Lorg/bitspark/android/keyboard/custom/MyKeyBoardView;->g:Ljava/util/ArrayList;

    if-ge p1, v2, :cond_1

    .line 26
    new-instance v2, Loa/a;

    aget-object v0, v0, p1

    invoke-direct {v2, v4, v0}, Loa/a;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 27
    :cond_1
    new-instance p1, Loa/a;

    const-string v0, " "

    const/16 v2, 0x9

    invoke-direct {p1, v2, v0}, Loa/a;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    new-instance p1, Loa/a;

    const-string v0, "Sw==\n"

    const-string v6, "ZriQ9jDvndo=\n"

    invoke-static {v0, v6}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v4, v0}, Loa/a;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    new-instance p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {p1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>()V

    iput-object p1, p0, Lorg/bitspark/android/keyboard/custom/MyKeyBoardView;->j:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 30
    new-instance p1, Lma/a;

    .line 31
    invoke-direct {p1}, Landroidx/recyclerview/widget/k0;-><init>()V

    .line 32
    new-instance v0, Lq1/f0;

    const/4 v6, 0x5

    .line 33
    invoke-direct {v0, v6}, Lq1/f0;-><init>(I)V

    .line 34
    iput-object v0, p1, Lt3/c;->a:Lq1/f0;

    .line 35
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 36
    iput-object v3, p1, Lt3/c;->c:Ljava/util/List;

    const-wide/16 v6, 0x1f4

    .line 37
    iput-wide v6, p1, Lma/a;->j:J

    .line 38
    iput-boolean v4, p1, Lma/a;->k:Z

    .line 39
    iput-boolean v4, p1, Lma/a;->l:Z

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p1, Lma/a;->n:Landroid/os/Handler;

    .line 41
    iget-object v0, p0, Lorg/bitspark/android/keyboard/custom/MyKeyBoardView;->k:Lna/a;

    iput-object v0, p1, Lma/a;->e:Lna/a;

    .line 42
    iget-object v0, p0, Lorg/bitspark/android/keyboard/custom/MyKeyBoardView;->n:Lna/a;

    iput-object v0, p1, Lma/a;->f:Lna/a;

    .line 43
    iget-object v0, p0, Lorg/bitspark/android/keyboard/custom/MyKeyBoardView;->l:Lna/a;

    iput-object v0, p1, Lma/a;->g:Lna/a;

    const v0, 0x7f0e0063

    .line 44
    invoke-virtual {p1, v4, v0}, Lt3/a;->c(II)V

    const v0, 0x7f0e0062

    .line 45
    invoke-virtual {p1, v2, v0}, Lt3/a;->c(II)V

    const/4 v2, 0x7

    const v3, 0x7f0e005e

    .line 46
    invoke-virtual {p1, v2, v3}, Lt3/a;->c(II)V

    const v2, 0x7f0e0060

    .line 47
    invoke-virtual {p1, v5, v2}, Lt3/a;->c(II)V

    const v2, 0x7f0e005f

    .line 48
    invoke-virtual {p1, p2, v2}, Lt3/a;->c(II)V

    .line 49
    invoke-virtual {p1, v1, v2}, Lt3/a;->c(II)V

    const/4 p2, 0x2

    .line 50
    invoke-virtual {p1, p2, v3}, Lt3/a;->c(II)V

    const/4 p2, 0x5

    const v1, 0x7f0e0061

    .line 51
    invoke-virtual {p1, p2, v1}, Lt3/a;->c(II)V

    const/4 p2, 0x3

    .line 52
    invoke-virtual {p1, p2, v0}, Lt3/a;->c(II)V

    const/4 p2, 0x4

    .line 53
    invoke-virtual {p1, p2, v1}, Lt3/a;->c(II)V

    .line 54
    iput-object p1, p0, Lorg/bitspark/android/keyboard/custom/MyKeyBoardView;->f:Lma/a;

    .line 55
    iget-boolean p1, p0, Lorg/bitspark/android/keyboard/custom/MyKeyBoardView;->e:Z

    if-eqz p1, :cond_2

    .line 56
    iget-object p1, p0, Lorg/bitspark/android/keyboard/custom/MyKeyBoardView;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lorg/bitspark/android/keyboard/custom/MyKeyBoardView;->j:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/x0;)V

    .line 57
    iget-object p1, p0, Lorg/bitspark/android/keyboard/custom/MyKeyBoardView;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lorg/bitspark/android/keyboard/custom/MyKeyBoardView;->f:Lma/a;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/k0;)V

    :cond_2
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    const-string p1, "RCUp3GBg0nZAJS3cZGDedkwlIdxoYNp2SCUl3GxgxnZUJTnccGDCdlAlPdx0YM52XCUx3BJgpHY2\nJV/cFmCgdjIlU9waYKY=\n"

    const-string p2, "BQlr8CNMllo=\n"

    invoke-static {p1, p2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/bitspark/android/keyboard/custom/MyKeyBoardView;->d:Ljava/lang/String;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lorg/bitspark/android/keyboard/custom/MyKeyBoardView;->e:Z

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/bitspark/android/keyboard/custom/MyKeyBoardView;->g:Ljava/util/ArrayList;

    .line 5
    new-instance p1, Lna/a;

    invoke-direct {p1, p0}, Lna/a;-><init>(Lorg/bitspark/android/keyboard/custom/MyKeyBoardView;)V

    iput-object p1, p0, Lorg/bitspark/android/keyboard/custom/MyKeyBoardView;->k:Lna/a;

    .line 6
    new-instance p1, Lna/a;

    invoke-direct {p1, p0}, Lna/a;-><init>(Lorg/bitspark/android/keyboard/custom/MyKeyBoardView;)V

    iput-object p1, p0, Lorg/bitspark/android/keyboard/custom/MyKeyBoardView;->l:Lna/a;

    .line 7
    new-instance p1, Lna/a;

    invoke-direct {p1, p0}, Lna/a;-><init>(Lorg/bitspark/android/keyboard/custom/MyKeyBoardView;)V

    iput-object p1, p0, Lorg/bitspark/android/keyboard/custom/MyKeyBoardView;->n:Lna/a;

    .line 8
    new-instance p1, Landroidx/mediarouter/app/c;

    const/4 p2, 0x6

    invoke-direct {p1, p2, p0}, Landroidx/mediarouter/app/c;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lorg/bitspark/android/keyboard/custom/MyKeyBoardView;->o:Landroidx/mediarouter/app/c;

    return-void
.end method

.method public static native a(Lorg/bitspark/android/keyboard/custom/MyKeyBoardView;Landroid/view/View;I)V
.end method


# virtual methods
.method public native getEditText()Landroid/widget/EditText;
.end method

.method public final native onClick(Landroid/view/View;)V
.end method

.method public native setEditText(Landroid/widget/EditText;)V
.end method

.method public native setOnBackDownPressedListener(Lfa/n0;)V
.end method

.method public native setOnKeyClickListener(Lna/b;)V
.end method
