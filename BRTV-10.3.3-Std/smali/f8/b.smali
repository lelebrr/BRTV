.class public final Lf8/b;
.super Ljava/lang/Object;
.source "MyApplication"


# static fields
.field public static final c:Ljava/util/Locale;

.field public static d:Lf8/b;


# instance fields
.field public a:Ljava/util/Locale;

.field public final b:La7/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "Locale.getDefault()"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lj9/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lf8/b;->c:Ljava/util/Locale;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(La7/f;Lu6/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lf8/b;->b:La7/f;

    .line 5
    .line 6
    sget-object p1, Lf8/b;->c:Ljava/util/Locale;

    .line 7
    .line 8
    iput-object p1, p0, Lf8/b;->a:Ljava/util/Locale;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/util/Locale;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lf8/b;->b:La7/f;

    .line 2
    .line 3
    const-string v1, "locale"

    .line 4
    .line 5
    invoke-static {p2, v1}, Lj9/i;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lorg/json/JSONObject;

    .line 9
    .line 10
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "language"

    .line 14
    .line 15
    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    .line 21
    .line 22
    const-string v2, "country"

    .line 23
    .line 24
    invoke-virtual {p2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 29
    .line 30
    .line 31
    const-string v2, "variant"

    .line 32
    .line 33
    invoke-virtual {p2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    .line 39
    .line 40
    iget-object v0, v0, La7/f;->b:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v0, Landroid/content/SharedPreferences;

    .line 43
    .line 44
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const-string v2, "language_key"

    .line 49
    .line 50
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 59
    .line 60
    .line 61
    const-string v0, "context"

    .line 62
    .line 63
    invoke-static {p1, v0}, Lj9/i;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-static {p1, p2}, Lu6/e;->j(Landroid/content/Context;Ljava/util/Locale;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    if-eq v0, p1, :cond_0

    .line 74
    .line 75
    const-string p1, "appContext"

    .line 76
    .line 77
    invoke-static {v0, p1}, Lj9/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-static {v0, p2}, Lu6/e;->j(Landroid/content/Context;Ljava/util/Locale;)V

    .line 81
    .line 82
    .line 83
    :cond_0
    return-void
.end method
