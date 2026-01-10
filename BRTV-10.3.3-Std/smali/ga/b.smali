.class public final Lga/b;
.super Ljava/lang/Object;
.source "MyApplication"


# static fields
.field public static final c:Ljava/lang/String;


# instance fields
.field public a:Landroid/widget/PopupWindow;

.field public b:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "QqEsrug=\n"

    .line 2
    .line 3
    const-string v1, "APJh3Y9xQTY=\n"

    .line 4
    .line 5
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lga/b;->c:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method public static a(Lga/b;Ljava/lang/String;Lorg/bitspark/android/Spark;)V
    .locals 5

    .line 1
    const v0, 0x7f0e0073

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p2, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    sget v0, Lea/a;->i:I

    .line 10
    .line 11
    mul-int/lit16 v0, v0, 0x212

    .line 12
    .line 13
    div-int/lit16 v0, v0, 0x780

    .line 14
    .line 15
    const-string v1, "d2yL+1ToVQ==\n"

    .line 16
    .line 17
    const-string v2, "BATkjASHJSM=\n"

    .line 18
    .line 19
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v3, "ZqHD4C4tLJo=\n"

    .line 29
    .line 30
    const-string v4, "AsiuhUB1Fro=\n"

    .line 31
    .line 32
    invoke-static {v3, v4, v2, v0}, Lea/q;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    sget-boolean v3, Lorg/bitspark/android/utils/m;->b:Z

    .line 37
    .line 38
    invoke-static {v1, v2}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    new-instance v1, Landroid/widget/PopupWindow;

    .line 42
    .line 43
    const/4 v2, -0x2

    .line 44
    invoke-direct {v1, p2, v0, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 45
    .line 46
    .line 47
    iput-object v1, p0, Lga/b;->a:Landroid/widget/PopupWindow;

    .line 48
    .line 49
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    const v0, 0x7f0b02ac

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    check-cast p2, Landroid/widget/TextView;

    .line 61
    .line 62
    iget-object v0, p0, Lga/b;->a:Landroid/widget/PopupWindow;

    .line 63
    .line 64
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    const v1, 0x7f0b02b0

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Landroid/widget/TextView;

    .line 76
    .line 77
    const/high16 v1, 0x41700000    # 15.0f

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 80
    .line 81
    .line 82
    const/high16 v0, 0x41600000    # 14.0f

    .line 83
    .line 84
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    .line 89
    .line 90
    iget-object p1, p0, Lga/b;->a:Landroid/widget/PopupWindow;

    .line 91
    .line 92
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    .line 93
    .line 94
    invoke-direct {p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 98
    .line 99
    .line 100
    iget-object p1, p0, Lga/b;->a:Landroid/widget/PopupWindow;

    .line 101
    .line 102
    const p2, 0x7f1304e8

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 106
    .line 107
    .line 108
    const/4 p1, 0x2

    .line 109
    new-array p1, p1, [I

    .line 110
    .line 111
    iget-object p2, p0, Lga/b;->b:Landroid/widget/FrameLayout;

    .line 112
    .line 113
    invoke-virtual {p2, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 114
    .line 115
    .line 116
    iget-object p0, p0, Lga/b;->a:Landroid/widget/PopupWindow;

    .line 117
    .line 118
    const/16 p1, 0x35

    .line 119
    .line 120
    const/16 v0, 0x14

    .line 121
    .line 122
    const/16 v1, 0x3c

    .line 123
    .line 124
    invoke-virtual {p0, p2, p1, v0, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 125
    .line 126
    .line 127
    return-void
.end method
