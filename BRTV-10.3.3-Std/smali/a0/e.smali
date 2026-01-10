.class public final La0/e;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, La0/e;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 1
    iget v0, p0, La0/e;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lu/i;

    .line 7
    .line 8
    check-cast p2, Lu/i;

    .line 9
    .line 10
    iget p1, p1, Lu/i;->b:I

    .line 11
    .line 12
    iget p2, p2, Lu/i;->b:I

    .line 13
    .line 14
    sub-int/2addr p1, p2

    .line 15
    return p1

    .line 16
    :pswitch_0
    if-nez p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    new-instance p1, Ljava/lang/ClassCastException;

    .line 22
    .line 23
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 24
    .line 25
    .line 26
    throw p1

    .line 27
    :cond_0
    new-instance p1, Ljava/lang/ClassCastException;

    .line 28
    .line 29
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 30
    .line 31
    .line 32
    throw p1

    .line 33
    :pswitch_1
    check-cast p1, Ls1/a;

    .line 34
    .line 35
    check-cast p2, Ls1/a;

    .line 36
    .line 37
    invoke-virtual {p2}, Ls1/a;->b()I

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    invoke-virtual {p1}, Ls1/a;->b()I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    sub-int/2addr p2, p1

    .line 46
    return p2

    .line 47
    :pswitch_2
    check-cast p1, Ljava/lang/Comparable;

    .line 48
    .line 49
    check-cast p2, Ljava/lang/Comparable;

    .line 50
    .line 51
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    return p1

    .line 56
    :pswitch_3
    check-cast p1, Lorg/bitspark/android/beans/GroupBeanModel;

    .line 57
    .line 58
    check-cast p2, Lorg/bitspark/android/beans/GroupBeanModel;

    .line 59
    .line 60
    iget p1, p1, Lorg/bitspark/android/beans/GroupBeanModel;->group_id:I

    .line 61
    .line 62
    iget p2, p2, Lorg/bitspark/android/beans/GroupBeanModel;->group_id:I

    .line 63
    .line 64
    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    return p1

    .line 69
    :pswitch_4
    check-cast p1, Ljava/io/File;

    .line 70
    .line 71
    check-cast p2, Ljava/io/File;

    .line 72
    .line 73
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    .line 74
    .line 75
    .line 76
    move-result-wide v0

    .line 77
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    .line 78
    .line 79
    .line 80
    move-result-wide p1

    .line 81
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->compare(JJ)I

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    return p1

    .line 86
    :pswitch_5
    check-cast p1, Landroid/view/View;

    .line 87
    .line 88
    check-cast p2, Landroid/view/View;

    .line 89
    .line 90
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 95
    .line 96
    .line 97
    move-result p2

    .line 98
    sub-int/2addr p1, p2

    .line 99
    return p1

    .line 100
    :pswitch_6
    check-cast p1, Lb2/g;

    .line 101
    .line 102
    check-cast p2, Lb2/g;

    .line 103
    .line 104
    iget p1, p1, Lb2/g;->b:I

    .line 105
    .line 106
    iget p2, p2, Lb2/g;->b:I

    .line 107
    .line 108
    sub-int/2addr p1, p2

    .line 109
    return p1

    .line 110
    :pswitch_7
    check-cast p1, Landroid/view/View;

    .line 111
    .line 112
    check-cast p2, Landroid/view/View;

    .line 113
    .line 114
    sget-object v0, Ln0/s0;->a:Ljava/util/WeakHashMap;

    .line 115
    .line 116
    invoke-static {p1}, Ln0/g0;->m(Landroid/view/View;)F

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    invoke-static {p2}, Ln0/g0;->m(Landroid/view/View;)F

    .line 121
    .line 122
    .line 123
    move-result p2

    .line 124
    cmpl-float v0, p1, p2

    .line 125
    .line 126
    if-lez v0, :cond_1

    .line 127
    .line 128
    const/4 p1, -0x1

    .line 129
    goto :goto_0

    .line 130
    :cond_1
    cmpg-float p1, p1, p2

    .line 131
    .line 132
    if-gez p1, :cond_2

    .line 133
    .line 134
    const/4 p1, 0x1

    .line 135
    goto :goto_0

    .line 136
    :cond_2
    const/4 p1, 0x0

    .line 137
    :goto_0
    return p1

    .line 138
    nop

    .line 139
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
