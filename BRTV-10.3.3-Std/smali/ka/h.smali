.class public final Lka/h;
.super Ljava/lang/Object;
.source "MyApplication"


# instance fields
.field public final synthetic a:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic b:I

.field public final synthetic c:Ljava/util/ArrayList;

.field public final synthetic d:Lorg/bitspark/android/beans/EventBean;

.field public final synthetic e:Lka/j;


# direct methods
.method public constructor <init>(Lka/j;Ljava/util/concurrent/atomic/AtomicInteger;ILjava/util/ArrayList;Lorg/bitspark/android/beans/EventBean;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lka/h;->e:Lka/j;

    .line 5
    .line 6
    iput-object p2, p0, Lka/h;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    .line 8
    iput p3, p0, Lka/h;->b:I

    .line 9
    .line 10
    iput-object p4, p0, Lka/h;->c:Ljava/util/ArrayList;

    .line 11
    .line 12
    iput-object p5, p0, Lka/h;->d:Lorg/bitspark/android/beans/EventBean;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a(Lx2/t;Ljava/lang/Object;)V
    .locals 2

    .line 1
    const-string v0, "AkDc4dy8svInSt/w\n"

    .line 2
    .line 3
    const-string v1, "Si+xhJrO05U=\n"

    .line 4
    .line 5
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    const-string v0, "71OVmhEuBfvzTbmbHygEyctJlZgtJw7N3UCemBs9Qd/tU5+ERG8=\n"

    .line 9
    .line 10
    const-string v1, "nyHw9n5PYbo=\n"

    .line 11
    .line 12
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    invoke-static {p2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    const-string p2, "y+m4tw==\n"

    .line 19
    .line 20
    const-string v0, "68SViVuqGqU=\n"

    .line 21
    .line 22
    invoke-static {p2, v0}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lka/h;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    iget p2, p0, Lka/h;->b:I

    .line 35
    .line 36
    if-ne p1, p2, :cond_0

    .line 37
    .line 38
    iget-object p1, p0, Lka/h;->c:Ljava/util/ArrayList;

    .line 39
    .line 40
    iget-object p2, p0, Lka/h;->e:Lka/j;

    .line 41
    .line 42
    invoke-static {p2, p1}, Lka/j;->Q(Lka/j;Ljava/util/ArrayList;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    const-string p1, "LLKkD7wmLPUJuKce\n"

    .line 4
    .line 5
    const-string v0, "ZN3JavpUTZI=\n"

    .line 6
    .line 7
    invoke-static {p1, v0}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    const-string p1, "qycsDDY2eRy3OQANODB4Lo89LA4KP3IqmTQnDjwlPRKQb2k=\n"

    .line 11
    .line 12
    const-string v0, "21VJYFlXHV0=\n"

    .line 13
    .line 14
    invoke-static {p1, v0}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    invoke-static {p2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lka/h;->c:Ljava/util/ArrayList;

    .line 21
    .line 22
    iget-object p2, p0, Lka/h;->d:Lorg/bitspark/android/beans/EventBean;

    .line 23
    .line 24
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    iget-object p2, p0, Lka/h;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 28
    .line 29
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    iget v0, p0, Lka/h;->b:I

    .line 34
    .line 35
    if-ne p2, v0, :cond_0

    .line 36
    .line 37
    iget-object p2, p0, Lka/h;->e:Lka/j;

    .line 38
    .line 39
    invoke-static {p2, p1}, Lka/j;->Q(Lka/j;Ljava/util/ArrayList;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method
