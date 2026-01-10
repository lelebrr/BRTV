.class final Landroidx/media3/ui/SpannedToHtmlConverter;
.super Ljava/lang/Object;
.source "MyApplication"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/ui/SpannedToHtmlConverter$HtmlAndCss;,
        Landroidx/media3/ui/SpannedToHtmlConverter$Transition;,
        Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;
    }
.end annotation


# static fields
.field private static final NEWLINE_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "(&#13;)?&#10;"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Landroidx/media3/ui/SpannedToHtmlConverter;->NEWLINE_PATTERN:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static convert(Ljava/lang/CharSequence;F)Landroidx/media3/ui/SpannedToHtmlConverter$HtmlAndCss;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    sget-object v2, Ld7/h5;->g:Ld7/h5;

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    new-instance p0, Landroidx/media3/ui/SpannedToHtmlConverter$HtmlAndCss;

    .line 9
    .line 10
    const-string p1, ""

    .line 11
    .line 12
    invoke-direct {p0, p1, v2, v3}, Landroidx/media3/ui/SpannedToHtmlConverter$HtmlAndCss;-><init>(Ljava/lang/String;Ljava/util/Map;Landroidx/media3/ui/SpannedToHtmlConverter$1;)V

    .line 13
    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    instance-of v4, p0, Landroid/text/Spanned;

    .line 17
    .line 18
    if-nez v4, :cond_1

    .line 19
    .line 20
    new-instance p1, Landroidx/media3/ui/SpannedToHtmlConverter$HtmlAndCss;

    .line 21
    .line 22
    invoke-static {p0}, Landroidx/media3/ui/SpannedToHtmlConverter;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-direct {p1, p0, v2, v3}, Landroidx/media3/ui/SpannedToHtmlConverter$HtmlAndCss;-><init>(Ljava/lang/String;Ljava/util/Map;Landroidx/media3/ui/SpannedToHtmlConverter$1;)V

    .line 27
    .line 28
    .line 29
    return-object p1

    .line 30
    :cond_1
    check-cast p0, Landroid/text/Spanned;

    .line 31
    .line 32
    new-instance v2, Ljava/util/HashSet;

    .line 33
    .line 34
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    const-class v5, Landroid/text/style/BackgroundColorSpan;

    .line 42
    .line 43
    invoke-interface {p0, v0, v4, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    check-cast v4, [Landroid/text/style/BackgroundColorSpan;

    .line 48
    .line 49
    array-length v5, v4

    .line 50
    const/4 v6, 0x0

    .line 51
    :goto_0
    if-ge v6, v5, :cond_2

    .line 52
    .line 53
    aget-object v7, v4, v6

    .line 54
    .line 55
    invoke-virtual {v7}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    invoke-virtual {v2, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    add-int/2addr v6, v1

    .line 67
    goto :goto_0

    .line 68
    :cond_2
    new-instance v4, Ljava/util/HashMap;

    .line 69
    .line 70
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    if-eqz v5, :cond_3

    .line 82
    .line 83
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    check-cast v5, Ljava/lang/Integer;

    .line 88
    .line 89
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    const-string v6, "bg_"

    .line 94
    .line 95
    invoke-static {v5, v6}, La/e;->n(ILjava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    invoke-static {v6}, Landroidx/media3/ui/HtmlUtils;->cssAllClassDescendantsSelector(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    invoke-static {v5}, Landroidx/media3/ui/HtmlUtils;->toCssRgba(I)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    new-array v7, v1, [Ljava/lang/Object;

    .line 108
    .line 109
    aput-object v5, v7, v0

    .line 110
    .line 111
    const-string v5, "background-color:%s;"

    .line 112
    .line 113
    invoke-static {v5, v7}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_3
    invoke-static {p0, p1}, Landroidx/media3/ui/SpannedToHtmlConverter;->findSpanTransitions(Landroid/text/Spanned;F)Landroid/util/SparseArray;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 132
    .line 133
    .line 134
    const/4 v5, 0x0

    .line 135
    :goto_2
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 136
    .line 137
    .line 138
    move-result v6

    .line 139
    if-ge v0, v6, :cond_6

    .line 140
    .line 141
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 142
    .line 143
    .line 144
    move-result v6

    .line 145
    invoke-interface {p0, v5, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 146
    .line 147
    .line 148
    move-result-object v5

    .line 149
    invoke-static {v5}, Landroidx/media3/ui/SpannedToHtmlConverter;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v5

    .line 153
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v5

    .line 160
    check-cast v5, Landroidx/media3/ui/SpannedToHtmlConverter$Transition;

    .line 161
    .line 162
    invoke-static {v5}, Landroidx/media3/ui/SpannedToHtmlConverter$Transition;->access$100(Landroidx/media3/ui/SpannedToHtmlConverter$Transition;)Ljava/util/List;

    .line 163
    .line 164
    .line 165
    move-result-object v7

    .line 166
    invoke-static {}, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->access$200()Ljava/util/Comparator;

    .line 167
    .line 168
    .line 169
    move-result-object v8

    .line 170
    invoke-static {v7, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 171
    .line 172
    .line 173
    invoke-static {v5}, Landroidx/media3/ui/SpannedToHtmlConverter$Transition;->access$100(Landroidx/media3/ui/SpannedToHtmlConverter$Transition;)Ljava/util/List;

    .line 174
    .line 175
    .line 176
    move-result-object v7

    .line 177
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 178
    .line 179
    .line 180
    move-result-object v7

    .line 181
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 182
    .line 183
    .line 184
    move-result v8

    .line 185
    if-eqz v8, :cond_4

    .line 186
    .line 187
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v8

    .line 191
    check-cast v8, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;

    .line 192
    .line 193
    iget-object v8, v8, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->closingTag:Ljava/lang/String;

    .line 194
    .line 195
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    goto :goto_3

    .line 199
    :cond_4
    invoke-static {v5}, Landroidx/media3/ui/SpannedToHtmlConverter$Transition;->access$300(Landroidx/media3/ui/SpannedToHtmlConverter$Transition;)Ljava/util/List;

    .line 200
    .line 201
    .line 202
    move-result-object v7

    .line 203
    invoke-static {}, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->access$400()Ljava/util/Comparator;

    .line 204
    .line 205
    .line 206
    move-result-object v8

    .line 207
    invoke-static {v7, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 208
    .line 209
    .line 210
    invoke-static {v5}, Landroidx/media3/ui/SpannedToHtmlConverter$Transition;->access$300(Landroidx/media3/ui/SpannedToHtmlConverter$Transition;)Ljava/util/List;

    .line 211
    .line 212
    .line 213
    move-result-object v5

    .line 214
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 215
    .line 216
    .line 217
    move-result-object v5

    .line 218
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 219
    .line 220
    .line 221
    move-result v7

    .line 222
    if-eqz v7, :cond_5

    .line 223
    .line 224
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v7

    .line 228
    check-cast v7, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;

    .line 229
    .line 230
    iget-object v7, v7, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->openingTag:Ljava/lang/String;

    .line 231
    .line 232
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    goto :goto_4

    .line 236
    :cond_5
    add-int/2addr v0, v1

    .line 237
    move v5, v6

    .line 238
    goto :goto_2

    .line 239
    :cond_6
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 240
    .line 241
    .line 242
    move-result p1

    .line 243
    invoke-interface {p0, v5, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 244
    .line 245
    .line 246
    move-result-object p0

    .line 247
    invoke-static {p0}, Landroidx/media3/ui/SpannedToHtmlConverter;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object p0

    .line 251
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    new-instance p0, Landroidx/media3/ui/SpannedToHtmlConverter$HtmlAndCss;

    .line 255
    .line 256
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    invoke-direct {p0, p1, v4, v3}, Landroidx/media3/ui/SpannedToHtmlConverter$HtmlAndCss;-><init>(Ljava/lang/String;Ljava/util/Map;Landroidx/media3/ui/SpannedToHtmlConverter$1;)V

    .line 261
    .line 262
    .line 263
    return-object p0
.end method

.method private static escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Landroidx/media3/ui/SpannedToHtmlConverter;->NEWLINE_PATTERN:Ljava/util/regex/Pattern;

    .line 6
    .line 7
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const-string v0, "<br>"

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method private static findSpanTransitions(Landroid/text/Spanned;F)Landroid/util/SparseArray;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spanned;",
            "F)",
            "Landroid/util/SparseArray<",
            "Landroidx/media3/ui/SpannedToHtmlConverter$Transition;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const-class v2, Ljava/lang/Object;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-interface {p0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    array-length v2, v1

    .line 18
    :goto_0
    if-ge v3, v2, :cond_1

    .line 19
    .line 20
    aget-object v4, v1, v3

    .line 21
    .line 22
    invoke-static {v4, p1}, Landroidx/media3/ui/SpannedToHtmlConverter;->getOpeningTag(Ljava/lang/Object;F)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v8

    .line 26
    invoke-static {v4}, Landroidx/media3/ui/SpannedToHtmlConverter;->getClosingTag(Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v9

    .line 30
    invoke-interface {p0, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 31
    .line 32
    .line 33
    move-result v11

    .line 34
    invoke-interface {p0, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v8, :cond_0

    .line 39
    .line 40
    invoke-static {v9}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    new-instance v12, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;

    .line 44
    .line 45
    const/4 v10, 0x0

    .line 46
    move-object v5, v12

    .line 47
    move v6, v11

    .line 48
    move v7, v4

    .line 49
    invoke-direct/range {v5 .. v10}, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;-><init>(IILjava/lang/String;Ljava/lang/String;Landroidx/media3/ui/SpannedToHtmlConverter$1;)V

    .line 50
    .line 51
    .line 52
    invoke-static {v0, v11}, Landroidx/media3/ui/SpannedToHtmlConverter;->getOrCreate(Landroid/util/SparseArray;I)Landroidx/media3/ui/SpannedToHtmlConverter$Transition;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    invoke-static {v5}, Landroidx/media3/ui/SpannedToHtmlConverter$Transition;->access$300(Landroidx/media3/ui/SpannedToHtmlConverter$Transition;)Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    invoke-static {v0, v4}, Landroidx/media3/ui/SpannedToHtmlConverter;->getOrCreate(Landroid/util/SparseArray;I)Landroidx/media3/ui/SpannedToHtmlConverter$Transition;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-static {v4}, Landroidx/media3/ui/SpannedToHtmlConverter$Transition;->access$100(Landroidx/media3/ui/SpannedToHtmlConverter$Transition;)Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    return-object v0
.end method

.method private static getClosingTag(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .line 1
    instance-of v0, p0, Landroid/text/style/StrikethroughSpan;

    .line 2
    .line 3
    const-string v1, "</span>"

    .line 4
    .line 5
    if-nez v0, :cond_9

    .line 6
    .line 7
    instance-of v0, p0, Landroid/text/style/ForegroundColorSpan;

    .line 8
    .line 9
    if-nez v0, :cond_9

    .line 10
    .line 11
    instance-of v0, p0, Landroid/text/style/BackgroundColorSpan;

    .line 12
    .line 13
    if-nez v0, :cond_9

    .line 14
    .line 15
    instance-of v0, p0, Landroidx/media3/common/text/HorizontalTextInVerticalContextSpan;

    .line 16
    .line 17
    if-nez v0, :cond_9

    .line 18
    .line 19
    instance-of v0, p0, Landroid/text/style/AbsoluteSizeSpan;

    .line 20
    .line 21
    if-nez v0, :cond_9

    .line 22
    .line 23
    instance-of v0, p0, Landroid/text/style/RelativeSizeSpan;

    .line 24
    .line 25
    if-nez v0, :cond_9

    .line 26
    .line 27
    instance-of v0, p0, Landroidx/media3/common/text/TextEmphasisSpan;

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_0
    instance-of v0, p0, Landroid/text/style/TypefaceSpan;

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    check-cast p0, Landroid/text/style/TypefaceSpan;

    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    if-eqz p0, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    move-object v1, v2

    .line 47
    :goto_0
    return-object v1

    .line 48
    :cond_2
    instance-of v0, p0, Landroid/text/style/StyleSpan;

    .line 49
    .line 50
    if-eqz v0, :cond_6

    .line 51
    .line 52
    check-cast p0, Landroid/text/style/StyleSpan;

    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/text/style/StyleSpan;->getStyle()I

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    const/4 v0, 0x1

    .line 59
    if-eq p0, v0, :cond_5

    .line 60
    .line 61
    const/4 v0, 0x2

    .line 62
    if-eq p0, v0, :cond_4

    .line 63
    .line 64
    const/4 v0, 0x3

    .line 65
    if-eq p0, v0, :cond_3

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    const-string p0, "</i></b>"

    .line 69
    .line 70
    return-object p0

    .line 71
    :cond_4
    const-string p0, "</i>"

    .line 72
    .line 73
    return-object p0

    .line 74
    :cond_5
    const-string p0, "</b>"

    .line 75
    .line 76
    return-object p0

    .line 77
    :cond_6
    instance-of v0, p0, Landroidx/media3/common/text/RubySpan;

    .line 78
    .line 79
    if-eqz v0, :cond_7

    .line 80
    .line 81
    check-cast p0, Landroidx/media3/common/text/RubySpan;

    .line 82
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const-string v1, "<rt>"

    .line 86
    .line 87
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iget-object p0, p0, Landroidx/media3/common/text/RubySpan;->rubyText:Ljava/lang/String;

    .line 91
    .line 92
    invoke-static {p0}, Landroidx/media3/ui/SpannedToHtmlConverter;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    const-string v1, "</rt></ruby>"

    .line 97
    .line 98
    invoke-static {v0, p0, v1}, La/e;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    return-object p0

    .line 103
    :cond_7
    instance-of p0, p0, Landroid/text/style/UnderlineSpan;

    .line 104
    .line 105
    if-eqz p0, :cond_8

    .line 106
    .line 107
    const-string p0, "</u>"

    .line 108
    .line 109
    return-object p0

    .line 110
    :cond_8
    :goto_1
    return-object v2

    .line 111
    :cond_9
    :goto_2
    return-object v1
.end method

.method private static getOpeningTag(Ljava/lang/Object;F)Ljava/lang/String;
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    instance-of v3, p0, Landroid/text/style/StrikethroughSpan;

    .line 5
    .line 6
    if-eqz v3, :cond_0

    .line 7
    .line 8
    const-string p0, "<span style=\'text-decoration:line-through;\'>"

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_0
    instance-of v3, p0, Landroid/text/style/ForegroundColorSpan;

    .line 12
    .line 13
    if-eqz v3, :cond_1

    .line 14
    .line 15
    check-cast p0, Landroid/text/style/ForegroundColorSpan;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    invoke-static {p0}, Landroidx/media3/ui/HtmlUtils;->toCssRgba(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    new-array p1, v2, [Ljava/lang/Object;

    .line 26
    .line 27
    aput-object p0, p1, v1

    .line 28
    .line 29
    const-string p0, "<span style=\'color:%s;\'>"

    .line 30
    .line 31
    invoke-static {p0, p1}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    :cond_1
    instance-of v3, p0, Landroid/text/style/BackgroundColorSpan;

    .line 37
    .line 38
    if-eqz v3, :cond_2

    .line 39
    .line 40
    check-cast p0, Landroid/text/style/BackgroundColorSpan;

    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    new-array p1, v2, [Ljava/lang/Object;

    .line 51
    .line 52
    aput-object p0, p1, v1

    .line 53
    .line 54
    const-string p0, "<span class=\'bg_%s\'>"

    .line 55
    .line 56
    invoke-static {p0, p1}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    return-object p0

    .line 61
    :cond_2
    instance-of v3, p0, Landroidx/media3/common/text/HorizontalTextInVerticalContextSpan;

    .line 62
    .line 63
    if-eqz v3, :cond_3

    .line 64
    .line 65
    const-string p0, "<span style=\'text-combine-upright:all;\'>"

    .line 66
    .line 67
    return-object p0

    .line 68
    :cond_3
    instance-of v3, p0, Landroid/text/style/AbsoluteSizeSpan;

    .line 69
    .line 70
    if-eqz v3, :cond_5

    .line 71
    .line 72
    check-cast p0, Landroid/text/style/AbsoluteSizeSpan;

    .line 73
    .line 74
    invoke-virtual {p0}, Landroid/text/style/AbsoluteSizeSpan;->getDip()Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_4

    .line 79
    .line 80
    invoke-virtual {p0}, Landroid/text/style/AbsoluteSizeSpan;->getSize()I

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    int-to-float p0, p0

    .line 85
    goto :goto_0

    .line 86
    :cond_4
    invoke-virtual {p0}, Landroid/text/style/AbsoluteSizeSpan;->getSize()I

    .line 87
    .line 88
    .line 89
    move-result p0

    .line 90
    int-to-float p0, p0

    .line 91
    div-float/2addr p0, p1

    .line 92
    :goto_0
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    new-array p1, v2, [Ljava/lang/Object;

    .line 97
    .line 98
    aput-object p0, p1, v1

    .line 99
    .line 100
    const-string p0, "<span style=\'font-size:%.2fpx;\'>"

    .line 101
    .line 102
    invoke-static {p0, p1}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    return-object p0

    .line 107
    :cond_5
    instance-of p1, p0, Landroid/text/style/RelativeSizeSpan;

    .line 108
    .line 109
    if-eqz p1, :cond_6

    .line 110
    .line 111
    check-cast p0, Landroid/text/style/RelativeSizeSpan;

    .line 112
    .line 113
    invoke-virtual {p0}, Landroid/text/style/RelativeSizeSpan;->getSizeChange()F

    .line 114
    .line 115
    .line 116
    move-result p0

    .line 117
    const/high16 p1, 0x42c80000    # 100.0f

    .line 118
    .line 119
    mul-float p0, p0, p1

    .line 120
    .line 121
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    new-array p1, v2, [Ljava/lang/Object;

    .line 126
    .line 127
    aput-object p0, p1, v1

    .line 128
    .line 129
    const-string p0, "<span style=\'font-size:%.2f%%;\'>"

    .line 130
    .line 131
    invoke-static {p0, p1}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    return-object p0

    .line 136
    :cond_6
    instance-of p1, p0, Landroid/text/style/TypefaceSpan;

    .line 137
    .line 138
    const/4 v3, 0x0

    .line 139
    if-eqz p1, :cond_8

    .line 140
    .line 141
    check-cast p0, Landroid/text/style/TypefaceSpan;

    .line 142
    .line 143
    invoke-virtual {p0}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    if-eqz p0, :cond_7

    .line 148
    .line 149
    const-string p1, "<span style=\'font-family:\"%s\";\'>"

    .line 150
    .line 151
    new-array v0, v2, [Ljava/lang/Object;

    .line 152
    .line 153
    aput-object p0, v0, v1

    .line 154
    .line 155
    invoke-static {p1, v0}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    :cond_7
    return-object v3

    .line 160
    :cond_8
    instance-of p1, p0, Landroid/text/style/StyleSpan;

    .line 161
    .line 162
    if-eqz p1, :cond_c

    .line 163
    .line 164
    check-cast p0, Landroid/text/style/StyleSpan;

    .line 165
    .line 166
    invoke-virtual {p0}, Landroid/text/style/StyleSpan;->getStyle()I

    .line 167
    .line 168
    .line 169
    move-result p0

    .line 170
    if-eq p0, v2, :cond_b

    .line 171
    .line 172
    if-eq p0, v0, :cond_a

    .line 173
    .line 174
    const/4 p1, 0x3

    .line 175
    if-eq p0, p1, :cond_9

    .line 176
    .line 177
    return-object v3

    .line 178
    :cond_9
    const-string p0, "<b><i>"

    .line 179
    .line 180
    return-object p0

    .line 181
    :cond_a
    const-string p0, "<i>"

    .line 182
    .line 183
    return-object p0

    .line 184
    :cond_b
    const-string p0, "<b>"

    .line 185
    .line 186
    return-object p0

    .line 187
    :cond_c
    instance-of p1, p0, Landroidx/media3/common/text/RubySpan;

    .line 188
    .line 189
    if-eqz p1, :cond_10

    .line 190
    .line 191
    check-cast p0, Landroidx/media3/common/text/RubySpan;

    .line 192
    .line 193
    iget p0, p0, Landroidx/media3/common/text/RubySpan;->position:I

    .line 194
    .line 195
    const/4 p1, -0x1

    .line 196
    if-eq p0, p1, :cond_f

    .line 197
    .line 198
    if-eq p0, v2, :cond_e

    .line 199
    .line 200
    if-eq p0, v0, :cond_d

    .line 201
    .line 202
    return-object v3

    .line 203
    :cond_d
    const-string p0, "<ruby style=\'ruby-position:under;\'>"

    .line 204
    .line 205
    return-object p0

    .line 206
    :cond_e
    const-string p0, "<ruby style=\'ruby-position:over;\'>"

    .line 207
    .line 208
    return-object p0

    .line 209
    :cond_f
    const-string p0, "<ruby style=\'ruby-position:unset;\'>"

    .line 210
    .line 211
    return-object p0

    .line 212
    :cond_10
    instance-of p1, p0, Landroid/text/style/UnderlineSpan;

    .line 213
    .line 214
    if-eqz p1, :cond_11

    .line 215
    .line 216
    const-string p0, "<u>"

    .line 217
    .line 218
    return-object p0

    .line 219
    :cond_11
    instance-of p1, p0, Landroidx/media3/common/text/TextEmphasisSpan;

    .line 220
    .line 221
    if-eqz p1, :cond_12

    .line 222
    .line 223
    check-cast p0, Landroidx/media3/common/text/TextEmphasisSpan;

    .line 224
    .line 225
    iget p1, p0, Landroidx/media3/common/text/TextEmphasisSpan;->markShape:I

    .line 226
    .line 227
    iget v3, p0, Landroidx/media3/common/text/TextEmphasisSpan;->markFill:I

    .line 228
    .line 229
    invoke-static {p1, v3}, Landroidx/media3/ui/SpannedToHtmlConverter;->getTextEmphasisStyle(II)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    iget p0, p0, Landroidx/media3/common/text/TextEmphasisSpan;->position:I

    .line 234
    .line 235
    invoke-static {p0}, Landroidx/media3/ui/SpannedToHtmlConverter;->getTextEmphasisPosition(I)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object p0

    .line 239
    const-string v3, "<span style=\'-webkit-text-emphasis-style:%1$s;text-emphasis-style:%1$s;-webkit-text-emphasis-position:%2$s;text-emphasis-position:%2$s;display:inline-block;\'>"

    .line 240
    .line 241
    new-array v0, v0, [Ljava/lang/Object;

    .line 242
    .line 243
    aput-object p1, v0, v1

    .line 244
    .line 245
    aput-object p0, v0, v2

    .line 246
    .line 247
    invoke-static {v3, v0}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object p0

    .line 251
    return-object p0

    .line 252
    :cond_12
    return-object v3
.end method

.method private static getOrCreate(Landroid/util/SparseArray;I)Landroidx/media3/ui/SpannedToHtmlConverter$Transition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroidx/media3/ui/SpannedToHtmlConverter$Transition;",
            ">;I)",
            "Landroidx/media3/ui/SpannedToHtmlConverter$Transition;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/media3/ui/SpannedToHtmlConverter$Transition;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Landroidx/media3/ui/SpannedToHtmlConverter$Transition;

    .line 10
    .line 11
    invoke-direct {v0}, Landroidx/media3/ui/SpannedToHtmlConverter$Transition;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-object v0
.end method

.method private static getTextEmphasisPosition(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    if-eq p0, v0, :cond_0

    .line 3
    .line 4
    const-string p0, "over right"

    .line 5
    .line 6
    return-object p0

    .line 7
    :cond_0
    const-string p0, "under left"

    .line 8
    .line 9
    return-object p0
.end method

.method private static getTextEmphasisStyle(II)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    const/4 v2, 0x1

    .line 8
    if-eq p1, v2, :cond_1

    .line 9
    .line 10
    if-eq p1, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string p1, "open "

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const-string p1, "filled "

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    :goto_0
    if-eqz p0, :cond_5

    .line 25
    .line 26
    if-eq p0, v2, :cond_4

    .line 27
    .line 28
    if-eq p0, v1, :cond_3

    .line 29
    .line 30
    const/4 p1, 0x3

    .line 31
    if-eq p0, p1, :cond_2

    .line 32
    .line 33
    const-string p0, "unset"

    .line 34
    .line 35
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    const-string p0, "sesame"

    .line 40
    .line 41
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_3
    const-string p0, "dot"

    .line 46
    .line 47
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_4
    const-string p0, "circle"

    .line 52
    .line 53
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_5
    const-string p0, "none"

    .line 58
    .line 59
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0
.end method
