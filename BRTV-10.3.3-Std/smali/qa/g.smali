.class public final Lqa/g;
.super Ljava/lang/Object;
.source "MyApplication"


# instance fields
.field public final a:Lorg/bitspark/android/Spark;

.field public final b:Lw8/i;

.field public final c:Lqa/b;


# direct methods
.method public constructor <init>(Lorg/bitspark/android/Spark;)V
    .locals 2

    .line 1
    const-string v0, "tZsZQoY=\n"

    .line 2
    .line 3
    const-string v1, "xut4MO16/kI=\n"

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lqa/g;->a:Lorg/bitspark/android/Spark;

    .line 16
    .line 17
    new-instance v0, Lqa/a;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-direct {v0, v1, p0}, Lqa/a;-><init>(ILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    new-instance v1, Lw8/i;

    .line 24
    .line 25
    invoke-direct {v1, v0}, Lw8/i;-><init>(Li9/a;)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lqa/g;->b:Lw8/i;

    .line 29
    .line 30
    new-instance v0, Lqa/b;

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-direct {v0, v1, p0}, Lqa/b;-><init>(ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lqa/g;->c:Lqa/b;

    .line 37
    .line 38
    iget-object p1, p1, Lorg/bitspark/android/Spark;->D0:Landroid/widget/ImageView;

    .line 39
    .line 40
    new-instance v0, Landroidx/mediarouter/app/b;

    .line 41
    .line 42
    const/4 v1, 0x1

    .line 43
    invoke-direct {v0, v1, p0}, Landroidx/mediarouter/app/b;-><init>(ILjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method


# virtual methods
.method public final a()Lqa/o;
    .locals 1

    .line 1
    iget-object v0, p0, Lqa/g;->b:Lw8/i;

    .line 2
    .line 3
    invoke-virtual {v0}, Lw8/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lqa/o;

    .line 8
    .line 9
    return-object v0
.end method
