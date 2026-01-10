.class public final Laa/c;
.super Lj9/j;
.source "MyApplication"

# interfaces
.implements Li9/l;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Laa/c;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Laa/c;->b:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1}, Lj9/j;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Laa/c;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Landroid/app/Activity;

    .line 7
    .line 8
    const-string v0, "it"

    .line 9
    .line 10
    invoke-static {p1, v0}, Lj9/i;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Laa/c;->b:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Lf8/b;

    .line 16
    .line 17
    iget-object v0, v0, Lf8/b;->b:La7/f;

    .line 18
    .line 19
    invoke-virtual {v0}, La7/f;->B()Ljava/util/Locale;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "locale"

    .line 24
    .line 25
    invoke-static {v0, v1}, Lj9/i;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p1, v0}, Lu6/e;->j(Landroid/content/Context;Ljava/util/Locale;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    if-eq v1, p1, :cond_0

    .line 36
    .line 37
    const-string v2, "appContext"

    .line 38
    .line 39
    invoke-static {v1, v2}, Lj9/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v1, v0}, Lu6/e;->j(Landroid/content/Context;Ljava/util/Locale;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    const/16 v2, 0x80

    .line 54
    .line 55
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iget v0, v0, Landroid/content/pm/ActivityInfo;->labelRes:I

    .line 60
    .line 61
    if-eqz v0, :cond_1

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catch_0
    move-exception p1

    .line 68
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 69
    .line 70
    .line 71
    :cond_1
    :goto_0
    sget-object p1, Lw8/l;->a:Lw8/l;

    .line 72
    .line 73
    return-object p1

    .line 74
    :pswitch_0
    check-cast p1, Ljava/io/IOException;

    .line 75
    .line 76
    iget-object p1, p0, Laa/c;->b:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast p1, Le2/h;

    .line 79
    .line 80
    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p1, Le2/h;->k:Z

    .line 82
    .line 83
    sget-object p1, Lw8/l;->a:Lw8/l;

    .line 84
    .line 85
    return-object p1

    .line 86
    :pswitch_1
    check-cast p1, Ljava/lang/Throwable;

    .line 87
    .line 88
    iget-object p1, p0, Laa/c;->b:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast p1, Laa/e;

    .line 91
    .line 92
    invoke-virtual {p1}, Laa/e;->b()V

    .line 93
    .line 94
    .line 95
    sget-object p1, Lw8/l;->a:Lw8/l;

    .line 96
    .line 97
    return-object p1

    .line 98
    nop

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
