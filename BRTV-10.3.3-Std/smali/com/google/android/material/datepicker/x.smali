.class public final Lcom/google/android/material/datepicker/x;
.super Landroid/widget/BaseAdapter;
.source "MyApplication"


# static fields
.field public static final f:I


# instance fields
.field public final a:Lcom/google/android/material/datepicker/Month;

.field public final b:Lcom/google/android/material/datepicker/DateSelector;

.field public c:Ljava/util/Collection;

.field public d:Lcom/google/android/material/datepicker/c;

.field public final e:Lcom/google/android/material/datepicker/CalendarConstraints;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/google/android/material/datepicker/g0;->h(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    const/4 v1, 0x4

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getMaximum(I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    sput v0, Lcom/google/android/material/datepicker/x;->f:I

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/datepicker/Month;Lcom/google/android/material/datepicker/DateSelector;Lcom/google/android/material/datepicker/CalendarConstraints;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/material/datepicker/x;->a:Lcom/google/android/material/datepicker/Month;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/material/datepicker/x;->b:Lcom/google/android/material/datepicker/DateSelector;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/material/datepicker/x;->e:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 9
    .line 10
    invoke-interface {p2}, Lcom/google/android/material/datepicker/DateSelector;->g()Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/google/android/material/datepicker/x;->c:Ljava/util/Collection;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/Long;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/x;->a:Lcom/google/android/material/datepicker/Month;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/datepicker/Month;->m()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-lt p1, v1, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/x;->b()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-le p1, v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/material/datepicker/Month;->m()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    sub-int/2addr p1, v1

    .line 21
    add-int/lit8 p1, p1, 0x1

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lcom/google/android/material/datepicker/Month;->n(I)J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    return-object p1

    .line 32
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 33
    return-object p1
.end method

.method public final b()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/x;->a:Lcom/google/android/material/datepicker/Month;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/datepicker/Month;->m()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget v0, v0, Lcom/google/android/material/datepicker/Month;->e:I

    .line 8
    .line 9
    add-int/2addr v1, v0

    .line 10
    add-int/lit8 v1, v1, -0x1

    .line 11
    .line 12
    return v1
.end method

.method public final c(Landroid/widget/TextView;J)V
    .locals 6

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/datepicker/x;->e:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/google/android/material/datepicker/CalendarConstraints;->c:Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    .line 7
    .line 8
    invoke-interface {v0, p2, p3}, Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;->d(J)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_4

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/google/android/material/datepicker/x;->b:Lcom/google/android/material/datepicker/DateSelector;

    .line 19
    .line 20
    invoke-interface {v0}, Lcom/google/android/material/datepicker/DateSelector;->g()Ljava/util/ArrayList;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Ljava/lang/Long;

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 41
    .line 42
    .line 43
    move-result-wide v1

    .line 44
    invoke-static {p2, p3}, Lcom/google/android/material/datepicker/g0;->a(J)J

    .line 45
    .line 46
    .line 47
    move-result-wide v3

    .line 48
    invoke-static {v1, v2}, Lcom/google/android/material/datepicker/g0;->a(J)J

    .line 49
    .line 50
    .line 51
    move-result-wide v1

    .line 52
    cmp-long v5, v3, v1

    .line 53
    .line 54
    if-nez v5, :cond_1

    .line 55
    .line 56
    iget-object p2, p0, Lcom/google/android/material/datepicker/x;->d:Lcom/google/android/material/datepicker/c;

    .line 57
    .line 58
    iget-object p2, p2, Lcom/google/android/material/datepicker/c;->b:Landroidx/appcompat/widget/u;

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    invoke-static {}, Lcom/google/android/material/datepicker/g0;->g()Ljava/util/Calendar;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 66
    .line 67
    .line 68
    move-result-wide v0

    .line 69
    cmp-long v2, v0, p2

    .line 70
    .line 71
    if-nez v2, :cond_3

    .line 72
    .line 73
    iget-object p2, p0, Lcom/google/android/material/datepicker/x;->d:Lcom/google/android/material/datepicker/c;

    .line 74
    .line 75
    iget-object p2, p2, Lcom/google/android/material/datepicker/c;->c:Landroidx/appcompat/widget/u;

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_3
    iget-object p2, p0, Lcom/google/android/material/datepicker/x;->d:Lcom/google/android/material/datepicker/c;

    .line 79
    .line 80
    iget-object p2, p2, Lcom/google/android/material/datepicker/c;->a:Landroidx/appcompat/widget/u;

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_4
    const/4 p2, 0x0

    .line 84
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 85
    .line 86
    .line 87
    iget-object p2, p0, Lcom/google/android/material/datepicker/x;->d:Lcom/google/android/material/datepicker/c;

    .line 88
    .line 89
    iget-object p2, p2, Lcom/google/android/material/datepicker/c;->g:Landroidx/appcompat/widget/u;

    .line 90
    .line 91
    :goto_0
    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/u;->k(Landroid/widget/TextView;)V

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method public final d(Lcom/google/android/material/datepicker/MaterialCalendarGridView;J)V
    .locals 2

    .line 1
    invoke-static {p2, p3}, Lcom/google/android/material/datepicker/Month;->l(J)Lcom/google/android/material/datepicker/Month;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/android/material/datepicker/x;->a:Lcom/google/android/material/datepicker/Month;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/material/datepicker/Month;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, v1, Lcom/google/android/material/datepicker/Month;->a:Ljava/util/Calendar;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/google/android/material/datepicker/g0;->c(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x5

    .line 23
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Lcom/google/android/material/datepicker/x;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    add-int/lit8 v0, v0, -0x1

    .line 32
    .line 33
    iget-object v1, v1, Lcom/google/android/material/datepicker/x;->a:Lcom/google/android/material/datepicker/Month;

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/google/android/material/datepicker/Month;->m()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    add-int/2addr v1, v0

    .line 40
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    sub-int/2addr v1, v0

    .line 45
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Landroid/widget/TextView;

    .line 50
    .line 51
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/datepicker/x;->c(Landroid/widget/TextView;J)V

    .line 52
    .line 53
    .line 54
    :cond_0
    return-void
.end method

.method public final getCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/x;->a:Lcom/google/android/material/datepicker/Month;

    .line 2
    .line 3
    iget v1, v0, Lcom/google/android/material/datepicker/Month;->e:I

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/datepicker/Month;->m()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    add-int/2addr v1, v0

    .line 10
    return v1
.end method

.method public final bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/x;->a(I)Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final getItemId(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/x;->a:Lcom/google/android/material/datepicker/Month;

    .line 2
    .line 3
    iget v0, v0, Lcom/google/android/material/datepicker/Month;->d:I

    .line 4
    .line 5
    div-int/2addr p1, v0

    .line 6
    int-to-long v0, p1

    .line 7
    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    iget-object v3, p0, Lcom/google/android/material/datepicker/x;->d:Lcom/google/android/material/datepicker/c;

    .line 8
    .line 9
    if-nez v3, :cond_0

    .line 10
    .line 11
    new-instance v3, Lcom/google/android/material/datepicker/c;

    .line 12
    .line 13
    invoke-direct {v3, v2}, Lcom/google/android/material/datepicker/c;-><init>(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    iput-object v3, p0, Lcom/google/android/material/datepicker/x;->d:Lcom/google/android/material/datepicker/c;

    .line 17
    .line 18
    :cond_0
    move-object v2, p2

    .line 19
    check-cast v2, Landroid/widget/TextView;

    .line 20
    .line 21
    if-nez p2, :cond_1

    .line 22
    .line 23
    const p2, 0x7f0e00dd

    .line 24
    .line 25
    .line 26
    invoke-static {p3, p2, p3, v1}, La/e;->i(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    move-object v2, p2

    .line 31
    check-cast v2, Landroid/widget/TextView;

    .line 32
    .line 33
    :cond_1
    iget-object p2, p0, Lcom/google/android/material/datepicker/x;->a:Lcom/google/android/material/datepicker/Month;

    .line 34
    .line 35
    invoke-virtual {p2}, Lcom/google/android/material/datepicker/Month;->m()I

    .line 36
    .line 37
    .line 38
    move-result p3

    .line 39
    sub-int p3, p1, p3

    .line 40
    .line 41
    if-ltz p3, :cond_6

    .line 42
    .line 43
    iget v3, p2, Lcom/google/android/material/datepicker/Month;->e:I

    .line 44
    .line 45
    if-lt p3, v3, :cond_2

    .line 46
    .line 47
    goto/16 :goto_3

    .line 48
    .line 49
    :cond_2
    add-int/2addr p3, v0

    .line 50
    invoke-virtual {v2, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 62
    .line 63
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    new-array v5, v0, [Ljava/lang/Object;

    .line 68
    .line 69
    aput-object v4, v5, v1

    .line 70
    .line 71
    const-string v4, "%d"

    .line 72
    .line 73
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2, p3}, Lcom/google/android/material/datepicker/Month;->n(I)J

    .line 81
    .line 82
    .line 83
    move-result-wide v3

    .line 84
    new-instance p3, Lcom/google/android/material/datepicker/Month;

    .line 85
    .line 86
    invoke-static {}, Lcom/google/android/material/datepicker/g0;->g()Ljava/util/Calendar;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    invoke-direct {p3, v5}, Lcom/google/android/material/datepicker/Month;-><init>(Ljava/util/Calendar;)V

    .line 91
    .line 92
    .line 93
    iget p2, p2, Lcom/google/android/material/datepicker/Month;->c:I

    .line 94
    .line 95
    iget p3, p3, Lcom/google/android/material/datepicker/Month;->c:I

    .line 96
    .line 97
    const/16 v5, 0x18

    .line 98
    .line 99
    if-ne p2, p3, :cond_4

    .line 100
    .line 101
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 106
    .line 107
    if-lt p3, v5, :cond_3

    .line 108
    .line 109
    const-string p3, "MMMEd"

    .line 110
    .line 111
    invoke-static {p3, p2}, Lcom/alibaba/fastjson/parser/deserializer/d;->e(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    invoke-static {}, Lcom/alibaba/fastjson/parser/deserializer/d;->f()Landroid/icu/util/TimeZone;

    .line 116
    .line 117
    .line 118
    move-result-object p3

    .line 119
    invoke-static {p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/d;->v(Landroid/icu/text/DateFormat;Landroid/icu/util/TimeZone;)V

    .line 120
    .line 121
    .line 122
    new-instance p3, Ljava/util/Date;

    .line 123
    .line 124
    invoke-direct {p3, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 125
    .line 126
    .line 127
    invoke-static {p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/d;->k(Landroid/icu/text/DateFormat;Ljava/util/Date;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    goto :goto_0

    .line 132
    :cond_3
    invoke-static {v1, p2}, Lcom/google/android/material/datepicker/g0;->d(ILjava/util/Locale;)Ljava/text/DateFormat;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    new-instance p3, Ljava/util/Date;

    .line 137
    .line 138
    invoke-direct {p3, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p2, p3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    :goto_0
    invoke-virtual {v2, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 146
    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 150
    .line 151
    .line 152
    move-result-object p2

    .line 153
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 154
    .line 155
    if-lt p3, v5, :cond_5

    .line 156
    .line 157
    const-string p3, "yMMMEd"

    .line 158
    .line 159
    invoke-static {p3, p2}, Lcom/alibaba/fastjson/parser/deserializer/d;->e(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    .line 160
    .line 161
    .line 162
    move-result-object p2

    .line 163
    invoke-static {}, Lcom/alibaba/fastjson/parser/deserializer/d;->f()Landroid/icu/util/TimeZone;

    .line 164
    .line 165
    .line 166
    move-result-object p3

    .line 167
    invoke-static {p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/d;->v(Landroid/icu/text/DateFormat;Landroid/icu/util/TimeZone;)V

    .line 168
    .line 169
    .line 170
    new-instance p3, Ljava/util/Date;

    .line 171
    .line 172
    invoke-direct {p3, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 173
    .line 174
    .line 175
    invoke-static {p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/d;->k(Landroid/icu/text/DateFormat;Ljava/util/Date;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p2

    .line 179
    goto :goto_1

    .line 180
    :cond_5
    invoke-static {v1, p2}, Lcom/google/android/material/datepicker/g0;->d(ILjava/util/Locale;)Ljava/text/DateFormat;

    .line 181
    .line 182
    .line 183
    move-result-object p2

    .line 184
    new-instance p3, Ljava/util/Date;

    .line 185
    .line 186
    invoke-direct {p3, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p2, p3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p2

    .line 193
    :goto_1
    invoke-virtual {v2, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 194
    .line 195
    .line 196
    :goto_2
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 200
    .line 201
    .line 202
    goto :goto_4

    .line 203
    :cond_6
    :goto_3
    const/16 p2, 0x8

    .line 204
    .line 205
    invoke-virtual {v2, p2}, Landroid/view/View;->setVisibility(I)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 209
    .line 210
    .line 211
    :goto_4
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/x;->a(I)Ljava/lang/Long;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    if-nez p1, :cond_7

    .line 216
    .line 217
    goto :goto_5

    .line 218
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 219
    .line 220
    .line 221
    move-result-wide p1

    .line 222
    invoke-virtual {p0, v2, p1, p2}, Lcom/google/android/material/datepicker/x;->c(Landroid/widget/TextView;J)V

    .line 223
    .line 224
    .line 225
    :goto_5
    return-object v2
.end method

.method public final hasStableIds()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method
