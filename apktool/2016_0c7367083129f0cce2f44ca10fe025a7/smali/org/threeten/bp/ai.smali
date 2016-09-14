.class public final Lorg/threeten/bp/ai;
.super Lorg/threeten/bp/a/h;
.source "ZonedDateTime.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/threeten/bp/temporal/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/threeten/bp/a/h",
        "<",
        "Lorg/threeten/bp/j;",
        ">;",
        "Ljava/io/Serializable;",
        "Lorg/threeten/bp/temporal/k;"
    }
.end annotation


# static fields
.field public static final a:Lorg/threeten/bp/temporal/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/threeten/bp/temporal/z",
            "<",
            "Lorg/threeten/bp/ai;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final b:Lorg/threeten/bp/m;

.field private final c:Lorg/threeten/bp/af;

.field private final d:Lorg/threeten/bp/ad;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 129
    new-instance v0, Lorg/threeten/bp/aj;

    invoke-direct {v0}, Lorg/threeten/bp/aj;-><init>()V

    sput-object v0, Lorg/threeten/bp/ai;->a:Lorg/threeten/bp/temporal/z;

    return-void
.end method

.method private constructor <init>(Lorg/threeten/bp/m;Lorg/threeten/bp/af;Lorg/threeten/bp/ad;)V
    .locals 0

    .prologue
    .line 573
    invoke-direct {p0}, Lorg/threeten/bp/a/h;-><init>()V

    .line 574
    iput-object p1, p0, Lorg/threeten/bp/ai;->b:Lorg/threeten/bp/m;

    .line 575
    iput-object p2, p0, Lorg/threeten/bp/ai;->c:Lorg/threeten/bp/af;

    .line 576
    iput-object p3, p0, Lorg/threeten/bp/ai;->d:Lorg/threeten/bp/ad;

    .line 577
    return-void
.end method

.method private static a(JILorg/threeten/bp/ad;)Lorg/threeten/bp/ai;
    .locals 4

    .prologue
    .line 419
    invoke-virtual {p3}, Lorg/threeten/bp/ad;->c()Lorg/threeten/bp/zone/i;

    move-result-object v0

    .line 420
    int-to-long v2, p2

    invoke-static {p0, p1, v2, v3}, Lorg/threeten/bp/g;->a(JJ)Lorg/threeten/bp/g;

    move-result-object v1

    .line 421
    invoke-virtual {v0, v1}, Lorg/threeten/bp/zone/i;->a(Lorg/threeten/bp/g;)Lorg/threeten/bp/af;

    move-result-object v0

    .line 422
    invoke-static {p0, p1, p2, v0}, Lorg/threeten/bp/m;->a(JILorg/threeten/bp/af;)Lorg/threeten/bp/m;

    move-result-object v1

    .line 423
    new-instance v2, Lorg/threeten/bp/ai;

    invoke-direct {v2, v1, v0, p3}, Lorg/threeten/bp/ai;-><init>(Lorg/threeten/bp/m;Lorg/threeten/bp/af;Lorg/threeten/bp/ad;)V

    return-object v2
.end method

.method private a(Lorg/threeten/bp/af;)Lorg/threeten/bp/ai;
    .locals 3

    .prologue
    .line 608
    iget-object v0, p0, Lorg/threeten/bp/ai;->c:Lorg/threeten/bp/af;

    invoke-virtual {p1, v0}, Lorg/threeten/bp/af;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/threeten/bp/ai;->d:Lorg/threeten/bp/ad;

    invoke-virtual {v0}, Lorg/threeten/bp/ad;->c()Lorg/threeten/bp/zone/i;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/ai;->b:Lorg/threeten/bp/m;

    invoke-virtual {v0, v1, p1}, Lorg/threeten/bp/zone/i;->a(Lorg/threeten/bp/m;Lorg/threeten/bp/af;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 609
    new-instance v0, Lorg/threeten/bp/ai;

    iget-object v1, p0, Lorg/threeten/bp/ai;->b:Lorg/threeten/bp/m;

    iget-object v2, p0, Lorg/threeten/bp/ai;->d:Lorg/threeten/bp/ad;

    invoke-direct {v0, v1, p1, v2}, Lorg/threeten/bp/ai;-><init>(Lorg/threeten/bp/m;Lorg/threeten/bp/af;Lorg/threeten/bp/ad;)V

    move-object p0, v0

    .line 611
    :cond_0
    return-object p0
.end method

.method public static a(Lorg/threeten/bp/g;Lorg/threeten/bp/ad;)Lorg/threeten/bp/ai;
    .locals 3

    .prologue
    .line 376
    const-string v0, "instant"

    invoke-static {p0, v0}, Lorg/threeten/bp/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 377
    const-string v0, "zone"

    invoke-static {p1, v0}, Lorg/threeten/bp/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3546
    iget-wide v0, p0, Lorg/threeten/bp/g;->e:J

    .line 3559
    iget v2, p0, Lorg/threeten/bp/g;->f:I

    .line 378
    invoke-static {v0, v1, v2, p1}, Lorg/threeten/bp/ai;->a(JILorg/threeten/bp/ad;)Lorg/threeten/bp/ai;

    move-result-object v0

    return-object v0
.end method

.method private a(Lorg/threeten/bp/m;)Lorg/threeten/bp/ai;
    .locals 2

    .prologue
    .line 586
    iget-object v0, p0, Lorg/threeten/bp/ai;->d:Lorg/threeten/bp/ad;

    iget-object v1, p0, Lorg/threeten/bp/ai;->c:Lorg/threeten/bp/af;

    invoke-static {p1, v0, v1}, Lorg/threeten/bp/ai;->a(Lorg/threeten/bp/m;Lorg/threeten/bp/ad;Lorg/threeten/bp/af;)Lorg/threeten/bp/ai;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lorg/threeten/bp/m;Lorg/threeten/bp/ad;)Lorg/threeten/bp/ai;
    .locals 1

    .prologue
    .line 262
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/threeten/bp/ai;->a(Lorg/threeten/bp/m;Lorg/threeten/bp/ad;Lorg/threeten/bp/af;)Lorg/threeten/bp/ai;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lorg/threeten/bp/m;Lorg/threeten/bp/ad;Lorg/threeten/bp/af;)Lorg/threeten/bp/ai;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 336
    const-string v0, "localDateTime"

    invoke-static {p0, v0}, Lorg/threeten/bp/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 337
    const-string v0, "zone"

    invoke-static {p1, v0}, Lorg/threeten/bp/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 338
    instance-of v0, p1, Lorg/threeten/bp/af;

    if-eqz v0, :cond_0

    .line 339
    new-instance v1, Lorg/threeten/bp/ai;

    move-object v0, p1

    check-cast v0, Lorg/threeten/bp/af;

    invoke-direct {v1, p0, v0, p1}, Lorg/threeten/bp/ai;-><init>(Lorg/threeten/bp/m;Lorg/threeten/bp/af;Lorg/threeten/bp/ad;)V

    move-object v0, v1

    .line 357
    :goto_0
    return-object v0

    .line 341
    :cond_0
    invoke-virtual {p1}, Lorg/threeten/bp/ad;->c()Lorg/threeten/bp/zone/i;

    move-result-object v0

    .line 342
    invoke-virtual {v0, p0}, Lorg/threeten/bp/zone/i;->a(Lorg/threeten/bp/m;)Ljava/util/List;

    move-result-object v1

    .line 344
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 345
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/af;

    .line 357
    :goto_1
    new-instance v1, Lorg/threeten/bp/ai;

    invoke-direct {v1, p0, v0, p1}, Lorg/threeten/bp/ai;-><init>(Lorg/threeten/bp/m;Lorg/threeten/bp/af;Lorg/threeten/bp/ad;)V

    move-object v0, v1

    goto :goto_0

    .line 346
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 347
    invoke-virtual {v0, p0}, Lorg/threeten/bp/zone/i;->b(Lorg/threeten/bp/m;)Lorg/threeten/bp/zone/e;

    move-result-object v0

    .line 348
    invoke-virtual {v0}, Lorg/threeten/bp/zone/e;->c()Lorg/threeten/bp/f;

    move-result-object v1

    .line 2552
    iget-wide v2, v1, Lorg/threeten/bp/f;->b:J

    .line 348
    invoke-virtual {p0, v2, v3}, Lorg/threeten/bp/m;->b(J)Lorg/threeten/bp/m;

    move-result-object p0

    .line 3254
    iget-object v0, v0, Lorg/threeten/bp/zone/e;->c:Lorg/threeten/bp/af;

    goto :goto_1

    .line 351
    :cond_2
    if-eqz p2, :cond_3

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 354
    :cond_3
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "offset"

    invoke-static {v0, v1}, Lorg/threeten/bp/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/af;

    goto :goto_1

    :cond_4
    move-object v0, p2

    goto :goto_1
.end method

.method public static a(Lorg/threeten/bp/temporal/l;)Lorg/threeten/bp/ai;
    .locals 4

    .prologue
    .line 511
    instance-of v0, p0, Lorg/threeten/bp/ai;

    if-eqz v0, :cond_0

    .line 512
    check-cast p0, Lorg/threeten/bp/ai;

    .line 527
    :goto_0
    return-object p0

    .line 515
    :cond_0
    :try_start_0
    invoke-static {p0}, Lorg/threeten/bp/ad;->a(Lorg/threeten/bp/temporal/l;)Lorg/threeten/bp/ad;

    move-result-object v0

    .line 516
    sget-object v1, Lorg/threeten/bp/temporal/a;->C:Lorg/threeten/bp/temporal/a;

    invoke-interface {p0, v1}, Lorg/threeten/bp/temporal/l;->a(Lorg/threeten/bp/temporal/q;)Z
    :try_end_0
    .catch Lorg/threeten/bp/DateTimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-eqz v1, :cond_1

    .line 518
    :try_start_1
    sget-object v1, Lorg/threeten/bp/temporal/a;->C:Lorg/threeten/bp/temporal/a;

    invoke-interface {p0, v1}, Lorg/threeten/bp/temporal/l;->d(Lorg/threeten/bp/temporal/q;)J

    move-result-wide v2

    .line 519
    sget-object v1, Lorg/threeten/bp/temporal/a;->a:Lorg/threeten/bp/temporal/a;

    invoke-interface {p0, v1}, Lorg/threeten/bp/temporal/l;->c(Lorg/threeten/bp/temporal/q;)I

    move-result v1

    .line 520
    invoke-static {v2, v3, v1, v0}, Lorg/threeten/bp/ai;->a(JILorg/threeten/bp/ad;)Lorg/threeten/bp/ai;
    :try_end_1
    .catch Lorg/threeten/bp/DateTimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 526
    :cond_1
    :try_start_2
    invoke-static {p0}, Lorg/threeten/bp/m;->a(Lorg/threeten/bp/temporal/l;)Lorg/threeten/bp/m;

    move-result-object v1

    .line 4262
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lorg/threeten/bp/ai;->a(Lorg/threeten/bp/m;Lorg/threeten/bp/ad;Lorg/threeten/bp/af;)Lorg/threeten/bp/ai;
    :try_end_2
    .catch Lorg/threeten/bp/DateTimeException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object p0

    goto :goto_0

    .line 529
    :catch_1
    move-exception v0

    new-instance v0, Lorg/threeten/bp/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to obtain ZonedDateTime from TemporalAccessor: "

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

.method private b(Lorg/threeten/bp/ad;)Lorg/threeten/bp/ai;
    .locals 3

    .prologue
    .line 913
    const-string v0, "zone"

    invoke-static {p1, v0}, Lorg/threeten/bp/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 914
    iget-object v0, p0, Lorg/threeten/bp/ai;->d:Lorg/threeten/bp/ad;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/ad;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/ai;->b:Lorg/threeten/bp/m;

    iget-object v1, p0, Lorg/threeten/bp/ai;->c:Lorg/threeten/bp/af;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/m;->b(Lorg/threeten/bp/af;)J

    move-result-wide v0

    iget-object v2, p0, Lorg/threeten/bp/ai;->b:Lorg/threeten/bp/m;

    .line 6750
    iget-object v2, v2, Lorg/threeten/bp/m;->e:Lorg/threeten/bp/p;

    .line 7677
    iget v2, v2, Lorg/threeten/bp/p;->h:I

    .line 914
    invoke-static {v0, v1, v2, p1}, Lorg/threeten/bp/ai;->a(JILorg/threeten/bp/ad;)Lorg/threeten/bp/ai;

    move-result-object p0

    goto :goto_0
.end method

.method private c(Lorg/threeten/bp/temporal/m;)Lorg/threeten/bp/ai;
    .locals 4

    .prologue
    .line 1115
    instance-of v0, p1, Lorg/threeten/bp/j;

    if-eqz v0, :cond_0

    .line 1116
    check-cast p1, Lorg/threeten/bp/j;

    iget-object v0, p0, Lorg/threeten/bp/ai;->b:Lorg/threeten/bp/m;

    .line 8641
    iget-object v0, v0, Lorg/threeten/bp/m;->e:Lorg/threeten/bp/p;

    .line 1116
    invoke-static {p1, v0}, Lorg/threeten/bp/m;->a(Lorg/threeten/bp/j;Lorg/threeten/bp/p;)Lorg/threeten/bp/m;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/threeten/bp/ai;->a(Lorg/threeten/bp/m;)Lorg/threeten/bp/ai;

    move-result-object v0

    .line 1127
    :goto_0
    return-object v0

    .line 1117
    :cond_0
    instance-of v0, p1, Lorg/threeten/bp/p;

    if-eqz v0, :cond_1

    .line 1118
    iget-object v0, p0, Lorg/threeten/bp/ai;->b:Lorg/threeten/bp/m;

    .line 9628
    iget-object v0, v0, Lorg/threeten/bp/m;->d:Lorg/threeten/bp/j;

    .line 1118
    check-cast p1, Lorg/threeten/bp/p;

    invoke-static {v0, p1}, Lorg/threeten/bp/m;->a(Lorg/threeten/bp/j;Lorg/threeten/bp/p;)Lorg/threeten/bp/m;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/threeten/bp/ai;->a(Lorg/threeten/bp/m;)Lorg/threeten/bp/ai;

    move-result-object v0

    goto :goto_0

    .line 1119
    :cond_1
    instance-of v0, p1, Lorg/threeten/bp/m;

    if-eqz v0, :cond_2

    .line 1120
    check-cast p1, Lorg/threeten/bp/m;

    invoke-direct {p0, p1}, Lorg/threeten/bp/ai;->a(Lorg/threeten/bp/m;)Lorg/threeten/bp/ai;

    move-result-object v0

    goto :goto_0

    .line 1121
    :cond_2
    instance-of v0, p1, Lorg/threeten/bp/g;

    if-eqz v0, :cond_3

    .line 1122
    check-cast p1, Lorg/threeten/bp/g;

    .line 10546
    iget-wide v0, p1, Lorg/threeten/bp/g;->e:J

    .line 10559
    iget v2, p1, Lorg/threeten/bp/g;->f:I

    .line 1123
    iget-object v3, p0, Lorg/threeten/bp/ai;->d:Lorg/threeten/bp/ad;

    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/ai;->a(JILorg/threeten/bp/ad;)Lorg/threeten/bp/ai;

    move-result-object v0

    goto :goto_0

    .line 1124
    :cond_3
    instance-of v0, p1, Lorg/threeten/bp/af;

    if-eqz v0, :cond_4

    .line 1125
    check-cast p1, Lorg/threeten/bp/af;

    invoke-direct {p0, p1}, Lorg/threeten/bp/ai;->a(Lorg/threeten/bp/af;)Lorg/threeten/bp/ai;

    move-result-object v0

    goto :goto_0

    .line 1127
    :cond_4
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/m;->a(Lorg/threeten/bp/temporal/k;)Lorg/threeten/bp/temporal/k;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/ai;

    goto :goto_0
.end method

.method private c(Lorg/threeten/bp/temporal/p;)Lorg/threeten/bp/ai;
    .locals 1

    .prologue
    .line 1430
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/p;->a(Lorg/threeten/bp/temporal/k;)Lorg/threeten/bp/temporal/k;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/ai;

    return-object v0
.end method

.method private c(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/ai;
    .locals 4

    .prologue
    .line 1184
    instance-of v0, p1, Lorg/threeten/bp/temporal/a;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 1185
    check-cast v0, Lorg/threeten/bp/temporal/a;

    .line 1186
    sget-object v1, Lorg/threeten/bp/ak;->a:[I

    invoke-virtual {v0}, Lorg/threeten/bp/temporal/a;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1193
    iget-object v0, p0, Lorg/threeten/bp/ai;->b:Lorg/threeten/bp/m;

    invoke-virtual {v0, p1, p2, p3}, Lorg/threeten/bp/m;->b(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/m;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/threeten/bp/ai;->a(Lorg/threeten/bp/m;)Lorg/threeten/bp/ai;

    move-result-object v0

    .line 1195
    :goto_0
    return-object v0

    .line 11056
    :pswitch_0
    iget-object v0, p0, Lorg/threeten/bp/ai;->b:Lorg/threeten/bp/m;

    .line 11750
    iget-object v0, v0, Lorg/threeten/bp/m;->e:Lorg/threeten/bp/p;

    .line 12677
    iget v0, v0, Lorg/threeten/bp/p;->h:I

    .line 1187
    iget-object v1, p0, Lorg/threeten/bp/ai;->d:Lorg/threeten/bp/ad;

    invoke-static {p2, p3, v0, v1}, Lorg/threeten/bp/ai;->a(JILorg/threeten/bp/ad;)Lorg/threeten/bp/ai;

    move-result-object v0

    goto :goto_0

    .line 1189
    :pswitch_1
    invoke-virtual {v0, p2, p3}, Lorg/threeten/bp/temporal/a;->b(J)I

    move-result v0

    invoke-static {v0}, Lorg/threeten/bp/af;->a(I)Lorg/threeten/bp/af;

    move-result-object v0

    .line 1190
    invoke-direct {p0, v0}, Lorg/threeten/bp/ai;->a(Lorg/threeten/bp/af;)Lorg/threeten/bp/ai;

    move-result-object v0

    goto :goto_0

    .line 1195
    :cond_0
    invoke-interface {p1, p0, p2, p3}, Lorg/threeten/bp/temporal/q;->a(Lorg/threeten/bp/temporal/k;J)Lorg/threeten/bp/temporal/k;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/ai;

    goto :goto_0

    .line 1186
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private e(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/ai;
    .locals 7

    .prologue
    .line 1464
    instance-of v0, p3, Lorg/threeten/bp/temporal/b;

    if-eqz v0, :cond_1

    .line 1465
    invoke-interface {p3}, Lorg/threeten/bp/temporal/aa;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1466
    iget-object v0, p0, Lorg/threeten/bp/ai;->b:Lorg/threeten/bp/m;

    invoke-virtual {v0, p1, p2, p3}, Lorg/threeten/bp/m;->c(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/m;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/threeten/bp/ai;->a(Lorg/threeten/bp/m;)Lorg/threeten/bp/ai;

    move-result-object v0

    .line 1471
    :goto_0
    return-object v0

    .line 1468
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/ai;->b:Lorg/threeten/bp/m;

    invoke-virtual {v0, p1, p2, p3}, Lorg/threeten/bp/m;->c(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/m;

    move-result-object v0

    .line 13596
    iget-object v1, p0, Lorg/threeten/bp/ai;->c:Lorg/threeten/bp/af;

    iget-object v2, p0, Lorg/threeten/bp/ai;->d:Lorg/threeten/bp/ad;

    .line 14402
    const-string v3, "localDateTime"

    invoke-static {v0, v3}, Lorg/threeten/bp/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14403
    const-string v3, "offset"

    invoke-static {v1, v3}, Lorg/threeten/bp/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14404
    const-string v3, "zone"

    invoke-static {v2, v3}, Lorg/threeten/bp/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14405
    invoke-virtual {v0, v1}, Lorg/threeten/bp/m;->b(Lorg/threeten/bp/af;)J

    move-result-wide v4

    .line 14750
    iget-object v0, v0, Lorg/threeten/bp/m;->e:Lorg/threeten/bp/p;

    .line 15677
    iget v0, v0, Lorg/threeten/bp/p;->h:I

    .line 14405
    invoke-static {v4, v5, v0, v2}, Lorg/threeten/bp/ai;->a(JILorg/threeten/bp/ad;)Lorg/threeten/bp/ai;

    move-result-object v0

    goto :goto_0

    .line 1471
    :cond_1
    invoke-interface {p3, p0, p1, p2}, Lorg/threeten/bp/temporal/aa;->a(Lorg/threeten/bp/temporal/k;J)Lorg/threeten/bp/temporal/k;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/ai;

    goto :goto_0
.end method

.method private f(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/ai;
    .locals 5

    .prologue
    .line 1699
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-direct {p0, v0, v1, p3}, Lorg/threeten/bp/ai;->e(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/ai;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-direct {v0, v2, v3, p3}, Lorg/threeten/bp/ai;->e(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/ai;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-direct {p0, v0, v1, p3}, Lorg/threeten/bp/ai;->e(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/ai;

    move-result-object v0

    goto :goto_0
.end method

.method private g()Lorg/threeten/bp/v;
    .locals 2

    .prologue
    .line 2027
    iget-object v0, p0, Lorg/threeten/bp/ai;->b:Lorg/threeten/bp/m;

    iget-object v1, p0, Lorg/threeten/bp/ai;->c:Lorg/threeten/bp/af;

    invoke-static {v0, v1}, Lorg/threeten/bp/v;->a(Lorg/threeten/bp/m;Lorg/threeten/bp/af;)Lorg/threeten/bp/v;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/aa;)J
    .locals 2

    .prologue
    .line 1966
    invoke-static {p1}, Lorg/threeten/bp/ai;->a(Lorg/threeten/bp/temporal/l;)Lorg/threeten/bp/ai;

    move-result-object v0

    .line 1967
    instance-of v1, p2, Lorg/threeten/bp/temporal/b;

    if-eqz v1, :cond_1

    .line 1968
    iget-object v1, p0, Lorg/threeten/bp/ai;->d:Lorg/threeten/bp/ad;

    invoke-direct {v0, v1}, Lorg/threeten/bp/ai;->b(Lorg/threeten/bp/ad;)Lorg/threeten/bp/ai;

    move-result-object v0

    .line 1969
    invoke-interface {p2}, Lorg/threeten/bp/temporal/aa;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1970
    iget-object v1, p0, Lorg/threeten/bp/ai;->b:Lorg/threeten/bp/m;

    iget-object v0, v0, Lorg/threeten/bp/ai;->b:Lorg/threeten/bp/m;

    invoke-virtual {v1, v0, p2}, Lorg/threeten/bp/m;->a(Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/aa;)J

    move-result-wide v0

    .line 1975
    :goto_0
    return-wide v0

    .line 1972
    :cond_0
    invoke-direct {p0}, Lorg/threeten/bp/ai;->g()Lorg/threeten/bp/v;

    move-result-object v1

    invoke-direct {v0}, Lorg/threeten/bp/ai;->g()Lorg/threeten/bp/v;

    move-result-object v0

    invoke-virtual {v1, v0, p2}, Lorg/threeten/bp/v;->a(Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/aa;)J

    move-result-wide v0

    goto :goto_0

    .line 1975
    :cond_1
    invoke-interface {p2, p0, v0}, Lorg/threeten/bp/temporal/aa;->a(Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/k;)J

    move-result-wide v0

    goto :goto_0
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
    .line 1896
    invoke-static {}, Lorg/threeten/bp/temporal/r;->f()Lorg/threeten/bp/temporal/z;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 16002
    iget-object v0, p0, Lorg/threeten/bp/ai;->b:Lorg/threeten/bp/m;

    .line 16628
    iget-object v0, v0, Lorg/threeten/bp/m;->d:Lorg/threeten/bp/j;

    .line 1899
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lorg/threeten/bp/a/h;->a(Lorg/threeten/bp/temporal/z;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final synthetic a(Lorg/threeten/bp/ad;)Lorg/threeten/bp/a/h;
    .locals 1

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lorg/threeten/bp/ai;->b(Lorg/threeten/bp/ad;)Lorg/threeten/bp/ai;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lorg/threeten/bp/temporal/p;)Lorg/threeten/bp/a/h;
    .locals 1

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lorg/threeten/bp/ai;->c(Lorg/threeten/bp/temporal/p;)Lorg/threeten/bp/ai;

    move-result-object v0

    return-object v0
.end method

.method public final a()Lorg/threeten/bp/af;
    .locals 1

    .prologue
    .line 793
    iget-object v0, p0, Lorg/threeten/bp/ai;->c:Lorg/threeten/bp/af;

    return-object v0
.end method

.method public final synthetic a(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/temporal/k;
    .locals 1

    .prologue
    .line 122
    invoke-direct {p0, p1, p2, p3}, Lorg/threeten/bp/ai;->f(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/ai;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lorg/threeten/bp/temporal/m;)Lorg/threeten/bp/temporal/k;
    .locals 1

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lorg/threeten/bp/ai;->c(Lorg/threeten/bp/temporal/m;)Lorg/threeten/bp/ai;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/temporal/k;
    .locals 2

    .prologue
    .line 122
    invoke-direct {p0, p1, p2, p3}, Lorg/threeten/bp/ai;->c(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/ai;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lorg/threeten/bp/temporal/q;)Z
    .locals 1

    .prologue
    .line 668
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

.method public final synthetic b(Lorg/threeten/bp/temporal/m;)Lorg/threeten/bp/a/h;
    .locals 1

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lorg/threeten/bp/ai;->c(Lorg/threeten/bp/temporal/m;)Lorg/threeten/bp/ai;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/a/h;
    .locals 2

    .prologue
    .line 122
    invoke-direct {p0, p1, p2, p3}, Lorg/threeten/bp/ai;->c(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/ai;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lorg/threeten/bp/ad;
    .locals 1

    .prologue
    .line 868
    iget-object v0, p0, Lorg/threeten/bp/ai;->d:Lorg/threeten/bp/ad;

    return-object v0
.end method

.method public final b(Lorg/threeten/bp/temporal/q;)Lorg/threeten/bp/temporal/ab;
    .locals 1

    .prologue
    .line 703
    instance-of v0, p1, Lorg/threeten/bp/temporal/a;

    if-eqz v0, :cond_2

    .line 704
    sget-object v0, Lorg/threeten/bp/temporal/a;->C:Lorg/threeten/bp/temporal/a;

    if-eq p1, v0, :cond_0

    sget-object v0, Lorg/threeten/bp/temporal/a;->D:Lorg/threeten/bp/temporal/a;

    if-ne p1, v0, :cond_1

    .line 705
    :cond_0
    invoke-interface {p1}, Lorg/threeten/bp/temporal/q;->a()Lorg/threeten/bp/temporal/ab;

    move-result-object v0

    .line 709
    :goto_0
    return-object v0

    .line 707
    :cond_1
    iget-object v0, p0, Lorg/threeten/bp/ai;->b:Lorg/threeten/bp/m;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/m;->b(Lorg/threeten/bp/temporal/q;)Lorg/threeten/bp/temporal/ab;

    move-result-object v0

    goto :goto_0

    .line 709
    :cond_2
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/q;->b(Lorg/threeten/bp/temporal/l;)Lorg/threeten/bp/temporal/ab;

    move-result-object v0

    goto :goto_0
.end method

.method public final synthetic b(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/temporal/k;
    .locals 1

    .prologue
    .line 122
    invoke-direct {p0, p1, p2, p3}, Lorg/threeten/bp/ai;->e(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/ai;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lorg/threeten/bp/temporal/p;)Lorg/threeten/bp/temporal/k;
    .locals 1

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lorg/threeten/bp/ai;->c(Lorg/threeten/bp/temporal/p;)Lorg/threeten/bp/ai;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lorg/threeten/bp/temporal/q;)I
    .locals 3

    .prologue
    .line 739
    instance-of v0, p1, Lorg/threeten/bp/temporal/a;

    if-eqz v0, :cond_0

    .line 740
    sget-object v1, Lorg/threeten/bp/ak;->a:[I

    move-object v0, p1

    check-cast v0, Lorg/threeten/bp/temporal/a;

    invoke-virtual {v0}, Lorg/threeten/bp/temporal/a;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 744
    iget-object v0, p0, Lorg/threeten/bp/ai;->b:Lorg/threeten/bp/m;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/m;->c(Lorg/threeten/bp/temporal/q;)I

    move-result v0

    .line 746
    :goto_0
    return v0

    .line 741
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

    .line 4793
    :pswitch_1
    iget-object v0, p0, Lorg/threeten/bp/ai;->c:Lorg/threeten/bp/af;

    .line 5449
    iget v0, v0, Lorg/threeten/bp/af;->g:I

    goto :goto_0

    .line 746
    :cond_0
    invoke-super {p0, p1}, Lorg/threeten/bp/a/h;->c(Lorg/threeten/bp/temporal/q;)I

    move-result v0

    goto :goto_0

    .line 740
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final synthetic c(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/a/h;
    .locals 1

    .prologue
    .line 122
    invoke-direct {p0, p1, p2, p3}, Lorg/threeten/bp/ai;->f(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/ai;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lorg/threeten/bp/p;
    .locals 1

    .prologue
    .line 2015
    iget-object v0, p0, Lorg/threeten/bp/ai;->b:Lorg/threeten/bp/m;

    .line 16641
    iget-object v0, v0, Lorg/threeten/bp/m;->e:Lorg/threeten/bp/p;

    .line 2015
    return-object v0
.end method

.method public final d(Lorg/threeten/bp/temporal/q;)J
    .locals 2

    .prologue
    .line 773
    instance-of v0, p1, Lorg/threeten/bp/temporal/a;

    if-eqz v0, :cond_0

    .line 774
    sget-object v1, Lorg/threeten/bp/ak;->a:[I

    move-object v0, p1

    check-cast v0, Lorg/threeten/bp/temporal/a;

    invoke-virtual {v0}, Lorg/threeten/bp/temporal/a;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 778
    iget-object v0, p0, Lorg/threeten/bp/ai;->b:Lorg/threeten/bp/m;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/m;->d(Lorg/threeten/bp/temporal/q;)J

    move-result-wide v0

    .line 780
    :goto_0
    return-wide v0

    .line 775
    :pswitch_0
    invoke-virtual {p0}, Lorg/threeten/bp/ai;->f()J

    move-result-wide v0

    goto :goto_0

    .line 5793
    :pswitch_1
    iget-object v0, p0, Lorg/threeten/bp/ai;->c:Lorg/threeten/bp/af;

    .line 6449
    iget v0, v0, Lorg/threeten/bp/af;->g:I

    .line 776
    int-to-long v0, v0

    goto :goto_0

    .line 780
    :cond_0
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/q;->c(Lorg/threeten/bp/temporal/l;)J

    move-result-wide v0

    goto :goto_0

    .line 774
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final bridge synthetic d()Lorg/threeten/bp/a/c;
    .locals 1

    .prologue
    .line 122
    .line 16989
    iget-object v0, p0, Lorg/threeten/bp/ai;->b:Lorg/threeten/bp/m;

    .line 122
    return-object v0
.end method

.method public final synthetic d(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/a/h;
    .locals 1

    .prologue
    .line 122
    invoke-direct {p0, p1, p2, p3}, Lorg/threeten/bp/ai;->e(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/ai;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic e()Lorg/threeten/bp/a/a;
    .locals 1

    .prologue
    .line 122
    .line 17002
    iget-object v0, p0, Lorg/threeten/bp/ai;->b:Lorg/threeten/bp/m;

    .line 17628
    iget-object v0, v0, Lorg/threeten/bp/m;->d:Lorg/threeten/bp/j;

    .line 122
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2042
    if-ne p0, p1, :cond_1

    .line 2051
    :cond_0
    :goto_0
    return v0

    .line 2045
    :cond_1
    instance-of v2, p1, Lorg/threeten/bp/ai;

    if-eqz v2, :cond_3

    .line 2046
    check-cast p1, Lorg/threeten/bp/ai;

    .line 2047
    iget-object v2, p0, Lorg/threeten/bp/ai;->b:Lorg/threeten/bp/m;

    iget-object v3, p1, Lorg/threeten/bp/ai;->b:Lorg/threeten/bp/m;

    invoke-virtual {v2, v3}, Lorg/threeten/bp/m;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/threeten/bp/ai;->c:Lorg/threeten/bp/af;

    iget-object v3, p1, Lorg/threeten/bp/ai;->c:Lorg/threeten/bp/af;

    invoke-virtual {v2, v3}, Lorg/threeten/bp/af;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/threeten/bp/ai;->d:Lorg/threeten/bp/ad;

    iget-object v3, p1, Lorg/threeten/bp/ai;->d:Lorg/threeten/bp/ad;

    invoke-virtual {v2, v3}, Lorg/threeten/bp/ad;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 2051
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 2061
    iget-object v0, p0, Lorg/threeten/bp/ai;->b:Lorg/threeten/bp/m;

    invoke-virtual {v0}, Lorg/threeten/bp/m;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/threeten/bp/ai;->c:Lorg/threeten/bp/af;

    invoke-virtual {v1}, Lorg/threeten/bp/af;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/threeten/bp/ai;->d:Lorg/threeten/bp/ad;

    invoke-virtual {v1}, Lorg/threeten/bp/ad;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2077
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/threeten/bp/ai;->b:Lorg/threeten/bp/m;

    invoke-virtual {v1}, Lorg/threeten/bp/m;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/ai;->c:Lorg/threeten/bp/af;

    invoke-virtual {v1}, Lorg/threeten/bp/af;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2078
    iget-object v1, p0, Lorg/threeten/bp/ai;->c:Lorg/threeten/bp/af;

    iget-object v2, p0, Lorg/threeten/bp/ai;->d:Lorg/threeten/bp/ad;

    if-eq v1, v2, :cond_0

    .line 2079
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/ai;->d:Lorg/threeten/bp/ad;

    invoke-virtual {v1}, Lorg/threeten/bp/ad;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2081
    :cond_0
    return-object v0
.end method
