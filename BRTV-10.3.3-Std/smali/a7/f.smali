.class public final La7/f;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ln0/s;
.implements Ld4/b;
.implements Lcom/tencent/bugly/proguard/ah;
.implements Lv2/k;
.implements Le3/o;
.implements Lk2/f;
.implements Lcom/youth/banner/listener/OnPageChangeListener;
.implements Lfa/n0;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    iput p1, p0, La7/f;->a:I

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .line 66
    :pswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, La7/f;->b:Ljava/lang/Object;

    .line 68
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, La7/f;->c:Ljava/lang/Object;

    return-void

    .line 69
    :pswitch_2
    sget-object p1, Lx4/b;->d:Lx4/b;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, La7/f;->b:Ljava/lang/Object;

    .line 71
    iput-object p1, p0, La7/f;->c:Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public constructor <init>(II)V
    .locals 1

    const/16 v0, 0x10

    iput v0, p0, La7/f;->a:I

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    filled-new-array {p1, p2}, [I

    move-result-object p1

    iput-object p1, p0, La7/f;->b:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 42
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    iput-object p1, p0, La7/f;->c:Ljava/lang/Object;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(III)V
    .locals 1

    const/16 v0, 0x10

    iput v0, p0, La7/f;->a:I

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    filled-new-array {p1, p2, p3}, [I

    move-result-object p1

    iput-object p1, p0, La7/f;->b:Ljava/lang/Object;

    const/4 p1, 0x3

    .line 45
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    iput-object p1, p0, La7/f;->c:Ljava/lang/Object;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(ILc6/b;)V
    .locals 1

    const/16 v0, 0x1a

    iput v0, p0, La7/f;->a:I

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p2, p0, La7/f;->b:Ljava/lang/Object;

    .line 30
    new-instance p2, Lk2/d;

    invoke-direct {p2, p1, p0}, Lk2/d;-><init>(ILa7/f;)V

    iput-object p2, p0, La7/f;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, La7/f;->a:I

    iput-object p2, p0, La7/f;->b:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, La7/f;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0

    .line 2
    iput p1, p0, La7/f;->a:I

    iput-object p2, p0, La7/f;->b:Ljava/lang/Object;

    iput-object p3, p0, La7/f;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(La/g;Ljava/lang/String;La2/a;)V
    .locals 0

    const/16 p3, 0xb

    iput p3, p0, La7/f;->a:I

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, La7/f;->c:Ljava/lang/Object;

    iput-object p2, p0, La7/f;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(La0/f;Lu6/e;Lb1/d;)V
    .locals 0

    const/4 p2, 0x5

    iput p2, p0, La7/f;->a:I

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, La7/f;->b:Ljava/lang/Object;

    .line 33
    iput-object p3, p0, La7/f;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/animation/Animator;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, La7/f;->a:I

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, La7/f;->b:Ljava/lang/Object;

    .line 63
    iput-object p1, p0, La7/f;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/widget/EditText;)V
    .locals 5

    const/16 v0, 0xf

    iput v0, p0, La7/f;->a:I

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, La7/f;->b:Ljava/lang/Object;

    .line 48
    new-instance v1, Ld1/h;

    invoke-direct {v1, p1}, Ld1/h;-><init>(Landroid/widget/EditText;)V

    iput-object v1, p0, La7/f;->c:Ljava/lang/Object;

    .line 49
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 50
    sget-object v1, Ld1/a;->b:Ld1/a;

    if-nez v1, :cond_1

    .line 51
    sget-object v1, Ld1/a;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 52
    :try_start_0
    sget-object v2, Ld1/a;->b:Ld1/a;

    if-nez v2, :cond_0

    .line 53
    new-instance v2, Ld1/a;

    .line 54
    invoke-direct {v2}, Landroid/text/Editable$Factory;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 55
    :try_start_1
    const-string v3, "android.text.DynamicLayout$ChangeWatcher"

    .line 56
    const-class v4, Ld1/a;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-static {v3, v0, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ld1/a;->c:Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    :catchall_0
    :try_start_2
    sput-object v2, Ld1/a;->b:Ld1/a;

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    .line 58
    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    .line 59
    :cond_1
    :goto_2
    sget-object v0, Ld1/a;->b:Ld1/a;

    .line 60
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEditableFactory(Landroid/text/Editable$Factory;)V

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/j0;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, La7/f;->a:I

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, La7/f;->b:Ljava/lang/Object;

    .line 27
    iput-object p1, p0, La7/f;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/w;Landroidx/lifecycle/z0;)V
    .locals 1

    const/16 v0, 0x19

    iput v0, p0, La7/f;->a:I

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, La7/f;->b:Ljava/lang/Object;

    .line 15
    new-instance p1, La1/b;

    sget-object v0, Lk1/b;->e:Lu6/e;

    invoke-direct {p1, p2, v0}, La1/b;-><init>(Landroidx/lifecycle/z0;Landroidx/lifecycle/y0;)V

    const-class p2, Lk1/b;

    invoke-virtual {p1, p2}, La1/b;->n(Ljava/lang/Class;)Landroidx/lifecycle/v0;

    move-result-object p1

    check-cast p1, Lk1/b;

    .line 16
    iput-object p1, p0, La7/f;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/viewpager/widget/ViewPager;)V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, La7/f;->a:I

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La7/f;->c:Ljava/lang/Object;

    .line 65
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, La7/f;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 1

    const/16 v0, 0x9

    iput v0, p0, La7/f;->a:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La7/f;->c:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    .line 5
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, La7/f;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    .line 3
    iput p2, p0, La7/f;->a:I

    iput-object p1, p0, La7/f;->c:Ljava/lang/Object;

    iput-object p3, p0, La7/f;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4

    const/16 v0, 0x10

    iput v0, p0, La7/f;->a:I

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 36
    new-array v1, v0, [I

    iput-object v1, p0, La7/f;->b:Ljava/lang/Object;

    .line 37
    new-array v1, v0, [F

    iput-object v1, p0, La7/f;->c:Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 38
    iget-object v2, p0, La7/f;->b:Ljava/lang/Object;

    check-cast v2, [I

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v1

    .line 39
    iget-object v2, p0, La7/f;->c:Ljava/lang/Object;

    check-cast v2, [F

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 2

    const/16 v0, 0x15

    iput v0, p0, La7/f;->a:I

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, La7/f;->b:Ljava/lang/Object;

    .line 19
    invoke-static {p1}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La7/f;->c:Ljava/lang/Object;

    .line 21
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    const/4 v0, 0x5

    .line 22
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->getMinimum(I)I

    move-result v1

    .line 23
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->getMaximum(I)I

    move-result p1

    .line 24
    invoke-static {v1, p1}, Ln5/d;->m(II)[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/bitspark/android/SpkApplication;Ljava/util/Locale;)V
    .locals 1

    const/16 v0, 0x14

    iput v0, p0, La7/f;->a:I

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, La7/f;->c:Ljava/lang/Object;

    const/4 p2, 0x0

    .line 12
    const-string v0, "lingver_preference"

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, La7/f;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lu6/e;)V
    .locals 1

    const/16 v0, 0x1b

    iput v0, p0, La7/f;->a:I

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, La7/f;->b:Ljava/lang/Object;

    .line 8
    iput-object p1, p0, La7/f;->c:Ljava/lang/Object;

    return-void
.end method

.method public static e(Landroid/graphics/ImageDecoder$Source;IILv2/h;)Le3/a0;
    .locals 1

    .line 1
    new-instance v0, Ld3/b;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3}, Ld3/b;-><init>(IILv2/h;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Landroid/support/v4/media/session/b;->j(Landroid/graphics/ImageDecoder$Source;Ld3/b;)Landroid/graphics/drawable/Drawable;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-static {p0}, Landroid/support/v4/media/session/b;->y(Landroid/graphics/drawable/Drawable;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    new-instance p1, Le3/a0;

    .line 17
    .line 18
    invoke-static {p0}, Landroid/support/v4/media/session/b;->i(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/AnimatedImageDrawable;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const/4 p2, 0x2

    .line 23
    invoke-direct {p1, p2, p0}, Le3/a0;-><init>(ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-object p1

    .line 27
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 28
    .line 29
    new-instance p2, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string p3, "Received unexpected drawable type for animated image, failing: "

    .line 32
    .line 33
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p1
.end method

.method public static f(Landroid/text/Editable;Landroid/view/KeyEvent;Z)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 v0, 0x0

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    return v0

    .line 13
    :cond_0
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, -0x1

    .line 22
    if-eq p1, v2, :cond_6

    .line 23
    .line 24
    if-eq v1, v2, :cond_6

    .line 25
    .line 26
    if-eq p1, v1, :cond_1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    const-class v2, Lb1/t;

    .line 30
    .line 31
    invoke-interface {p0, p1, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, [Lb1/t;

    .line 36
    .line 37
    if-eqz v1, :cond_6

    .line 38
    .line 39
    array-length v2, v1

    .line 40
    if-lez v2, :cond_6

    .line 41
    .line 42
    array-length v2, v1

    .line 43
    const/4 v3, 0x0

    .line 44
    :goto_0
    if-ge v3, v2, :cond_6

    .line 45
    .line 46
    aget-object v4, v1, v3

    .line 47
    .line 48
    invoke-interface {p0, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    invoke-interface {p0, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-eqz p2, :cond_2

    .line 57
    .line 58
    if-eq v5, p1, :cond_4

    .line 59
    .line 60
    :cond_2
    if-nez p2, :cond_3

    .line 61
    .line 62
    if-eq v4, p1, :cond_4

    .line 63
    .line 64
    :cond_3
    if-le p1, v5, :cond_5

    .line 65
    .line 66
    if-ge p1, v4, :cond_5

    .line 67
    .line 68
    :cond_4
    invoke-interface {p0, v5, v4}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 69
    .line 70
    .line 71
    const/4 p0, 0x1

    .line 72
    return p0

    .line 73
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_6
    :goto_1
    return v0
.end method


# virtual methods
.method public A(Ljava/lang/String;)Lcom/google/android/datatransport/cct/CctBackendFactory;
    .locals 13

    .line 1
    const-string v0, "."

    .line 2
    .line 3
    const-string v1, "Could not instantiate "

    .line 4
    .line 5
    iget-object v2, p0, La7/f;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v2, Ljava/util/Map;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const-string v4, "BackendRegistry"

    .line 11
    .line 12
    if-nez v2, :cond_6

    .line 13
    .line 14
    iget-object v2, p0, La7/f;->b:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v2, Landroid/content/Context;

    .line 17
    .line 18
    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    if-nez v5, :cond_0

    .line 23
    .line 24
    const-string v2, "Context has no PackageManager."

    .line 25
    .line 26
    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :goto_0
    move-object v2, v3

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    new-instance v6, Landroid/content/ComponentName;

    .line 32
    .line 33
    const-class v7, Lcom/google/android/datatransport/runtime/backends/TransportBackendDiscovery;

    .line 34
    .line 35
    invoke-direct {v6, v2, v7}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 36
    .line 37
    .line 38
    const/16 v2, 0x80

    .line 39
    .line 40
    invoke-virtual {v5, v6, v2}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    if-nez v2, :cond_1

    .line 45
    .line 46
    const-string v2, "TransportBackendDiscovery has no service info."

    .line 47
    .line 48
    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :catch_0
    const-string v2, "Application info not found."

    .line 56
    .line 57
    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :goto_1
    if-nez v2, :cond_2

    .line 62
    .line 63
    const-string v2, "Could not retrieve metadata, returning empty list of transport backends."

    .line 64
    .line 65
    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    goto :goto_4

    .line 73
    :cond_2
    new-instance v5, Ljava/util/HashMap;

    .line 74
    .line 75
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 87
    .line 88
    .line 89
    move-result v7

    .line 90
    if-eqz v7, :cond_5

    .line 91
    .line 92
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    check-cast v7, Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {v2, v7}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v8

    .line 102
    instance-of v9, v8, Ljava/lang/String;

    .line 103
    .line 104
    if-eqz v9, :cond_3

    .line 105
    .line 106
    const-string v9, "backend:"

    .line 107
    .line 108
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 109
    .line 110
    .line 111
    move-result v9

    .line 112
    if-eqz v9, :cond_3

    .line 113
    .line 114
    check-cast v8, Ljava/lang/String;

    .line 115
    .line 116
    const-string v9, ","

    .line 117
    .line 118
    const/4 v10, -0x1

    .line 119
    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v8

    .line 123
    array-length v9, v8

    .line 124
    const/4 v10, 0x0

    .line 125
    :goto_2
    if-ge v10, v9, :cond_3

    .line 126
    .line 127
    aget-object v11, v8, v10

    .line 128
    .line 129
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v11

    .line 133
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    .line 134
    .line 135
    .line 136
    move-result v12

    .line 137
    if-eqz v12, :cond_4

    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_4
    const/16 v12, 0x8

    .line 141
    .line 142
    invoke-virtual {v7, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v12

    .line 146
    invoke-virtual {v5, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    :goto_3
    add-int/lit8 v10, v10, 0x1

    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_5
    move-object v2, v5

    .line 153
    :goto_4
    iput-object v2, p0, La7/f;->c:Ljava/lang/Object;

    .line 154
    .line 155
    :cond_6
    iget-object v2, p0, La7/f;->c:Ljava/lang/Object;

    .line 156
    .line 157
    check-cast v2, Ljava/util/Map;

    .line 158
    .line 159
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    check-cast p1, Ljava/lang/String;

    .line 164
    .line 165
    if-nez p1, :cond_7

    .line 166
    .line 167
    return-object v3

    .line 168
    :cond_7
    :try_start_1
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    const-class v5, Lcom/google/android/datatransport/cct/CctBackendFactory;

    .line 173
    .line 174
    invoke-virtual {v2, v5}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    check-cast v2, Lcom/google/android/datatransport/cct/CctBackendFactory;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    .line 187
    .line 188
    return-object v2

    .line 189
    :catch_1
    move-exception v0

    .line 190
    goto :goto_5

    .line 191
    :catch_2
    move-exception v0

    .line 192
    goto :goto_6

    .line 193
    :catch_3
    move-exception v2

    .line 194
    goto :goto_7

    .line 195
    :catch_4
    move-exception v2

    .line 196
    goto :goto_8

    .line 197
    :catch_5
    move-exception v0

    .line 198
    goto :goto_9

    .line 199
    :goto_5
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    invoke-static {v4, p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 204
    .line 205
    .line 206
    goto :goto_a

    .line 207
    :goto_6
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    invoke-static {v4, p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 212
    .line 213
    .line 214
    goto :goto_a

    .line 215
    :goto_7
    new-instance v5, Ljava/lang/StringBuilder;

    .line 216
    .line 217
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    invoke-static {v4, p1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 231
    .line 232
    .line 233
    goto :goto_a

    .line 234
    :goto_8
    new-instance v5, Ljava/lang/StringBuilder;

    .line 235
    .line 236
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    invoke-static {v4, p1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 250
    .line 251
    .line 252
    goto :goto_a

    .line 253
    :goto_9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 254
    .line 255
    const-string v2, "Class "

    .line 256
    .line 257
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    const-string p1, " is not found."

    .line 264
    .line 265
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    invoke-static {v4, p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 273
    .line 274
    .line 275
    :goto_a
    return-object v3
.end method

.method public B()Ljava/util/Locale;
    .locals 4

    .line 1
    iget-object v0, p0, La7/f;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/content/SharedPreferences;

    .line 4
    .line 5
    const-string v1, "language_key"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    if-eqz v3, :cond_2

    .line 13
    .line 14
    invoke-static {v3}, Lr9/f;->e0(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    .line 22
    .line 23
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string v0, "language"

    .line 33
    .line 34
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-string v1, "country"

    .line 39
    .line 40
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const-string v2, "variant"

    .line 45
    .line 46
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    new-instance v3, Ljava/util/Locale;

    .line 51
    .line 52
    invoke-direct {v3, v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    new-instance v0, Lw8/b;

    .line 57
    .line 58
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    .line 59
    .line 60
    .line 61
    const-class v1, Lj9/i;

    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-static {v0, v1}, Lj9/i;->j(Ljava/lang/RuntimeException;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw v0

    .line 71
    :cond_2
    :goto_0
    iget-object v0, p0, La7/f;->c:Ljava/lang/Object;

    .line 72
    .line 73
    move-object v3, v0

    .line 74
    check-cast v3, Ljava/util/Locale;

    .line 75
    .line 76
    :goto_1
    return-object v3
.end method

.method public C(Landroid/content/Context;Lcom/bumptech/glide/b;Landroidx/lifecycle/p;Landroidx/fragment/app/j0;Z)Lcom/bumptech/glide/o;
    .locals 3

    .line 1
    invoke-static {}, Lr3/n;->a()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lr3/n;->a()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, La7/f;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lcom/bumptech/glide/o;

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    new-instance v1, Lk3/h;

    .line 20
    .line 21
    invoke-direct {v1, p3}, Lk3/h;-><init>(Landroidx/lifecycle/p;)V

    .line 22
    .line 23
    .line 24
    new-instance v2, Lx4/e;

    .line 25
    .line 26
    invoke-direct {v2, p0, p4}, Lx4/e;-><init>(La7/f;Landroidx/fragment/app/j0;)V

    .line 27
    .line 28
    .line 29
    iget-object p4, p0, La7/f;->c:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast p4, Lu6/e;

    .line 32
    .line 33
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    new-instance p4, Lcom/bumptech/glide/o;

    .line 37
    .line 38
    invoke-direct {p4, p2, v1, v2, p1}, Lcom/bumptech/glide/o;-><init>(Lcom/bumptech/glide/b;Lk3/g;Lk3/m;Landroid/content/Context;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    new-instance p1, Lk3/j;

    .line 45
    .line 46
    invoke-direct {p1, p0, p3}, Lk3/j;-><init>(La7/f;Landroidx/lifecycle/p;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, p1}, Lk3/h;->h(Lk3/i;)V

    .line 50
    .line 51
    .line 52
    if-eqz p5, :cond_0

    .line 53
    .line 54
    invoke-virtual {p4}, Lcom/bumptech/glide/o;->i()V

    .line 55
    .line 56
    .line 57
    :cond_0
    move-object v1, p4

    .line 58
    :cond_1
    return-object v1
.end method

.method public D(Ljava/lang/CharSequence;IILb1/m;)Z
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    iget v1, p4, Lb1/m;->c:I

    .line 3
    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x0

    .line 6
    if-nez v1, :cond_d

    .line 7
    .line 8
    iget-object v1, p0, La7/f;->c:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Lb1/d;

    .line 11
    .line 12
    invoke-virtual {p4}, Lb1/m;->c()Lc1/a;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    const/16 v5, 0x8

    .line 17
    .line 18
    invoke-virtual {v4, v5}, Lc1/c;->a(I)I

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    if-eqz v5, :cond_0

    .line 23
    .line 24
    iget-object v6, v4, Lc1/c;->d:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v6, Ljava/nio/ByteBuffer;

    .line 27
    .line 28
    iget v4, v4, Lc1/c;->a:I

    .line 29
    .line 30
    add-int/2addr v5, v4

    .line 31
    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->getShort(I)S

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v4, 0x0

    .line 37
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 41
    .line 42
    const/16 v6, 0x17

    .line 43
    .line 44
    if-ge v5, v6, :cond_1

    .line 45
    .line 46
    if-le v4, v5, :cond_1

    .line 47
    .line 48
    :goto_1
    const/4 p1, 0x0

    .line 49
    goto/16 :goto_6

    .line 50
    .line 51
    :cond_1
    sget-object v4, Lb1/d;->b:Ljava/lang/ThreadLocal;

    .line 52
    .line 53
    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    if-nez v5, :cond_2

    .line 58
    .line 59
    new-instance v5, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    :cond_2
    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    check-cast v4, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 74
    .line 75
    .line 76
    :goto_2
    if-ge p2, p3, :cond_3

    .line 77
    .line 78
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    add-int/2addr p2, v0

    .line 86
    goto :goto_2

    .line 87
    :cond_3
    iget-object p1, v1, Lb1/d;->a:Landroid/text/TextPaint;

    .line 88
    .line 89
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    sget-object p3, Lf0/e;->a:Ljava/lang/ThreadLocal;

    .line 94
    .line 95
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 96
    .line 97
    if-lt p3, v6, :cond_4

    .line 98
    .line 99
    invoke-static {p1, p2}, Lf0/d;->a(Landroid/graphics/Paint;Ljava/lang/String;)Z

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    goto/16 :goto_6

    .line 104
    .line 105
    :cond_4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 106
    .line 107
    .line 108
    move-result p3

    .line 109
    if-ne p3, v0, :cond_5

    .line 110
    .line 111
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-eqz v1, :cond_5

    .line 120
    .line 121
    :goto_3
    const/4 p1, 0x1

    .line 122
    goto/16 :goto_6

    .line 123
    .line 124
    :cond_5
    const-string v1, "\udb3f\udffd"

    .line 125
    .line 126
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    const-string v5, "m"

    .line 131
    .line 132
    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 133
    .line 134
    .line 135
    move-result v5

    .line 136
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 137
    .line 138
    .line 139
    move-result v6

    .line 140
    const/4 v7, 0x0

    .line 141
    cmpl-float v8, v6, v7

    .line 142
    .line 143
    if-nez v8, :cond_6

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_6
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 147
    .line 148
    .line 149
    move-result v8

    .line 150
    invoke-virtual {p2, v3, v8}, Ljava/lang/String;->codePointCount(II)I

    .line 151
    .line 152
    .line 153
    move-result v8

    .line 154
    if-le v8, v0, :cond_9

    .line 155
    .line 156
    const/high16 v8, 0x40000000    # 2.0f

    .line 157
    .line 158
    mul-float v5, v5, v8

    .line 159
    .line 160
    cmpl-float v5, v6, v5

    .line 161
    .line 162
    if-lez v5, :cond_7

    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_7
    const/4 v5, 0x0

    .line 166
    :goto_4
    if-ge v5, p3, :cond_8

    .line 167
    .line 168
    invoke-virtual {p2, v5}, Ljava/lang/String;->codePointAt(I)I

    .line 169
    .line 170
    .line 171
    move-result v8

    .line 172
    invoke-static {v8}, Ljava/lang/Character;->charCount(I)I

    .line 173
    .line 174
    .line 175
    move-result v8

    .line 176
    add-int/2addr v8, v5

    .line 177
    invoke-virtual {p1, p2, v5, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    .line 178
    .line 179
    .line 180
    move-result v5

    .line 181
    add-float/2addr v7, v5

    .line 182
    move v5, v8

    .line 183
    goto :goto_4

    .line 184
    :cond_8
    cmpl-float v5, v6, v7

    .line 185
    .line 186
    if-ltz v5, :cond_9

    .line 187
    .line 188
    goto/16 :goto_1

    .line 189
    .line 190
    :cond_9
    cmpl-float v4, v6, v4

    .line 191
    .line 192
    if-eqz v4, :cond_a

    .line 193
    .line 194
    goto :goto_3

    .line 195
    :cond_a
    sget-object v4, Lf0/e;->a:Ljava/lang/ThreadLocal;

    .line 196
    .line 197
    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v5

    .line 201
    check-cast v5, Lm0/b;

    .line 202
    .line 203
    if-nez v5, :cond_b

    .line 204
    .line 205
    new-instance v5, Lm0/b;

    .line 206
    .line 207
    new-instance v6, Landroid/graphics/Rect;

    .line 208
    .line 209
    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 210
    .line 211
    .line 212
    new-instance v7, Landroid/graphics/Rect;

    .line 213
    .line 214
    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 215
    .line 216
    .line 217
    invoke-direct {v5, v6, v7}, Lm0/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v4, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 221
    .line 222
    .line 223
    goto :goto_5

    .line 224
    :cond_b
    iget-object v4, v5, Lm0/b;->a:Ljava/lang/Object;

    .line 225
    .line 226
    check-cast v4, Landroid/graphics/Rect;

    .line 227
    .line 228
    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 229
    .line 230
    .line 231
    iget-object v4, v5, Lm0/b;->b:Ljava/lang/Object;

    .line 232
    .line 233
    check-cast v4, Landroid/graphics/Rect;

    .line 234
    .line 235
    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 236
    .line 237
    .line 238
    :goto_5
    iget-object v4, v5, Lm0/b;->a:Ljava/lang/Object;

    .line 239
    .line 240
    check-cast v4, Landroid/graphics/Rect;

    .line 241
    .line 242
    invoke-virtual {p1, v1, v3, v2, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 243
    .line 244
    .line 245
    iget-object v1, v5, Lm0/b;->b:Ljava/lang/Object;

    .line 246
    .line 247
    move-object v5, v1

    .line 248
    check-cast v5, Landroid/graphics/Rect;

    .line 249
    .line 250
    invoke-virtual {p1, p2, v3, p3, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v4, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    move-result p1

    .line 257
    xor-int/2addr p1, v0

    .line 258
    :goto_6
    if-eqz p1, :cond_c

    .line 259
    .line 260
    const/4 p1, 0x2

    .line 261
    goto :goto_7

    .line 262
    :cond_c
    const/4 p1, 0x1

    .line 263
    :goto_7
    iput p1, p4, Lb1/m;->c:I

    .line 264
    .line 265
    :cond_d
    iget p1, p4, Lb1/m;->c:I

    .line 266
    .line 267
    if-ne p1, v2, :cond_e

    .line 268
    .line 269
    goto :goto_8

    .line 270
    :cond_e
    const/4 v0, 0x0

    .line 271
    :goto_8
    return v0
.end method

.method public E(Lj/a;)V
    .locals 3

    .line 1
    iget-object v0, p0, La7/f;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, La0/f;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, La0/f;->f(Lj/a;)Lj/f;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v0, v0, La0/f;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Landroid/view/ActionMode$Callback;

    .line 12
    .line 13
    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, La7/f;->c:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p1, Landroidx/appcompat/app/g0;

    .line 19
    .line 20
    iget-object v0, p1, Landroidx/appcompat/app/g0;->w:Landroid/widget/PopupWindow;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p1, Landroidx/appcompat/app/g0;->l:Landroid/view/Window;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v1, p1, Landroidx/appcompat/app/g0;->x:Landroidx/appcompat/app/r;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 33
    .line 34
    .line 35
    :cond_0
    iget-object v0, p1, Landroidx/appcompat/app/g0;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    iget-object v0, p1, Landroidx/appcompat/app/g0;->y:Ln0/a1;

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    invoke-virtual {v0}, Ln0/a1;->b()V

    .line 44
    .line 45
    .line 46
    :cond_1
    iget-object v0, p1, Landroidx/appcompat/app/g0;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 47
    .line 48
    invoke-static {v0}, Ln0/s0;->a(Landroid/view/View;)Ln0/a1;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const/4 v1, 0x0

    .line 53
    invoke-virtual {v0, v1}, Ln0/a1;->a(F)V

    .line 54
    .line 55
    .line 56
    iput-object v0, p1, Landroidx/appcompat/app/g0;->y:Ln0/a1;

    .line 57
    .line 58
    new-instance v1, Landroidx/appcompat/app/t;

    .line 59
    .line 60
    const/4 v2, 0x2

    .line 61
    invoke-direct {v1, v2, p0}, Landroidx/appcompat/app/t;-><init>(ILjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ln0/a1;->d(Ln0/b1;)V

    .line 65
    .line 66
    .line 67
    :cond_2
    const/4 v0, 0x0

    .line 68
    iput-object v0, p1, Landroidx/appcompat/app/g0;->u:Lj/a;

    .line 69
    .line 70
    iget-object v0, p1, Landroidx/appcompat/app/g0;->B:Landroid/view/ViewGroup;

    .line 71
    .line 72
    sget-object v1, Ln0/s0;->a:Ljava/util/WeakHashMap;

    .line 73
    .line 74
    invoke-static {v0}, Ln0/e0;->c(Landroid/view/View;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Landroidx/appcompat/app/g0;->J()V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public F(Lj/a;Lk/l;)Z
    .locals 4

    .line 1
    iget-object v0, p0, La7/f;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/appcompat/app/g0;

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/appcompat/app/g0;->B:Landroid/view/ViewGroup;

    .line 6
    .line 7
    sget-object v1, Ln0/s0;->a:Ljava/util/WeakHashMap;

    .line 8
    .line 9
    invoke-static {v0}, Ln0/e0;->c(Landroid/view/View;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, La7/f;->b:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, La0/f;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, La0/f;->f(Lj/a;)Lj/f;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object v1, v0, La0/f;->c:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v1, Lp/l;

    .line 23
    .line 24
    invoke-virtual {v1, p2}, Lp/l;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Landroid/view/Menu;

    .line 29
    .line 30
    if-nez v2, :cond_0

    .line 31
    .line 32
    new-instance v2, Lk/b0;

    .line 33
    .line 34
    iget-object v3, v0, La0/f;->e:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v3, Landroid/content/Context;

    .line 37
    .line 38
    invoke-direct {v2, v3, p2}, Lk/b0;-><init>(Landroid/content/Context;Lk/l;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, p2, v2}, Lp/l;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    :cond_0
    iget-object p2, v0, La0/f;->b:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast p2, Landroid/view/ActionMode$Callback;

    .line 47
    .line 48
    invoke-interface {p2, p1, v2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    return p1
.end method

.method public G(Lk0/e;)V
    .locals 5

    .line 1
    iget v0, p1, Lk0/e;->b:I

    .line 2
    .line 3
    iget-object v1, p0, La7/f;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Landroid/os/Handler;

    .line 6
    .line 7
    iget-object v2, p0, La7/f;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, La0/b;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    new-instance v0, La3/c;

    .line 14
    .line 15
    iget-object p1, p1, Lk0/e;->a:Landroid/graphics/Typeface;

    .line 16
    .line 17
    const/16 v3, 0x11

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    invoke-direct {v0, v3, v2, p1, v4}, La3/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    new-instance p1, Landroidx/leanback/widget/n0;

    .line 28
    .line 29
    const/4 v3, 0x4

    .line 30
    invoke-direct {p1, v0, v3, v2}, Landroidx/leanback/widget/n0;-><init>(IILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 34
    .line 35
    .line 36
    :goto_0
    return-void
.end method

.method public H()V
    .locals 8

    .line 1
    iget-object v0, p0, La7/f;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, La/g;

    .line 4
    .line 5
    iget-object v1, v0, La/g;->e:Ljava/util/ArrayList;

    .line 6
    .line 7
    iget-object v2, p0, La7/f;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    iget-object v1, v0, La/g;->c:Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Ljava/lang/Integer;

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    iget-object v3, v0, La/g;->b:Ljava/util/HashMap;

    .line 28
    .line 29
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object v1, v0, La/g;->f:Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    iget-object v1, v0, La/g;->g:Ljava/util/HashMap;

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    const-string v4, ": "

    .line 44
    .line 45
    const-string v5, "Dropping pending result for request "

    .line 46
    .line 47
    const-string v6, "ActivityResultRegistry"

    .line 48
    .line 49
    if-eqz v3, :cond_1

    .line 50
    .line 51
    invoke-static {v5, v2, v4}, La/e;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    :cond_1
    iget-object v1, v0, La/g;->h:Landroid/os/Bundle;

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-eqz v3, :cond_2

    .line 79
    .line 80
    invoke-static {v5, v2, v4}, La/e;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    :cond_2
    iget-object v0, v0, La/g;->d:Ljava/util/HashMap;

    .line 102
    .line 103
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    if-nez v0, :cond_3

    .line 108
    .line 109
    return-void

    .line 110
    :cond_3
    new-instance v0, Ljava/lang/ClassCastException;

    .line 111
    .line 112
    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    .line 113
    .line 114
    .line 115
    throw v0
.end method

.method public a(I)V
    .locals 2

    const/16 v0, 0x28

    .line 1
    iget-object v1, p0, La7/f;->c:Ljava/lang/Object;

    check-cast v1, Lk2/d;

    if-lt p1, v0, :cond_0

    const/4 p1, -0x1

    .line 2
    invoke-virtual {v1, p1}, Lp/k;->i(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    if-gt v0, p1, :cond_1

    const/16 v0, 0x14

    if-ge p1, v0, :cond_1

    .line 3
    invoke-virtual {v1}, Lp/k;->g()I

    move-result p1

    .line 4
    div-int/lit8 p1, p1, 0x2

    invoke-virtual {v1, p1}, Lp/k;->i(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(ZLjava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 5
    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "[UserInfo] Successfully uploaded user info."

    invoke-static {p2, p1}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 7
    iget-object v0, p0, La7/f;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;

    .line 8
    iput-wide p1, v1, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->f:J

    .line 9
    iget-object v2, p0, La7/f;->c:Ljava/lang/Object;

    check-cast v2, Lcom/tencent/bugly/proguard/r;

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Lcom/tencent/bugly/proguard/r;->a(Lcom/tencent/bugly/proguard/r;Lcom/tencent/bugly/crashreport/biz/UserInfoBean;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(Lcoil/memory/MemoryCache$Key;Landroid/graphics/Bitmap;Ljava/util/Map;)V
    .locals 4

    .line 1
    invoke-static {p2}, Ln5/d;->s(Landroid/graphics/Bitmap;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, La7/f;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lk2/d;

    .line 8
    .line 9
    iget-object v2, v1, Lp/k;->c:Lq/b;

    .line 10
    .line 11
    monitor-enter v2

    .line 12
    :try_start_0
    iget v3, v1, Lp/k;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    monitor-exit v2

    .line 15
    if-gt v0, v3, :cond_0

    .line 16
    .line 17
    new-instance v2, Lk2/c;

    .line 18
    .line 19
    invoke-direct {v2, p2, p3, v0}, Lk2/c;-><init>(Landroid/graphics/Bitmap;Ljava/util/Map;I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p1, v2}, Lp/k;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {v1, p1}, Lp/k;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, La7/f;->b:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v1, Lc6/b;

    .line 32
    .line 33
    invoke-virtual {v1, p1, p2, p3, v0}, Lc6/b;->b(Lcoil/memory/MemoryCache$Key;Landroid/graphics/Bitmap;Ljava/util/Map;I)V

    .line 34
    .line 35
    .line 36
    :goto_0
    return-void

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    monitor-exit v2

    .line 39
    throw p1
.end method

.method public c(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "="

    .line 6
    .line 7
    invoke-static {p2, v0, p1}, Lea/q;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object p2, p0, La7/f;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p2, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public d(Landroid/graphics/Bitmap;Ly2/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, La7/f;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lr3/d;

    .line 4
    .line 5
    iget-object v0, v0, Lr3/d;->b:Ljava/io/IOException;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-interface {p2, p1}, Ly2/a;->e(Landroid/graphics/Bitmap;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    throw v0

    .line 15
    :cond_1
    return-void
.end method

.method public g(Landroidx/fragment/app/s;Landroid/os/Bundle;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, La7/f;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/fragment/app/j0;

    .line 4
    .line 5
    iget-object v1, v0, Landroidx/fragment/app/j0;->p:Landroidx/fragment/app/s;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1}, Landroidx/fragment/app/s;->l()Landroidx/fragment/app/j0;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x1

    .line 14
    iget-object v1, v1, Landroidx/fragment/app/j0;->k:La7/f;

    .line 15
    .line 16
    invoke-virtual {v1, p1, p2, v2}, La7/f;->g(Landroidx/fragment/app/s;Landroid/os/Bundle;Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v1, p0, La7/f;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_3

    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Landroidx/fragment/app/z;

    .line 38
    .line 39
    if-eqz p3, :cond_2

    .line 40
    .line 41
    iget-boolean v3, v2, Landroidx/fragment/app/z;->b:Z

    .line 42
    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    :cond_2
    iget-object v2, v2, Landroidx/fragment/app/z;->a:Landroidx/fragment/app/g0;

    .line 46
    .line 47
    invoke-virtual {v2, v0, p1, p2}, Landroidx/fragment/app/g0;->onFragmentActivityCreated(Landroidx/fragment/app/j0;Landroidx/fragment/app/s;Landroid/os/Bundle;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, La7/f;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v2, Lu6/e;

    .line 7
    .line 8
    const/16 v0, 0x13

    .line 9
    .line 10
    invoke-direct {v2, v0}, Lu6/e;-><init>(I)V

    .line 11
    .line 12
    .line 13
    new-instance v3, Lx4/e;

    .line 14
    .line 15
    const/16 v0, 0x12

    .line 16
    .line 17
    invoke-direct {v3, v0}, Lx4/e;-><init>(I)V

    .line 18
    .line 19
    .line 20
    sget-object v4, Li4/a;->f:Li4/a;

    .line 21
    .line 22
    iget-object v0, p0, La7/f;->b:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v0, Lb4/e;

    .line 25
    .line 26
    invoke-virtual {v0}, Lb4/e;->get()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v1, p0, La7/f;->c:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v1, Lb4/e;

    .line 33
    .line 34
    instance-of v5, v1, Lc4/a;

    .line 35
    .line 36
    if-eqz v5, :cond_0

    .line 37
    .line 38
    check-cast v1, Lc4/a;

    .line 39
    .line 40
    move-object v6, v1

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    new-instance v5, Ld4/a;

    .line 43
    .line 44
    invoke-direct {v5, v1}, Ld4/a;-><init>(Ld4/b;)V

    .line 45
    .line 46
    .line 47
    move-object v6, v5

    .line 48
    :goto_0
    new-instance v7, Li4/g;

    .line 49
    .line 50
    move-object v5, v0

    .line 51
    check-cast v5, Li4/i;

    .line 52
    .line 53
    move-object v1, v7

    .line 54
    invoke-direct/range {v1 .. v6}, Li4/g;-><init>(Lk4/a;Lk4/a;Li4/a;Li4/i;Lc4/a;)V

    .line 55
    .line 56
    .line 57
    return-object v7

    .line 58
    :pswitch_0
    iget-object v0, p0, La7/f;->b:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v0, Ld4/c;

    .line 61
    .line 62
    iget-object v0, v0, Ld4/c;->a:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v0, Landroid/content/Context;

    .line 65
    .line 66
    iget-object v1, p0, La7/f;->c:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v1, Lb4/e;

    .line 69
    .line 70
    invoke-virtual {v1}, Lb4/e;->get()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    new-instance v2, Lb4/f;

    .line 75
    .line 76
    check-cast v1, Lb4/d;

    .line 77
    .line 78
    invoke-direct {v2, v0, v1}, Lb4/f;-><init>(Landroid/content/Context;Lb4/d;)V

    .line 79
    .line 80
    .line 81
    return-object v2

    .line 82
    nop

    .line 83
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public h(Lcoil/memory/MemoryCache$Key;)Lk2/a;
    .locals 2

    .line 1
    iget-object v0, p0, La7/f;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lk2/d;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lp/k;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lk2/c;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    new-instance v0, Lk2/a;

    .line 14
    .line 15
    iget-object v1, p1, Lk2/c;->a:Landroid/graphics/Bitmap;

    .line 16
    .line 17
    iget-object p1, p1, Lk2/c;->b:Ljava/util/Map;

    .line 18
    .line 19
    invoke-direct {v0, v1, p1}, Lk2/a;-><init>(Landroid/graphics/Bitmap;Ljava/util/Map;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    return-object v0
.end method

.method public i(Ljava/lang/Object;Ljava/io/File;Lv2/h;)Z
    .locals 2

    .line 1
    check-cast p1, Lx2/x;

    .line 2
    .line 3
    new-instance v0, Le3/d;

    .line 4
    .line 5
    invoke-interface {p1}, Lx2/x;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v1, p0, La7/f;->b:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v1, Ly2/a;

    .line 18
    .line 19
    invoke-direct {v0, p1, v1}, Le3/d;-><init>(Landroid/graphics/Bitmap;Ly2/a;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, La7/f;->c:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p1, Le3/b;

    .line 25
    .line 26
    invoke-virtual {p1, v0, p2, p3}, Le3/b;->i(Ljava/lang/Object;Ljava/io/File;Lv2/h;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    return p1
.end method

.method public j()V
    .locals 2

    .line 1
    iget-object v0, p0, La7/f;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lka/m0;

    .line 4
    .line 5
    iget-object v0, v0, Lka/m0;->v0:Lta/a;

    .line 6
    .line 7
    iget-object v1, p0, La7/f;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Ljava/lang/Integer;

    .line 10
    .line 11
    iget-object v0, v0, Lta/a;->i:Landroidx/lifecycle/d0;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroidx/lifecycle/d0;->h(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public k()V
    .locals 2

    .line 1
    iget-object v0, p0, La7/f;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Le3/w;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, v0, Le3/w;->a:[B

    .line 7
    .line 8
    array-length v1, v1

    .line 9
    iput v1, v0, Le3/w;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception v1

    .line 14
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    throw v1
.end method

.method public l(Lv2/h;)I
    .locals 0

    .line 1
    const/4 p1, 0x2

    .line 2
    return p1
.end method

.method public m(Landroidx/fragment/app/s;Z)V
    .locals 5

    .line 1
    iget-object v0, p0, La7/f;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/fragment/app/j0;

    .line 4
    .line 5
    iget-object v1, v0, Landroidx/fragment/app/j0;->n:Landroidx/fragment/app/v;

    .line 6
    .line 7
    iget-object v1, v1, Landroidx/fragment/app/v;->g:Landroidx/fragment/app/FragmentActivity;

    .line 8
    .line 9
    iget-object v2, v0, Landroidx/fragment/app/j0;->p:Landroidx/fragment/app/s;

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {v2}, Landroidx/fragment/app/s;->l()Landroidx/fragment/app/j0;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const/4 v3, 0x1

    .line 18
    iget-object v2, v2, Landroidx/fragment/app/j0;->k:La7/f;

    .line 19
    .line 20
    invoke-virtual {v2, p1, v3}, La7/f;->m(Landroidx/fragment/app/s;Z)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v2, p0, La7/f;->b:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_3

    .line 36
    .line 37
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Landroidx/fragment/app/z;

    .line 42
    .line 43
    if-eqz p2, :cond_2

    .line 44
    .line 45
    iget-boolean v4, v3, Landroidx/fragment/app/z;->b:Z

    .line 46
    .line 47
    if-eqz v4, :cond_1

    .line 48
    .line 49
    :cond_2
    iget-object v3, v3, Landroidx/fragment/app/z;->a:Landroidx/fragment/app/g0;

    .line 50
    .line 51
    invoke-virtual {v3, v0, p1, v1}, Landroidx/fragment/app/g0;->onFragmentAttached(Landroidx/fragment/app/j0;Landroidx/fragment/app/s;Landroid/content/Context;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    return-void
.end method

.method public n(Landroidx/fragment/app/s;Landroid/os/Bundle;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, La7/f;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/fragment/app/j0;

    .line 4
    .line 5
    iget-object v1, v0, Landroidx/fragment/app/j0;->p:Landroidx/fragment/app/s;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1}, Landroidx/fragment/app/s;->l()Landroidx/fragment/app/j0;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x1

    .line 14
    iget-object v1, v1, Landroidx/fragment/app/j0;->k:La7/f;

    .line 15
    .line 16
    invoke-virtual {v1, p1, p2, v2}, La7/f;->n(Landroidx/fragment/app/s;Landroid/os/Bundle;Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v1, p0, La7/f;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_3

    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Landroidx/fragment/app/z;

    .line 38
    .line 39
    if-eqz p3, :cond_2

    .line 40
    .line 41
    iget-boolean v3, v2, Landroidx/fragment/app/z;->b:Z

    .line 42
    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    :cond_2
    iget-object v2, v2, Landroidx/fragment/app/z;->a:Landroidx/fragment/app/g0;

    .line 46
    .line 47
    invoke-virtual {v2, v0, p1, p2}, Landroidx/fragment/app/g0;->onFragmentCreated(Landroidx/fragment/app/j0;Landroidx/fragment/app/s;Landroid/os/Bundle;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    return-void
.end method

.method public o(Landroidx/fragment/app/s;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, La7/f;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/fragment/app/j0;

    .line 4
    .line 5
    iget-object v1, v0, Landroidx/fragment/app/j0;->p:Landroidx/fragment/app/s;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1}, Landroidx/fragment/app/s;->l()Landroidx/fragment/app/j0;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x1

    .line 14
    iget-object v1, v1, Landroidx/fragment/app/j0;->k:La7/f;

    .line 15
    .line 16
    invoke-virtual {v1, p1, v2}, La7/f;->o(Landroidx/fragment/app/s;Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v1, p0, La7/f;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_3

    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Landroidx/fragment/app/z;

    .line 38
    .line 39
    if-eqz p2, :cond_2

    .line 40
    .line 41
    iget-boolean v3, v2, Landroidx/fragment/app/z;->b:Z

    .line 42
    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    :cond_2
    iget-object v2, v2, Landroidx/fragment/app/z;->a:Landroidx/fragment/app/g0;

    .line 46
    .line 47
    invoke-virtual {v2, v0, p1}, Landroidx/fragment/app/g0;->onFragmentDestroyed(Landroidx/fragment/app/j0;Landroidx/fragment/app/s;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/View;Ln0/r1;)Ln0/r1;
    .locals 6

    .line 1
    iget v0, p0, La7/f;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/google/android/material/internal/e0;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, La7/f;->c:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v1, Lcom/google/android/material/internal/e0;

    .line 14
    .line 15
    iget v2, v1, Lcom/google/android/material/internal/e0;->a:I

    .line 16
    .line 17
    iput v2, v0, Lcom/google/android/material/internal/e0;->a:I

    .line 18
    .line 19
    iget v2, v1, Lcom/google/android/material/internal/e0;->b:I

    .line 20
    .line 21
    iput v2, v0, Lcom/google/android/material/internal/e0;->b:I

    .line 22
    .line 23
    iget v2, v1, Lcom/google/android/material/internal/e0;->c:I

    .line 24
    .line 25
    iput v2, v0, Lcom/google/android/material/internal/e0;->c:I

    .line 26
    .line 27
    iget v1, v1, Lcom/google/android/material/internal/e0;->d:I

    .line 28
    .line 29
    iput v1, v0, Lcom/google/android/material/internal/e0;->d:I

    .line 30
    .line 31
    iget-object v1, p0, La7/f;->b:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v1, Lcom/google/android/material/internal/d0;

    .line 34
    .line 35
    invoke-interface {v1, p1, p2, v0}, Lcom/google/android/material/internal/d0;->p(Landroid/view/View;Ln0/r1;Lcom/google/android/material/internal/e0;)Ln0/r1;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    return-object p1

    .line 40
    :pswitch_0
    invoke-static {p1, p2}, Ln0/s0;->k(Landroid/view/View;Ln0/r1;)Ln0/r1;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iget-object p2, p1, Ln0/r1;->a:Ln0/o1;

    .line 45
    .line 46
    invoke-virtual {p2}, Ln0/o1;->n()Z

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    if-eqz p2, :cond_0

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_0
    invoke-virtual {p1}, Ln0/r1;->b()I

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    iget-object v0, p0, La7/f;->b:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v0, Landroid/graphics/Rect;

    .line 60
    .line 61
    iput p2, v0, Landroid/graphics/Rect;->left:I

    .line 62
    .line 63
    invoke-virtual {p1}, Ln0/r1;->d()I

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    iput p2, v0, Landroid/graphics/Rect;->top:I

    .line 68
    .line 69
    invoke-virtual {p1}, Ln0/r1;->c()I

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    iput p2, v0, Landroid/graphics/Rect;->right:I

    .line 74
    .line 75
    invoke-virtual {p1}, Ln0/r1;->a()I

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    iput p2, v0, Landroid/graphics/Rect;->bottom:I

    .line 80
    .line 81
    iget-object p2, p0, La7/f;->c:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast p2, Landroidx/viewpager/widget/ViewPager;

    .line 84
    .line 85
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    const/4 v2, 0x0

    .line 90
    :goto_0
    if-ge v2, v1, :cond_1

    .line 91
    .line 92
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-static {v3, p1}, Ln0/s0;->b(Landroid/view/View;Ln0/r1;)Ln0/r1;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-virtual {v3}, Ln0/r1;->b()I

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    iget v5, v0, Landroid/graphics/Rect;->left:I

    .line 105
    .line 106
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    .line 107
    .line 108
    .line 109
    move-result v4

    .line 110
    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 111
    .line 112
    invoke-virtual {v3}, Ln0/r1;->d()I

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    iget v5, v0, Landroid/graphics/Rect;->top:I

    .line 117
    .line 118
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 123
    .line 124
    invoke-virtual {v3}, Ln0/r1;->c()I

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    iget v5, v0, Landroid/graphics/Rect;->right:I

    .line 129
    .line 130
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    .line 131
    .line 132
    .line 133
    move-result v4

    .line 134
    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 135
    .line 136
    invoke-virtual {v3}, Ln0/r1;->a()I

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 141
    .line 142
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 147
    .line 148
    add-int/lit8 v2, v2, 0x1

    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_1
    iget p2, v0, Landroid/graphics/Rect;->left:I

    .line 152
    .line 153
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 154
    .line 155
    iget v2, v0, Landroid/graphics/Rect;->right:I

    .line 156
    .line 157
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 158
    .line 159
    invoke-virtual {p1, p2, v1, v2, v0}, Ln0/r1;->f(IIII)Ln0/r1;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    :goto_1
    return-object p1

    .line 164
    nop

    .line 165
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .line 1
    const-string p2, "eJTU0WZBF91dntfA\n"

    .line 2
    .line 3
    const-string p3, "MPu5tCAzdro=\n"

    .line 4
    .line 5
    invoke-static {p2, p3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    const-string p2, "1LbpDK2cG4PJt9UBr51o\n"

    .line 9
    .line 10
    const-string p3, "u9i5bcr5SOA=\n"

    .line 11
    .line 12
    invoke-static {p2, p3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, La7/f;->b:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p2, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Lorg/bitspark/android/beans/EventBean;

    .line 24
    .line 25
    iget-object p1, p1, Lorg/bitspark/android/beans/EventBean;->title:Ljava/lang/String;

    .line 26
    .line 27
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .line 1
    const-string v0, "0VHJlEkLo6H0W8qF\n"

    .line 2
    .line 3
    const-string v1, "mT6k8Q95wsY=\n"

    .line 4
    .line 5
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    const-string v0, "b+GCn3d0dhxs6rGKdXUF\n"

    .line 9
    .line 10
    const-string v1, "AI/S/hARJXk=\n"

    .line 11
    .line 12
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, La7/f;->b:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lorg/bitspark/android/beans/EventBean;

    .line 24
    .line 25
    iget-object v1, v1, Lorg/bitspark/android/beans/EventBean;->title:Ljava/lang/String;

    .line 26
    .line 27
    sget-object v1, Lka/j;->d0:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v1, p0, La7/f;->c:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v1, Lka/j;

    .line 32
    .line 33
    invoke-virtual {v1, p1, v0}, Lka/j;->V(ILjava/util/ArrayList;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public p(Landroidx/fragment/app/s;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, La7/f;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/fragment/app/j0;

    .line 4
    .line 5
    iget-object v1, v0, Landroidx/fragment/app/j0;->p:Landroidx/fragment/app/s;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1}, Landroidx/fragment/app/s;->l()Landroidx/fragment/app/j0;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x1

    .line 14
    iget-object v1, v1, Landroidx/fragment/app/j0;->k:La7/f;

    .line 15
    .line 16
    invoke-virtual {v1, p1, v2}, La7/f;->p(Landroidx/fragment/app/s;Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v1, p0, La7/f;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_3

    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Landroidx/fragment/app/z;

    .line 38
    .line 39
    if-eqz p2, :cond_2

    .line 40
    .line 41
    iget-boolean v3, v2, Landroidx/fragment/app/z;->b:Z

    .line 42
    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    :cond_2
    iget-object v2, v2, Landroidx/fragment/app/z;->a:Landroidx/fragment/app/g0;

    .line 46
    .line 47
    invoke-virtual {v2, v0, p1}, Landroidx/fragment/app/g0;->onFragmentDetached(Landroidx/fragment/app/j0;Landroidx/fragment/app/s;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    return-void
.end method

.method public q(Landroidx/fragment/app/s;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, La7/f;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/fragment/app/j0;

    .line 4
    .line 5
    iget-object v1, v0, Landroidx/fragment/app/j0;->p:Landroidx/fragment/app/s;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1}, Landroidx/fragment/app/s;->l()Landroidx/fragment/app/j0;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x1

    .line 14
    iget-object v1, v1, Landroidx/fragment/app/j0;->k:La7/f;

    .line 15
    .line 16
    invoke-virtual {v1, p1, v2}, La7/f;->q(Landroidx/fragment/app/s;Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v1, p0, La7/f;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_3

    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Landroidx/fragment/app/z;

    .line 38
    .line 39
    if-eqz p2, :cond_2

    .line 40
    .line 41
    iget-boolean v3, v2, Landroidx/fragment/app/z;->b:Z

    .line 42
    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    :cond_2
    iget-object v2, v2, Landroidx/fragment/app/z;->a:Landroidx/fragment/app/g0;

    .line 46
    .line 47
    invoke-virtual {v2, v0, p1}, Landroidx/fragment/app/g0;->onFragmentPaused(Landroidx/fragment/app/j0;Landroidx/fragment/app/s;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    return-void
.end method

.method public r(Landroidx/fragment/app/s;Z)V
    .locals 5

    .line 1
    iget-object v0, p0, La7/f;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/fragment/app/j0;

    .line 4
    .line 5
    iget-object v1, v0, Landroidx/fragment/app/j0;->n:Landroidx/fragment/app/v;

    .line 6
    .line 7
    iget-object v1, v1, Landroidx/fragment/app/v;->g:Landroidx/fragment/app/FragmentActivity;

    .line 8
    .line 9
    iget-object v2, v0, Landroidx/fragment/app/j0;->p:Landroidx/fragment/app/s;

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {v2}, Landroidx/fragment/app/s;->l()Landroidx/fragment/app/j0;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const/4 v3, 0x1

    .line 18
    iget-object v2, v2, Landroidx/fragment/app/j0;->k:La7/f;

    .line 19
    .line 20
    invoke-virtual {v2, p1, v3}, La7/f;->r(Landroidx/fragment/app/s;Z)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v2, p0, La7/f;->b:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_3

    .line 36
    .line 37
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Landroidx/fragment/app/z;

    .line 42
    .line 43
    if-eqz p2, :cond_2

    .line 44
    .line 45
    iget-boolean v4, v3, Landroidx/fragment/app/z;->b:Z

    .line 46
    .line 47
    if-eqz v4, :cond_1

    .line 48
    .line 49
    :cond_2
    iget-object v3, v3, Landroidx/fragment/app/z;->a:Landroidx/fragment/app/g0;

    .line 50
    .line 51
    invoke-virtual {v3, v0, p1, v1}, Landroidx/fragment/app/g0;->onFragmentPreAttached(Landroidx/fragment/app/j0;Landroidx/fragment/app/s;Landroid/content/Context;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    return-void
.end method

.method public s(Landroidx/fragment/app/s;Landroid/os/Bundle;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, La7/f;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/fragment/app/j0;

    .line 4
    .line 5
    iget-object v1, v0, Landroidx/fragment/app/j0;->p:Landroidx/fragment/app/s;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1}, Landroidx/fragment/app/s;->l()Landroidx/fragment/app/j0;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x1

    .line 14
    iget-object v1, v1, Landroidx/fragment/app/j0;->k:La7/f;

    .line 15
    .line 16
    invoke-virtual {v1, p1, p2, v2}, La7/f;->s(Landroidx/fragment/app/s;Landroid/os/Bundle;Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v1, p0, La7/f;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_3

    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Landroidx/fragment/app/z;

    .line 38
    .line 39
    if-eqz p3, :cond_2

    .line 40
    .line 41
    iget-boolean v3, v2, Landroidx/fragment/app/z;->b:Z

    .line 42
    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    :cond_2
    iget-object v2, v2, Landroidx/fragment/app/z;->a:Landroidx/fragment/app/g0;

    .line 46
    .line 47
    invoke-virtual {v2, v0, p1, p2}, Landroidx/fragment/app/g0;->onFragmentPreCreated(Landroidx/fragment/app/j0;Landroidx/fragment/app/s;Landroid/os/Bundle;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    return-void
.end method

.method public t(Landroidx/fragment/app/s;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, La7/f;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/fragment/app/j0;

    .line 4
    .line 5
    iget-object v1, v0, Landroidx/fragment/app/j0;->p:Landroidx/fragment/app/s;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1}, Landroidx/fragment/app/s;->l()Landroidx/fragment/app/j0;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x1

    .line 14
    iget-object v1, v1, Landroidx/fragment/app/j0;->k:La7/f;

    .line 15
    .line 16
    invoke-virtual {v1, p1, v2}, La7/f;->t(Landroidx/fragment/app/s;Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v1, p0, La7/f;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_3

    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Landroidx/fragment/app/z;

    .line 38
    .line 39
    if-eqz p2, :cond_2

    .line 40
    .line 41
    iget-boolean v3, v2, Landroidx/fragment/app/z;->b:Z

    .line 42
    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    :cond_2
    iget-object v2, v2, Landroidx/fragment/app/z;->a:Landroidx/fragment/app/g0;

    .line 46
    .line 47
    invoke-virtual {v2, v0, p1}, Landroidx/fragment/app/g0;->onFragmentResumed(Landroidx/fragment/app/j0;Landroidx/fragment/app/s;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget v0, p0, La7/f;->a:I

    .line 2
    .line 3
    sparse-switch v0, :sswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const/16 v1, 0x80

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 16
    .line 17
    .line 18
    const-string v1, "LoaderManager{"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v1, " in "

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, La7/f;->b:Ljava/lang/Object;

    .line 40
    .line 41
    if-nez v1, :cond_0

    .line 42
    .line 43
    const-string v1, "null"

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-gtz v3, :cond_1

    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    const/16 v3, 0x2e

    .line 72
    .line 73
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-lez v3, :cond_1

    .line 78
    .line 79
    add-int/lit8 v3, v3, 0x1

    .line 80
    .line 81
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const/16 v2, 0x7b

    .line 89
    .line 90
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    :goto_0
    const-string v1, "}}"

    .line 105
    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    return-object v0

    .line 114
    :sswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    const/16 v1, 0x64

    .line 117
    .line 118
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 119
    .line 120
    .line 121
    iget-object v1, p0, La7/f;->c:Ljava/lang/Object;

    .line 122
    .line 123
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    const/16 v1, 0x7b

    .line 135
    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    iget-object v1, p0, La7/f;->b:Ljava/lang/Object;

    .line 140
    .line 141
    check-cast v1, Ljava/util/ArrayList;

    .line 142
    .line 143
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    const/4 v3, 0x0

    .line 148
    :goto_1
    if-ge v3, v2, :cond_3

    .line 149
    .line 150
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    check-cast v4, Ljava/lang/String;

    .line 155
    .line 156
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    add-int/lit8 v4, v2, -0x1

    .line 160
    .line 161
    if-ge v3, v4, :cond_2

    .line 162
    .line 163
    const-string v4, ", "

    .line 164
    .line 165
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_3
    const/16 v1, 0x7d

    .line 172
    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    return-object v0

    .line 181
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0x19 -> :sswitch_0
    .end sparse-switch
.end method

.method public u(Landroidx/fragment/app/s;Landroid/os/Bundle;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, La7/f;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/fragment/app/j0;

    .line 4
    .line 5
    iget-object v1, v0, Landroidx/fragment/app/j0;->p:Landroidx/fragment/app/s;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1}, Landroidx/fragment/app/s;->l()Landroidx/fragment/app/j0;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x1

    .line 14
    iget-object v1, v1, Landroidx/fragment/app/j0;->k:La7/f;

    .line 15
    .line 16
    invoke-virtual {v1, p1, p2, v2}, La7/f;->u(Landroidx/fragment/app/s;Landroid/os/Bundle;Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v1, p0, La7/f;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_3

    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Landroidx/fragment/app/z;

    .line 38
    .line 39
    if-eqz p3, :cond_2

    .line 40
    .line 41
    iget-boolean v3, v2, Landroidx/fragment/app/z;->b:Z

    .line 42
    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    :cond_2
    iget-object v2, v2, Landroidx/fragment/app/z;->a:Landroidx/fragment/app/g0;

    .line 46
    .line 47
    invoke-virtual {v2, v0, p1, p2}, Landroidx/fragment/app/g0;->onFragmentSaveInstanceState(Landroidx/fragment/app/j0;Landroidx/fragment/app/s;Landroid/os/Bundle;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    return-void
.end method

.method public v(Landroidx/fragment/app/s;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, La7/f;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/fragment/app/j0;

    .line 4
    .line 5
    iget-object v1, v0, Landroidx/fragment/app/j0;->p:Landroidx/fragment/app/s;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1}, Landroidx/fragment/app/s;->l()Landroidx/fragment/app/j0;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x1

    .line 14
    iget-object v1, v1, Landroidx/fragment/app/j0;->k:La7/f;

    .line 15
    .line 16
    invoke-virtual {v1, p1, v2}, La7/f;->v(Landroidx/fragment/app/s;Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v1, p0, La7/f;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_3

    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Landroidx/fragment/app/z;

    .line 38
    .line 39
    if-eqz p2, :cond_2

    .line 40
    .line 41
    iget-boolean v3, v2, Landroidx/fragment/app/z;->b:Z

    .line 42
    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    :cond_2
    iget-object v2, v2, Landroidx/fragment/app/z;->a:Landroidx/fragment/app/g0;

    .line 46
    .line 47
    invoke-virtual {v2, v0, p1}, Landroidx/fragment/app/g0;->onFragmentStarted(Landroidx/fragment/app/j0;Landroidx/fragment/app/s;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    return-void
.end method

.method public w(Landroidx/fragment/app/s;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, La7/f;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/fragment/app/j0;

    .line 4
    .line 5
    iget-object v1, v0, Landroidx/fragment/app/j0;->p:Landroidx/fragment/app/s;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1}, Landroidx/fragment/app/s;->l()Landroidx/fragment/app/j0;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x1

    .line 14
    iget-object v1, v1, Landroidx/fragment/app/j0;->k:La7/f;

    .line 15
    .line 16
    invoke-virtual {v1, p1, v2}, La7/f;->w(Landroidx/fragment/app/s;Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v1, p0, La7/f;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_3

    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Landroidx/fragment/app/z;

    .line 38
    .line 39
    if-eqz p2, :cond_2

    .line 40
    .line 41
    iget-boolean v3, v2, Landroidx/fragment/app/z;->b:Z

    .line 42
    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    :cond_2
    iget-object v2, v2, Landroidx/fragment/app/z;->a:Landroidx/fragment/app/g0;

    .line 46
    .line 47
    invoke-virtual {v2, v0, p1}, Landroidx/fragment/app/g0;->onFragmentStopped(Landroidx/fragment/app/j0;Landroidx/fragment/app/s;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    return-void
.end method

.method public x(Landroidx/fragment/app/s;Landroid/view/View;Landroid/os/Bundle;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, La7/f;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/fragment/app/j0;

    .line 4
    .line 5
    iget-object v1, v0, Landroidx/fragment/app/j0;->p:Landroidx/fragment/app/s;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1}, Landroidx/fragment/app/s;->l()Landroidx/fragment/app/j0;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x1

    .line 14
    iget-object v1, v1, Landroidx/fragment/app/j0;->k:La7/f;

    .line 15
    .line 16
    invoke-virtual {v1, p1, p2, p3, v2}, La7/f;->x(Landroidx/fragment/app/s;Landroid/view/View;Landroid/os/Bundle;Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v1, p0, La7/f;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_3

    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Landroidx/fragment/app/z;

    .line 38
    .line 39
    if-eqz p4, :cond_2

    .line 40
    .line 41
    iget-boolean v3, v2, Landroidx/fragment/app/z;->b:Z

    .line 42
    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    :cond_2
    iget-object v2, v2, Landroidx/fragment/app/z;->a:Landroidx/fragment/app/g0;

    .line 46
    .line 47
    invoke-virtual {v2, v0, p1, p2, p3}, Landroidx/fragment/app/g0;->onFragmentViewCreated(Landroidx/fragment/app/j0;Landroidx/fragment/app/s;Landroid/view/View;Landroid/os/Bundle;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    return-void
.end method

.method public y(Landroidx/fragment/app/s;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, La7/f;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/fragment/app/j0;

    .line 4
    .line 5
    iget-object v1, v0, Landroidx/fragment/app/j0;->p:Landroidx/fragment/app/s;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1}, Landroidx/fragment/app/s;->l()Landroidx/fragment/app/j0;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x1

    .line 14
    iget-object v1, v1, Landroidx/fragment/app/j0;->k:La7/f;

    .line 15
    .line 16
    invoke-virtual {v1, p1, v2}, La7/f;->y(Landroidx/fragment/app/s;Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v1, p0, La7/f;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_3

    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Landroidx/fragment/app/z;

    .line 38
    .line 39
    if-eqz p2, :cond_2

    .line 40
    .line 41
    iget-boolean v3, v2, Landroidx/fragment/app/z;->b:Z

    .line 42
    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    :cond_2
    iget-object v2, v2, Landroidx/fragment/app/z;->a:Landroidx/fragment/app/g0;

    .line 46
    .line 47
    invoke-virtual {v2, v0, p1}, Landroidx/fragment/app/g0;->onFragmentViewDestroyed(Landroidx/fragment/app/j0;Landroidx/fragment/app/s;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    return-void
.end method

.method public z(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 5

    .line 1
    iget-object v0, p0, La7/f;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lk1/b;

    .line 4
    .line 5
    iget-object v1, v0, Lk1/b;->d:Lp/m;

    .line 6
    .line 7
    iget v1, v1, Lp/m;->c:I

    .line 8
    .line 9
    if-lez v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v1, "Loaders:"

    .line 15
    .line 16
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v2, "    "

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const/4 v2, 0x0

    .line 37
    iget-object v3, v0, Lk1/b;->d:Lp/m;

    .line 38
    .line 39
    iget v4, v3, Lp/m;->c:I

    .line 40
    .line 41
    if-gtz v4, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-object v3, v3, Lp/m;->b:[Ljava/lang/Object;

    .line 45
    .line 46
    aget-object v3, v3, v2

    .line 47
    .line 48
    check-cast v3, Lk1/a;

    .line 49
    .line 50
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const-string p1, "  #"

    .line 54
    .line 55
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object p1, v0, Lk1/b;->d:Lp/m;

    .line 59
    .line 60
    iget-object p1, p1, Lp/m;->a:[I

    .line 61
    .line 62
    aget p1, p1, v2

    .line 63
    .line 64
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 65
    .line 66
    .line 67
    const-string p1, ": "

    .line 68
    .line 69
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3}, Lk1/a;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    const-string p1, "mId="

    .line 83
    .line 84
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 88
    .line 89
    .line 90
    const-string p1, " mArgs="

    .line 91
    .line 92
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    const/4 p1, 0x0

    .line 96
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    const-string p1, "mLoader="

    .line 103
    .line 104
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    const/4 p1, 0x0

    .line 108
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    new-instance p1, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string p2, "  "

    .line 120
    .line 121
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const/4 p1, 0x0

    .line 125
    throw p1

    .line 126
    :cond_1
    :goto_0
    return-void
.end method
