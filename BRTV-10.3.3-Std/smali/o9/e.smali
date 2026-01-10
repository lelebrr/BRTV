.class public abstract Lo9/e;
.super Ljava/lang/Object;
.source "MyApplication"


# static fields
.field public static a:Ljava/lang/Boolean;

.field public static b:Ljava/lang/Boolean;

.field public static c:Ljava/lang/Boolean;

.field public static d:Ljava/lang/Boolean;

.field public static e:Landroid/content/SharedPreferences;


# direct methods
.method public static A(Landroid/view/inputmethod/EditorInfo;Landroid/view/inputmethod/InputConnection;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    .line 4
    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    :goto_0
    instance-of p1, p0, Landroid/view/View;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    return-void
.end method

.method public static H(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eq p1, v0, :cond_9

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    goto :goto_4

    .line 16
    :cond_0
    instance-of v1, p1, Landroid/text/Spanned;

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_7

    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    const/4 v1, 0x1

    .line 28
    const/4 v2, 0x0

    .line 29
    if-nez p1, :cond_2

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_2
    const/4 v3, 0x0

    .line 34
    :goto_0
    if-nez v0, :cond_3

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_3
    const/4 v1, 0x0

    .line 38
    :goto_1
    if-eq v3, v1, :cond_4

    .line 39
    .line 40
    goto :goto_3

    .line 41
    :cond_4
    if-nez p1, :cond_5

    .line 42
    .line 43
    goto :goto_4

    .line 44
    :cond_5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-eq v1, v3, :cond_6

    .line 53
    .line 54
    goto :goto_3

    .line 55
    :cond_6
    :goto_2
    if-ge v2, v1, :cond_9

    .line 56
    .line 57
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-eq v3, v4, :cond_8

    .line 66
    .line 67
    :cond_7
    :goto_3
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_9
    :goto_4
    return-void
.end method

.method public static I(Landroid/content/Context;)Z
    .locals 5

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    const/high16 v1, 0x10000000

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "com.android.settings.panel.action.MEDIA_OUTPUT"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "com.android.settings.panel.extra.PACKAGE_NAME"

    .line 23
    .line 24
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_2

    .line 46
    .line 47
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 52
    .line 53
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 54
    .line 55
    if-eqz v3, :cond_0

    .line 56
    .line 57
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 58
    .line 59
    if-nez v3, :cond_1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    iget v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 63
    .line 64
    and-int/lit16 v4, v4, 0x81

    .line 65
    .line 66
    if-eqz v4, :cond_0

    .line 67
    .line 68
    iget-object v1, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 74
    .line 75
    .line 76
    const/4 p0, 0x1

    .line 77
    return p0

    .line 78
    :cond_2
    return v2
.end method

.method public static J(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 3

    .line 1
    const-class v0, Landroid/content/SharedPreferences;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lo9/e;->e:Landroid/content/SharedPreferences;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Ll1/b;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-direct {v1, v2, p0}, Ll1/b;-><init>(ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v1}, Lu7/d;->A(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Landroid/content/SharedPreferences;

    .line 19
    .line 20
    sput-object p0, Lo9/e;->e:Landroid/content/SharedPreferences;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    :goto_0
    sget-object p0, Lo9/e;->e:Landroid/content/SharedPreferences;

    .line 26
    .line 27
    monitor-exit v0

    .line 28
    return-object p0

    .line 29
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p0
.end method

.method public static final c([Ljava/lang/Object;IILjava/util/List;)Z
    .locals 4

    .line 1
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eq p2, v0, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    if-ge v0, p2, :cond_2

    .line 11
    .line 12
    add-int v2, p1, v0

    .line 13
    .line 14
    aget-object v2, p0, v2

    .line 15
    .line 16
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-static {v2, v3}, Lj9/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-nez v2, :cond_1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    const/4 v1, 0x1

    .line 31
    :goto_1
    return v1
.end method

.method public static final d([Ljava/lang/Object;IILx8/f;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    mul-int/lit8 v1, p2, 0x3

    .line 4
    .line 5
    add-int/lit8 v1, v1, 0x2

    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 8
    .line 9
    .line 10
    const-string v1, "["

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    :goto_0
    if-ge v1, p2, :cond_2

    .line 17
    .line 18
    if-lez v1, :cond_0

    .line 19
    .line 20
    const-string v2, ", "

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    :cond_0
    add-int v2, p1, v1

    .line 26
    .line 27
    aget-object v2, p0, v2

    .line 28
    .line 29
    if-ne v2, p3, :cond_1

    .line 30
    .line 31
    const-string v2, "(this Collection)"

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    const-string p0, "]"

    .line 44
    .line 45
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    const-string p1, "toString(...)"

    .line 53
    .line 54
    invoke-static {p0, p1}, Lj9/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-object p0
.end method

.method public static g(Ljava/lang/StringBuilder;Ljava/lang/Object;Li9/l;)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-interface {p2, p1}, Li9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/CharSequence;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 10
    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    if-nez p1, :cond_1

    .line 14
    .line 15
    const/4 p2, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    instance-of p2, p1, Ljava/lang/CharSequence;

    .line 18
    .line 19
    :goto_0
    if-eqz p2, :cond_2

    .line 20
    .line 21
    check-cast p1, Ljava/lang/CharSequence;

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 24
    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_2
    instance-of p2, p1, Ljava/lang/Character;

    .line 28
    .line 29
    if-eqz p2, :cond_3

    .line 30
    .line 31
    check-cast p1, Ljava/lang/Character;

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 46
    .line 47
    .line 48
    :goto_1
    return-void
.end method

.method public static h(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 9

    .line 1
    invoke-static {p0, p1, p2}, Lo9/e;->i(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p0, p1, p3}, Lo9/e;->i(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v1, :cond_c

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto/16 :goto_4

    .line 15
    .line 16
    :cond_0
    const-string v0, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    .line 17
    .line 18
    const/16 v1, 0x82

    .line 19
    .line 20
    const/16 v3, 0x21

    .line 21
    .line 22
    const/16 v4, 0x42

    .line 23
    .line 24
    const/16 v5, 0x11

    .line 25
    .line 26
    const/4 v6, 0x1

    .line 27
    if-eq p0, v5, :cond_4

    .line 28
    .line 29
    if-eq p0, v3, :cond_3

    .line 30
    .line 31
    if-eq p0, v4, :cond_2

    .line 32
    .line 33
    if-ne p0, v1, :cond_1

    .line 34
    .line 35
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    .line 36
    .line 37
    iget v8, p3, Landroid/graphics/Rect;->top:I

    .line 38
    .line 39
    if-gt v7, v8, :cond_b

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 43
    .line 44
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p0

    .line 48
    :cond_2
    iget v7, p1, Landroid/graphics/Rect;->right:I

    .line 49
    .line 50
    iget v8, p3, Landroid/graphics/Rect;->left:I

    .line 51
    .line 52
    if-gt v7, v8, :cond_b

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    iget v7, p1, Landroid/graphics/Rect;->top:I

    .line 56
    .line 57
    iget v8, p3, Landroid/graphics/Rect;->bottom:I

    .line 58
    .line 59
    if-lt v7, v8, :cond_b

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_4
    iget v7, p1, Landroid/graphics/Rect;->left:I

    .line 63
    .line 64
    iget v8, p3, Landroid/graphics/Rect;->right:I

    .line 65
    .line 66
    if-lt v7, v8, :cond_b

    .line 67
    .line 68
    :goto_0
    if-eq p0, v5, :cond_b

    .line 69
    .line 70
    if-ne p0, v4, :cond_5

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_5
    invoke-static {p0, p1, p2}, Lo9/e;->y(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    if-eq p0, v5, :cond_9

    .line 78
    .line 79
    if-eq p0, v3, :cond_8

    .line 80
    .line 81
    if-eq p0, v4, :cond_7

    .line 82
    .line 83
    if-ne p0, v1, :cond_6

    .line 84
    .line 85
    iget p0, p3, Landroid/graphics/Rect;->bottom:I

    .line 86
    .line 87
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 88
    .line 89
    :goto_1
    sub-int/2addr p0, p1

    .line 90
    goto :goto_2

    .line 91
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 92
    .line 93
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw p0

    .line 97
    :cond_7
    iget p0, p3, Landroid/graphics/Rect;->right:I

    .line 98
    .line 99
    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_8
    iget p0, p1, Landroid/graphics/Rect;->top:I

    .line 103
    .line 104
    iget p1, p3, Landroid/graphics/Rect;->top:I

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_9
    iget p0, p1, Landroid/graphics/Rect;->left:I

    .line 108
    .line 109
    iget p1, p3, Landroid/graphics/Rect;->left:I

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :goto_2
    invoke-static {v6, p0}, Ljava/lang/Math;->max(II)I

    .line 113
    .line 114
    .line 115
    move-result p0

    .line 116
    if-ge p2, p0, :cond_a

    .line 117
    .line 118
    const/4 v2, 0x1

    .line 119
    :cond_a
    return v2

    .line 120
    :cond_b
    :goto_3
    return v6

    .line 121
    :cond_c
    :goto_4
    return v2
.end method

.method public static i(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 3

    .line 1
    const/16 v0, 0x11

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eq p0, v0, :cond_3

    .line 6
    .line 7
    const/16 v0, 0x21

    .line 8
    .line 9
    if-eq p0, v0, :cond_1

    .line 10
    .line 11
    const/16 v0, 0x42

    .line 12
    .line 13
    if-eq p0, v0, :cond_3

    .line 14
    .line 15
    const/16 v0, 0x82

    .line 16
    .line 17
    if-ne p0, v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 21
    .line 22
    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    .line 23
    .line 24
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p0

    .line 28
    :cond_1
    :goto_0
    iget p0, p2, Landroid/graphics/Rect;->right:I

    .line 29
    .line 30
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 31
    .line 32
    if-lt p0, v0, :cond_2

    .line 33
    .line 34
    iget p0, p2, Landroid/graphics/Rect;->left:I

    .line 35
    .line 36
    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 37
    .line 38
    if-gt p0, p1, :cond_2

    .line 39
    .line 40
    const/4 v1, 0x1

    .line 41
    :cond_2
    return v1

    .line 42
    :cond_3
    iget p0, p2, Landroid/graphics/Rect;->bottom:I

    .line 43
    .line 44
    iget v0, p1, Landroid/graphics/Rect;->top:I

    .line 45
    .line 46
    if-lt p0, v0, :cond_4

    .line 47
    .line 48
    iget p0, p2, Landroid/graphics/Rect;->top:I

    .line 49
    .line 50
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 51
    .line 52
    if-gt p0, p1, :cond_4

    .line 53
    .line 54
    const/4 v1, 0x1

    .line 55
    :cond_4
    return v1
.end method

.method public static j(II)I
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    mul-int v0, v0, p1

    .line 6
    .line 7
    div-int/lit16 v0, v0, 0xff

    .line 8
    .line 9
    invoke-static {p0, v0}, Lf0/a;->h(II)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public static k([BII)[B
    .locals 2

    .line 1
    sub-int v0, p2, p1

    .line 2
    .line 3
    if-ltz v0, :cond_0

    .line 4
    .line 5
    new-array p2, v0, [B

    .line 6
    .line 7
    array-length v1, p0

    .line 8
    sub-int/2addr v1, p1

    .line 9
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-static {p0, p1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    .line 16
    .line 17
    return-object p2

    .line 18
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 19
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string p1, " > "

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p0
.end method

.method public static l(Lcom/bumptech/glide/b;Ljava/util/ArrayList;)Lcom/bumptech/glide/j;
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/bumptech/glide/b;->a:Ly2/a;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/bumptech/glide/b;->c:Lcom/bumptech/glide/f;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    iget-object v2, v2, Lcom/bumptech/glide/f;->h:La0/b;

    .line 12
    .line 13
    new-instance v4, Lcom/bumptech/glide/j;

    .line 14
    .line 15
    invoke-direct {v4}, Lcom/bumptech/glide/j;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance v5, Le3/m;

    .line 19
    .line 20
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    iget-object v6, v4, Lcom/bumptech/glide/j;->g:Lj3/c;

    .line 24
    .line 25
    monitor-enter v6

    .line 26
    :try_start_0
    iget-object v7, v6, Lj3/c;->a:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    monitor-exit v6

    .line 32
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 33
    .line 34
    const/16 v6, 0x1b

    .line 35
    .line 36
    if-lt v5, v6, :cond_0

    .line 37
    .line 38
    new-instance v6, Le3/t;

    .line 39
    .line 40
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, v6}, Lcom/bumptech/glide/j;->k(Lv2/d;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    invoke-virtual {v4}, Lcom/bumptech/glide/j;->f()Ljava/util/ArrayList;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    new-instance v8, Li3/b;

    .line 55
    .line 56
    iget-object v0, v0, Lcom/bumptech/glide/b;->d:Ly2/f;

    .line 57
    .line 58
    invoke-direct {v8, v3, v7, v1, v0}, Li3/b;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ly2/a;Ly2/f;)V

    .line 59
    .line 60
    .line 61
    new-instance v9, Le3/f0;

    .line 62
    .line 63
    new-instance v10, Lx4/e;

    .line 64
    .line 65
    const/16 v11, 0xa

    .line 66
    .line 67
    invoke-direct {v10, v11}, Lx4/e;-><init>(I)V

    .line 68
    .line 69
    .line 70
    invoke-direct {v9, v1, v10}, Le3/f0;-><init>(Ly2/a;Le3/e0;)V

    .line 71
    .line 72
    .line 73
    new-instance v10, Le3/p;

    .line 74
    .line 75
    invoke-virtual {v4}, Lcom/bumptech/glide/j;->f()Ljava/util/ArrayList;

    .line 76
    .line 77
    .line 78
    move-result-object v11

    .line 79
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 80
    .line 81
    .line 82
    move-result-object v12

    .line 83
    invoke-direct {v10, v11, v12, v1, v0}, Le3/p;-><init>(Ljava/util/ArrayList;Landroid/util/DisplayMetrics;Ly2/a;Ly2/f;)V

    .line 84
    .line 85
    .line 86
    const/16 v11, 0x1c

    .line 87
    .line 88
    if-lt v5, v11, :cond_1

    .line 89
    .line 90
    iget-object v2, v2, La0/b;->b:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v2, Ljava/util/Map;

    .line 93
    .line 94
    const-class v12, Lcom/bumptech/glide/c;

    .line 95
    .line 96
    invoke-interface {v2, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    if-eqz v2, :cond_1

    .line 101
    .line 102
    new-instance v2, Le3/g;

    .line 103
    .line 104
    const/4 v12, 0x1

    .line 105
    invoke-direct {v2, v12}, Le3/g;-><init>(I)V

    .line 106
    .line 107
    .line 108
    new-instance v12, Le3/g;

    .line 109
    .line 110
    const/4 v13, 0x0

    .line 111
    invoke-direct {v12, v13}, Le3/g;-><init>(I)V

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_1
    new-instance v12, Le3/f;

    .line 116
    .line 117
    const/4 v2, 0x0

    .line 118
    invoke-direct {v12, v10, v2}, Le3/f;-><init>(Le3/p;I)V

    .line 119
    .line 120
    .line 121
    new-instance v2, Le3/a;

    .line 122
    .line 123
    const/4 v13, 0x2

    .line 124
    invoke-direct {v2, v10, v13, v0}, Le3/a;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    :goto_0
    const-string v13, "Animation"

    .line 128
    .line 129
    const-class v14, Ljava/nio/ByteBuffer;

    .line 130
    .line 131
    const-class v15, Landroid/graphics/drawable/Drawable;

    .line 132
    .line 133
    move-object/from16 v16, v8

    .line 134
    .line 135
    const-class v8, Ljava/io/InputStream;

    .line 136
    .line 137
    if-lt v5, v11, :cond_2

    .line 138
    .line 139
    new-instance v11, Lg3/a;

    .line 140
    .line 141
    move/from16 v17, v5

    .line 142
    .line 143
    new-instance v5, La7/f;

    .line 144
    .line 145
    move-object/from16 v18, v6

    .line 146
    .line 147
    const/16 v6, 0x13

    .line 148
    .line 149
    move-object/from16 p0, v9

    .line 150
    .line 151
    const/4 v9, 0x0

    .line 152
    invoke-direct {v5, v6, v7, v0, v9}, La7/f;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 153
    .line 154
    .line 155
    const/4 v6, 0x1

    .line 156
    invoke-direct {v11, v6, v5}, Lg3/a;-><init>(ILa7/f;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v4, v13, v8, v15, v11}, Lcom/bumptech/glide/j;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lv2/j;)V

    .line 160
    .line 161
    .line 162
    new-instance v5, Lg3/a;

    .line 163
    .line 164
    new-instance v6, La7/f;

    .line 165
    .line 166
    const/16 v9, 0x13

    .line 167
    .line 168
    const/4 v11, 0x0

    .line 169
    invoke-direct {v6, v9, v7, v0, v11}, La7/f;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 170
    .line 171
    .line 172
    const/4 v9, 0x0

    .line 173
    invoke-direct {v5, v9, v6}, Lg3/a;-><init>(ILa7/f;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v4, v13, v14, v15, v5}, Lcom/bumptech/glide/j;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lv2/j;)V

    .line 177
    .line 178
    .line 179
    goto :goto_1

    .line 180
    :cond_2
    move/from16 v17, v5

    .line 181
    .line 182
    move-object/from16 v18, v6

    .line 183
    .line 184
    move-object/from16 p0, v9

    .line 185
    .line 186
    :goto_1
    new-instance v5, Lg3/d;

    .line 187
    .line 188
    invoke-direct {v5, v3}, Lg3/d;-><init>(Landroid/content/Context;)V

    .line 189
    .line 190
    .line 191
    new-instance v6, Le3/b;

    .line 192
    .line 193
    invoke-direct {v6, v0}, Le3/b;-><init>(Ly2/f;)V

    .line 194
    .line 195
    .line 196
    new-instance v9, Lc6/b;

    .line 197
    .line 198
    const/4 v11, 0x1

    .line 199
    invoke-direct {v9, v11}, Lc6/b;-><init>(I)V

    .line 200
    .line 201
    .line 202
    new-instance v11, Lj3/d;

    .line 203
    .line 204
    move-object/from16 v19, v9

    .line 205
    .line 206
    const/4 v9, 0x1

    .line 207
    invoke-direct {v11, v9}, Lj3/d;-><init>(I)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 211
    .line 212
    .line 213
    move-result-object v9

    .line 214
    move-object/from16 v20, v11

    .line 215
    .line 216
    new-instance v11, Lb3/c;

    .line 217
    .line 218
    move-object/from16 v21, v9

    .line 219
    .line 220
    const/4 v9, 0x2

    .line 221
    invoke-direct {v11, v9}, Lb3/c;-><init>(I)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v4, v14, v11}, Lcom/bumptech/glide/j;->b(Ljava/lang/Class;Lv2/b;)V

    .line 225
    .line 226
    .line 227
    new-instance v9, La0/b;

    .line 228
    .line 229
    const/16 v11, 0xa

    .line 230
    .line 231
    invoke-direct {v9, v11, v0}, La0/b;-><init>(ILjava/lang/Object;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v4, v8, v9}, Lcom/bumptech/glide/j;->b(Ljava/lang/Class;Lv2/b;)V

    .line 235
    .line 236
    .line 237
    const-string v9, "Bitmap"

    .line 238
    .line 239
    const-class v11, Landroid/graphics/Bitmap;

    .line 240
    .line 241
    invoke-virtual {v4, v9, v14, v11, v12}, Lcom/bumptech/glide/j;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lv2/j;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v4, v9, v8, v11, v2}, Lcom/bumptech/glide/j;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lv2/j;)V

    .line 245
    .line 246
    .line 247
    move-object/from16 v22, v3

    .line 248
    .line 249
    const-string v3, "robolectric"

    .line 250
    .line 251
    move-object/from16 v23, v5

    .line 252
    .line 253
    sget-object v5, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 254
    .line 255
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    move-result v3

    .line 259
    move-object/from16 v24, v5

    .line 260
    .line 261
    const-class v5, Landroid/os/ParcelFileDescriptor;

    .line 262
    .line 263
    if-nez v3, :cond_3

    .line 264
    .line 265
    new-instance v3, Le3/f;

    .line 266
    .line 267
    move-object/from16 v25, v15

    .line 268
    .line 269
    const/4 v15, 0x1

    .line 270
    invoke-direct {v3, v10, v15}, Le3/f;-><init>(Le3/p;I)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v4, v9, v5, v11, v3}, Lcom/bumptech/glide/j;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lv2/j;)V

    .line 274
    .line 275
    .line 276
    goto :goto_2

    .line 277
    :cond_3
    move-object/from16 v25, v15

    .line 278
    .line 279
    :goto_2
    new-instance v3, Le3/f0;

    .line 280
    .line 281
    new-instance v10, Lu6/e;

    .line 282
    .line 283
    const/16 v15, 0x9

    .line 284
    .line 285
    invoke-direct {v10, v15}, Lu6/e;-><init>(I)V

    .line 286
    .line 287
    .line 288
    invoke-direct {v3, v1, v10}, Le3/f0;-><init>(Ly2/a;Le3/e0;)V

    .line 289
    .line 290
    .line 291
    const-class v10, Landroid/content/res/AssetFileDescriptor;

    .line 292
    .line 293
    invoke-virtual {v4, v9, v10, v11, v3}, Lcom/bumptech/glide/j;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lv2/j;)V

    .line 294
    .line 295
    .line 296
    move-object/from16 v3, p0

    .line 297
    .line 298
    invoke-virtual {v4, v9, v5, v11, v3}, Lcom/bumptech/glide/j;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lv2/j;)V

    .line 299
    .line 300
    .line 301
    sget-object v15, Lb3/e0;->b:Lb3/e0;

    .line 302
    .line 303
    invoke-virtual {v4, v11, v11, v15}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;Lb3/v;)V

    .line 304
    .line 305
    .line 306
    move-object/from16 p0, v10

    .line 307
    .line 308
    new-instance v10, Le3/b0;

    .line 309
    .line 310
    move-object/from16 v26, v15

    .line 311
    .line 312
    const/4 v15, 0x0

    .line 313
    invoke-direct {v10, v15}, Le3/b0;-><init>(I)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v4, v9, v11, v11, v10}, Lcom/bumptech/glide/j;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lv2/j;)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v4, v11, v6}, Lcom/bumptech/glide/j;->c(Ljava/lang/Class;Lv2/k;)V

    .line 320
    .line 321
    .line 322
    new-instance v10, Le3/a;

    .line 323
    .line 324
    move-object/from16 v15, v18

    .line 325
    .line 326
    invoke-direct {v10, v15, v12}, Le3/a;-><init>(Landroid/content/res/Resources;Lv2/j;)V

    .line 327
    .line 328
    .line 329
    const-string v12, "BitmapDrawable"

    .line 330
    .line 331
    move-object/from16 v18, v9

    .line 332
    .line 333
    const-class v9, Landroid/graphics/drawable/BitmapDrawable;

    .line 334
    .line 335
    invoke-virtual {v4, v12, v14, v9, v10}, Lcom/bumptech/glide/j;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lv2/j;)V

    .line 336
    .line 337
    .line 338
    new-instance v10, Le3/a;

    .line 339
    .line 340
    invoke-direct {v10, v15, v2}, Le3/a;-><init>(Landroid/content/res/Resources;Lv2/j;)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v4, v12, v8, v9, v10}, Lcom/bumptech/glide/j;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lv2/j;)V

    .line 344
    .line 345
    .line 346
    new-instance v2, Le3/a;

    .line 347
    .line 348
    invoke-direct {v2, v15, v3}, Le3/a;-><init>(Landroid/content/res/Resources;Lv2/j;)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v4, v12, v5, v9, v2}, Lcom/bumptech/glide/j;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lv2/j;)V

    .line 352
    .line 353
    .line 354
    new-instance v2, La7/f;

    .line 355
    .line 356
    const/16 v3, 0x11

    .line 357
    .line 358
    const/4 v10, 0x0

    .line 359
    invoke-direct {v2, v3, v1, v6, v10}, La7/f;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v4, v9, v2}, Lcom/bumptech/glide/j;->c(Ljava/lang/Class;Lv2/k;)V

    .line 363
    .line 364
    .line 365
    new-instance v2, Li3/k;

    .line 366
    .line 367
    move-object/from16 v3, v16

    .line 368
    .line 369
    invoke-direct {v2, v7, v3, v0}, Li3/k;-><init>(Ljava/util/ArrayList;Li3/b;Ly2/f;)V

    .line 370
    .line 371
    .line 372
    const-class v6, Li3/d;

    .line 373
    .line 374
    invoke-virtual {v4, v13, v8, v6, v2}, Lcom/bumptech/glide/j;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lv2/j;)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {v4, v13, v14, v6, v3}, Lcom/bumptech/glide/j;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lv2/j;)V

    .line 378
    .line 379
    .line 380
    new-instance v2, Lx4/e;

    .line 381
    .line 382
    const/16 v3, 0xe

    .line 383
    .line 384
    invoke-direct {v2, v3}, Lx4/e;-><init>(I)V

    .line 385
    .line 386
    .line 387
    invoke-virtual {v4, v6, v2}, Lcom/bumptech/glide/j;->c(Ljava/lang/Class;Lv2/k;)V

    .line 388
    .line 389
    .line 390
    const-class v2, Lt2/d;

    .line 391
    .line 392
    move-object/from16 v3, v26

    .line 393
    .line 394
    invoke-virtual {v4, v2, v2, v3}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;Lb3/v;)V

    .line 395
    .line 396
    .line 397
    new-instance v7, Le3/c;

    .line 398
    .line 399
    invoke-direct {v7, v1}, Le3/c;-><init>(Ly2/a;)V

    .line 400
    .line 401
    .line 402
    move-object/from16 v10, v18

    .line 403
    .line 404
    invoke-virtual {v4, v10, v2, v11, v7}, Lcom/bumptech/glide/j;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lv2/j;)V

    .line 405
    .line 406
    .line 407
    const-string v2, "legacy_append"

    .line 408
    .line 409
    const-class v7, Landroid/net/Uri;

    .line 410
    .line 411
    move-object/from16 v12, v23

    .line 412
    .line 413
    move-object/from16 v10, v25

    .line 414
    .line 415
    invoke-virtual {v4, v2, v7, v10, v12}, Lcom/bumptech/glide/j;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lv2/j;)V

    .line 416
    .line 417
    .line 418
    new-instance v13, Le3/a;

    .line 419
    .line 420
    move-object/from16 v16, v6

    .line 421
    .line 422
    const/4 v6, 0x1

    .line 423
    invoke-direct {v13, v12, v6, v1}, Le3/a;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 424
    .line 425
    .line 426
    invoke-virtual {v4, v2, v7, v11, v13}, Lcom/bumptech/glide/j;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lv2/j;)V

    .line 427
    .line 428
    .line 429
    new-instance v6, Lcom/bumptech/glide/load/data/h;

    .line 430
    .line 431
    const/4 v12, 0x2

    .line 432
    invoke-direct {v6, v12}, Lcom/bumptech/glide/load/data/h;-><init>(I)V

    .line 433
    .line 434
    .line 435
    invoke-virtual {v4, v6}, Lcom/bumptech/glide/j;->i(Lcom/bumptech/glide/load/data/f;)V

    .line 436
    .line 437
    .line 438
    new-instance v6, Lb3/e0;

    .line 439
    .line 440
    const/4 v12, 0x3

    .line 441
    invoke-direct {v6, v12}, Lb3/e0;-><init>(I)V

    .line 442
    .line 443
    .line 444
    const-class v12, Ljava/io/File;

    .line 445
    .line 446
    invoke-virtual {v4, v12, v14, v6}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;Lb3/v;)V

    .line 447
    .line 448
    .line 449
    new-instance v6, Lb3/j;

    .line 450
    .line 451
    new-instance v13, Lb3/c;

    .line 452
    .line 453
    move-object/from16 v18, v1

    .line 454
    .line 455
    const/4 v1, 0x5

    .line 456
    invoke-direct {v13, v1}, Lb3/c;-><init>(I)V

    .line 457
    .line 458
    .line 459
    invoke-direct {v6, v13}, Lb3/j;-><init>(Lb3/c;)V

    .line 460
    .line 461
    .line 462
    invoke-virtual {v4, v12, v8, v6}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;Lb3/v;)V

    .line 463
    .line 464
    .line 465
    new-instance v1, Le3/b0;

    .line 466
    .line 467
    const/4 v6, 0x2

    .line 468
    invoke-direct {v1, v6}, Le3/b0;-><init>(I)V

    .line 469
    .line 470
    .line 471
    invoke-virtual {v4, v2, v12, v12, v1}, Lcom/bumptech/glide/j;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lv2/j;)V

    .line 472
    .line 473
    .line 474
    new-instance v1, Lb3/j;

    .line 475
    .line 476
    new-instance v6, Lb3/c;

    .line 477
    .line 478
    const/4 v13, 0x4

    .line 479
    invoke-direct {v6, v13}, Lb3/c;-><init>(I)V

    .line 480
    .line 481
    .line 482
    invoke-direct {v1, v6}, Lb3/j;-><init>(Lb3/c;)V

    .line 483
    .line 484
    .line 485
    invoke-virtual {v4, v12, v5, v1}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;Lb3/v;)V

    .line 486
    .line 487
    .line 488
    invoke-virtual {v4, v12, v12, v3}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;Lb3/v;)V

    .line 489
    .line 490
    .line 491
    new-instance v1, Lcom/bumptech/glide/load/data/m;

    .line 492
    .line 493
    invoke-direct {v1, v0}, Lcom/bumptech/glide/load/data/m;-><init>(Ly2/f;)V

    .line 494
    .line 495
    .line 496
    invoke-virtual {v4, v1}, Lcom/bumptech/glide/j;->i(Lcom/bumptech/glide/load/data/f;)V

    .line 497
    .line 498
    .line 499
    const-string v0, "robolectric"

    .line 500
    .line 501
    move-object/from16 v1, v24

    .line 502
    .line 503
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 504
    .line 505
    .line 506
    move-result v0

    .line 507
    if-nez v0, :cond_4

    .line 508
    .line 509
    new-instance v0, Lcom/bumptech/glide/load/data/h;

    .line 510
    .line 511
    const/4 v1, 0x1

    .line 512
    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/data/h;-><init>(I)V

    .line 513
    .line 514
    .line 515
    invoke-virtual {v4, v0}, Lcom/bumptech/glide/j;->i(Lcom/bumptech/glide/load/data/f;)V

    .line 516
    .line 517
    .line 518
    :cond_4
    new-instance v0, Lb3/h;

    .line 519
    .line 520
    const/4 v1, 0x2

    .line 521
    move-object/from16 v6, v22

    .line 522
    .line 523
    invoke-direct {v0, v6, v1}, Lb3/h;-><init>(Landroid/content/Context;I)V

    .line 524
    .line 525
    .line 526
    new-instance v1, Lb3/h;

    .line 527
    .line 528
    const/4 v13, 0x0

    .line 529
    invoke-direct {v1, v6, v13}, Lb3/h;-><init>(Landroid/content/Context;I)V

    .line 530
    .line 531
    .line 532
    new-instance v13, Lb3/h;

    .line 533
    .line 534
    move-object/from16 v22, v9

    .line 535
    .line 536
    const/4 v9, 0x1

    .line 537
    invoke-direct {v13, v6, v9}, Lb3/h;-><init>(Landroid/content/Context;I)V

    .line 538
    .line 539
    .line 540
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 541
    .line 542
    invoke-virtual {v4, v9, v8, v0}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;Lb3/v;)V

    .line 543
    .line 544
    .line 545
    move-object/from16 v23, v11

    .line 546
    .line 547
    const-class v11, Ljava/lang/Integer;

    .line 548
    .line 549
    invoke-virtual {v4, v11, v8, v0}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;Lb3/v;)V

    .line 550
    .line 551
    .line 552
    move-object/from16 v0, p0

    .line 553
    .line 554
    invoke-virtual {v4, v9, v0, v1}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;Lb3/v;)V

    .line 555
    .line 556
    .line 557
    invoke-virtual {v4, v11, v0, v1}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;Lb3/v;)V

    .line 558
    .line 559
    .line 560
    invoke-virtual {v4, v9, v10, v13}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;Lb3/v;)V

    .line 561
    .line 562
    .line 563
    invoke-virtual {v4, v11, v10, v13}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;Lb3/v;)V

    .line 564
    .line 565
    .line 566
    new-instance v1, Lb3/h;

    .line 567
    .line 568
    const/4 v13, 0x5

    .line 569
    invoke-direct {v1, v6, v13}, Lb3/h;-><init>(Landroid/content/Context;I)V

    .line 570
    .line 571
    .line 572
    invoke-virtual {v4, v7, v8, v1}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;Lb3/v;)V

    .line 573
    .line 574
    .line 575
    new-instance v1, Lb3/h;

    .line 576
    .line 577
    const/4 v13, 0x4

    .line 578
    invoke-direct {v1, v6, v13}, Lb3/h;-><init>(Landroid/content/Context;I)V

    .line 579
    .line 580
    .line 581
    invoke-virtual {v4, v7, v0, v1}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;Lb3/v;)V

    .line 582
    .line 583
    .line 584
    new-instance v1, Lb3/c0;

    .line 585
    .line 586
    const/4 v13, 0x2

    .line 587
    invoke-direct {v1, v15, v13}, Lb3/c0;-><init>(Landroid/content/res/Resources;I)V

    .line 588
    .line 589
    .line 590
    new-instance v13, Lb3/c0;

    .line 591
    .line 592
    move-object/from16 p0, v2

    .line 593
    .line 594
    const/4 v2, 0x0

    .line 595
    invoke-direct {v13, v15, v2}, Lb3/c0;-><init>(Landroid/content/res/Resources;I)V

    .line 596
    .line 597
    .line 598
    new-instance v2, Lb3/c0;

    .line 599
    .line 600
    move-object/from16 v25, v10

    .line 601
    .line 602
    const/4 v10, 0x1

    .line 603
    invoke-direct {v2, v15, v10}, Lb3/c0;-><init>(Landroid/content/res/Resources;I)V

    .line 604
    .line 605
    .line 606
    invoke-virtual {v4, v11, v7, v1}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;Lb3/v;)V

    .line 607
    .line 608
    .line 609
    invoke-virtual {v4, v9, v7, v1}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;Lb3/v;)V

    .line 610
    .line 611
    .line 612
    invoke-virtual {v4, v11, v0, v13}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;Lb3/v;)V

    .line 613
    .line 614
    .line 615
    invoke-virtual {v4, v9, v0, v13}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;Lb3/v;)V

    .line 616
    .line 617
    .line 618
    invoke-virtual {v4, v11, v8, v2}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;Lb3/v;)V

    .line 619
    .line 620
    .line 621
    invoke-virtual {v4, v9, v8, v2}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;Lb3/v;)V

    .line 622
    .line 623
    .line 624
    new-instance v1, Lb3/g;

    .line 625
    .line 626
    const/4 v2, 0x0

    .line 627
    invoke-direct {v1, v2}, Lb3/g;-><init>(I)V

    .line 628
    .line 629
    .line 630
    const-class v2, Ljava/lang/String;

    .line 631
    .line 632
    invoke-virtual {v4, v2, v8, v1}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;Lb3/v;)V

    .line 633
    .line 634
    .line 635
    new-instance v1, Lb3/g;

    .line 636
    .line 637
    const/4 v9, 0x0

    .line 638
    invoke-direct {v1, v9}, Lb3/g;-><init>(I)V

    .line 639
    .line 640
    .line 641
    invoke-virtual {v4, v7, v8, v1}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;Lb3/v;)V

    .line 642
    .line 643
    .line 644
    new-instance v1, Lb3/e0;

    .line 645
    .line 646
    const/4 v9, 0x6

    .line 647
    invoke-direct {v1, v9}, Lb3/e0;-><init>(I)V

    .line 648
    .line 649
    .line 650
    invoke-virtual {v4, v2, v8, v1}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;Lb3/v;)V

    .line 651
    .line 652
    .line 653
    new-instance v1, Lb3/e0;

    .line 654
    .line 655
    const/4 v9, 0x5

    .line 656
    invoke-direct {v1, v9}, Lb3/e0;-><init>(I)V

    .line 657
    .line 658
    .line 659
    invoke-virtual {v4, v2, v5, v1}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;Lb3/v;)V

    .line 660
    .line 661
    .line 662
    new-instance v1, Lb3/e0;

    .line 663
    .line 664
    const/4 v9, 0x4

    .line 665
    invoke-direct {v1, v9}, Lb3/e0;-><init>(I)V

    .line 666
    .line 667
    .line 668
    invoke-virtual {v4, v2, v0, v1}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;Lb3/v;)V

    .line 669
    .line 670
    .line 671
    new-instance v1, Lb3/a;

    .line 672
    .line 673
    invoke-virtual {v6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 674
    .line 675
    .line 676
    move-result-object v2

    .line 677
    const/4 v9, 0x1

    .line 678
    invoke-direct {v1, v2, v9}, Lb3/a;-><init>(Landroid/content/res/AssetManager;I)V

    .line 679
    .line 680
    .line 681
    invoke-virtual {v4, v7, v8, v1}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;Lb3/v;)V

    .line 682
    .line 683
    .line 684
    new-instance v1, Lb3/a;

    .line 685
    .line 686
    invoke-virtual {v6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 687
    .line 688
    .line 689
    move-result-object v2

    .line 690
    const/4 v9, 0x0

    .line 691
    invoke-direct {v1, v2, v9}, Lb3/a;-><init>(Landroid/content/res/AssetManager;I)V

    .line 692
    .line 693
    .line 694
    invoke-virtual {v4, v7, v0, v1}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;Lb3/v;)V

    .line 695
    .line 696
    .line 697
    new-instance v1, Lb3/h;

    .line 698
    .line 699
    const/4 v2, 0x6

    .line 700
    invoke-direct {v1, v6, v2}, Lb3/h;-><init>(Landroid/content/Context;I)V

    .line 701
    .line 702
    .line 703
    invoke-virtual {v4, v7, v8, v1}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;Lb3/v;)V

    .line 704
    .line 705
    .line 706
    new-instance v1, Lb3/h;

    .line 707
    .line 708
    const/4 v2, 0x7

    .line 709
    invoke-direct {v1, v6, v2}, Lb3/h;-><init>(Landroid/content/Context;I)V

    .line 710
    .line 711
    .line 712
    invoke-virtual {v4, v7, v8, v1}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;Lb3/v;)V

    .line 713
    .line 714
    .line 715
    const/16 v1, 0x1d

    .line 716
    .line 717
    move/from16 v2, v17

    .line 718
    .line 719
    if-lt v2, v1, :cond_5

    .line 720
    .line 721
    new-instance v1, Lc3/b;

    .line 722
    .line 723
    invoke-direct {v1, v6, v8}, Lc3/b;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 724
    .line 725
    .line 726
    invoke-virtual {v4, v7, v8, v1}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;Lb3/v;)V

    .line 727
    .line 728
    .line 729
    new-instance v1, Lc3/b;

    .line 730
    .line 731
    invoke-direct {v1, v6, v5}, Lc3/b;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 732
    .line 733
    .line 734
    invoke-virtual {v4, v7, v5, v1}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;Lb3/v;)V

    .line 735
    .line 736
    .line 737
    :cond_5
    new-instance v1, Lb3/g0;

    .line 738
    .line 739
    const/4 v9, 0x2

    .line 740
    move-object/from16 v10, v21

    .line 741
    .line 742
    invoke-direct {v1, v10, v9}, Lb3/g0;-><init>(Landroid/content/ContentResolver;I)V

    .line 743
    .line 744
    .line 745
    invoke-virtual {v4, v7, v8, v1}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;Lb3/v;)V

    .line 746
    .line 747
    .line 748
    new-instance v1, Lb3/g0;

    .line 749
    .line 750
    const/4 v9, 0x1

    .line 751
    invoke-direct {v1, v10, v9}, Lb3/g0;-><init>(Landroid/content/ContentResolver;I)V

    .line 752
    .line 753
    .line 754
    invoke-virtual {v4, v7, v5, v1}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;Lb3/v;)V

    .line 755
    .line 756
    .line 757
    new-instance v1, Lb3/g0;

    .line 758
    .line 759
    const/4 v5, 0x0

    .line 760
    invoke-direct {v1, v10, v5}, Lb3/g0;-><init>(Landroid/content/ContentResolver;I)V

    .line 761
    .line 762
    .line 763
    invoke-virtual {v4, v7, v0, v1}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;Lb3/v;)V

    .line 764
    .line 765
    .line 766
    new-instance v0, Lb3/e0;

    .line 767
    .line 768
    const/4 v1, 0x7

    .line 769
    invoke-direct {v0, v1}, Lb3/e0;-><init>(I)V

    .line 770
    .line 771
    .line 772
    invoke-virtual {v4, v7, v8, v0}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;Lb3/v;)V

    .line 773
    .line 774
    .line 775
    new-instance v0, Lc3/e;

    .line 776
    .line 777
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 778
    .line 779
    .line 780
    const-class v1, Ljava/net/URL;

    .line 781
    .line 782
    invoke-virtual {v4, v1, v8, v0}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;Lb3/v;)V

    .line 783
    .line 784
    .line 785
    new-instance v0, Lb3/h;

    .line 786
    .line 787
    const/4 v1, 0x3

    .line 788
    invoke-direct {v0, v6, v1}, Lb3/h;-><init>(Landroid/content/Context;I)V

    .line 789
    .line 790
    .line 791
    invoke-virtual {v4, v7, v12, v0}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;Lb3/v;)V

    .line 792
    .line 793
    .line 794
    new-instance v0, Lb3/g;

    .line 795
    .line 796
    const/4 v1, 0x1

    .line 797
    invoke-direct {v0, v1}, Lb3/g;-><init>(I)V

    .line 798
    .line 799
    .line 800
    const-class v1, Lb3/k;

    .line 801
    .line 802
    invoke-virtual {v4, v1, v8, v0}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;Lb3/v;)V

    .line 803
    .line 804
    .line 805
    new-instance v0, Lb3/e0;

    .line 806
    .line 807
    const/4 v1, 0x1

    .line 808
    invoke-direct {v0, v1}, Lb3/e0;-><init>(I)V

    .line 809
    .line 810
    .line 811
    const-class v1, [B

    .line 812
    .line 813
    invoke-virtual {v4, v1, v14, v0}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;Lb3/v;)V

    .line 814
    .line 815
    .line 816
    new-instance v0, Lb3/e0;

    .line 817
    .line 818
    const/4 v5, 0x2

    .line 819
    invoke-direct {v0, v5}, Lb3/e0;-><init>(I)V

    .line 820
    .line 821
    .line 822
    invoke-virtual {v4, v1, v8, v0}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;Lb3/v;)V

    .line 823
    .line 824
    .line 825
    invoke-virtual {v4, v7, v7, v3}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;Lb3/v;)V

    .line 826
    .line 827
    .line 828
    move-object/from16 v0, v25

    .line 829
    .line 830
    invoke-virtual {v4, v0, v0, v3}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;Lb3/v;)V

    .line 831
    .line 832
    .line 833
    new-instance v3, Le3/b0;

    .line 834
    .line 835
    const/4 v5, 0x1

    .line 836
    invoke-direct {v3, v5}, Le3/b0;-><init>(I)V

    .line 837
    .line 838
    .line 839
    move-object/from16 v5, p0

    .line 840
    .line 841
    invoke-virtual {v4, v5, v0, v0, v3}, Lcom/bumptech/glide/j;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lv2/j;)V

    .line 842
    .line 843
    .line 844
    new-instance v3, La0/b;

    .line 845
    .line 846
    const/16 v5, 0x1d

    .line 847
    .line 848
    invoke-direct {v3, v5, v15}, La0/b;-><init>(ILjava/lang/Object;)V

    .line 849
    .line 850
    .line 851
    move-object/from16 v6, v22

    .line 852
    .line 853
    move-object/from16 v5, v23

    .line 854
    .line 855
    invoke-virtual {v4, v5, v6, v3}, Lcom/bumptech/glide/j;->j(Ljava/lang/Class;Ljava/lang/Class;Lj3/a;)V

    .line 856
    .line 857
    .line 858
    move-object/from16 v3, v19

    .line 859
    .line 860
    invoke-virtual {v4, v5, v1, v3}, Lcom/bumptech/glide/j;->j(Ljava/lang/Class;Ljava/lang/Class;Lj3/a;)V

    .line 861
    .line 862
    .line 863
    new-instance v7, La1/b;

    .line 864
    .line 865
    const/16 v8, 0x14

    .line 866
    .line 867
    move-object/from16 v9, v18

    .line 868
    .line 869
    move-object/from16 v10, v20

    .line 870
    .line 871
    invoke-direct {v7, v9, v3, v10, v8}, La1/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 872
    .line 873
    .line 874
    invoke-virtual {v4, v0, v1, v7}, Lcom/bumptech/glide/j;->j(Ljava/lang/Class;Ljava/lang/Class;Lj3/a;)V

    .line 875
    .line 876
    .line 877
    move-object/from16 v0, v16

    .line 878
    .line 879
    invoke-virtual {v4, v0, v1, v10}, Lcom/bumptech/glide/j;->j(Ljava/lang/Class;Ljava/lang/Class;Lj3/a;)V

    .line 880
    .line 881
    .line 882
    const/16 v0, 0x17

    .line 883
    .line 884
    if-lt v2, v0, :cond_6

    .line 885
    .line 886
    new-instance v0, Le3/f0;

    .line 887
    .line 888
    new-instance v1, Lx4/e;

    .line 889
    .line 890
    const/16 v2, 0x9

    .line 891
    .line 892
    invoke-direct {v1, v2}, Lx4/e;-><init>(I)V

    .line 893
    .line 894
    .line 895
    invoke-direct {v0, v9, v1}, Le3/f0;-><init>(Ly2/a;Le3/e0;)V

    .line 896
    .line 897
    .line 898
    const-class v1, Ljava/nio/ByteBuffer;

    .line 899
    .line 900
    const-string v2, "legacy_append"

    .line 901
    .line 902
    invoke-virtual {v4, v2, v1, v5, v0}, Lcom/bumptech/glide/j;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lv2/j;)V

    .line 903
    .line 904
    .line 905
    new-instance v1, Le3/a;

    .line 906
    .line 907
    invoke-direct {v1, v15, v0}, Le3/a;-><init>(Landroid/content/res/Resources;Lv2/j;)V

    .line 908
    .line 909
    .line 910
    const-class v0, Ljava/nio/ByteBuffer;

    .line 911
    .line 912
    const-string v2, "legacy_append"

    .line 913
    .line 914
    invoke-virtual {v4, v2, v0, v6, v1}, Lcom/bumptech/glide/j;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lv2/j;)V

    .line 915
    .line 916
    .line 917
    :cond_6
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 918
    .line 919
    .line 920
    move-result-object v0

    .line 921
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 922
    .line 923
    .line 924
    move-result v1

    .line 925
    if-eqz v1, :cond_7

    .line 926
    .line 927
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 928
    .line 929
    .line 930
    move-result-object v1

    .line 931
    check-cast v1, Ll3/a;

    .line 932
    .line 933
    :try_start_1
    invoke-interface {v1, v4}, Ll3/a;->a(Lcom/bumptech/glide/j;)V
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_0

    .line 934
    .line 935
    .line 936
    goto :goto_3

    .line 937
    :catch_0
    move-exception v0

    .line 938
    move-object v2, v0

    .line 939
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 940
    .line 941
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 942
    .line 943
    .line 944
    move-result-object v1

    .line 945
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 946
    .line 947
    .line 948
    move-result-object v1

    .line 949
    const-string v3, "Attempting to register a Glide v3 module. If you see this, you or one of your dependencies may be including Glide v3 even though you\'re using Glide v4. You\'ll need to find and remove (or update) the offending dependency. The v3 module name is: "

    .line 950
    .line 951
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 952
    .line 953
    .line 954
    move-result-object v1

    .line 955
    invoke-direct {v0, v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 956
    .line 957
    .line 958
    throw v0

    .line 959
    :cond_7
    return-object v4

    .line 960
    :catchall_0
    move-exception v0

    .line 961
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 962
    throw v0
.end method

.method public static m(Lf6/e;FFF)Landroid/animation/AnimatorSet;
    .locals 6

    .line 1
    sget-object v0, Lf6/b;->a:Lf6/b;

    .line 2
    .line 3
    sget-object v1, Lf6/a;->b:Lf6/a;

    .line 4
    .line 5
    new-instance v2, Lf6/d;

    .line 6
    .line 7
    invoke-direct {v2, p1, p2, p3}, Lf6/d;-><init>(FFF)V

    .line 8
    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    new-array v4, v3, [Lf6/d;

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    aput-object v2, v4, v5

    .line 15
    .line 16
    invoke-static {p0, v0, v1, v4}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {p0}, Lf6/e;->getRevealInfo()Lf6/d;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    iget v1, v1, Lf6/d;->c:F

    .line 27
    .line 28
    check-cast p0, Landroid/view/View;

    .line 29
    .line 30
    float-to-int p1, p1

    .line 31
    float-to-int p2, p2

    .line 32
    invoke-static {p0, p1, p2, v1, p3}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    new-instance p1, Landroid/animation/AnimatorSet;

    .line 37
    .line 38
    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 39
    .line 40
    .line 41
    const/4 p2, 0x2

    .line 42
    new-array p2, p2, [Landroid/animation/Animator;

    .line 43
    .line 44
    aput-object v0, p2, v5

    .line 45
    .line 46
    aput-object p0, p2, v3

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 49
    .line 50
    .line 51
    return-object p1

    .line 52
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 53
    .line 54
    const-string p1, "Caller must set a non-null RevealInfo before calling this."

    .line 55
    .line 56
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p0
.end method

.method public static n(I)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ""

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/16 v2, 0xd

    .line 27
    .line 28
    if-ge v1, v2, :cond_0

    .line 29
    .line 30
    const-string v1, "0"

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v0, "-"

    .line 46
    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const/16 p0, 0x20

    .line 54
    .line 55
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0
.end method

.method public static final o(Lokio/FileSystem;Lokio/Path;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lokio/FileSystem;->list(Lokio/Path;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 v0, 0x0

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lokio/Path;

    .line 21
    .line 22
    :try_start_1
    invoke-virtual {p0, v1}, Lokio/FileSystem;->metadata(Lokio/Path;)Lokio/FileMetadata;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2}, Lokio/FileMetadata;->isDirectory()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    invoke-static {p0, v1}, Lo9/e;->o(Lokio/FileSystem;Lokio/Path;)V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :catch_0
    move-exception v1

    .line 37
    goto :goto_2

    .line 38
    :cond_1
    :goto_1
    invoke-virtual {p0, v1}, Lokio/FileSystem;->delete(Lokio/Path;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :goto_2
    if-nez v0, :cond_0

    .line 43
    .line 44
    move-object v0, v1

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    if-nez v0, :cond_3

    .line 47
    .line 48
    return-void

    .line 49
    :cond_3
    throw v0

    .line 50
    :catch_1
    return-void
.end method

.method public static p(ILandroid/view/View;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {v0, p0, p1}, Lcom/bumptech/glide/c;->m(Landroid/content/Context;ILjava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public static q(Landroid/content/Context;II)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/bumptech/glide/c;->l(Landroid/content/Context;I)Landroid/util/TypedValue;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    iget p0, p0, Landroid/util/TypedValue;->data:I

    .line 8
    .line 9
    return p0

    .line 10
    :cond_0
    return p2
.end method

.method public static r([B)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_2

    .line 3
    .line 4
    array-length v1, p0

    .line 5
    const/16 v2, 0xf

    .line 6
    .line 7
    if-le v1, v2, :cond_2

    .line 8
    .line 9
    const/16 v1, 0xd

    .line 10
    .line 11
    aget-byte v1, p0, v1

    .line 12
    .line 13
    const/16 v2, 0x2d

    .line 14
    .line 15
    if-ne v1, v2, :cond_2

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    :goto_0
    array-length v2, p0

    .line 19
    if-ge v1, v2, :cond_1

    .line 20
    .line 21
    aget-byte v2, p0, v1

    .line 22
    .line 23
    const/16 v3, 0x20

    .line 24
    .line 25
    if-ne v2, v3, :cond_0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v1, -0x1

    .line 32
    :goto_1
    const/16 p0, 0xe

    .line 33
    .line 34
    if-le v1, p0, :cond_2

    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    :cond_2
    return v0
.end method

.method public static s(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 3

    .line 1
    const/16 v0, 0x11

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eq p0, v0, :cond_9

    .line 6
    .line 7
    const/16 v0, 0x21

    .line 8
    .line 9
    if-eq p0, v0, :cond_6

    .line 10
    .line 11
    const/16 v0, 0x42

    .line 12
    .line 13
    if-eq p0, v0, :cond_3

    .line 14
    .line 15
    const/16 v0, 0x82

    .line 16
    .line 17
    if-ne p0, v0, :cond_2

    .line 18
    .line 19
    iget p0, p1, Landroid/graphics/Rect;->top:I

    .line 20
    .line 21
    iget v0, p2, Landroid/graphics/Rect;->top:I

    .line 22
    .line 23
    if-lt p0, v0, :cond_0

    .line 24
    .line 25
    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    .line 26
    .line 27
    if-gt p0, v0, :cond_1

    .line 28
    .line 29
    :cond_0
    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    .line 30
    .line 31
    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    .line 32
    .line 33
    if-ge p0, p1, :cond_1

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    :cond_1
    return v1

    .line 37
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 38
    .line 39
    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    .line 40
    .line 41
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p0

    .line 45
    :cond_3
    iget p0, p1, Landroid/graphics/Rect;->left:I

    .line 46
    .line 47
    iget v0, p2, Landroid/graphics/Rect;->left:I

    .line 48
    .line 49
    if-lt p0, v0, :cond_4

    .line 50
    .line 51
    iget p0, p1, Landroid/graphics/Rect;->right:I

    .line 52
    .line 53
    if-gt p0, v0, :cond_5

    .line 54
    .line 55
    :cond_4
    iget p0, p1, Landroid/graphics/Rect;->right:I

    .line 56
    .line 57
    iget p1, p2, Landroid/graphics/Rect;->right:I

    .line 58
    .line 59
    if-ge p0, p1, :cond_5

    .line 60
    .line 61
    const/4 v1, 0x1

    .line 62
    :cond_5
    return v1

    .line 63
    :cond_6
    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    .line 64
    .line 65
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 66
    .line 67
    if-gt p0, v0, :cond_7

    .line 68
    .line 69
    iget p0, p1, Landroid/graphics/Rect;->top:I

    .line 70
    .line 71
    if-lt p0, v0, :cond_8

    .line 72
    .line 73
    :cond_7
    iget p0, p1, Landroid/graphics/Rect;->top:I

    .line 74
    .line 75
    iget p1, p2, Landroid/graphics/Rect;->top:I

    .line 76
    .line 77
    if-le p0, p1, :cond_8

    .line 78
    .line 79
    const/4 v1, 0x1

    .line 80
    :cond_8
    return v1

    .line 81
    :cond_9
    iget p0, p1, Landroid/graphics/Rect;->right:I

    .line 82
    .line 83
    iget v0, p2, Landroid/graphics/Rect;->right:I

    .line 84
    .line 85
    if-gt p0, v0, :cond_a

    .line 86
    .line 87
    iget p0, p1, Landroid/graphics/Rect;->left:I

    .line 88
    .line 89
    if-lt p0, v0, :cond_b

    .line 90
    .line 91
    :cond_a
    iget p0, p1, Landroid/graphics/Rect;->left:I

    .line 92
    .line 93
    iget p1, p2, Landroid/graphics/Rect;->left:I

    .line 94
    .line 95
    if-le p0, p1, :cond_b

    .line 96
    .line 97
    const/4 v1, 0x1

    .line 98
    :cond_b
    return v1
.end method

.method public static t(I)Z
    .locals 4

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-static {p0}, Lf0/a;->d(I)D

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .line 8
    .line 9
    cmpl-double p0, v0, v2

    .line 10
    .line 11
    if-lez p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method

.method public static u([B)Z
    .locals 12

    .line 1
    invoke-static {p0}, Lo9/e;->r([B)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    new-instance v0, Ljava/lang/String;

    .line 9
    .line 10
    const/16 v2, 0xd

    .line 11
    .line 12
    invoke-static {p0, v1, v2}, Lo9/e;->k([BII)[B

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    .line 17
    .line 18
    .line 19
    new-instance v2, Ljava/lang/String;

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    :goto_0
    array-length v4, p0

    .line 23
    if-ge v3, v4, :cond_1

    .line 24
    .line 25
    aget-byte v4, p0, v3

    .line 26
    .line 27
    const/16 v5, 0x20

    .line 28
    .line 29
    if-ne v4, v5, :cond_0

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 v3, -0x1

    .line 36
    :goto_1
    const/16 v4, 0xe

    .line 37
    .line 38
    invoke-static {p0, v4, v3}, Lo9/e;->k([BII)[B

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-direct {v2, p0}, Ljava/lang/String;-><init>([B)V

    .line 43
    .line 44
    .line 45
    filled-new-array {v0, v2}, [Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    goto :goto_2

    .line 50
    :cond_2
    const/4 p0, 0x0

    .line 51
    :goto_2
    if-eqz p0, :cond_4

    .line 52
    .line 53
    array-length v0, p0

    .line 54
    const/4 v2, 0x2

    .line 55
    if-ne v0, v2, :cond_4

    .line 56
    .line 57
    aget-object v0, p0, v1

    .line 58
    .line 59
    :goto_3
    const-string v2, "0"

    .line 60
    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    const/4 v3, 0x1

    .line 66
    if-eqz v2, :cond_3

    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    goto :goto_3

    .line 77
    :cond_3
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 82
    .line 83
    .line 84
    move-result-wide v4

    .line 85
    aget-object p0, p0, v3

    .line 86
    .line 87
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 92
    .line 93
    .line 94
    move-result-wide v6

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 96
    .line 97
    .line 98
    move-result-wide v8

    .line 99
    const-wide/16 v10, 0x3e8

    .line 100
    .line 101
    mul-long v6, v6, v10

    .line 102
    .line 103
    add-long/2addr v6, v4

    .line 104
    cmp-long p0, v8, v6

    .line 105
    .line 106
    if-lez p0, :cond_4

    .line 107
    .line 108
    return v3

    .line 109
    :cond_4
    return v1
.end method

.method public static v(Landroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Lo9/e;->a:Ljava/lang/Boolean;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "android.hardware.type.watch"

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    sput-object p0, Lo9/e;->a:Ljava/lang/Boolean;

    .line 20
    .line 21
    :cond_0
    sget-object p0, Lo9/e;->a:Ljava/lang/Boolean;

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0
.end method

.method public static w(Landroid/content/Context;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Lo9/e;->v(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 8
    .line 9
    const/16 v1, 0x18

    .line 10
    .line 11
    if-lt v0, v1, :cond_2

    .line 12
    .line 13
    :cond_0
    sget-object v0, Lo9/e;->b:Ljava/lang/Boolean;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const-string v0, "cn.google"

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    sput-object p0, Lo9/e;->b:Ljava/lang/Boolean;

    .line 32
    .line 33
    :cond_1
    sget-object p0, Lo9/e;->b:Ljava/lang/Boolean;

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-eqz p0, :cond_3

    .line 40
    .line 41
    invoke-static {}, Lu7/d;->t()Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    if-eqz p0, :cond_2

    .line 46
    .line 47
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 48
    .line 49
    const/16 v0, 0x1e

    .line 50
    .line 51
    if-lt p0, v0, :cond_3

    .line 52
    .line 53
    :cond_2
    const/4 p0, 0x1

    .line 54
    return p0

    .line 55
    :cond_3
    const/4 p0, 0x0

    .line 56
    return p0
.end method

.method public static x(FII)I
    .locals 1

    .line 1
    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    mul-float v0, v0, p0

    .line 7
    .line 8
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    invoke-static {p2, p0}, Lf0/a;->h(II)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    invoke-static {p0, p1}, Lf0/a;->f(II)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0
.end method

.method public static y(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 1

    .line 1
    const/16 v0, 0x11

    .line 2
    .line 3
    if-eq p0, v0, :cond_3

    .line 4
    .line 5
    const/16 v0, 0x21

    .line 6
    .line 7
    if-eq p0, v0, :cond_2

    .line 8
    .line 9
    const/16 v0, 0x42

    .line 10
    .line 11
    if-eq p0, v0, :cond_1

    .line 12
    .line 13
    const/16 v0, 0x82

    .line 14
    .line 15
    if-ne p0, v0, :cond_0

    .line 16
    .line 17
    iget p0, p2, Landroid/graphics/Rect;->top:I

    .line 18
    .line 19
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 20
    .line 21
    :goto_0
    sub-int/2addr p0, p1

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 24
    .line 25
    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    .line 26
    .line 27
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p0

    .line 31
    :cond_1
    iget p0, p2, Landroid/graphics/Rect;->left:I

    .line 32
    .line 33
    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    iget p0, p1, Landroid/graphics/Rect;->top:I

    .line 37
    .line 38
    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_3
    iget p0, p1, Landroid/graphics/Rect;->left:I

    .line 42
    .line 43
    iget p1, p2, Landroid/graphics/Rect;->right:I

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :goto_1
    const/4 p1, 0x0

    .line 47
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    return p0
.end method

.method public static z(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 1

    .line 1
    const/16 v0, 0x11

    .line 2
    .line 3
    if-eq p0, v0, :cond_2

    .line 4
    .line 5
    const/16 v0, 0x21

    .line 6
    .line 7
    if-eq p0, v0, :cond_1

    .line 8
    .line 9
    const/16 v0, 0x42

    .line 10
    .line 11
    if-eq p0, v0, :cond_2

    .line 12
    .line 13
    const/16 v0, 0x82

    .line 14
    .line 15
    if-ne p0, v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 19
    .line 20
    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    .line 21
    .line 22
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p0

    .line 26
    :cond_1
    :goto_0
    iget p0, p1, Landroid/graphics/Rect;->left:I

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    div-int/lit8 p1, p1, 0x2

    .line 33
    .line 34
    add-int/2addr p1, p0

    .line 35
    iget p0, p2, Landroid/graphics/Rect;->left:I

    .line 36
    .line 37
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    div-int/lit8 p2, p2, 0x2

    .line 42
    .line 43
    add-int/2addr p2, p0

    .line 44
    sub-int/2addr p1, p2

    .line 45
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    return p0

    .line 50
    :cond_2
    iget p0, p1, Landroid/graphics/Rect;->top:I

    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    div-int/lit8 p1, p1, 0x2

    .line 57
    .line 58
    add-int/2addr p1, p0

    .line 59
    iget p0, p2, Landroid/graphics/Rect;->top:I

    .line 60
    .line 61
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    div-int/lit8 p2, p2, 0x2

    .line 66
    .line 67
    add-int/2addr p2, p0

    .line 68
    sub-int/2addr p1, p2

    .line 69
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    return p0
.end method


# virtual methods
.method public abstract B(I)Landroid/view/View;
.end method

.method public abstract C()Z
.end method

.method public D(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V
    .locals 0

    .line 1
    return-void
.end method

.method public E()V
    .locals 0

    .line 1
    return-void
.end method

.method public F(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public G(Z)V
    .locals 0

    .line 1
    return-void
.end method
