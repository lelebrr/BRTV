.class public final Lorg/bitspark/android/utils/i;
.super Ljava/lang/Object;

# interfaces
.implements Lokhttp3/Callback;


# instance fields
.field public final synthetic a:Lj7/c;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Ljava/util/concurrent/atomic/AtomicLong;

.field public final synthetic d:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/nmmedit/protect/NativeUtil;->classesInit0(I)V

    return-void
.end method

.method public constructor <init>(Lj7/c;Landroid/content/Context;Ljava/util/concurrent/atomic/AtomicLong;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/bitspark/android/utils/i;->a:Lj7/c;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/bitspark/android/utils/i;->b:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/bitspark/android/utils/i;->c:Ljava/util/concurrent/atomic/AtomicLong;

    .line 9
    .line 10
    iput-wide p4, p0, Lorg/bitspark/android/utils/i;->d:J

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final native onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
.end method

.method public final native onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
.end method
