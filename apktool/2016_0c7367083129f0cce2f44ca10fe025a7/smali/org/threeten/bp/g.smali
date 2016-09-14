.class public final Lorg/threeten/bp/g;
.super Lorg/threeten/bp/b/b;
.source "Instant.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;
.implements Lorg/threeten/bp/temporal/k;
.implements Lorg/threeten/bp/temporal/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/threeten/bp/b/b;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/threeten/bp/g;",
        ">;",
        "Lorg/threeten/bp/temporal/k;",
        "Lorg/threeten/bp/temporal/m;"
    }
.end annotation


# static fields
.field public static final a:Lorg/threeten/bp/g;

.field public static final b:Lorg/threeten/bp/g;

.field public static final c:Lorg/threeten/bp/g;

.field public static final d:Lorg/threeten/bp/temporal/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/threeten/bp/temporal/z",
            "<",
            "Lorg/threeten/bp/g;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final e:J

.field public final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 164
    new-instance v0, Lorg/threeten/bp/g;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/threeten/bp/g;-><init>(JI)V

    sput-object v0, Lorg/threeten/bp/g;->a:Lorg/threeten/bp/g;

    .line 183
    const-wide v0, -0x701cefeb9bec00L

    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/g;->a(JJ)Lorg/threeten/bp/g;

    move-result-object v0

    sput-object v0, Lorg/threeten/bp/g;->b:Lorg/threeten/bp/g;

    .line 194
    const-wide v0, 0x701cd2fa9578ffL

    const-wide/32 v2, 0x3b9ac9ff

    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/g;->a(JJ)Lorg/threeten/bp/g;

    move-result-object v0

    sput-object v0, Lorg/threeten/bp/g;->c:Lorg/threeten/bp/g;

    .line 198
    new-instance v0, Lorg/threeten/bp/h;

    invoke-direct {v0}, Lorg/threeten/bp/h;-><init>()V

    sput-object v0, Lorg/threeten/bp/g;->d:Lorg/threeten/bp/temporal/z;

    return-void
.end method

.method private constructor <init>(JI)V
    .locals 1

    .prologue
    .line 387
    invoke-direct {p0}, Lorg/threeten/bp/b/b;-><init>()V

    .line 388
    iput-wide p1, p0, Lorg/threeten/bp/g;->e:J

    .line 389
    iput p3, p0, Lorg/threeten/bp/g;->f:I

    .line 390
    return-void
.end method

.method private a()J
    .locals 4

    .prologue
    .line 1056
    iget-wide v0, p0, Lorg/threeten/bp/g;->e:J

    const/16 v2, 0x3e8

    invoke-static {v0, v1, v2}, Lorg/threeten/bp/b/c;->a(JI)J

    move-result-wide v0

    .line 1057
    iget v2, p0, Lorg/threeten/bp/g;->f:I

    const v3, 0xf4240

    div-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static a(J)Lorg/threeten/bp/g;
    .locals 2

    .prologue
    .line 272
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/threeten/bp/g;->a(JI)Lorg/threeten/bp/g;

    move-result-object v0

    return-object v0
.end method

.method private static a(JI)Lorg/threeten/bp/g;
    .locals 4

    .prologue
    .line 370
    int-to-long v0, p2

    or-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 371
    sget-object v0, Lorg/threeten/bp/g;->a:Lorg/threeten/bp/g;

    .line 376
    :goto_0
    return-object v0

    .line 373
    :cond_0
    const-wide v0, -0x701cefeb9bec00L

    cmp-long v0, p0, v0

    if-ltz v0, :cond_1

    const-wide v0, 0x701cd2fa9578ffL

    cmp-long v0, p0, v0

    if-lez v0, :cond_2

    .line 374
    :cond_1
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    const-string v1, "Instant exceeds minimum or maximum instant"

    invoke-direct {v0, v1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 376
    :cond_2
    new-instance v0, Lorg/threeten/bp/g;

    invoke-direct {v0, p0, p1, p2}, Lorg/threeten/bp/g;-><init>(JI)V

    goto :goto_0
.end method

.method public static a(JJ)Lorg/threeten/bp/g;
    .locals 4

    .prologue
    .line 296
    const-wide/32 v0, 0x3b9aca00

    invoke-static {p2, p3, v0, v1}, Lorg/threeten/bp/b/c;->e(JJ)J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lorg/threeten/bp/b/c;->b(JJ)J

    move-result-wide v0

    .line 297
    const v2, 0x3b9aca00

    invoke-static {p2, p3, v2}, Lorg/threeten/bp/b/c;->b(JI)I

    move-result v2

    .line 298
    invoke-static {v0, v1, v2}, Lorg/threeten/bp/g;->a(JI)Lorg/threeten/bp/g;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lorg/threeten/bp/temporal/l;)Lorg/threeten/bp/g;
    .locals 4

    .prologue
    .line 336
    :try_start_0
    sget-object v0, Lorg/threeten/bp/temporal/a;->C:Lorg/threeten/bp/temporal/a;

    invoke-interface {p0, v0}, Lorg/threeten/bp/temporal/l;->d(Lorg/threeten/bp/temporal/q;)J

    move-result-wide v0

    .line 337
    sget-object v2, Lorg/threeten/bp/temporal/a;->a:Lorg/threeten/bp/temporal/a;

    invoke-interface {p0, v2}, Lorg/threeten/bp/temporal/l;->c(Lorg/threeten/bp/temporal/q;)I

    move-result v2

    .line 338
    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/g;->a(JJ)Lorg/threeten/bp/g;
    :try_end_0
    .catch Lorg/threeten/bp/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 339
    :catch_0
    move-exception v0

    .line 340
    new-instance v1, Lorg/threeten/bp/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to obtain Instant from TemporalAccessor: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private b(Lorg/threeten/bp/g;)J
    .locals 4

    .prologue
    .line 988
    iget-wide v0, p1, Lorg/threeten/bp/g;->e:J

    iget-wide v2, p0, Lorg/threeten/bp/g;->e:J

    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/b/c;->c(JJ)J

    move-result-wide v0

    .line 989
    const v2, 0x3b9aca00

    invoke-static {v0, v1, v2}, Lorg/threeten/bp/b/c;->a(JI)J

    move-result-wide v0

    .line 990
    iget v2, p1, Lorg/threeten/bp/g;->f:I

    iget v3, p0, Lorg/threeten/bp/g;->f:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/b/c;->b(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static b(J)Lorg/threeten/bp/g;
    .locals 4

    .prologue
    .line 312
    const-wide/16 v0, 0x3e8

    invoke-static {p0, p1, v0, v1}, Lorg/threeten/bp/b/c;->e(JJ)J

    move-result-wide v0

    .line 313
    const/16 v2, 0x3e8

    invoke-static {p0, p1, v2}, Lorg/threeten/bp/b/c;->b(JI)I

    move-result v2

    .line 314
    const v3, 0xf4240

    mul-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Lorg/threeten/bp/g;->a(JI)Lorg/threeten/bp/g;

    move-result-object v0

    return-object v0
.end method

.method private b(JJ)Lorg/threeten/bp/g;
    .locals 7

    .prologue
    const-wide/32 v4, 0x3b9aca00

    .line 779
    or-long v0, p1, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 786
    :goto_0
    return-object p0

    .line 782
    :cond_0
    iget-wide v0, p0, Lorg/threeten/bp/g;->e:J

    invoke-static {v0, v1, p1, p2}, Lorg/threeten/bp/b/c;->b(JJ)J

    move-result-wide v0

    .line 783
    div-long v2, p3, v4

    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/b/c;->b(JJ)J

    move-result-wide v0

    .line 784
    rem-long v2, p3, v4

    .line 785
    iget v4, p0, Lorg/threeten/bp/g;->f:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 786
    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/g;->a(JJ)Lorg/threeten/bp/g;

    move-result-object p0

    goto :goto_0
.end method

.method private c(Lorg/threeten/bp/g;)J
    .locals 10

    .prologue
    const-wide/16 v8, 0x1

    const-wide/16 v6, 0x0

    .line 994
    iget-wide v0, p1, Lorg/threeten/bp/g;->e:J

    iget-wide v2, p0, Lorg/threeten/bp/g;->e:J

    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/b/c;->c(JJ)J

    move-result-wide v0

    .line 995
    iget v2, p1, Lorg/threeten/bp/g;->f:I

    iget v3, p0, Lorg/threeten/bp/g;->f:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    .line 996
    cmp-long v4, v0, v6

    if-lez v4, :cond_1

    cmp-long v4, v2, v6

    if-gez v4, :cond_1

    .line 997
    sub-long/2addr v0, v8

    .line 1001
    :cond_0
    :goto_0
    return-wide v0

    .line 998
    :cond_1
    cmp-long v4, v0, v6

    if-gez v4, :cond_0

    cmp-long v2, v2, v6

    if-lez v2, :cond_0

    .line 999
    add-long/2addr v0, v8

    goto :goto_0
.end method

.method private c(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/g;
    .locals 9

    .prologue
    const-wide/32 v6, 0xf4240

    const-wide/16 v4, 0x3e8

    const-wide/16 v2, 0x0

    .line 708
    instance-of v0, p3, Lorg/threeten/bp/temporal/b;

    if-eqz v0, :cond_0

    .line 709
    sget-object v1, Lorg/threeten/bp/i;->b:[I

    move-object v0, p3

    check-cast v0, Lorg/threeten/bp/temporal/b;

    invoke-virtual {v0}, Lorg/threeten/bp/temporal/b;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 719
    new-instance v0, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported unit: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1764
    :pswitch_0
    invoke-direct {p0, v2, v3, p1, p2}, Lorg/threeten/bp/g;->b(JJ)Lorg/threeten/bp/g;

    move-result-object v0

    .line 721
    :goto_0
    return-object v0

    .line 711
    :pswitch_1
    div-long v0, p1, v6

    rem-long v2, p1, v6

    mul-long/2addr v2, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/threeten/bp/g;->b(JJ)Lorg/threeten/bp/g;

    move-result-object v0

    goto :goto_0

    .line 2750
    :pswitch_2
    div-long v0, p1, v4

    rem-long v2, p1, v4

    mul-long/2addr v2, v6

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/threeten/bp/g;->b(JJ)Lorg/threeten/bp/g;

    move-result-object v0

    goto :goto_0

    .line 3736
    :pswitch_3
    invoke-direct {p0, p1, p2, v2, v3}, Lorg/threeten/bp/g;->b(JJ)Lorg/threeten/bp/g;

    move-result-object v0

    goto :goto_0

    .line 714
    :pswitch_4
    const/16 v0, 0x3c

    invoke-static {p1, p2, v0}, Lorg/threeten/bp/b/c;->a(JI)J

    move-result-wide v0

    .line 4736
    invoke-direct {p0, v0, v1, v2, v3}, Lorg/threeten/bp/g;->b(JJ)Lorg/threeten/bp/g;

    move-result-object v0

    goto :goto_0

    .line 715
    :pswitch_5
    const/16 v0, 0xe10

    invoke-static {p1, p2, v0}, Lorg/threeten/bp/b/c;->a(JI)J

    move-result-wide v0

    .line 5736
    invoke-direct {p0, v0, v1, v2, v3}, Lorg/threeten/bp/g;->b(JJ)Lorg/threeten/bp/g;

    move-result-object v0

    goto :goto_0

    .line 716
    :pswitch_6
    const v0, 0xa8c0

    invoke-static {p1, p2, v0}, Lorg/threeten/bp/b/c;->a(JI)J

    move-result-wide v0

    .line 6736
    invoke-direct {p0, v0, v1, v2, v3}, Lorg/threeten/bp/g;->b(JJ)Lorg/threeten/bp/g;

    move-result-object v0

    goto :goto_0

    .line 717
    :pswitch_7
    const v0, 0x15180

    invoke-static {p1, p2, v0}, Lorg/threeten/bp/b/c;->a(JI)J

    move-result-wide v0

    .line 7736
    invoke-direct {p0, v0, v1, v2, v3}, Lorg/threeten/bp/g;->b(JJ)Lorg/threeten/bp/g;

    move-result-object v0

    goto :goto_0

    .line 721
    :cond_0
    invoke-interface {p3, p0, p1, p2}, Lorg/threeten/bp/temporal/aa;->a(Lorg/threeten/bp/temporal/k;J)Lorg/threeten/bp/temporal/k;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/g;

    goto :goto_0

    .line 709
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public final a(Lorg/threeten/bp/g;)I
    .locals 4

    .prologue
    .line 1073
    iget-wide v0, p0, Lorg/threeten/bp/g;->e:J

    iget-wide v2, p1, Lorg/threeten/bp/g;->e:J

    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/b/c;->a(JJ)I

    move-result v0

    .line 1074
    if-eqz v0, :cond_0

    .line 1077
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/threeten/bp/g;->f:I

    iget v1, p1, Lorg/threeten/bp/g;->f:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public final a(Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/aa;)J
    .locals 4

    .prologue
    .line 969
    invoke-static {p1}, Lorg/threeten/bp/g;->a(Lorg/threeten/bp/temporal/l;)Lorg/threeten/bp/g;

    move-result-object v1

    .line 970
    instance-of v0, p2, Lorg/threeten/bp/temporal/b;

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 971
    check-cast v0, Lorg/threeten/bp/temporal/b;

    .line 972
    sget-object v2, Lorg/threeten/bp/i;->b:[I

    invoke-virtual {v0}, Lorg/threeten/bp/temporal/b;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 982
    new-instance v0, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported unit: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 973
    :pswitch_0
    invoke-direct {p0, v1}, Lorg/threeten/bp/g;->b(Lorg/threeten/bp/g;)J

    move-result-wide v0

    .line 984
    :goto_0
    return-wide v0

    .line 974
    :pswitch_1
    invoke-direct {p0, v1}, Lorg/threeten/bp/g;->b(Lorg/threeten/bp/g;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    goto :goto_0

    .line 975
    :pswitch_2
    invoke-direct {v1}, Lorg/threeten/bp/g;->a()J

    move-result-wide v0

    invoke-direct {p0}, Lorg/threeten/bp/g;->a()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/b/c;->c(JJ)J

    move-result-wide v0

    goto :goto_0

    .line 976
    :pswitch_3
    invoke-direct {p0, v1}, Lorg/threeten/bp/g;->c(Lorg/threeten/bp/g;)J

    move-result-wide v0

    goto :goto_0

    .line 977
    :pswitch_4
    invoke-direct {p0, v1}, Lorg/threeten/bp/g;->c(Lorg/threeten/bp/g;)J

    move-result-wide v0

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    goto :goto_0

    .line 978
    :pswitch_5
    invoke-direct {p0, v1}, Lorg/threeten/bp/g;->c(Lorg/threeten/bp/g;)J

    move-result-wide v0

    const-wide/16 v2, 0xe10

    div-long/2addr v0, v2

    goto :goto_0

    .line 979
    :pswitch_6
    invoke-direct {p0, v1}, Lorg/threeten/bp/g;->c(Lorg/threeten/bp/g;)J

    move-result-wide v0

    const-wide/32 v2, 0xa8c0

    div-long/2addr v0, v2

    goto :goto_0

    .line 980
    :pswitch_7
    invoke-direct {p0, v1}, Lorg/threeten/bp/g;->c(Lorg/threeten/bp/g;)J

    move-result-wide v0

    const-wide/32 v2, 0x15180

    div-long/2addr v0, v2

    goto :goto_0

    .line 984
    :cond_0
    invoke-interface {p2, p0, v1}, Lorg/threeten/bp/temporal/aa;->a(Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/k;)J

    move-result-wide v0

    goto :goto_0

    .line 972
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
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
    .line 884
    invoke-static {}, Lorg/threeten/bp/temporal/r;->c()Lorg/threeten/bp/temporal/z;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 885
    sget-object v0, Lorg/threeten/bp/temporal/b;->a:Lorg/threeten/bp/temporal/b;

    .line 893
    :goto_0
    return-object v0

    .line 888
    :cond_0
    invoke-static {}, Lorg/threeten/bp/temporal/r;->f()Lorg/threeten/bp/temporal/z;

    move-result-object v0

    if-eq p1, v0, :cond_1

    invoke-static {}, Lorg/threeten/bp/temporal/r;->g()Lorg/threeten/bp/temporal/z;

    move-result-object v0

    if-eq p1, v0, :cond_1

    invoke-static {}, Lorg/threeten/bp/temporal/r;->b()Lorg/threeten/bp/temporal/z;

    move-result-object v0

    if-eq p1, v0, :cond_1

    invoke-static {}, Lorg/threeten/bp/temporal/r;->a()Lorg/threeten/bp/temporal/z;

    move-result-object v0

    if-eq p1, v0, :cond_1

    invoke-static {}, Lorg/threeten/bp/temporal/r;->d()Lorg/threeten/bp/temporal/z;

    move-result-object v0

    if-eq p1, v0, :cond_1

    invoke-static {}, Lorg/threeten/bp/temporal/r;->e()Lorg/threeten/bp/temporal/z;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 891
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 893
    :cond_2
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/z;->a(Lorg/threeten/bp/temporal/l;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final synthetic a(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/temporal/k;
    .locals 5

    .prologue
    .line 157
    .line 7807
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-direct {p0, v0, v1, p3}, Lorg/threeten/bp/g;->c(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/g;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-direct {v0, v2, v3, p3}, Lorg/threeten/bp/g;->c(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/g;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-direct {p0, v0, v1, p3}, Lorg/threeten/bp/g;->c(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/g;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lorg/threeten/bp/temporal/k;)Lorg/threeten/bp/temporal/k;
    .locals 4

    .prologue
    .line 923
    sget-object v0, Lorg/threeten/bp/temporal/a;->C:Lorg/threeten/bp/temporal/a;

    iget-wide v2, p0, Lorg/threeten/bp/g;->e:J

    invoke-interface {p1, v0, v2, v3}, Lorg/threeten/bp/temporal/k;->a(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/temporal/k;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/temporal/a;->a:Lorg/threeten/bp/temporal/a;

    iget v2, p0, Lorg/threeten/bp/g;->f:I

    int-to-long v2, v2

    invoke-interface {v0, v1, v2, v3}, Lorg/threeten/bp/temporal/k;->a(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/temporal/k;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Lorg/threeten/bp/temporal/m;)Lorg/threeten/bp/temporal/k;
    .locals 1

    .prologue
    .line 157
    .line 9583
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/m;->a(Lorg/threeten/bp/temporal/k;)Lorg/threeten/bp/temporal/k;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/g;

    .line 157
    return-object v0
.end method

.method public final synthetic a(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/temporal/k;
    .locals 4

    .prologue
    .line 157
    .line 8631
    instance-of v0, p1, Lorg/threeten/bp/temporal/a;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 8632
    check-cast v0, Lorg/threeten/bp/temporal/a;

    .line 8633
    invoke-virtual {v0, p2, p3}, Lorg/threeten/bp/temporal/a;->a(J)J

    .line 8634
    sget-object v1, Lorg/threeten/bp/i;->a:[I

    invoke-virtual {v0}, Lorg/threeten/bp/temporal/a;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 8646
    new-instance v0, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported field: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8636
    :pswitch_0
    long-to-int v0, p2

    const v1, 0xf4240

    mul-int/2addr v0, v1

    .line 8637
    iget v1, p0, Lorg/threeten/bp/g;->f:I

    if-eq v0, v1, :cond_0

    iget-wide v2, p0, Lorg/threeten/bp/g;->e:J

    invoke-static {v2, v3, v0}, Lorg/threeten/bp/g;->a(JI)Lorg/threeten/bp/g;

    move-result-object p0

    .line 8644
    :cond_0
    :goto_0
    return-object p0

    .line 8640
    :pswitch_1
    long-to-int v0, p2

    mul-int/lit16 v0, v0, 0x3e8

    .line 8641
    iget v1, p0, Lorg/threeten/bp/g;->f:I

    if-eq v0, v1, :cond_0

    iget-wide v2, p0, Lorg/threeten/bp/g;->e:J

    invoke-static {v2, v3, v0}, Lorg/threeten/bp/g;->a(JI)Lorg/threeten/bp/g;

    move-result-object p0

    goto :goto_0

    .line 8643
    :pswitch_2
    iget v0, p0, Lorg/threeten/bp/g;->f:I

    int-to-long v0, v0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/threeten/bp/g;->e:J

    long-to-int v2, p2

    invoke-static {v0, v1, v2}, Lorg/threeten/bp/g;->a(JI)Lorg/threeten/bp/g;

    move-result-object p0

    goto :goto_0

    .line 8644
    :pswitch_3
    iget-wide v0, p0, Lorg/threeten/bp/g;->e:J

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/threeten/bp/g;->f:I

    invoke-static {p2, p3, v0}, Lorg/threeten/bp/g;->a(JI)Lorg/threeten/bp/g;

    move-result-object p0

    goto :goto_0

    .line 8648
    :cond_1
    invoke-interface {p1, p0, p2, p3}, Lorg/threeten/bp/temporal/q;->a(Lorg/threeten/bp/temporal/k;J)Lorg/threeten/bp/temporal/k;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/g;

    move-object p0, v0

    .line 157
    goto :goto_0

    .line 8634
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public final a(Lorg/threeten/bp/temporal/q;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 420
    instance-of v2, p1, Lorg/threeten/bp/temporal/a;

    if-eqz v2, :cond_2

    .line 421
    sget-object v2, Lorg/threeten/bp/temporal/a;->C:Lorg/threeten/bp/temporal/a;

    if-eq p1, v2, :cond_0

    sget-object v2, Lorg/threeten/bp/temporal/a;->a:Lorg/threeten/bp/temporal/a;

    if-eq p1, v2, :cond_0

    sget-object v2, Lorg/threeten/bp/temporal/a;->c:Lorg/threeten/bp/temporal/a;

    if-eq p1, v2, :cond_0

    sget-object v2, Lorg/threeten/bp/temporal/a;->e:Lorg/threeten/bp/temporal/a;

    if-ne p1, v2, :cond_1

    :cond_0
    move v0, v1

    .line 423
    :cond_1
    :goto_0
    return v0

    :cond_2
    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/q;->a(Lorg/threeten/bp/temporal/l;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method public final b(Lorg/threeten/bp/temporal/q;)Lorg/threeten/bp/temporal/ab;
    .locals 1

    .prologue
    .line 458
    invoke-super {p0, p1}, Lorg/threeten/bp/b/b;->b(Lorg/threeten/bp/temporal/q;)Lorg/threeten/bp/temporal/ab;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/temporal/k;
    .locals 1

    .prologue
    .line 157
    invoke-direct {p0, p1, p2, p3}, Lorg/threeten/bp/g;->c(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/g;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lorg/threeten/bp/temporal/q;)I
    .locals 4

    .prologue
    .line 487
    instance-of v0, p1, Lorg/threeten/bp/temporal/a;

    if-eqz v0, :cond_0

    .line 488
    sget-object v1, Lorg/threeten/bp/i;->a:[I

    move-object v0, p1

    check-cast v0, Lorg/threeten/bp/temporal/a;

    invoke-virtual {v0}, Lorg/threeten/bp/temporal/a;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 494
    :goto_0
    new-instance v0, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported field: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 489
    :pswitch_0
    iget v0, p0, Lorg/threeten/bp/g;->f:I

    .line 496
    :goto_1
    return v0

    .line 490
    :pswitch_1
    iget v0, p0, Lorg/threeten/bp/g;->f:I

    div-int/lit16 v0, v0, 0x3e8

    goto :goto_1

    .line 491
    :pswitch_2
    iget v0, p0, Lorg/threeten/bp/g;->f:I

    const v1, 0xf4240

    div-int/2addr v0, v1

    goto :goto_1

    .line 492
    :pswitch_3
    sget-object v0, Lorg/threeten/bp/temporal/a;->C:Lorg/threeten/bp/temporal/a;

    iget-wide v2, p0, Lorg/threeten/bp/g;->e:J

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/temporal/a;->b(J)I

    goto :goto_0

    .line 1458
    :cond_0
    invoke-super {p0, p1}, Lorg/threeten/bp/b/b;->b(Lorg/threeten/bp/temporal/q;)Lorg/threeten/bp/temporal/ab;

    move-result-object v0

    .line 496
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/q;->c(Lorg/threeten/bp/temporal/l;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/threeten/bp/temporal/ab;->b(JLorg/threeten/bp/temporal/q;)I

    move-result v0

    goto :goto_1

    .line 488
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 157
    check-cast p1, Lorg/threeten/bp/g;

    invoke-virtual {p0, p1}, Lorg/threeten/bp/g;->a(Lorg/threeten/bp/g;)I

    move-result v0

    return v0
.end method

.method public final d(Lorg/threeten/bp/temporal/q;)J
    .locals 3

    .prologue
    .line 523
    instance-of v0, p1, Lorg/threeten/bp/temporal/a;

    if-eqz v0, :cond_0

    .line 524
    sget-object v1, Lorg/threeten/bp/i;->a:[I

    move-object v0, p1

    check-cast v0, Lorg/threeten/bp/temporal/a;

    invoke-virtual {v0}, Lorg/threeten/bp/temporal/a;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 530
    new-instance v0, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported field: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 525
    :pswitch_0
    iget v0, p0, Lorg/threeten/bp/g;->f:I

    int-to-long v0, v0

    .line 532
    :goto_0
    return-wide v0

    .line 526
    :pswitch_1
    iget v0, p0, Lorg/threeten/bp/g;->f:I

    div-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    goto :goto_0

    .line 527
    :pswitch_2
    iget v0, p0, Lorg/threeten/bp/g;->f:I

    const v1, 0xf4240

    div-int/2addr v0, v1

    int-to-long v0, v0

    goto :goto_0

    .line 528
    :pswitch_3
    iget-wide v0, p0, Lorg/threeten/bp/g;->e:J

    goto :goto_0

    .line 532
    :cond_0
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/q;->c(Lorg/threeten/bp/temporal/l;)J

    move-result-wide v0

    goto :goto_0

    .line 524
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1117
    if-ne p0, p1, :cond_1

    .line 1125
    :cond_0
    :goto_0
    return v0

    .line 1120
    :cond_1
    instance-of v2, p1, Lorg/threeten/bp/g;

    if-eqz v2, :cond_3

    .line 1121
    check-cast p1, Lorg/threeten/bp/g;

    .line 1122
    iget-wide v2, p0, Lorg/threeten/bp/g;->e:J

    iget-wide v4, p1, Lorg/threeten/bp/g;->e:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget v2, p0, Lorg/threeten/bp/g;->f:I

    iget v3, p1, Lorg/threeten/bp/g;->f:I

    if-eq v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1125
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 5

    .prologue
    .line 1135
    iget-wide v0, p0, Lorg/threeten/bp/g;->e:J

    iget-wide v2, p0, Lorg/threeten/bp/g;->e:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    iget v1, p0, Lorg/threeten/bp/g;->f:I

    mul-int/lit8 v1, v1, 0x33

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1148
    sget-object v0, Lorg/threeten/bp/format/b;->m:Lorg/threeten/bp/format/b;

    invoke-virtual {v0, p0}, Lorg/threeten/bp/format/b;->a(Lorg/threeten/bp/temporal/l;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
