.class public final Lorg/threeten/bp/p;
.super Lorg/threeten/bp/b/b;
.source "LocalTime.java"

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
        "Lorg/threeten/bp/p;",
        ">;",
        "Lorg/threeten/bp/temporal/k;",
        "Lorg/threeten/bp/temporal/m;"
    }
.end annotation


# static fields
.field public static final a:Lorg/threeten/bp/p;

.field public static final b:Lorg/threeten/bp/p;

.field public static final c:Lorg/threeten/bp/p;

.field public static final d:Lorg/threeten/bp/p;

.field public static final e:Lorg/threeten/bp/temporal/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/threeten/bp/temporal/z",
            "<",
            "Lorg/threeten/bp/p;",
            ">;"
        }
    .end annotation
.end field

.field private static final i:[Lorg/threeten/bp/p;


# instance fields
.field public final f:B

.field public final g:B

.field public final h:I

.field private final j:B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x3b

    const/4 v1, 0x0

    .line 113
    new-instance v0, Lorg/threeten/bp/q;

    invoke-direct {v0}, Lorg/threeten/bp/q;-><init>()V

    sput-object v0, Lorg/threeten/bp/p;->e:Lorg/threeten/bp/temporal/z;

    .line 122
    const/16 v0, 0x18

    new-array v0, v0, [Lorg/threeten/bp/p;

    sput-object v0, Lorg/threeten/bp/p;->i:[Lorg/threeten/bp/p;

    move v0, v1

    .line 124
    :goto_0
    sget-object v2, Lorg/threeten/bp/p;->i:[Lorg/threeten/bp/p;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 125
    sget-object v2, Lorg/threeten/bp/p;->i:[Lorg/threeten/bp/p;

    new-instance v3, Lorg/threeten/bp/p;

    invoke-direct {v3, v0, v1, v1, v1}, Lorg/threeten/bp/p;-><init>(IIII)V

    aput-object v3, v2, v0

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    :cond_0
    sget-object v0, Lorg/threeten/bp/p;->i:[Lorg/threeten/bp/p;

    aget-object v0, v0, v1

    sput-object v0, Lorg/threeten/bp/p;->c:Lorg/threeten/bp/p;

    .line 128
    sget-object v0, Lorg/threeten/bp/p;->i:[Lorg/threeten/bp/p;

    const/16 v2, 0xc

    aget-object v0, v0, v2

    sput-object v0, Lorg/threeten/bp/p;->d:Lorg/threeten/bp/p;

    .line 129
    sget-object v0, Lorg/threeten/bp/p;->i:[Lorg/threeten/bp/p;

    aget-object v0, v0, v1

    sput-object v0, Lorg/threeten/bp/p;->a:Lorg/threeten/bp/p;

    .line 130
    new-instance v0, Lorg/threeten/bp/p;

    const/16 v1, 0x17

    const v2, 0x3b9ac9ff

    invoke-direct {v0, v1, v4, v4, v2}, Lorg/threeten/bp/p;-><init>(IIII)V

    sput-object v0, Lorg/threeten/bp/p;->b:Lorg/threeten/bp/p;

    .line 131
    return-void
.end method

.method private constructor <init>(IIII)V
    .locals 1

    .prologue
    .line 467
    invoke-direct {p0}, Lorg/threeten/bp/b/b;-><init>()V

    .line 468
    int-to-byte v0, p1

    iput-byte v0, p0, Lorg/threeten/bp/p;->f:B

    .line 469
    int-to-byte v0, p2

    iput-byte v0, p0, Lorg/threeten/bp/p;->j:B

    .line 470
    int-to-byte v0, p3

    iput-byte v0, p0, Lorg/threeten/bp/p;->g:B

    .line 471
    iput p4, p0, Lorg/threeten/bp/p;->h:I

    .line 472
    return-void
.end method

.method private a(I)Lorg/threeten/bp/p;
    .locals 4

    .prologue
    .line 830
    iget-byte v0, p0, Lorg/threeten/bp/p;->f:B

    if-ne v0, p1, :cond_0

    .line 834
    :goto_0
    return-object p0

    .line 833
    :cond_0
    sget-object v0, Lorg/threeten/bp/temporal/a;->m:Lorg/threeten/bp/temporal/a;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/temporal/a;->a(J)J

    .line 834
    iget-byte v0, p0, Lorg/threeten/bp/p;->j:B

    iget-byte v1, p0, Lorg/threeten/bp/p;->g:B

    iget v2, p0, Lorg/threeten/bp/p;->h:I

    invoke-static {p1, v0, v1, v2}, Lorg/threeten/bp/p;->b(IIII)Lorg/threeten/bp/p;

    move-result-object p0

    goto :goto_0
.end method

.method public static a(II)Lorg/threeten/bp/p;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 273
    sget-object v0, Lorg/threeten/bp/temporal/a;->m:Lorg/threeten/bp/temporal/a;

    int-to-long v2, p0

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/temporal/a;->a(J)J

    .line 274
    if-nez p1, :cond_0

    .line 275
    sget-object v0, Lorg/threeten/bp/p;->i:[Lorg/threeten/bp/p;

    aget-object v0, v0, p0

    .line 278
    :goto_0
    return-object v0

    .line 277
    :cond_0
    sget-object v0, Lorg/threeten/bp/temporal/a;->i:Lorg/threeten/bp/temporal/a;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/temporal/a;->a(J)J

    .line 278
    new-instance v0, Lorg/threeten/bp/p;

    invoke-direct {v0, p0, p1, v1, v1}, Lorg/threeten/bp/p;-><init>(IIII)V

    goto :goto_0
.end method

.method public static a(III)Lorg/threeten/bp/p;
    .locals 4

    .prologue
    .line 295
    sget-object v0, Lorg/threeten/bp/temporal/a;->m:Lorg/threeten/bp/temporal/a;

    int-to-long v2, p0

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/temporal/a;->a(J)J

    .line 296
    or-int v0, p1, p2

    if-nez v0, :cond_0

    .line 297
    sget-object v0, Lorg/threeten/bp/p;->i:[Lorg/threeten/bp/p;

    aget-object v0, v0, p0

    .line 301
    :goto_0
    return-object v0

    .line 299
    :cond_0
    sget-object v0, Lorg/threeten/bp/temporal/a;->i:Lorg/threeten/bp/temporal/a;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/temporal/a;->a(J)J

    .line 300
    sget-object v0, Lorg/threeten/bp/temporal/a;->g:Lorg/threeten/bp/temporal/a;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/temporal/a;->a(J)J

    .line 301
    new-instance v0, Lorg/threeten/bp/p;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lorg/threeten/bp/p;-><init>(IIII)V

    goto :goto_0
.end method

.method public static a(IIII)Lorg/threeten/bp/p;
    .locals 4

    .prologue
    .line 317
    sget-object v0, Lorg/threeten/bp/temporal/a;->m:Lorg/threeten/bp/temporal/a;

    int-to-long v2, p0

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/temporal/a;->a(J)J

    .line 318
    sget-object v0, Lorg/threeten/bp/temporal/a;->i:Lorg/threeten/bp/temporal/a;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/temporal/a;->a(J)J

    .line 319
    sget-object v0, Lorg/threeten/bp/temporal/a;->g:Lorg/threeten/bp/temporal/a;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/temporal/a;->a(J)J

    .line 320
    sget-object v0, Lorg/threeten/bp/temporal/a;->a:Lorg/threeten/bp/temporal/a;

    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/temporal/a;->a(J)J

    .line 321
    invoke-static {p0, p1, p2, p3}, Lorg/threeten/bp/p;->b(IIII)Lorg/threeten/bp/p;

    move-result-object v0

    return-object v0
.end method

.method public static a(J)Lorg/threeten/bp/p;
    .locals 6

    .prologue
    .line 335
    sget-object v0, Lorg/threeten/bp/temporal/a;->h:Lorg/threeten/bp/temporal/a;

    invoke-virtual {v0, p0, p1}, Lorg/threeten/bp/temporal/a;->a(J)J

    .line 336
    const-wide/16 v0, 0xe10

    div-long v0, p0, v0

    long-to-int v0, v0

    .line 337
    mul-int/lit16 v1, v0, 0xe10

    int-to-long v2, v1

    sub-long v2, p0, v2

    .line 338
    const-wide/16 v4, 0x3c

    div-long v4, v2, v4

    long-to-int v1, v4

    .line 339
    mul-int/lit8 v4, v1, 0x3c

    int-to-long v4, v4

    sub-long/2addr v2, v4

    .line 340
    long-to-int v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/p;->b(IIII)Lorg/threeten/bp/p;

    move-result-object v0

    return-object v0
.end method

.method static a(JI)Lorg/threeten/bp/p;
    .locals 6

    .prologue
    .line 355
    sget-object v0, Lorg/threeten/bp/temporal/a;->h:Lorg/threeten/bp/temporal/a;

    invoke-virtual {v0, p0, p1}, Lorg/threeten/bp/temporal/a;->a(J)J

    .line 356
    sget-object v0, Lorg/threeten/bp/temporal/a;->a:Lorg/threeten/bp/temporal/a;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/temporal/a;->a(J)J

    .line 357
    const-wide/16 v0, 0xe10

    div-long v0, p0, v0

    long-to-int v0, v0

    .line 358
    mul-int/lit16 v1, v0, 0xe10

    int-to-long v2, v1

    sub-long v2, p0, v2

    .line 359
    const-wide/16 v4, 0x3c

    div-long v4, v2, v4

    long-to-int v1, v4

    .line 360
    mul-int/lit8 v4, v1, 0x3c

    int-to-long v4, v4

    sub-long/2addr v2, v4

    .line 361
    long-to-int v2, v2

    invoke-static {v0, v1, v2, p2}, Lorg/threeten/bp/p;->b(IIII)Lorg/threeten/bp/p;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lorg/threeten/bp/temporal/l;)Lorg/threeten/bp/p;
    .locals 3

    .prologue
    .line 402
    invoke-static {}, Lorg/threeten/bp/temporal/r;->g()Lorg/threeten/bp/temporal/z;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/threeten/bp/temporal/l;->a(Lorg/threeten/bp/temporal/z;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/p;

    .line 403
    if-nez v0, :cond_0

    .line 404
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to obtain LocalTime from TemporalAccessor: "

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

    .line 407
    :cond_0
    return-object v0
.end method

.method private b(I)Lorg/threeten/bp/p;
    .locals 4

    .prologue
    .line 881
    iget v0, p0, Lorg/threeten/bp/p;->h:I

    if-ne v0, p1, :cond_0

    .line 885
    :goto_0
    return-object p0

    .line 884
    :cond_0
    sget-object v0, Lorg/threeten/bp/temporal/a;->a:Lorg/threeten/bp/temporal/a;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/temporal/a;->a(J)J

    .line 885
    iget-byte v0, p0, Lorg/threeten/bp/p;->f:B

    iget-byte v1, p0, Lorg/threeten/bp/p;->j:B

    iget-byte v2, p0, Lorg/threeten/bp/p;->g:B

    invoke-static {v0, v1, v2, p1}, Lorg/threeten/bp/p;->b(IIII)Lorg/threeten/bp/p;

    move-result-object p0

    goto :goto_0
.end method

.method private static b(IIII)Lorg/threeten/bp/p;
    .locals 1

    .prologue
    .line 453
    or-int v0, p1, p2

    or-int/2addr v0, p3

    if-nez v0, :cond_0

    .line 454
    sget-object v0, Lorg/threeten/bp/p;->i:[Lorg/threeten/bp/p;

    aget-object v0, v0, p0

    .line 456
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/threeten/bp/p;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/threeten/bp/p;-><init>(IIII)V

    goto :goto_0
.end method

.method public static b(J)Lorg/threeten/bp/p;
    .locals 10

    .prologue
    const-wide v4, 0x34630b8a000L

    const-wide v6, 0xdf8475800L

    const-wide/32 v8, 0x3b9aca00

    .line 374
    sget-object v0, Lorg/threeten/bp/temporal/a;->b:Lorg/threeten/bp/temporal/a;

    invoke-virtual {v0, p0, p1}, Lorg/threeten/bp/temporal/a;->a(J)J

    .line 375
    div-long v0, p0, v4

    long-to-int v0, v0

    .line 376
    int-to-long v2, v0

    mul-long/2addr v2, v4

    sub-long v2, p0, v2

    .line 377
    div-long v4, v2, v6

    long-to-int v1, v4

    .line 378
    int-to-long v4, v1

    mul-long/2addr v4, v6

    sub-long/2addr v2, v4

    .line 379
    div-long v4, v2, v8

    long-to-int v4, v4

    .line 380
    int-to-long v6, v4

    mul-long/2addr v6, v8

    sub-long/2addr v2, v6

    .line 381
    long-to-int v2, v2

    invoke-static {v0, v1, v4, v2}, Lorg/threeten/bp/p;->b(IIII)Lorg/threeten/bp/p;

    move-result-object v0

    return-object v0
.end method

.method private c(J)Lorg/threeten/bp/p;
    .locals 5

    .prologue
    .line 992
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 996
    :goto_0
    return-object p0

    .line 995
    :cond_0
    const-wide/16 v0, 0x18

    rem-long v0, p1, v0

    long-to-int v0, v0

    iget-byte v1, p0, Lorg/threeten/bp/p;->f:B

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x18

    rem-int/lit8 v0, v0, 0x18

    .line 996
    iget-byte v1, p0, Lorg/threeten/bp/p;->j:B

    iget-byte v2, p0, Lorg/threeten/bp/p;->g:B

    iget v3, p0, Lorg/threeten/bp/p;->h:I

    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/p;->b(IIII)Lorg/threeten/bp/p;

    move-result-object p0

    goto :goto_0
.end method

.method private c(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/p;
    .locals 5

    .prologue
    .line 963
    instance-of v0, p3, Lorg/threeten/bp/temporal/b;

    if-eqz v0, :cond_0

    move-object v0, p3

    .line 964
    check-cast v0, Lorg/threeten/bp/temporal/b;

    .line 965
    sget-object v1, Lorg/threeten/bp/r;->b:[I

    invoke-virtual {v0}, Lorg/threeten/bp/temporal/b;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 974
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

    .line 966
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/p;->f(J)Lorg/threeten/bp/p;

    move-result-object v0

    .line 976
    :goto_0
    return-object v0

    .line 967
    :pswitch_1
    const-wide v0, 0x141dd76000L

    rem-long v0, p1, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lorg/threeten/bp/p;->f(J)Lorg/threeten/bp/p;

    move-result-object v0

    goto :goto_0

    .line 968
    :pswitch_2
    const-wide/32 v0, 0x5265c00

    rem-long v0, p1, v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lorg/threeten/bp/p;->f(J)Lorg/threeten/bp/p;

    move-result-object v0

    goto :goto_0

    .line 969
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/p;->e(J)Lorg/threeten/bp/p;

    move-result-object v0

    goto :goto_0

    .line 970
    :pswitch_4
    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/p;->d(J)Lorg/threeten/bp/p;

    move-result-object v0

    goto :goto_0

    .line 971
    :pswitch_5
    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/p;->c(J)Lorg/threeten/bp/p;

    move-result-object v0

    goto :goto_0

    .line 972
    :pswitch_6
    const-wide/16 v0, 0x2

    rem-long v0, p1, v0

    const-wide/16 v2, 0xc

    mul-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lorg/threeten/bp/p;->c(J)Lorg/threeten/bp/p;

    move-result-object v0

    goto :goto_0

    .line 976
    :cond_0
    invoke-interface {p3, p0, p1, p2}, Lorg/threeten/bp/temporal/aa;->a(Lorg/threeten/bp/temporal/k;J)Lorg/threeten/bp/temporal/k;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/p;

    goto :goto_0

    .line 965
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
    .end packed-switch
.end method

.method private d(J)Lorg/threeten/bp/p;
    .locals 5

    .prologue
    .line 1011
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 1021
    :cond_0
    :goto_0
    return-object p0

    .line 1014
    :cond_1
    iget-byte v0, p0, Lorg/threeten/bp/p;->f:B

    mul-int/lit8 v0, v0, 0x3c

    iget-byte v1, p0, Lorg/threeten/bp/p;->j:B

    add-int/2addr v0, v1

    .line 1015
    const-wide/16 v2, 0x5a0

    rem-long v2, p1, v2

    long-to-int v1, v2

    add-int/2addr v1, v0

    add-int/lit16 v1, v1, 0x5a0

    rem-int/lit16 v1, v1, 0x5a0

    .line 1016
    if-eq v0, v1, :cond_0

    .line 1019
    div-int/lit8 v0, v1, 0x3c

    .line 1020
    rem-int/lit8 v1, v1, 0x3c

    .line 1021
    iget-byte v2, p0, Lorg/threeten/bp/p;->g:B

    iget v3, p0, Lorg/threeten/bp/p;->h:I

    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/p;->b(IIII)Lorg/threeten/bp/p;

    move-result-object p0

    goto :goto_0
.end method

.method private e(Lorg/threeten/bp/temporal/q;)I
    .locals 4

    .prologue
    .line 623
    sget-object v1, Lorg/threeten/bp/r;->a:[I

    move-object v0, p1

    check-cast v0, Lorg/threeten/bp/temporal/a;

    invoke-virtual {v0}, Lorg/threeten/bp/temporal/a;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 640
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

    .line 624
    :pswitch_0
    iget v0, p0, Lorg/threeten/bp/p;->h:I

    .line 638
    :cond_0
    :goto_0
    return v0

    .line 625
    :pswitch_1
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

    .line 626
    :pswitch_2
    iget v0, p0, Lorg/threeten/bp/p;->h:I

    div-int/lit16 v0, v0, 0x3e8

    goto :goto_0

    .line 627
    :pswitch_3
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

    .line 628
    :pswitch_4
    iget v0, p0, Lorg/threeten/bp/p;->h:I

    const v1, 0xf4240

    div-int/2addr v0, v1

    goto :goto_0

    .line 629
    :pswitch_5
    invoke-virtual {p0}, Lorg/threeten/bp/p;->b()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0

    .line 630
    :pswitch_6
    iget-byte v0, p0, Lorg/threeten/bp/p;->g:B

    goto :goto_0

    .line 631
    :pswitch_7
    invoke-virtual {p0}, Lorg/threeten/bp/p;->a()I

    move-result v0

    goto :goto_0

    .line 632
    :pswitch_8
    iget-byte v0, p0, Lorg/threeten/bp/p;->j:B

    goto :goto_0

    .line 633
    :pswitch_9
    iget-byte v0, p0, Lorg/threeten/bp/p;->f:B

    mul-int/lit8 v0, v0, 0x3c

    iget-byte v1, p0, Lorg/threeten/bp/p;->j:B

    add-int/2addr v0, v1

    goto :goto_0

    .line 634
    :pswitch_a
    iget-byte v0, p0, Lorg/threeten/bp/p;->f:B

    rem-int/lit8 v0, v0, 0xc

    goto :goto_0

    .line 635
    :pswitch_b
    iget-byte v0, p0, Lorg/threeten/bp/p;->f:B

    rem-int/lit8 v0, v0, 0xc

    rem-int/lit8 v1, v0, 0xc

    if-nez v1, :cond_0

    const/16 v0, 0xc

    goto :goto_0

    .line 636
    :pswitch_c
    iget-byte v0, p0, Lorg/threeten/bp/p;->f:B

    goto :goto_0

    .line 637
    :pswitch_d
    iget-byte v0, p0, Lorg/threeten/bp/p;->f:B

    if-nez v0, :cond_1

    const/16 v0, 0x18

    goto :goto_0

    :cond_1
    iget-byte v0, p0, Lorg/threeten/bp/p;->f:B

    goto :goto_0

    .line 638
    :pswitch_e
    iget-byte v0, p0, Lorg/threeten/bp/p;->f:B

    div-int/lit8 v0, v0, 0xc

    goto :goto_0

    .line 623
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
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method private e(J)Lorg/threeten/bp/p;
    .locals 5

    .prologue
    const v4, 0x15180

    .line 1036
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 1048
    :cond_0
    :goto_0
    return-object p0

    .line 1039
    :cond_1
    iget-byte v0, p0, Lorg/threeten/bp/p;->f:B

    mul-int/lit16 v0, v0, 0xe10

    iget-byte v1, p0, Lorg/threeten/bp/p;->j:B

    mul-int/lit8 v1, v1, 0x3c

    add-int/2addr v0, v1

    iget-byte v1, p0, Lorg/threeten/bp/p;->g:B

    add-int/2addr v0, v1

    .line 1041
    const-wide/32 v2, 0x15180

    rem-long v2, p1, v2

    long-to-int v1, v2

    add-int/2addr v1, v0

    add-int/2addr v1, v4

    rem-int/2addr v1, v4

    .line 1042
    if-eq v0, v1, :cond_0

    .line 1045
    div-int/lit16 v0, v1, 0xe10

    .line 1046
    div-int/lit8 v2, v1, 0x3c

    rem-int/lit8 v2, v2, 0x3c

    .line 1047
    rem-int/lit8 v1, v1, 0x3c

    .line 1048
    iget v3, p0, Lorg/threeten/bp/p;->h:I

    invoke-static {v0, v2, v1, v3}, Lorg/threeten/bp/p;->b(IIII)Lorg/threeten/bp/p;

    move-result-object p0

    goto :goto_0
.end method

.method private f(J)Lorg/threeten/bp/p;
    .locals 11

    .prologue
    const-wide/32 v8, 0x3b9aca00

    const-wide/16 v6, 0x3c

    const-wide v4, 0x4e94914f0000L

    .line 1063
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 1075
    :cond_0
    :goto_0
    return-object p0

    .line 1066
    :cond_1
    invoke-virtual {p0}, Lorg/threeten/bp/p;->b()J

    move-result-wide v0

    .line 1067
    rem-long v2, p1, v4

    add-long/2addr v2, v0

    add-long/2addr v2, v4

    rem-long/2addr v2, v4

    .line 1068
    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1071
    const-wide v0, 0x34630b8a000L

    div-long v0, v2, v0

    long-to-int v0, v0

    .line 1072
    const-wide v4, 0xdf8475800L

    div-long v4, v2, v4

    rem-long/2addr v4, v6

    long-to-int v1, v4

    .line 1073
    div-long v4, v2, v8

    rem-long/2addr v4, v6

    long-to-int v4, v4

    .line 1074
    rem-long/2addr v2, v8

    long-to-int v2, v2

    .line 1075
    invoke-static {v0, v1, v4, v2}, Lorg/threeten/bp/p;->b(IIII)Lorg/threeten/bp/p;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 2

    .prologue
    .line 1343
    iget-byte v0, p0, Lorg/threeten/bp/p;->f:B

    mul-int/lit16 v0, v0, 0xe10

    .line 1344
    iget-byte v1, p0, Lorg/threeten/bp/p;->j:B

    mul-int/lit8 v1, v1, 0x3c

    add-int/2addr v0, v1

    .line 1345
    iget-byte v1, p0, Lorg/threeten/bp/p;->g:B

    add-int/2addr v0, v1

    .line 1346
    return v0
.end method

.method public final a(Lorg/threeten/bp/p;)I
    .locals 2

    .prologue
    .line 1376
    iget-byte v0, p0, Lorg/threeten/bp/p;->f:B

    iget-byte v1, p1, Lorg/threeten/bp/p;->f:B

    invoke-static {v0, v1}, Lorg/threeten/bp/b/c;->a(II)I

    move-result v0

    .line 1377
    if-nez v0, :cond_0

    .line 1378
    iget-byte v0, p0, Lorg/threeten/bp/p;->j:B

    iget-byte v1, p1, Lorg/threeten/bp/p;->j:B

    invoke-static {v0, v1}, Lorg/threeten/bp/b/c;->a(II)I

    move-result v0

    .line 1379
    if-nez v0, :cond_0

    .line 1380
    iget-byte v0, p0, Lorg/threeten/bp/p;->g:B

    iget-byte v1, p1, Lorg/threeten/bp/p;->g:B

    invoke-static {v0, v1}, Lorg/threeten/bp/b/c;->a(II)I

    move-result v0

    .line 1381
    if-nez v0, :cond_0

    .line 1382
    iget v0, p0, Lorg/threeten/bp/p;->h:I

    iget v1, p1, Lorg/threeten/bp/p;->h:I

    invoke-static {v0, v1}, Lorg/threeten/bp/b/c;->a(II)I

    move-result v0

    .line 1386
    :cond_0
    return v0
.end method

.method public final a(Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/aa;)J
    .locals 4

    .prologue
    .line 1291
    invoke-static {p1}, Lorg/threeten/bp/p;->a(Lorg/threeten/bp/temporal/l;)Lorg/threeten/bp/p;

    move-result-object v0

    .line 1292
    instance-of v1, p2, Lorg/threeten/bp/temporal/b;

    if-eqz v1, :cond_0

    .line 1293
    invoke-virtual {v0}, Lorg/threeten/bp/p;->b()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/threeten/bp/p;->b()J

    move-result-wide v2

    sub-long v2, v0, v2

    .line 1294
    sget-object v1, Lorg/threeten/bp/r;->b:[I

    move-object v0, p2

    check-cast v0, Lorg/threeten/bp/temporal/b;

    invoke-virtual {v0}, Lorg/threeten/bp/temporal/b;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 1303
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

    :pswitch_0
    move-wide v0, v2

    .line 1305
    :goto_0
    return-wide v0

    .line 1296
    :pswitch_1
    const-wide/16 v0, 0x3e8

    div-long v0, v2, v0

    goto :goto_0

    .line 1297
    :pswitch_2
    const-wide/32 v0, 0xf4240

    div-long v0, v2, v0

    goto :goto_0

    .line 1298
    :pswitch_3
    const-wide/32 v0, 0x3b9aca00

    div-long v0, v2, v0

    goto :goto_0

    .line 1299
    :pswitch_4
    const-wide v0, 0xdf8475800L

    div-long v0, v2, v0

    goto :goto_0

    .line 1300
    :pswitch_5
    const-wide v0, 0x34630b8a000L

    div-long v0, v2, v0

    goto :goto_0

    .line 1301
    :pswitch_6
    const-wide v0, 0x274a48a78000L

    div-long v0, v2, v0

    goto :goto_0

    .line 1305
    :cond_0
    invoke-interface {p2, p0, v0}, Lorg/threeten/bp/temporal/aa;->a(Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/k;)J

    move-result-wide v0

    goto :goto_0

    .line 1294
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
    .line 1203
    invoke-static {}, Lorg/threeten/bp/temporal/r;->c()Lorg/threeten/bp/temporal/z;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 1204
    sget-object p0, Lorg/threeten/bp/temporal/b;->a:Lorg/threeten/bp/temporal/b;

    .line 1214
    :cond_0
    :goto_0
    return-object p0

    .line 1205
    :cond_1
    invoke-static {}, Lorg/threeten/bp/temporal/r;->g()Lorg/threeten/bp/temporal/z;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 1209
    invoke-static {}, Lorg/threeten/bp/temporal/r;->b()Lorg/threeten/bp/temporal/z;

    move-result-object v0

    if-eq p1, v0, :cond_2

    invoke-static {}, Lorg/threeten/bp/temporal/r;->a()Lorg/threeten/bp/temporal/z;

    move-result-object v0

    if-eq p1, v0, :cond_2

    invoke-static {}, Lorg/threeten/bp/temporal/r;->d()Lorg/threeten/bp/temporal/z;

    move-result-object v0

    if-eq p1, v0, :cond_2

    invoke-static {}, Lorg/threeten/bp/temporal/r;->e()Lorg/threeten/bp/temporal/z;

    move-result-object v0

    if-eq p1, v0, :cond_2

    invoke-static {}, Lorg/threeten/bp/temporal/r;->f()Lorg/threeten/bp/temporal/z;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 1212
    :cond_2
    const/4 p0, 0x0

    goto :goto_0

    .line 1214
    :cond_3
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/z;->a(Lorg/threeten/bp/temporal/l;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0
.end method

.method public final synthetic a(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/temporal/k;
    .locals 5

    .prologue
    .line 88
    .line 3117
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-direct {p0, v0, v1, p3}, Lorg/threeten/bp/p;->c(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/p;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-direct {v0, v2, v3, p3}, Lorg/threeten/bp/p;->c(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/p;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-direct {p0, v0, v1, p3}, Lorg/threeten/bp/p;->c(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/p;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lorg/threeten/bp/temporal/k;)Lorg/threeten/bp/temporal/k;
    .locals 4

    .prologue
    .line 1243
    sget-object v0, Lorg/threeten/bp/temporal/a;->b:Lorg/threeten/bp/temporal/a;

    invoke-virtual {p0}, Lorg/threeten/bp/p;->b()J

    move-result-wide v2

    invoke-interface {p1, v0, v2, v3}, Lorg/threeten/bp/temporal/k;->a(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/temporal/k;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Lorg/threeten/bp/temporal/m;)Lorg/threeten/bp/temporal/k;
    .locals 1

    .prologue
    .line 88
    .line 3705
    instance-of v0, p1, Lorg/threeten/bp/p;

    if-eqz v0, :cond_0

    .line 3706
    check-cast p1, Lorg/threeten/bp/p;

    :goto_0
    return-object p1

    .line 3708
    :cond_0
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/m;->a(Lorg/threeten/bp/temporal/k;)Lorg/threeten/bp/temporal/k;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/p;

    move-object p1, v0

    .line 88
    goto :goto_0
.end method

.method public final synthetic a(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/temporal/k;
    .locals 2

    .prologue
    .line 88
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/p;->b(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/p;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lorg/threeten/bp/temporal/q;)Z
    .locals 1

    .prologue
    .line 513
    instance-of v0, p1, Lorg/threeten/bp/temporal/a;

    if-eqz v0, :cond_0

    .line 514
    invoke-interface {p1}, Lorg/threeten/bp/temporal/q;->c()Z

    move-result v0

    .line 516
    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/q;->a(Lorg/threeten/bp/temporal/l;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()J
    .locals 6

    .prologue
    .line 1356
    iget-byte v0, p0, Lorg/threeten/bp/p;->f:B

    int-to-long v0, v0

    const-wide v2, 0x34630b8a000L

    mul-long/2addr v0, v2

    .line 1357
    iget-byte v2, p0, Lorg/threeten/bp/p;->j:B

    int-to-long v2, v2

    const-wide v4, 0xdf8475800L

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 1358
    iget-byte v2, p0, Lorg/threeten/bp/p;->g:B

    int-to-long v2, v2

    const-wide/32 v4, 0x3b9aca00

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 1359
    iget v2, p0, Lorg/threeten/bp/p;->h:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 1360
    return-wide v0
.end method

.method public final b(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/p;
    .locals 6

    .prologue
    const-wide/16 v4, 0xc

    const-wide/16 v2, 0x0

    .line 794
    instance-of v0, p1, Lorg/threeten/bp/temporal/a;

    if-eqz v0, :cond_3

    move-object v0, p1

    .line 795
    check-cast v0, Lorg/threeten/bp/temporal/a;

    .line 796
    invoke-virtual {v0, p2, p3}, Lorg/threeten/bp/temporal/a;->a(J)J

    .line 797
    sget-object v1, Lorg/threeten/bp/r;->a:[I

    invoke-virtual {v0}, Lorg/threeten/bp/temporal/a;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 814
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

    .line 798
    :pswitch_0
    long-to-int v0, p2

    invoke-direct {p0, v0}, Lorg/threeten/bp/p;->b(I)Lorg/threeten/bp/p;

    move-result-object p0

    .line 2848
    :cond_0
    :goto_0
    return-object p0

    .line 799
    :pswitch_1
    invoke-static {p2, p3}, Lorg/threeten/bp/p;->b(J)Lorg/threeten/bp/p;

    move-result-object p0

    goto :goto_0

    .line 800
    :pswitch_2
    long-to-int v0, p2

    mul-int/lit16 v0, v0, 0x3e8

    invoke-direct {p0, v0}, Lorg/threeten/bp/p;->b(I)Lorg/threeten/bp/p;

    move-result-object p0

    goto :goto_0

    .line 801
    :pswitch_3
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p2

    invoke-static {v0, v1}, Lorg/threeten/bp/p;->b(J)Lorg/threeten/bp/p;

    move-result-object p0

    goto :goto_0

    .line 802
    :pswitch_4
    long-to-int v0, p2

    const v1, 0xf4240

    mul-int/2addr v0, v1

    invoke-direct {p0, v0}, Lorg/threeten/bp/p;->b(I)Lorg/threeten/bp/p;

    move-result-object p0

    goto :goto_0

    .line 803
    :pswitch_5
    const-wide/32 v0, 0xf4240

    mul-long/2addr v0, p2

    invoke-static {v0, v1}, Lorg/threeten/bp/p;->b(J)Lorg/threeten/bp/p;

    move-result-object p0

    goto :goto_0

    .line 804
    :pswitch_6
    long-to-int v0, p2

    .line 1864
    iget-byte v1, p0, Lorg/threeten/bp/p;->g:B

    if-eq v1, v0, :cond_0

    .line 1867
    sget-object v1, Lorg/threeten/bp/temporal/a;->g:Lorg/threeten/bp/temporal/a;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lorg/threeten/bp/temporal/a;->a(J)J

    .line 1868
    iget-byte v1, p0, Lorg/threeten/bp/p;->f:B

    iget-byte v2, p0, Lorg/threeten/bp/p;->j:B

    iget v3, p0, Lorg/threeten/bp/p;->h:I

    invoke-static {v1, v2, v0, v3}, Lorg/threeten/bp/p;->b(IIII)Lorg/threeten/bp/p;

    move-result-object p0

    goto :goto_0

    .line 805
    :pswitch_7
    invoke-virtual {p0}, Lorg/threeten/bp/p;->a()I

    move-result v0

    int-to-long v0, v0

    sub-long v0, p2, v0

    invoke-direct {p0, v0, v1}, Lorg/threeten/bp/p;->e(J)Lorg/threeten/bp/p;

    move-result-object p0

    goto :goto_0

    .line 806
    :pswitch_8
    long-to-int v0, p2

    .line 2847
    iget-byte v1, p0, Lorg/threeten/bp/p;->j:B

    if-eq v1, v0, :cond_0

    .line 2850
    sget-object v1, Lorg/threeten/bp/temporal/a;->i:Lorg/threeten/bp/temporal/a;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lorg/threeten/bp/temporal/a;->a(J)J

    .line 2851
    iget-byte v1, p0, Lorg/threeten/bp/p;->f:B

    iget-byte v2, p0, Lorg/threeten/bp/p;->g:B

    iget v3, p0, Lorg/threeten/bp/p;->h:I

    invoke-static {v1, v0, v2, v3}, Lorg/threeten/bp/p;->b(IIII)Lorg/threeten/bp/p;

    move-result-object p0

    goto :goto_0

    .line 807
    :pswitch_9
    iget-byte v0, p0, Lorg/threeten/bp/p;->f:B

    mul-int/lit8 v0, v0, 0x3c

    iget-byte v1, p0, Lorg/threeten/bp/p;->j:B

    add-int/2addr v0, v1

    int-to-long v0, v0

    sub-long v0, p2, v0

    invoke-direct {p0, v0, v1}, Lorg/threeten/bp/p;->d(J)Lorg/threeten/bp/p;

    move-result-object p0

    goto :goto_0

    .line 808
    :pswitch_a
    iget-byte v0, p0, Lorg/threeten/bp/p;->f:B

    rem-int/lit8 v0, v0, 0xc

    int-to-long v0, v0

    sub-long v0, p2, v0

    invoke-direct {p0, v0, v1}, Lorg/threeten/bp/p;->c(J)Lorg/threeten/bp/p;

    move-result-object p0

    goto :goto_0

    .line 809
    :pswitch_b
    cmp-long v0, p2, v4

    if-nez v0, :cond_1

    move-wide p2, v2

    :cond_1
    iget-byte v0, p0, Lorg/threeten/bp/p;->f:B

    rem-int/lit8 v0, v0, 0xc

    int-to-long v0, v0

    sub-long v0, p2, v0

    invoke-direct {p0, v0, v1}, Lorg/threeten/bp/p;->c(J)Lorg/threeten/bp/p;

    move-result-object p0

    goto/16 :goto_0

    .line 810
    :pswitch_c
    long-to-int v0, p2

    invoke-direct {p0, v0}, Lorg/threeten/bp/p;->a(I)Lorg/threeten/bp/p;

    move-result-object p0

    goto/16 :goto_0

    .line 811
    :pswitch_d
    const-wide/16 v0, 0x18

    cmp-long v0, p2, v0

    if-nez v0, :cond_2

    :goto_1
    long-to-int v0, v2

    invoke-direct {p0, v0}, Lorg/threeten/bp/p;->a(I)Lorg/threeten/bp/p;

    move-result-object p0

    goto/16 :goto_0

    :cond_2
    move-wide v2, p2

    goto :goto_1

    .line 812
    :pswitch_e
    iget-byte v0, p0, Lorg/threeten/bp/p;->f:B

    div-int/lit8 v0, v0, 0xc

    int-to-long v0, v0

    sub-long v0, p2, v0

    mul-long/2addr v0, v4

    invoke-direct {p0, v0, v1}, Lorg/threeten/bp/p;->c(J)Lorg/threeten/bp/p;

    move-result-object p0

    goto/16 :goto_0

    .line 816
    :cond_3
    invoke-interface {p1, p0, p2, p3}, Lorg/threeten/bp/temporal/q;->a(Lorg/threeten/bp/temporal/k;J)Lorg/threeten/bp/temporal/k;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/p;

    move-object p0, v0

    goto/16 :goto_0

    .line 797
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
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public final b(Lorg/threeten/bp/temporal/q;)Lorg/threeten/bp/temporal/ab;
    .locals 1

    .prologue
    .line 551
    invoke-super {p0, p1}, Lorg/threeten/bp/b/b;->b(Lorg/threeten/bp/temporal/q;)Lorg/threeten/bp/temporal/ab;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/temporal/k;
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0, p1, p2, p3}, Lorg/threeten/bp/p;->c(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/p;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lorg/threeten/bp/p;)Z
    .locals 1

    .prologue
    .line 1412
    invoke-virtual {p0, p1}, Lorg/threeten/bp/p;->a(Lorg/threeten/bp/p;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(Lorg/threeten/bp/temporal/q;)I
    .locals 1

    .prologue
    .line 580
    instance-of v0, p1, Lorg/threeten/bp/temporal/a;

    if-eqz v0, :cond_0

    .line 581
    invoke-direct {p0, p1}, Lorg/threeten/bp/p;->e(Lorg/threeten/bp/temporal/q;)I

    move-result v0

    .line 583
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lorg/threeten/bp/b/b;->c(Lorg/threeten/bp/temporal/q;)I

    move-result v0

    goto :goto_0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 88
    check-cast p1, Lorg/threeten/bp/p;

    invoke-virtual {p0, p1}, Lorg/threeten/bp/p;->a(Lorg/threeten/bp/p;)I

    move-result v0

    return v0
.end method

.method public final d(Lorg/threeten/bp/temporal/q;)J
    .locals 4

    .prologue
    .line 610
    instance-of v0, p1, Lorg/threeten/bp/temporal/a;

    if-eqz v0, :cond_2

    .line 611
    sget-object v0, Lorg/threeten/bp/temporal/a;->b:Lorg/threeten/bp/temporal/a;

    if-ne p1, v0, :cond_0

    .line 612
    invoke-virtual {p0}, Lorg/threeten/bp/p;->b()J

    move-result-wide v0

    .line 619
    :goto_0
    return-wide v0

    .line 614
    :cond_0
    sget-object v0, Lorg/threeten/bp/temporal/a;->d:Lorg/threeten/bp/temporal/a;

    if-ne p1, v0, :cond_1

    .line 615
    invoke-virtual {p0}, Lorg/threeten/bp/p;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    goto :goto_0

    .line 617
    :cond_1
    invoke-direct {p0, p1}, Lorg/threeten/bp/p;->e(Lorg/threeten/bp/temporal/q;)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    .line 619
    :cond_2
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/q;->c(Lorg/threeten/bp/temporal/l;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1430
    if-ne p0, p1, :cond_1

    .line 1438
    :cond_0
    :goto_0
    return v0

    .line 1433
    :cond_1
    instance-of v2, p1, Lorg/threeten/bp/p;

    if-eqz v2, :cond_3

    .line 1434
    check-cast p1, Lorg/threeten/bp/p;

    .line 1435
    iget-byte v2, p0, Lorg/threeten/bp/p;->f:B

    iget-byte v3, p1, Lorg/threeten/bp/p;->f:B

    if-ne v2, v3, :cond_2

    iget-byte v2, p0, Lorg/threeten/bp/p;->j:B

    iget-byte v3, p1, Lorg/threeten/bp/p;->j:B

    if-ne v2, v3, :cond_2

    iget-byte v2, p0, Lorg/threeten/bp/p;->g:B

    iget-byte v3, p1, Lorg/threeten/bp/p;->g:B

    if-ne v2, v3, :cond_2

    iget v2, p0, Lorg/threeten/bp/p;->h:I

    iget v3, p1, Lorg/threeten/bp/p;->h:I

    if-eq v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1438
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 1448
    invoke-virtual {p0}, Lorg/threeten/bp/p;->b()J

    move-result-wide v0

    .line 1449
    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    .prologue
    const v8, 0xf4240

    const/16 v7, 0xa

    const/4 v6, 0x1

    .line 1471
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x12

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1472
    iget-byte v2, p0, Lorg/threeten/bp/p;->f:B

    .line 1473
    iget-byte v3, p0, Lorg/threeten/bp/p;->j:B

    .line 1474
    iget-byte v4, p0, Lorg/threeten/bp/p;->g:B

    .line 1475
    iget v5, p0, Lorg/threeten/bp/p;->h:I

    .line 1476
    if-ge v2, v7, :cond_2

    const-string v0, "0"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    if-ge v3, v7, :cond_3

    const-string v0, ":0"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1478
    if-gtz v4, :cond_0

    if-lez v5, :cond_1

    .line 1479
    :cond_0
    if-ge v4, v7, :cond_4

    const-string v0, ":0"

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1480
    if-lez v5, :cond_1

    .line 1481
    const/16 v0, 0x2e

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1482
    rem-int v0, v5, v8

    if-nez v0, :cond_5

    .line 1483
    div-int v0, v5, v8

    add-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1491
    :cond_1
    :goto_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1476
    :cond_2
    const-string v0, ""

    goto :goto_0

    :cond_3
    const-string v0, ":"

    goto :goto_1

    .line 1479
    :cond_4
    const-string v0, ":"

    goto :goto_2

    .line 1484
    :cond_5
    rem-int/lit16 v0, v5, 0x3e8

    if-nez v0, :cond_6

    .line 1485
    div-int/lit16 v0, v5, 0x3e8

    add-int/2addr v0, v8

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1487
    :cond_6
    const v0, 0x3b9aca00

    add-int/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method
