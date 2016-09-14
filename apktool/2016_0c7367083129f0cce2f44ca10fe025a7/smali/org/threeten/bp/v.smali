.class public final Lorg/threeten/bp/v;
.super Lorg/threeten/bp/b/a;
.source "OffsetDateTime.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;
.implements Lorg/threeten/bp/temporal/k;
.implements Lorg/threeten/bp/temporal/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/threeten/bp/b/a;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/threeten/bp/v;",
        ">;",
        "Lorg/threeten/bp/temporal/k;",
        "Lorg/threeten/bp/temporal/m;"
    }
.end annotation


# static fields
.field public static final a:Lorg/threeten/bp/v;

.field public static final b:Lorg/threeten/bp/v;

.field public static final c:Lorg/threeten/bp/temporal/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/threeten/bp/temporal/z",
            "<",
            "Lorg/threeten/bp/v;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/threeten/bp/v;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final d:Lorg/threeten/bp/m;

.field private final f:Lorg/threeten/bp/af;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 101
    sget-object v0, Lorg/threeten/bp/m;->a:Lorg/threeten/bp/m;

    sget-object v1, Lorg/threeten/bp/af;->f:Lorg/threeten/bp/af;

    .line 23580
    invoke-static {v0, v1}, Lorg/threeten/bp/v;->a(Lorg/threeten/bp/m;Lorg/threeten/bp/af;)Lorg/threeten/bp/v;

    move-result-object v0

    .line 101
    sput-object v0, Lorg/threeten/bp/v;->a:Lorg/threeten/bp/v;

    .line 109
    sget-object v0, Lorg/threeten/bp/m;->b:Lorg/threeten/bp/m;

    sget-object v1, Lorg/threeten/bp/af;->e:Lorg/threeten/bp/af;

    .line 24580
    invoke-static {v0, v1}, Lorg/threeten/bp/v;->a(Lorg/threeten/bp/m;Lorg/threeten/bp/af;)Lorg/threeten/bp/v;

    move-result-object v0

    .line 109
    sput-object v0, Lorg/threeten/bp/v;->b:Lorg/threeten/bp/v;

    .line 113
    new-instance v0, Lorg/threeten/bp/w;

    invoke-direct {v0}, Lorg/threeten/bp/w;-><init>()V

    sput-object v0, Lorg/threeten/bp/v;->c:Lorg/threeten/bp/temporal/z;

    .line 136
    new-instance v0, Lorg/threeten/bp/x;

    invoke-direct {v0}, Lorg/threeten/bp/x;-><init>()V

    sput-object v0, Lorg/threeten/bp/v;->e:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>(Lorg/threeten/bp/m;Lorg/threeten/bp/af;)V
    .locals 1

    .prologue
    .line 369
    invoke-direct {p0}, Lorg/threeten/bp/b/a;-><init>()V

    .line 370
    const-string v0, "dateTime"

    invoke-static {p1, v0}, Lorg/threeten/bp/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/m;

    iput-object v0, p0, Lorg/threeten/bp/v;->d:Lorg/threeten/bp/m;

    .line 371
    const-string v0, "offset"

    invoke-static {p2, v0}, Lorg/threeten/bp/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/af;

    iput-object v0, p0, Lorg/threeten/bp/v;->f:Lorg/threeten/bp/af;

    .line 372
    return-void
.end method

.method private static a(Lorg/threeten/bp/g;Lorg/threeten/bp/ad;)Lorg/threeten/bp/v;
    .locals 4

    .prologue
    .line 287
    const-string v0, "instant"

    invoke-static {p0, v0}, Lorg/threeten/bp/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 288
    const-string v0, "zone"

    invoke-static {p1, v0}, Lorg/threeten/bp/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 289
    invoke-virtual {p1}, Lorg/threeten/bp/ad;->c()Lorg/threeten/bp/zone/i;

    move-result-object v0

    .line 290
    invoke-virtual {v0, p0}, Lorg/threeten/bp/zone/i;->a(Lorg/threeten/bp/g;)Lorg/threeten/bp/af;

    move-result-object v0

    .line 2546
    iget-wide v2, p0, Lorg/threeten/bp/g;->e:J

    .line 2559
    iget v1, p0, Lorg/threeten/bp/g;->f:I

    .line 291
    invoke-static {v2, v3, v1, v0}, Lorg/threeten/bp/m;->a(JILorg/threeten/bp/af;)Lorg/threeten/bp/m;

    move-result-object v1

    .line 292
    new-instance v2, Lorg/threeten/bp/v;

    invoke-direct {v2, v1, v0}, Lorg/threeten/bp/v;-><init>(Lorg/threeten/bp/m;Lorg/threeten/bp/af;)V

    return-object v2
.end method

.method public static a(Lorg/threeten/bp/m;Lorg/threeten/bp/af;)Lorg/threeten/bp/v;
    .locals 1

    .prologue
    .line 239
    new-instance v0, Lorg/threeten/bp/v;

    invoke-direct {v0, p0, p1}, Lorg/threeten/bp/v;-><init>(Lorg/threeten/bp/m;Lorg/threeten/bp/af;)V

    return-object v0
.end method

.method public static a(Lorg/threeten/bp/temporal/l;)Lorg/threeten/bp/v;
    .locals 3

    .prologue
    .line 313
    instance-of v0, p0, Lorg/threeten/bp/v;

    if-eqz v0, :cond_0

    .line 314
    check-cast p0, Lorg/threeten/bp/v;

    .line 323
    :goto_0
    return-object p0

    .line 317
    :cond_0
    :try_start_0
    invoke-static {p0}, Lorg/threeten/bp/af;->b(Lorg/threeten/bp/temporal/l;)Lorg/threeten/bp/af;
    :try_end_0
    .catch Lorg/threeten/bp/DateTimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 319
    :try_start_1
    invoke-static {p0}, Lorg/threeten/bp/m;->a(Lorg/threeten/bp/temporal/l;)Lorg/threeten/bp/m;

    move-result-object v1

    .line 320
    invoke-static {v1, v0}, Lorg/threeten/bp/v;->a(Lorg/threeten/bp/m;Lorg/threeten/bp/af;)Lorg/threeten/bp/v;
    :try_end_1
    .catch Lorg/threeten/bp/DateTimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p0

    goto :goto_0

    .line 322
    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {p0}, Lorg/threeten/bp/g;->a(Lorg/threeten/bp/temporal/l;)Lorg/threeten/bp/g;

    move-result-object v1

    .line 323
    invoke-static {v1, v0}, Lorg/threeten/bp/v;->a(Lorg/threeten/bp/g;Lorg/threeten/bp/ad;)Lorg/threeten/bp/v;
    :try_end_2
    .catch Lorg/threeten/bp/DateTimeException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object p0

    goto :goto_0

    .line 326
    :catch_1
    move-exception v0

    new-instance v0, Lorg/threeten/bp/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to obtain OffsetDateTime from TemporalAccessor: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b(Lorg/threeten/bp/m;Lorg/threeten/bp/af;)Lorg/threeten/bp/v;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lorg/threeten/bp/v;->d:Lorg/threeten/bp/m;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lorg/threeten/bp/v;->f:Lorg/threeten/bp/af;

    invoke-virtual {v0, p2}, Lorg/threeten/bp/af;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    :goto_0
    return-object p0

    :cond_0
    new-instance p0, Lorg/threeten/bp/v;

    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/v;-><init>(Lorg/threeten/bp/m;Lorg/threeten/bp/af;)V

    goto :goto_0
.end method

.method private c(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/v;
    .locals 3

    .prologue
    .line 1044
    instance-of v0, p3, Lorg/threeten/bp/temporal/b;

    if-eqz v0, :cond_0

    .line 1045
    iget-object v0, p0, Lorg/threeten/bp/v;->d:Lorg/threeten/bp/m;

    invoke-virtual {v0, p1, p2, p3}, Lorg/threeten/bp/m;->c(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/m;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/v;->f:Lorg/threeten/bp/af;

    invoke-direct {p0, v0, v1}, Lorg/threeten/bp/v;->b(Lorg/threeten/bp/m;Lorg/threeten/bp/af;)Lorg/threeten/bp/v;

    move-result-object v0

    .line 1047
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p3, p0, p1, p2}, Lorg/threeten/bp/temporal/aa;->a(Lorg/threeten/bp/temporal/k;J)Lorg/threeten/bp/temporal/k;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/v;

    goto :goto_0
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 1632
    iget-object v0, p0, Lorg/threeten/bp/v;->d:Lorg/threeten/bp/m;

    iget-object v1, p0, Lorg/threeten/bp/v;->f:Lorg/threeten/bp/af;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/m;->b(Lorg/threeten/bp/af;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/aa;)J
    .locals 4

    .prologue
    .line 1493
    invoke-static {p1}, Lorg/threeten/bp/v;->a(Lorg/threeten/bp/temporal/l;)Lorg/threeten/bp/v;

    move-result-object v0

    .line 1494
    instance-of v1, p2, Lorg/threeten/bp/temporal/b;

    if-eqz v1, :cond_1

    .line 1495
    iget-object v1, p0, Lorg/threeten/bp/v;->f:Lorg/threeten/bp/af;

    .line 9609
    iget-object v2, v0, Lorg/threeten/bp/v;->f:Lorg/threeten/bp/af;

    invoke-virtual {v1, v2}, Lorg/threeten/bp/af;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1496
    :goto_0
    iget-object v1, p0, Lorg/threeten/bp/v;->d:Lorg/threeten/bp/m;

    iget-object v0, v0, Lorg/threeten/bp/v;->d:Lorg/threeten/bp/m;

    invoke-virtual {v1, v0, p2}, Lorg/threeten/bp/m;->a(Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/aa;)J

    move-result-wide v0

    .line 1498
    :goto_1
    return-wide v0

    .line 10449
    :cond_0
    iget v2, v1, Lorg/threeten/bp/af;->g:I

    .line 9612
    iget-object v3, v0, Lorg/threeten/bp/v;->f:Lorg/threeten/bp/af;

    .line 11449
    iget v3, v3, Lorg/threeten/bp/af;->g:I

    .line 9612
    sub-int/2addr v2, v3

    .line 9613
    iget-object v0, v0, Lorg/threeten/bp/v;->d:Lorg/threeten/bp/m;

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/m;->b(J)Lorg/threeten/bp/m;

    move-result-object v2

    .line 9614
    new-instance v0, Lorg/threeten/bp/v;

    invoke-direct {v0, v2, v1}, Lorg/threeten/bp/v;-><init>(Lorg/threeten/bp/m;Lorg/threeten/bp/af;)V

    goto :goto_0

    .line 1498
    :cond_1
    invoke-interface {p2, p0, v0}, Lorg/threeten/bp/temporal/aa;->a(Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/k;)J

    move-result-wide v0

    goto :goto_1
.end method

.method public final a(Lorg/threeten/bp/temporal/z;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/threeten/bp/temporal/z",
            "<TR;>;)TR;"
        }
    .end annotation

    .prologue
    .line 1393
    invoke-static {}, Lorg/threeten/bp/temporal/r;->b()Lorg/threeten/bp/temporal/z;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 1394
    sget-object v0, Lorg/threeten/bp/a/p;->b:Lorg/threeten/bp/a/p;

    .line 1406
    :goto_0
    return-object v0

    .line 1395
    :cond_0
    invoke-static {}, Lorg/threeten/bp/temporal/r;->c()Lorg/threeten/bp/temporal/z;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 1396
    sget-object v0, Lorg/threeten/bp/temporal/b;->a:Lorg/threeten/bp/temporal/b;

    goto :goto_0

    .line 1397
    :cond_1
    invoke-static {}, Lorg/threeten/bp/temporal/r;->e()Lorg/threeten/bp/temporal/z;

    move-result-object v0

    if-eq p1, v0, :cond_2

    invoke-static {}, Lorg/threeten/bp/temporal/r;->d()Lorg/threeten/bp/temporal/z;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 4565
    :cond_2
    iget-object v0, p0, Lorg/threeten/bp/v;->f:Lorg/threeten/bp/af;

    goto :goto_0

    .line 1399
    :cond_3
    invoke-static {}, Lorg/threeten/bp/temporal/r;->f()Lorg/threeten/bp/temporal/z;

    move-result-object v0

    if-ne p1, v0, :cond_4

    .line 4571
    iget-object v0, p0, Lorg/threeten/bp/v;->d:Lorg/threeten/bp/m;

    .line 4628
    iget-object v0, v0, Lorg/threeten/bp/m;->d:Lorg/threeten/bp/j;

    goto :goto_0

    .line 1401
    :cond_4
    invoke-static {}, Lorg/threeten/bp/temporal/r;->g()Lorg/threeten/bp/temporal/z;

    move-result-object v0

    if-ne p1, v0, :cond_5

    .line 5583
    iget-object v0, p0, Lorg/threeten/bp/v;->d:Lorg/threeten/bp/m;

    .line 5641
    iget-object v0, v0, Lorg/threeten/bp/m;->e:Lorg/threeten/bp/p;

    goto :goto_0

    .line 1403
    :cond_5
    invoke-static {}, Lorg/threeten/bp/temporal/r;->a()Lorg/threeten/bp/temporal/z;

    move-result-object v0

    if-ne p1, v0, :cond_6

    .line 1404
    const/4 v0, 0x0

    goto :goto_0

    .line 1406
    :cond_6
    invoke-super {p0, p1}, Lorg/threeten/bp/b/a;->a(Lorg/threeten/bp/temporal/z;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final synthetic a(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/temporal/k;
    .locals 5

    .prologue
    .line 90
    .line 12229
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-direct {p0, v0, v1, p3}, Lorg/threeten/bp/v;->c(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/v;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-direct {v0, v2, v3, p3}, Lorg/threeten/bp/v;->c(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/v;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-direct {p0, v0, v1, p3}, Lorg/threeten/bp/v;->c(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/v;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lorg/threeten/bp/temporal/k;)Lorg/threeten/bp/temporal/k;
    .locals 4

    .prologue
    .line 1437
    sget-object v0, Lorg/threeten/bp/temporal/a;->u:Lorg/threeten/bp/temporal/a;

    .line 6571
    iget-object v1, p0, Lorg/threeten/bp/v;->d:Lorg/threeten/bp/m;

    .line 6628
    iget-object v1, v1, Lorg/threeten/bp/m;->d:Lorg/threeten/bp/j;

    .line 1437
    invoke-virtual {v1}, Lorg/threeten/bp/j;->f()J

    move-result-wide v2

    invoke-interface {p1, v0, v2, v3}, Lorg/threeten/bp/temporal/k;->a(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/temporal/k;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/temporal/a;->b:Lorg/threeten/bp/temporal/a;

    .line 7583
    iget-object v2, p0, Lorg/threeten/bp/v;->d:Lorg/threeten/bp/m;

    .line 7641
    iget-object v2, v2, Lorg/threeten/bp/m;->e:Lorg/threeten/bp/p;

    .line 1437
    invoke-virtual {v2}, Lorg/threeten/bp/p;->b()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lorg/threeten/bp/temporal/k;->a(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/temporal/k;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/temporal/a;->D:Lorg/threeten/bp/temporal/a;

    .line 8565
    iget-object v2, p0, Lorg/threeten/bp/v;->f:Lorg/threeten/bp/af;

    .line 9449
    iget v2, v2, Lorg/threeten/bp/af;->g:I

    .line 1437
    int-to-long v2, v2

    invoke-interface {v0, v1, v2, v3}, Lorg/threeten/bp/temporal/k;->a(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/temporal/k;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lorg/threeten/bp/temporal/m;)Lorg/threeten/bp/temporal/k;
    .locals 2

    .prologue
    .line 90
    .line 13784
    instance-of v0, p1, Lorg/threeten/bp/j;

    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/threeten/bp/p;

    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/threeten/bp/m;

    if-eqz v0, :cond_1

    .line 13785
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/v;->d:Lorg/threeten/bp/m;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/m;->b(Lorg/threeten/bp/temporal/m;)Lorg/threeten/bp/m;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/v;->f:Lorg/threeten/bp/af;

    invoke-direct {p0, v0, v1}, Lorg/threeten/bp/v;->b(Lorg/threeten/bp/m;Lorg/threeten/bp/af;)Lorg/threeten/bp/v;

    move-result-object p1

    .line 13791
    :goto_0
    return-object p1

    .line 13786
    :cond_1
    instance-of v0, p1, Lorg/threeten/bp/g;

    if-eqz v0, :cond_2

    .line 13787
    check-cast p1, Lorg/threeten/bp/g;

    iget-object v0, p0, Lorg/threeten/bp/v;->f:Lorg/threeten/bp/af;

    invoke-static {p1, v0}, Lorg/threeten/bp/v;->a(Lorg/threeten/bp/g;Lorg/threeten/bp/ad;)Lorg/threeten/bp/v;

    move-result-object p1

    goto :goto_0

    .line 13788
    :cond_2
    instance-of v0, p1, Lorg/threeten/bp/af;

    if-eqz v0, :cond_3

    .line 13789
    iget-object v0, p0, Lorg/threeten/bp/v;->d:Lorg/threeten/bp/m;

    check-cast p1, Lorg/threeten/bp/af;

    invoke-direct {p0, v0, p1}, Lorg/threeten/bp/v;->b(Lorg/threeten/bp/m;Lorg/threeten/bp/af;)Lorg/threeten/bp/v;

    move-result-object p1

    goto :goto_0

    .line 13790
    :cond_3
    instance-of v0, p1, Lorg/threeten/bp/v;

    if-eqz v0, :cond_4

    .line 13791
    check-cast p1, Lorg/threeten/bp/v;

    goto :goto_0

    .line 13793
    :cond_4
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/m;->a(Lorg/threeten/bp/temporal/k;)Lorg/threeten/bp/temporal/k;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/v;

    move-object p1, v0

    .line 90
    goto :goto_0
.end method

.method public final synthetic a(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/temporal/k;
    .locals 4

    .prologue
    .line 90
    .line 13841
    instance-of v0, p1, Lorg/threeten/bp/temporal/a;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 13842
    check-cast v0, Lorg/threeten/bp/temporal/a;

    .line 13843
    sget-object v1, Lorg/threeten/bp/y;->a:[I

    invoke-virtual {v0}, Lorg/threeten/bp/temporal/a;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 13849
    iget-object v0, p0, Lorg/threeten/bp/v;->d:Lorg/threeten/bp/m;

    invoke-virtual {v0, p1, p2, p3}, Lorg/threeten/bp/m;->b(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/m;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/v;->f:Lorg/threeten/bp/af;

    invoke-direct {p0, v0, v1}, Lorg/threeten/bp/v;->b(Lorg/threeten/bp/m;Lorg/threeten/bp/af;)Lorg/threeten/bp/v;

    move-result-object v0

    :goto_0
    return-object v0

    .line 14734
    :pswitch_0
    iget-object v0, p0, Lorg/threeten/bp/v;->d:Lorg/threeten/bp/m;

    .line 14750
    iget-object v0, v0, Lorg/threeten/bp/m;->e:Lorg/threeten/bp/p;

    .line 15677
    iget v0, v0, Lorg/threeten/bp/p;->h:I

    .line 13844
    int-to-long v0, v0

    invoke-static {p2, p3, v0, v1}, Lorg/threeten/bp/g;->a(JJ)Lorg/threeten/bp/g;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/v;->f:Lorg/threeten/bp/af;

    invoke-static {v0, v1}, Lorg/threeten/bp/v;->a(Lorg/threeten/bp/g;Lorg/threeten/bp/ad;)Lorg/threeten/bp/v;

    move-result-object v0

    goto :goto_0

    .line 13846
    :pswitch_1
    iget-object v1, p0, Lorg/threeten/bp/v;->d:Lorg/threeten/bp/m;

    invoke-virtual {v0, p2, p3}, Lorg/threeten/bp/temporal/a;->b(J)I

    move-result v0

    invoke-static {v0}, Lorg/threeten/bp/af;->a(I)Lorg/threeten/bp/af;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lorg/threeten/bp/v;->b(Lorg/threeten/bp/m;Lorg/threeten/bp/af;)Lorg/threeten/bp/v;

    move-result-object v0

    goto :goto_0

    .line 13851
    :cond_0
    invoke-interface {p1, p0, p2, p3}, Lorg/threeten/bp/temporal/q;->a(Lorg/threeten/bp/temporal/k;J)Lorg/threeten/bp/temporal/k;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/v;

    goto :goto_0

    .line 13843
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Lorg/threeten/bp/temporal/q;)Z
    .locals 1

    .prologue
    .line 441
    instance-of v0, p1, Lorg/threeten/bp/temporal/a;

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/q;->a(Lorg/threeten/bp/temporal/l;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Lorg/threeten/bp/temporal/q;)Lorg/threeten/bp/temporal/ab;
    .locals 1

    .prologue
    .line 476
    instance-of v0, p1, Lorg/threeten/bp/temporal/a;

    if-eqz v0, :cond_2

    .line 477
    sget-object v0, Lorg/threeten/bp/temporal/a;->C:Lorg/threeten/bp/temporal/a;

    if-eq p1, v0, :cond_0

    sget-object v0, Lorg/threeten/bp/temporal/a;->D:Lorg/threeten/bp/temporal/a;

    if-ne p1, v0, :cond_1

    .line 478
    :cond_0
    invoke-interface {p1}, Lorg/threeten/bp/temporal/q;->a()Lorg/threeten/bp/temporal/ab;

    move-result-object v0

    .line 482
    :goto_0
    return-object v0

    .line 480
    :cond_1
    iget-object v0, p0, Lorg/threeten/bp/v;->d:Lorg/threeten/bp/m;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/m;->b(Lorg/threeten/bp/temporal/q;)Lorg/threeten/bp/temporal/ab;

    move-result-object v0

    goto :goto_0

    .line 482
    :cond_2
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/q;->b(Lorg/threeten/bp/temporal/l;)Lorg/threeten/bp/temporal/ab;

    move-result-object v0

    goto :goto_0
.end method

.method public final synthetic b(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/temporal/k;
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3}, Lorg/threeten/bp/v;->c(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/v;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lorg/threeten/bp/temporal/p;)Lorg/threeten/bp/temporal/k;
    .locals 1

    .prologue
    .line 90
    .line 13023
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/p;->a(Lorg/threeten/bp/temporal/k;)Lorg/threeten/bp/temporal/k;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/v;

    .line 90
    return-object v0
.end method

.method public final c(Lorg/threeten/bp/temporal/q;)I
    .locals 3

    .prologue
    .line 512
    instance-of v0, p1, Lorg/threeten/bp/temporal/a;

    if-eqz v0, :cond_0

    .line 513
    sget-object v1, Lorg/threeten/bp/y;->a:[I

    move-object v0, p1

    check-cast v0, Lorg/threeten/bp/temporal/a;

    invoke-virtual {v0}, Lorg/threeten/bp/temporal/a;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 517
    iget-object v0, p0, Lorg/threeten/bp/v;->d:Lorg/threeten/bp/m;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/m;->c(Lorg/threeten/bp/temporal/q;)I

    move-result v0

    .line 519
    :goto_0
    return v0

    .line 514
    :pswitch_0
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Field too large for an int: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2565
    :pswitch_1
    iget-object v0, p0, Lorg/threeten/bp/v;->f:Lorg/threeten/bp/af;

    .line 3449
    iget v0, v0, Lorg/threeten/bp/af;->g:I

    goto :goto_0

    .line 519
    :cond_0
    invoke-super {p0, p1}, Lorg/threeten/bp/b/a;->c(Lorg/threeten/bp/temporal/q;)I

    move-result v0

    goto :goto_0

    .line 513
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 90
    check-cast p1, Lorg/threeten/bp/v;

    .line 17565
    iget-object v0, p0, Lorg/threeten/bp/v;->f:Lorg/threeten/bp/af;

    .line 18565
    iget-object v1, p1, Lorg/threeten/bp/v;->f:Lorg/threeten/bp/af;

    .line 16661
    invoke-virtual {v0, v1}, Lorg/threeten/bp/af;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19559
    iget-object v0, p0, Lorg/threeten/bp/v;->d:Lorg/threeten/bp/m;

    .line 20559
    iget-object v1, p1, Lorg/threeten/bp/v;->d:Lorg/threeten/bp/m;

    .line 16662
    invoke-virtual {v0, v1}, Lorg/threeten/bp/m;->a(Lorg/threeten/bp/a/c;)I

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 16664
    :cond_1
    invoke-virtual {p0}, Lorg/threeten/bp/v;->a()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/threeten/bp/v;->a()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/b/c;->a(JJ)I

    move-result v0

    .line 16665
    if-nez v0, :cond_0

    .line 20583
    iget-object v0, p0, Lorg/threeten/bp/v;->d:Lorg/threeten/bp/m;

    .line 20641
    iget-object v0, v0, Lorg/threeten/bp/m;->e:Lorg/threeten/bp/p;

    .line 20677
    iget v0, v0, Lorg/threeten/bp/p;->h:I

    .line 21583
    iget-object v1, p1, Lorg/threeten/bp/v;->d:Lorg/threeten/bp/m;

    .line 21641
    iget-object v1, v1, Lorg/threeten/bp/m;->e:Lorg/threeten/bp/p;

    .line 21677
    iget v1, v1, Lorg/threeten/bp/p;->h:I

    .line 16666
    sub-int/2addr v0, v1

    .line 16667
    if-nez v0, :cond_0

    .line 22559
    iget-object v0, p0, Lorg/threeten/bp/v;->d:Lorg/threeten/bp/m;

    .line 23559
    iget-object v1, p1, Lorg/threeten/bp/v;->d:Lorg/threeten/bp/m;

    .line 16668
    invoke-virtual {v0, v1}, Lorg/threeten/bp/m;->a(Lorg/threeten/bp/a/c;)I

    move-result v0

    goto :goto_0
.end method

.method public final d(Lorg/threeten/bp/temporal/q;)J
    .locals 2

    .prologue
    .line 546
    instance-of v0, p1, Lorg/threeten/bp/temporal/a;

    if-eqz v0, :cond_0

    .line 547
    sget-object v1, Lorg/threeten/bp/y;->a:[I

    move-object v0, p1

    check-cast v0, Lorg/threeten/bp/temporal/a;

    invoke-virtual {v0}, Lorg/threeten/bp/temporal/a;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 551
    iget-object v0, p0, Lorg/threeten/bp/v;->d:Lorg/threeten/bp/m;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/m;->d(Lorg/threeten/bp/temporal/q;)J

    move-result-wide v0

    .line 553
    :goto_0
    return-wide v0

    .line 548
    :pswitch_0
    invoke-virtual {p0}, Lorg/threeten/bp/v;->a()J

    move-result-wide v0

    goto :goto_0

    .line 3565
    :pswitch_1
    iget-object v0, p0, Lorg/threeten/bp/v;->f:Lorg/threeten/bp/af;

    .line 4449
    iget v0, v0, Lorg/threeten/bp/af;->g:I

    .line 549
    int-to-long v0, v0

    goto :goto_0

    .line 553
    :cond_0
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/q;->c(Lorg/threeten/bp/temporal/l;)J

    move-result-wide v0

    goto :goto_0

    .line 547
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1737
    if-ne p0, p1, :cond_1

    .line 1744
    :cond_0
    :goto_0
    return v0

    .line 1740
    :cond_1
    instance-of v2, p1, Lorg/threeten/bp/v;

    if-eqz v2, :cond_3

    .line 1741
    check-cast p1, Lorg/threeten/bp/v;

    .line 1742
    iget-object v2, p0, Lorg/threeten/bp/v;->d:Lorg/threeten/bp/m;

    iget-object v3, p1, Lorg/threeten/bp/v;->d:Lorg/threeten/bp/m;

    invoke-virtual {v2, v3}, Lorg/threeten/bp/m;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/threeten/bp/v;->f:Lorg/threeten/bp/af;

    iget-object v3, p1, Lorg/threeten/bp/v;->f:Lorg/threeten/bp/af;

    invoke-virtual {v2, v3}, Lorg/threeten/bp/af;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1744
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 1754
    iget-object v0, p0, Lorg/threeten/bp/v;->d:Lorg/threeten/bp/m;

    invoke-virtual {v0}, Lorg/threeten/bp/m;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/threeten/bp/v;->f:Lorg/threeten/bp/af;

    invoke-virtual {v1}, Lorg/threeten/bp/af;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1776
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/threeten/bp/v;->d:Lorg/threeten/bp/m;

    invoke-virtual {v1}, Lorg/threeten/bp/m;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/v;->f:Lorg/threeten/bp/af;

    invoke-virtual {v1}, Lorg/threeten/bp/af;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
