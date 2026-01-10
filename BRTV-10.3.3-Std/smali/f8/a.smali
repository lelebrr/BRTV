.class public final Lf8/a;
.super Lj9/j;
.source "MyApplication"

# interfaces
.implements Li9/l;


# instance fields
.field public final synthetic a:Lf8/b;

.field public final synthetic b:Lorg/bitspark/android/SpkApplication;


# direct methods
.method public constructor <init>(Lf8/b;Lorg/bitspark/android/SpkApplication;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf8/a;->a:Lf8/b;

    .line 2
    .line 3
    iput-object p2, p0, Lf8/a;->b:Lorg/bitspark/android/SpkApplication;

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
    .locals 4

    .line 1
    check-cast p1, Landroid/content/res/Configuration;

    .line 2
    .line 3
    const-string v0, "it"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lj9/i;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lf8/a;->a:Lf8/b;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/bumptech/glide/d;->q(Landroid/content/res/Configuration;)Ljava/util/Locale;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, v0, Lf8/b;->a:Ljava/util/Locale;

    .line 15
    .line 16
    iget-object p1, v0, Lf8/b;->b:La7/f;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    iget-object v2, p1, La7/f;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v2, Landroid/content/SharedPreferences;

    .line 22
    .line 23
    const-string v3, "follow_system_locale_key"

    .line 24
    .line 25
    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    iget-object v2, p0, Lf8/a;->b:Lorg/bitspark/android/SpkApplication;

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    iget-object p1, v0, Lf8/b;->a:Ljava/util/Locale;

    .line 34
    .line 35
    invoke-virtual {v0, v2, p1}, Lf8/b;->a(Landroid/content/Context;Ljava/util/Locale;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {p1}, La7/f;->B()Ljava/util/Locale;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const-string v0, "locale"

    .line 44
    .line 45
    invoke-static {p1, v0}, Lj9/i;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v2, p1}, Lu6/e;->j(Landroid/content/Context;Ljava/util/Locale;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    if-eq v0, v2, :cond_1

    .line 56
    .line 57
    const-string v1, "appContext"

    .line 58
    .line 59
    invoke-static {v0, v1}, Lj9/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-static {v0, p1}, Lu6/e;->j(Landroid/content/Context;Ljava/util/Locale;)V

    .line 63
    .line 64
    .line 65
    :cond_1
    :goto_0
    sget-object p1, Lw8/l;->a:Lw8/l;

    .line 66
    .line 67
    return-object p1
.end method
