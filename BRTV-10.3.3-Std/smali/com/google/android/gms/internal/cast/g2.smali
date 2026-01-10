.class public final Lcom/google/android/gms/internal/cast/g2;
.super Ljava/lang/Object;
.source "MyApplication"


# static fields
.field public static final i:Lv4/b;


# instance fields
.field public final a:Lcom/google/android/gms/internal/cast/m1;

.field public final b:Lcom/google/android/gms/internal/cast/h;

.field public final c:Lcom/google/android/gms/internal/cast/j2;

.field public final d:Lcom/google/android/gms/internal/cast/z;

.field public final e:Lcom/google/android/gms/internal/cast/x0;

.field public final f:Landroid/content/SharedPreferences;

.field public g:Lcom/google/android/gms/internal/cast/h2;

.field public h:Lq4/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lv4/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "ApplicationAnalytics"

    .line 5
    .line 6
    invoke-direct {v0, v2, v1}, Lv4/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/google/android/gms/internal/cast/g2;->i:Lv4/b;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/SharedPreferences;Lcom/google/android/gms/internal/cast/m1;Lcom/google/android/gms/internal/cast/h;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/g2;->f:Landroid/content/SharedPreferences;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/cast/g2;->a:Lcom/google/android/gms/internal/cast/m1;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/cast/g2;->b:Lcom/google/android/gms/internal/cast/h;

    .line 9
    .line 10
    new-instance p1, Lcom/google/android/gms/internal/cast/j2;

    .line 11
    .line 12
    invoke-direct {p1, p5, p4}, Lcom/google/android/gms/internal/cast/j2;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/g2;->c:Lcom/google/android/gms/internal/cast/j2;

    .line 16
    .line 17
    new-instance p1, Lcom/google/android/gms/internal/cast/x0;

    .line 18
    .line 19
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    const/4 p3, 0x0

    .line 24
    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/internal/cast/x0;-><init>(Landroid/os/Looper;I)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/g2;->e:Lcom/google/android/gms/internal/cast/x0;

    .line 28
    .line 29
    new-instance p1, Lcom/google/android/gms/internal/cast/z;

    .line 30
    .line 31
    const/4 p2, 0x2

    .line 32
    invoke-direct {p1, p2, p0}, Lcom/google/android/gms/internal/cast/z;-><init>(ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/g2;->d:Lcom/google/android/gms/internal/cast/z;

    .line 36
    .line 37
    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/cast/g2;I)V
    .locals 3

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    new-array v1, v1, [Ljava/lang/Object;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    aput-object v0, v1, v2

    .line 10
    .line 11
    const-string v0, "log session ended with error = %d"

    .line 12
    .line 13
    sget-object v2, Lcom/google/android/gms/internal/cast/g2;->i:Lv4/b;

    .line 14
    .line 15
    invoke-virtual {v2, v0, v1}, Lv4/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/g2;->c()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/g2;->c:Lcom/google/android/gms/internal/cast/j2;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/g2;->g:Lcom/google/android/gms/internal/cast/h2;

    .line 24
    .line 25
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/cast/j2;->a(Lcom/google/android/gms/internal/cast/h2;I)Lcom/google/android/gms/internal/cast/c3;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/g2;->a:Lcom/google/android/gms/internal/cast/m1;

    .line 30
    .line 31
    const/16 v1, 0xe4

    .line 32
    .line 33
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/cast/m1;->a(Lcom/google/android/gms/internal/cast/c3;I)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/g2;->e:Lcom/google/android/gms/internal/cast/x0;

    .line 37
    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/g2;->d:Lcom/google/android/gms/internal/cast/z;

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 41
    .line 42
    .line 43
    const/4 p1, 0x0

    .line 44
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/g2;->g:Lcom/google/android/gms/internal/cast/h2;

    .line 45
    .line 46
    return-void
.end method

.method public static b(Lcom/google/android/gms/internal/cast/g2;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/g2;->g:Lcom/google/android/gms/internal/cast/h2;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/google/android/gms/internal/cast/g2;->f:Landroid/content/SharedPreferences;

    .line 7
    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    goto/16 :goto_0

    .line 11
    .line 12
    :cond_0
    const/4 v1, 0x1

    .line 13
    new-array v1, v1, [Ljava/lang/Object;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    aput-object p0, v1, v2

    .line 17
    .line 18
    const-string v2, "Save the ApplicationAnalyticsSession to SharedPreferences %s"

    .line 19
    .line 20
    sget-object v3, Lcom/google/android/gms/internal/cast/h2;->q:Lv4/b;

    .line 21
    .line 22
    invoke-virtual {v3, v2, v1}, Lv4/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    iget-object v1, v0, Lcom/google/android/gms/internal/cast/h2;->b:Ljava/lang/String;

    .line 30
    .line 31
    const-string v2, "application_id"

    .line 32
    .line 33
    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 34
    .line 35
    .line 36
    iget-object v1, v0, Lcom/google/android/gms/internal/cast/h2;->c:Ljava/lang/String;

    .line 37
    .line 38
    const-string v2, "receiver_metrics_id"

    .line 39
    .line 40
    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 41
    .line 42
    .line 43
    iget-wide v1, v0, Lcom/google/android/gms/internal/cast/h2;->d:J

    .line 44
    .line 45
    const-string v3, "analytics_session_id"

    .line 46
    .line 47
    invoke-interface {p0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 48
    .line 49
    .line 50
    iget v1, v0, Lcom/google/android/gms/internal/cast/h2;->e:I

    .line 51
    .line 52
    const-string v2, "event_sequence_number"

    .line 53
    .line 54
    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 55
    .line 56
    .line 57
    iget-object v1, v0, Lcom/google/android/gms/internal/cast/h2;->f:Ljava/lang/String;

    .line 58
    .line 59
    const-string v2, "receiver_session_id"

    .line 60
    .line 61
    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 62
    .line 63
    .line 64
    iget v1, v0, Lcom/google/android/gms/internal/cast/h2;->g:I

    .line 65
    .line 66
    const-string v2, "device_capabilities"

    .line 67
    .line 68
    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 69
    .line 70
    .line 71
    iget-object v1, v0, Lcom/google/android/gms/internal/cast/h2;->h:Ljava/lang/String;

    .line 72
    .line 73
    const-string v2, "device_model_name"

    .line 74
    .line 75
    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 76
    .line 77
    .line 78
    iget-object v1, v0, Lcom/google/android/gms/internal/cast/h2;->i:Ljava/lang/String;

    .line 79
    .line 80
    const-string v2, "manufacturer"

    .line 81
    .line 82
    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 83
    .line 84
    .line 85
    iget-object v1, v0, Lcom/google/android/gms/internal/cast/h2;->j:Ljava/lang/String;

    .line 86
    .line 87
    const-string v2, "product_name"

    .line 88
    .line 89
    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 90
    .line 91
    .line 92
    iget-object v1, v0, Lcom/google/android/gms/internal/cast/h2;->k:Ljava/lang/String;

    .line 93
    .line 94
    const-string v2, "build_type"

    .line 95
    .line 96
    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 97
    .line 98
    .line 99
    iget-object v1, v0, Lcom/google/android/gms/internal/cast/h2;->l:Ljava/lang/String;

    .line 100
    .line 101
    const-string v2, "cast_build_version"

    .line 102
    .line 103
    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 104
    .line 105
    .line 106
    iget-object v1, v0, Lcom/google/android/gms/internal/cast/h2;->m:Ljava/lang/String;

    .line 107
    .line 108
    const-string v2, "system_build_number"

    .line 109
    .line 110
    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 111
    .line 112
    .line 113
    iget v1, v0, Lcom/google/android/gms/internal/cast/h2;->n:I

    .line 114
    .line 115
    const-string v2, "device_category"

    .line 116
    .line 117
    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 118
    .line 119
    .line 120
    iget v1, v0, Lcom/google/android/gms/internal/cast/h2;->p:I

    .line 121
    .line 122
    const-string v2, "analytics_session_start_type"

    .line 123
    .line 124
    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 125
    .line 126
    .line 127
    iget-boolean v0, v0, Lcom/google/android/gms/internal/cast/h2;->o:Z

    .line 128
    .line 129
    const-string v1, "is_output_switcher_enabled"

    .line 130
    .line 131
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 132
    .line 133
    .line 134
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 135
    .line 136
    .line 137
    :goto_0
    return-void
.end method


# virtual methods
.method public final c()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/g2;->g()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/g2;->h:Lq4/b;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lq4/b;->e()Lcom/google/android/gms/cast/CastDevice;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/g2;->g:Lcom/google/android/gms/internal/cast/h2;

    .line 20
    .line 21
    iget-object v1, v1, Lcom/google/android/gms/internal/cast/h2;->c:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v2, v0, Lcom/google/android/gms/cast/CastDevice;->l:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/cast/g2;->f(Lcom/google/android/gms/cast/CastDevice;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/g2;->g:Lcom/google/android/gms/internal/cast/h2;

    .line 35
    .line 36
    invoke-static {v0}, Lb5/l;->e(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_2
    const/4 v0, 0x0

    .line 41
    new-array v0, v0, [Ljava/lang/Object;

    .line 42
    .line 43
    sget-object v1, Lcom/google/android/gms/internal/cast/g2;->i:Lv4/b;

    .line 44
    .line 45
    iget-object v2, v1, Lv4/b;->a:Ljava/lang/String;

    .line 46
    .line 47
    const-string v3, "The analyticsSession should not be null for logging. Create a dummy one."

    .line 48
    .line 49
    invoke-virtual {v1, v3, v0}, Lv4/b;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/g2;->d()V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public final d()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    sget-object v2, Lcom/google/android/gms/internal/cast/g2;->i:Lv4/b;

    .line 5
    .line 6
    const-string v3, "Create a new ApplicationAnalyticsSession based on CastSession"

    .line 7
    .line 8
    invoke-virtual {v2, v3, v1}, Lv4/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/g2;->b:Lcom/google/android/gms/internal/cast/h;

    .line 12
    .line 13
    new-instance v2, Lcom/google/android/gms/internal/cast/h2;

    .line 14
    .line 15
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/cast/h2;-><init>(Lcom/google/android/gms/internal/cast/h;)V

    .line 16
    .line 17
    .line 18
    sget-wide v3, Lcom/google/android/gms/internal/cast/h2;->r:J

    .line 19
    .line 20
    const-wide/16 v5, 0x1

    .line 21
    .line 22
    add-long/2addr v3, v5

    .line 23
    sput-wide v3, Lcom/google/android/gms/internal/cast/h2;->r:J

    .line 24
    .line 25
    iput-object v2, p0, Lcom/google/android/gms/internal/cast/g2;->g:Lcom/google/android/gms/internal/cast/h2;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/g2;->h:Lq4/b;

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    iget-object v1, v1, Lq4/b;->g:Lcom/google/android/gms/internal/cast/u;

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/google/android/gms/internal/cast/u;->y()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 v1, 0x0

    .line 42
    :goto_0
    iput-boolean v1, v2, Lcom/google/android/gms/internal/cast/h2;->o:Z

    .line 43
    .line 44
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/g2;->g:Lcom/google/android/gms/internal/cast/h2;

    .line 45
    .line 46
    invoke-static {v1}, Lb5/l;->e(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    sget-object v2, Lq4/a;->j:Lv4/b;

    .line 50
    .line 51
    const-string v2, "Must be called from the main thread."

    .line 52
    .line 53
    invoke-static {v2}, Lb5/l;->b(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    sget-object v3, Lq4/a;->l:Lq4/a;

    .line 57
    .line 58
    invoke-static {v3}, Lb5/l;->e(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-static {v2}, Lb5/l;->b(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object v2, v3, Lq4/a;->d:Lcom/google/android/gms/cast/framework/CastOptions;

    .line 65
    .line 66
    iget-object v2, v2, Lcom/google/android/gms/cast/framework/CastOptions;->a:Ljava/lang/String;

    .line 67
    .line 68
    iput-object v2, v1, Lcom/google/android/gms/internal/cast/h2;->b:Ljava/lang/String;

    .line 69
    .line 70
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/g2;->h:Lq4/b;

    .line 71
    .line 72
    if-nez v1, :cond_1

    .line 73
    .line 74
    const/4 v1, 0x0

    .line 75
    goto :goto_1

    .line 76
    :cond_1
    invoke-virtual {v1}, Lq4/b;->e()Lcom/google/android/gms/cast/CastDevice;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    :goto_1
    if-eqz v1, :cond_2

    .line 81
    .line 82
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/cast/g2;->f(Lcom/google/android/gms/cast/CastDevice;)V

    .line 83
    .line 84
    .line 85
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/g2;->g:Lcom/google/android/gms/internal/cast/h2;

    .line 86
    .line 87
    invoke-static {v1}, Lb5/l;->e(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    iget-object v2, p0, Lcom/google/android/gms/internal/cast/g2;->h:Lq4/b;

    .line 91
    .line 92
    if-nez v2, :cond_3

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_3
    invoke-virtual {v2}, Lq4/e;->c()I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    :goto_2
    iput v0, v1, Lcom/google/android/gms/internal/cast/h2;->p:I

    .line 100
    .line 101
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/g2;->g:Lcom/google/android/gms/internal/cast/h2;

    .line 102
    .line 103
    invoke-static {v0}, Lb5/l;->e(Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method public final e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/g2;->e:Lcom/google/android/gms/internal/cast/x0;

    .line 2
    .line 3
    invoke-static {v0}, Lb5/l;->e(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/g2;->d:Lcom/google/android/gms/internal/cast/z;

    .line 7
    .line 8
    invoke-static {v1}, Lb5/l;->e(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    const-wide/32 v2, 0x493e0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final f(Lcom/google/android/gms/cast/CastDevice;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/g2;->g:Lcom/google/android/gms/internal/cast/h2;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p1, Lcom/google/android/gms/cast/CastDevice;->l:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v1, v0, Lcom/google/android/gms/internal/cast/h2;->c:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v1, p1, Lcom/google/android/gms/cast/CastDevice;->i:Landroidx/leanback/widget/o;

    .line 11
    .line 12
    iget v1, v1, Landroidx/leanback/widget/o;->a:I

    .line 13
    .line 14
    iput v1, v0, Lcom/google/android/gms/internal/cast/h2;->g:I

    .line 15
    .line 16
    iget-object v1, p1, Lcom/google/android/gms/cast/CastDevice;->e:Ljava/lang/String;

    .line 17
    .line 18
    iput-object v1, v0, Lcom/google/android/gms/internal/cast/h2;->h:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/google/android/gms/cast/CastDevice;->m()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    iput v1, v0, Lcom/google/android/gms/internal/cast/h2;->n:I

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/google/android/gms/cast/CastDevice;->n()Lcom/google/android/gms/cast/internal/zzaa;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-eqz p1, :cond_5

    .line 31
    .line 32
    iget-object v1, p1, Lcom/google/android/gms/cast/internal/zzaa;->d:Ljava/lang/String;

    .line 33
    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    iput-object v1, v0, Lcom/google/android/gms/internal/cast/h2;->i:Ljava/lang/String;

    .line 37
    .line 38
    :cond_1
    iget-object v1, p1, Lcom/google/android/gms/cast/internal/zzaa;->e:Ljava/lang/String;

    .line 39
    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    iput-object v1, v0, Lcom/google/android/gms/internal/cast/h2;->j:Ljava/lang/String;

    .line 43
    .line 44
    :cond_2
    iget-object v1, p1, Lcom/google/android/gms/cast/internal/zzaa;->f:Ljava/lang/String;

    .line 45
    .line 46
    if-eqz v1, :cond_3

    .line 47
    .line 48
    iput-object v1, v0, Lcom/google/android/gms/internal/cast/h2;->k:Ljava/lang/String;

    .line 49
    .line 50
    :cond_3
    iget-object v1, p1, Lcom/google/android/gms/cast/internal/zzaa;->g:Ljava/lang/String;

    .line 51
    .line 52
    if-eqz v1, :cond_4

    .line 53
    .line 54
    iput-object v1, v0, Lcom/google/android/gms/internal/cast/h2;->l:Ljava/lang/String;

    .line 55
    .line 56
    :cond_4
    iget-object p1, p1, Lcom/google/android/gms/cast/internal/zzaa;->h:Ljava/lang/String;

    .line 57
    .line 58
    if-eqz p1, :cond_5

    .line 59
    .line 60
    iput-object p1, v0, Lcom/google/android/gms/internal/cast/h2;->m:Ljava/lang/String;

    .line 61
    .line 62
    :cond_5
    :goto_0
    return-void
.end method

.method public final g()Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/g2;->g:Lcom/google/android/gms/internal/cast/h2;

    .line 3
    .line 4
    sget-object v2, Lcom/google/android/gms/internal/cast/g2;->i:Lv4/b;

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    new-array v0, v3, [Ljava/lang/Object;

    .line 10
    .line 11
    const-string v1, "The analytics session is null when matching with application ID."

    .line 12
    .line 13
    invoke-virtual {v2, v1, v0}, Lv4/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return v3

    .line 17
    :cond_0
    sget-object v1, Lq4/a;->j:Lv4/b;

    .line 18
    .line 19
    const-string v1, "Must be called from the main thread."

    .line 20
    .line 21
    invoke-static {v1}, Lb5/l;->b(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sget-object v4, Lq4/a;->l:Lq4/a;

    .line 25
    .line 26
    invoke-static {v4}, Lb5/l;->e(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v1}, Lb5/l;->b(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v1, v4, Lq4/a;->d:Lcom/google/android/gms/cast/framework/CastOptions;

    .line 33
    .line 34
    iget-object v1, v1, Lcom/google/android/gms/cast/framework/CastOptions;->a:Ljava/lang/String;

    .line 35
    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    iget-object v4, p0, Lcom/google/android/gms/internal/cast/g2;->g:Lcom/google/android/gms/internal/cast/h2;

    .line 39
    .line 40
    iget-object v4, v4, Lcom/google/android/gms/internal/cast/h2;->b:Ljava/lang/String;

    .line 41
    .line 42
    if-eqz v4, :cond_2

    .line 43
    .line 44
    invoke-static {v4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-nez v4, :cond_1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/g2;->g:Lcom/google/android/gms/internal/cast/h2;

    .line 52
    .line 53
    invoke-static {v1}, Lb5/l;->e(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    return v0

    .line 57
    :cond_2
    :goto_0
    new-array v0, v0, [Ljava/lang/Object;

    .line 58
    .line 59
    aput-object v1, v0, v3

    .line 60
    .line 61
    const-string v1, "The analytics session doesn\'t match the application ID %s"

    .line 62
    .line 63
    invoke-virtual {v2, v1, v0}, Lv4/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    return v3
.end method

.method public final h(Ljava/lang/String;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/g2;->g()Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return v2

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/g2;->g:Lcom/google/android/gms/internal/cast/h2;

    .line 11
    .line 12
    invoke-static {v1}, Lb5/l;->e(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    if-eqz p1, :cond_2

    .line 16
    .line 17
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/g2;->g:Lcom/google/android/gms/internal/cast/h2;

    .line 18
    .line 19
    iget-object v1, v1, Lcom/google/android/gms/internal/cast/h2;->f:Ljava/lang/String;

    .line 20
    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    return v0

    .line 31
    :cond_2
    :goto_0
    new-array v0, v0, [Ljava/lang/Object;

    .line 32
    .line 33
    aput-object p1, v0, v2

    .line 34
    .line 35
    const-string p1, "The analytics session doesn\'t match the receiver session ID %s."

    .line 36
    .line 37
    sget-object v1, Lcom/google/android/gms/internal/cast/g2;->i:Lv4/b;

    .line 38
    .line 39
    invoke-virtual {v1, p1, v0}, Lv4/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    return v2
.end method
