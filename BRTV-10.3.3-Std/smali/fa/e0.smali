.class public final Lfa/e0;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic a:Lfa/f0;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Lfa/g0;


# direct methods
.method public constructor <init>(Lfa/g0;Lfa/f0;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lfa/e0;->d:Lfa/g0;

    .line 5
    .line 6
    iput-object p2, p0, Lfa/e0;->a:Lfa/f0;

    .line 7
    .line 8
    iput p3, p0, Lfa/e0;->b:I

    .line 9
    .line 10
    iput p4, p0, Lfa/e0;->c:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 5

    .line 1
    const-string v0, "7HQovbaQLhrFbB+7vJc=\n"

    .line 2
    .line 3
    const-string v1, "oQ1vz9nlXls=\n"

    .line 4
    .line 5
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v2, "hploum0QAPaBlkCya19T\n"

    .line 15
    .line 16
    const-string v3, "6fcu1Q5lc7U=\n"

    .line 17
    .line 18
    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v2, "CKwi1vA=\n"

    .line 29
    .line 30
    const-string v3, "NZEf682+J/o=\n"

    .line 31
    .line 32
    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v2, "yHUVJXkfxUc=\n"

    .line 43
    .line 44
    const-string v3, "9UgoGEQi+Ho=\n"

    .line 45
    .line 46
    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget-object v2, p0, Lfa/e0;->a:Lfa/f0;

    .line 54
    .line 55
    iget-object v2, v2, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 56
    .line 57
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    check-cast v2, Lorg/bitspark/android/Spark;

    .line 62
    .line 63
    invoke-virtual {v2}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    sget-boolean v2, Lorg/bitspark/android/utils/m;->b:Z

    .line 75
    .line 76
    invoke-static {v0, v1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lfa/e0;->d:Lfa/g0;

    .line 80
    .line 81
    iget-boolean v1, v0, Lfa/g0;->g:Z

    .line 82
    .line 83
    if-eqz v1, :cond_1

    .line 84
    .line 85
    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    .line 86
    .line 87
    .line 88
    if-eqz p2, :cond_0

    .line 89
    .line 90
    iget v1, p0, Lfa/e0;->b:I

    .line 91
    .line 92
    invoke-virtual {v0, v1, p1}, Lfa/g0;->a(ILandroid/view/View;)V

    .line 93
    .line 94
    .line 95
    const-string v1, "qPxY2arK3TWB5G/foM0=\n"

    .line 96
    .line 97
    const-string v2, "5YUfq8W/rXQ=\n"

    .line 98
    .line 99
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    const-string v3, "9u36E7wElP7x4tIbukvHzvzv2R+rFIPr8ObLXOI=\n"

    .line 109
    .line 110
    const-string v4, "mYO8fN9x570=\n"

    .line 111
    .line 112
    invoke-static {v3, v4}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-static {v1, v2}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    :cond_0
    iget-object v1, v0, Lfa/g0;->d:Ljava/util/ArrayList;

    .line 130
    .line 131
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    iget v2, p0, Lfa/e0;->c:I

    .line 136
    .line 137
    if-ge v2, v1, :cond_1

    .line 138
    .line 139
    iget-object v0, v0, Lfa/g0;->f:Lka/n;

    .line 140
    .line 141
    invoke-virtual {v0, p1, p2}, Lka/n;->b(Landroid/view/View;Z)V

    .line 142
    .line 143
    .line 144
    :cond_1
    return-void
.end method
