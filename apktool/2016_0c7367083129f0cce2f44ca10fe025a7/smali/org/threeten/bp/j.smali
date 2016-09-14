.class public final Lorg/threeten/bp/j;
.super Lorg/threeten/bp/a/a;
.source "LocalDate.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/threeten/bp/temporal/k;
.implements Lorg/threeten/bp/temporal/m;


# static fields
.field public static final a:Lorg/threeten/bp/j;

.field public static final b:Lorg/threeten/bp/j;

.field public static final c:Lorg/threeten/bp/temporal/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/threeten/bp/temporal/z",
            "<",
            "Lorg/threeten/bp/j;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final d:I

.field public final e:S

.field public final f:S


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 108
    const v0, -0x3b9ac9ff

    invoke-static {v0, v1, v1}, Lorg/threeten/bp/j;->a(III)Lorg/threeten/bp/j;

    move-result-object v0

    sput-object v0, Lorg/threeten/bp/j;->a:Lorg/threeten/bp/j;

    .line 113
    const v0, 0x3b9ac9ff

    const/16 v1, 0xc

    const/16 v2, 0x1f

    invoke-static {v0, v1, v2}, Lorg/threeten/bp/j;->a(III)Lorg/threeten/bp/j;

    move-result-object v0

    sput-object v0, Lorg/threeten/bp/j;->b:Lorg/threeten/bp/j;

    .line 117
    new-instance v0, Lorg/threeten/bp/k;

    invoke-direct {v0}, Lorg/threeten/bp/k;-><init>()V

    sput-object v0, Lorg/threeten/bp/j;->c:Lorg/threeten/bp/temporal/z;

    return-void
.end method

.method private constructor <init>(III)V
    .locals 1

    .prologue
    .line 420
    invoke-direct {p0}, Lorg/threeten/bp/a/a;-><init>()V

    .line 421
    iput p1, p0, Lorg/threeten/bp/j;->d:I

    .line 422
    int-to-short v0, p2

    iput-short v0, p0, Lorg/threeten/bp/j;->e:S

    .line 423
    int-to-short v0, p3

    iput-short v0, p0, Lorg/threeten/bp/j;->f:S

    .line 424
    return-void
.end method

.method public static a()Lorg/threeten/bp/j;
    .locals 4

    .prologue
    .line 2137
    new-instance v0, Lorg/threeten/bp/b;

    invoke-static {}, Lorg/threeten/bp/ad;->a()Lorg/threeten/bp/ad;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/threeten/bp/b;-><init>(Lorg/threeten/bp/ad;)V

    .line 2195
    const-string v1, "clock"

    invoke-static {v0, v1}, Lorg/threeten/bp/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2196
    invoke-virtual {v0}, Lorg/threeten/bp/a;->b()Lorg/threeten/bp/g;

    move-result-object v1

    .line 2197
    invoke-virtual {v0}, Lorg/threeten/bp/a;->a()Lorg/threeten/bp/ad;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/ad;->c()Lorg/threeten/bp/zone/i;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/threeten/bp/zone/i;->a(Lorg/threeten/bp/g;)Lorg/threeten/bp/af;

    move-result-object v0

    .line 2546
    iget-wide v2, v1, Lorg/threeten/bp/g;->e:J

    .line 3449
    iget v0, v0, Lorg/threeten/bp/af;->g:I

    .line 2198
    int-to-long v0, v0

    add-long/2addr v0, v2

    .line 2199
    const-wide/32 v2, 0x15180

    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/b/c;->e(JJ)J

    move-result-wide v0

    .line 2200
    invoke-static {v0, v1}, Lorg/threeten/bp/j;->a(J)Lorg/threeten/bp/j;

    move-result-object v0

    .line 165
    return-object v0
.end method

.method public static a(II)Lorg/threeten/bp/j;
    .locals 4

    .prologue
    .line 255
    sget-object v0, Lorg/threeten/bp/temporal/a;->A:Lorg/threeten/bp/temporal/a;

    int-to-long v2, p0

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/temporal/a;->a(J)J

    .line 256
    sget-object v0, Lorg/threeten/bp/temporal/a;->t:Lorg/threeten/bp/temporal/a;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/temporal/a;->a(J)J

    .line 257
    sget-object v0, Lorg/threeten/bp/a/p;->b:Lorg/threeten/bp/a/p;

    int-to-long v2, p0

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/a/p;->a(J)Z

    move-result v1

    .line 258
    const/16 v0, 0x16e

    if-ne p1, v0, :cond_0

    if-nez v1, :cond_0

    .line 259
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid date \'DayOfYear 366\' as \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not a leap year"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_0
    add-int/lit8 v0, p1, -0x1

    div-int/lit8 v0, v0, 0x1f

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lorg/threeten/bp/s;->a(I)Lorg/threeten/bp/s;

    move-result-object v0

    .line 262
    invoke-virtual {v0, v1}, Lorg/threeten/bp/s;->b(Z)I

    move-result v2

    invoke-virtual {v0, v1}, Lorg/threeten/bp/s;->a(Z)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    .line 263
    if-le p1, v2, :cond_1

    .line 4369
    sget-object v2, Lorg/threeten/bp/s;->n:[Lorg/threeten/bp/s;

    invoke-virtual {v0}, Lorg/threeten/bp/s;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, 0xd

    rem-int/lit8 v0, v0, 0xc

    aget-object v0, v2, v0

    .line 266
    :cond_1
    invoke-virtual {v0, v1}, Lorg/threeten/bp/s;->b(Z)I

    move-result v1

    sub-int v1, p1, v1

    add-int/lit8 v1, v1, 0x1

    .line 267
    invoke-static {p0, v0, v1}, Lorg/threeten/bp/j;->b(ILorg/threeten/bp/s;I)Lorg/threeten/bp/j;

    move-result-object v0

    return-object v0
.end method

.method public static a(III)Lorg/threeten/bp/j;
    .locals 4

    .prologue
    .line 236
    sget-object v0, Lorg/threeten/bp/temporal/a;->A:Lorg/threeten/bp/temporal/a;

    int-to-long v2, p0

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/temporal/a;->a(J)J

    .line 237
    sget-object v0, Lorg/threeten/bp/temporal/a;->x:Lorg/threeten/bp/temporal/a;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/temporal/a;->a(J)J

    .line 238
    sget-object v0, Lorg/threeten/bp/temporal/a;->s:Lorg/threeten/bp/temporal/a;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/temporal/a;->a(J)J

    .line 239
    invoke-static {p1}, Lorg/threeten/bp/s;->a(I)Lorg/threeten/bp/s;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lorg/threeten/bp/j;->b(ILorg/threeten/bp/s;I)Lorg/threeten/bp/j;

    move-result-object v0

    return-object v0
.end method

.method public static a(ILorg/threeten/bp/s;I)Lorg/threeten/bp/j;
    .locals 4

    .prologue
    .line 217
    sget-object v0, Lorg/threeten/bp/temporal/a;->A:Lorg/threeten/bp/temporal/a;

    int-to-long v2, p0

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/temporal/a;->a(J)J

    .line 218
    const-string v0, "month"

    invoke-static {p1, v0}, Lorg/threeten/bp/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 219
    sget-object v0, Lorg/threeten/bp/temporal/a;->s:Lorg/threeten/bp/temporal/a;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/temporal/a;->a(J)J

    .line 220
    invoke-static {p0, p1, p2}, Lorg/threeten/bp/j;->b(ILorg/threeten/bp/s;I)Lorg/threeten/bp/j;

    move-result-object v0

    return-object v0
.end method

.method public static a(J)Lorg/threeten/bp/j;
    .locals 10

    .prologue
    .line 282
    const-wide/32 v0, 0xafaa8

    add-long/2addr v0, p0

    .line 284
    const-wide/16 v2, 0x3c

    sub-long v2, v0, v2

    .line 285
    const-wide/16 v0, 0x0

    .line 286
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    .line 288
    const-wide/16 v0, 0x1

    add-long/2addr v0, v2

    const-wide/32 v4, 0x23ab1

    div-long/2addr v0, v4

    const-wide/16 v4, 0x1

    sub-long v4, v0, v4

    .line 289
    const-wide/16 v0, 0x190

    mul-long/2addr v0, v4

    .line 290
    neg-long v4, v4

    const-wide/32 v6, 0x23ab1

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    .line 292
    :cond_0
    const-wide/16 v4, 0x190

    mul-long/2addr v4, v2

    const-wide/16 v6, 0x24f

    add-long/2addr v4, v6

    const-wide/32 v6, 0x23ab1

    div-long v6, v4, v6

    .line 293
    const-wide/16 v4, 0x16d

    mul-long/2addr v4, v6

    const-wide/16 v8, 0x4

    div-long v8, v6, v8

    add-long/2addr v4, v8

    const-wide/16 v8, 0x64

    div-long v8, v6, v8

    sub-long/2addr v4, v8

    const-wide/16 v8, 0x190

    div-long v8, v6, v8

    add-long/2addr v4, v8

    sub-long v4, v2, v4

    .line 294
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-gez v8, :cond_1

    .line 296
    const-wide/16 v4, 0x1

    sub-long v4, v6, v4

    .line 297
    const-wide/16 v6, 0x16d

    mul-long/2addr v6, v4

    const-wide/16 v8, 0x4

    div-long v8, v4, v8

    add-long/2addr v6, v8

    const-wide/16 v8, 0x64

    div-long v8, v4, v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x190

    div-long v8, v4, v8

    add-long/2addr v6, v8

    sub-long/2addr v2, v6

    .line 299
    :goto_0
    add-long/2addr v0, v4

    .line 300
    long-to-int v2, v2

    .line 303
    mul-int/lit8 v3, v2, 0x5

    add-int/lit8 v3, v3, 0x2

    div-int/lit16 v3, v3, 0x99

    .line 304
    add-int/lit8 v4, v3, 0x2

    rem-int/lit8 v4, v4, 0xc

    add-int/lit8 v4, v4, 0x1

    .line 305
    mul-int/lit16 v5, v3, 0x132

    add-int/lit8 v5, v5, 0x5

    div-int/lit8 v5, v5, 0xa

    sub-int/2addr v2, v5

    add-int/lit8 v2, v2, 0x1

    .line 306
    div-int/lit8 v3, v3, 0xa

    int-to-long v6, v3

    add-long/2addr v0, v6

    .line 309
    sget-object v3, Lorg/threeten/bp/temporal/a;->A:Lorg/threeten/bp/temporal/a;

    invoke-virtual {v3, v0, v1}, Lorg/threeten/bp/temporal/a;->b(J)I

    move-result v0

    .line 310
    new-instance v1, Lorg/threeten/bp/j;

    invoke-direct {v1, v0, v4, v2}, Lorg/threeten/bp/j;-><init>(III)V

    return-object v1

    :cond_1
    move-wide v2, v4

    move-wide v4, v6

    goto :goto_0
.end method

.method public static a(Ljava/lang/CharSequence;)Lorg/threeten/bp/j;
    .locals 2

    .prologue
    .line 351
    sget-object v0, Lorg/threeten/bp/format/b;->a:Lorg/threeten/bp/format/b;

    .line 5365
    const-string v1, "formatter"

    invoke-static {v0, v1}, Lorg/threeten/bp/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5366
    sget-object v1, Lorg/threeten/bp/j;->c:Lorg/threeten/bp/temporal/z;

    invoke-virtual {v0, p0, v1}, Lorg/threeten/bp/format/b;->a(Ljava/lang/CharSequence;Lorg/threeten/bp/temporal/z;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/j;

    .line 351
    return-object v0
.end method

.method public static a(Lorg/threeten/bp/temporal/l;)Lorg/threeten/bp/j;
    .locals 3

    .prologue
    .line 331
    invoke-static {}, Lorg/threeten/bp/temporal/r;->f()Lorg/threeten/bp/temporal/z;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/threeten/bp/temporal/l;->a(Lorg/threeten/bp/temporal/z;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/j;

    .line 332
    if-nez v0, :cond_0

    .line 333
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to obtain LocalDate from TemporalAccessor: "

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

    .line 336
    :cond_0
    return-object v0
.end method

.method private b(I)Lorg/threeten/bp/j;
    .locals 4

    .prologue
    .line 966
    iget v0, p0, Lorg/threeten/bp/j;->d:I

    if-ne v0, p1, :cond_0

    .line 970
    :goto_0
    return-object p0

    .line 969
    :cond_0
    sget-object v0, Lorg/threeten/bp/temporal/a;->A:Lorg/threeten/bp/temporal/a;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/temporal/a;->a(J)J

    .line 970
    iget-short v0, p0, Lorg/threeten/bp/j;->e:S

    iget-short v1, p0, Lorg/threeten/bp/j;->f:S

    invoke-static {p1, v0, v1}, Lorg/threeten/bp/j;->b(III)Lorg/threeten/bp/j;

    move-result-object p0

    goto :goto_0
.end method

.method private static b(III)Lorg/threeten/bp/j;
    .locals 4

    .prologue
    .line 399
    packed-switch p1, :pswitch_data_0

    .line 410
    :goto_0
    :pswitch_0
    invoke-static {p0, p1, p2}, Lorg/threeten/bp/j;->a(III)Lorg/threeten/bp/j;

    move-result-object v0

    return-object v0

    .line 401
    :pswitch_1
    sget-object v0, Lorg/threeten/bp/a/p;->b:Lorg/threeten/bp/a/p;

    int-to-long v2, p0

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/a/p;->a(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1d

    :goto_1
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_0

    :cond_0
    const/16 v0, 0x1c

    goto :goto_1

    .line 407
    :pswitch_2
    const/16 v0, 0x1e

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_0

    .line 399
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static b(ILorg/threeten/bp/s;I)Lorg/threeten/bp/j;
    .locals 4

    .prologue
    .line 380
    const/16 v0, 0x1c

    if-le p2, v0, :cond_1

    sget-object v0, Lorg/threeten/bp/a/p;->b:Lorg/threeten/bp/a/p;

    int-to-long v2, p0

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/a/p;->a(J)Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/threeten/bp/s;->a(Z)I

    move-result v0

    if-le p2, v0, :cond_1

    .line 381
    const/16 v0, 0x1d

    if-ne p2, v0, :cond_0

    .line 382
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid date \'February 29\' as \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not a leap year"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 384
    :cond_0
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid date \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/threeten/bp/s;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 387
    :cond_1
    new-instance v0, Lorg/threeten/bp/j;

    .line 6213
    invoke-virtual {p1}, Lorg/threeten/bp/s;->ordinal()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 387
    invoke-direct {v0, p0, v1, p2}, Lorg/threeten/bp/j;-><init>(III)V

    return-object v0
.end method

.method private c(Lorg/threeten/bp/j;)J
    .locals 8

    .prologue
    const-wide/16 v6, 0x20

    .line 1438
    invoke-direct {p0}, Lorg/threeten/bp/j;->h()J

    move-result-wide v0

    mul-long/2addr v0, v6

    .line 12690
    iget-short v2, p0, Lorg/threeten/bp/j;->f:S

    .line 1438
    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 1439
    invoke-direct {p1}, Lorg/threeten/bp/j;->h()J

    move-result-wide v2

    mul-long/2addr v2, v6

    .line 13690
    iget-short v4, p1, Lorg/threeten/bp/j;->f:S

    .line 1439
    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 1440
    sub-long v0, v2, v0

    div-long/2addr v0, v6

    return-wide v0
.end method

.method private c(Lorg/threeten/bp/temporal/p;)Lorg/threeten/bp/j;
    .locals 1

    .prologue
    .line 1046
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/p;->a(Lorg/threeten/bp/temporal/k;)Lorg/threeten/bp/temporal/k;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/j;

    return-object v0
.end method

.method private e(Lorg/threeten/bp/temporal/q;)I
    .locals 3

    .prologue
    .line 578
    sget-object v1, Lorg/threeten/bp/l;->a:[I

    move-object v0, p1

    check-cast v0, Lorg/threeten/bp/temporal/a;

    invoke-virtual {v0}, Lorg/threeten/bp/temporal/a;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 593
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

    .line 579
    :pswitch_0
    invoke-virtual {p0}, Lorg/threeten/bp/j;->d()Lorg/threeten/bp/d;

    move-result-object v0

    .line 9187
    invoke-virtual {v0}, Lorg/threeten/bp/d;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 591
    :goto_0
    return v0

    .line 580
    :pswitch_1
    iget-short v0, p0, Lorg/threeten/bp/j;->f:S

    add-int/lit8 v0, v0, -0x1

    rem-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 581
    :pswitch_2
    invoke-virtual {p0}, Lorg/threeten/bp/j;->c()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    rem-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 582
    :pswitch_3
    iget-short v0, p0, Lorg/threeten/bp/j;->f:S

    goto :goto_0

    .line 583
    :pswitch_4
    invoke-virtual {p0}, Lorg/threeten/bp/j;->c()I

    move-result v0

    goto :goto_0

    .line 584
    :pswitch_5
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

    .line 585
    :pswitch_6
    iget-short v0, p0, Lorg/threeten/bp/j;->f:S

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 586
    :pswitch_7
    invoke-virtual {p0}, Lorg/threeten/bp/j;->c()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 587
    :pswitch_8
    iget-short v0, p0, Lorg/threeten/bp/j;->e:S

    goto :goto_0

    .line 588
    :pswitch_9
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

    .line 589
    :pswitch_a
    iget v0, p0, Lorg/threeten/bp/j;->d:I

    if-lez v0, :cond_0

    iget v0, p0, Lorg/threeten/bp/j;->d:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/threeten/bp/j;->d:I

    rsub-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 590
    :pswitch_b
    iget v0, p0, Lorg/threeten/bp/j;->d:I

    goto :goto_0

    .line 591
    :pswitch_c
    iget v0, p0, Lorg/threeten/bp/j;->d:I

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 578
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_a
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private f(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/j;
    .locals 5

    .prologue
    .line 1224
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1, p3}, Lorg/threeten/bp/j;->c(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/j;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3, p3}, Lorg/threeten/bp/j;->c(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/j;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1, p3}, Lorg/threeten/bp/j;->c(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/j;

    move-result-object v0

    goto :goto_0
.end method

.method private h()J
    .locals 4

    .prologue
    .line 597
    iget v0, p0, Lorg/threeten/bp/j;->d:I

    int-to-long v0, v0

    const-wide/16 v2, 0xc

    mul-long/2addr v0, v2

    iget-short v2, p0, Lorg/threeten/bp/j;->e:S

    add-int/lit8 v2, v2, -0x1

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public final a(Lorg/threeten/bp/a/a;)I
    .locals 1

    .prologue
    .line 1671
    instance-of v0, p1, Lorg/threeten/bp/j;

    if-eqz v0, :cond_0

    .line 1672
    check-cast p1, Lorg/threeten/bp/j;

    invoke-virtual {p0, p1}, Lorg/threeten/bp/j;->b(Lorg/threeten/bp/j;)I

    move-result v0

    .line 1674
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lorg/threeten/bp/a/a;->a(Lorg/threeten/bp/a/a;)I

    move-result v0

    goto :goto_0
.end method

.method final a(Lorg/threeten/bp/j;)J
    .locals 4

    .prologue
    .line 1434
    invoke-virtual {p1}, Lorg/threeten/bp/j;->f()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/threeten/bp/j;->f()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final a(Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/aa;)J
    .locals 4

    .prologue
    .line 1416
    invoke-static {p1}, Lorg/threeten/bp/j;->a(Lorg/threeten/bp/temporal/l;)Lorg/threeten/bp/j;

    move-result-object v1

    .line 1417
    instance-of v0, p2, Lorg/threeten/bp/temporal/b;

    if-eqz v0, :cond_0

    .line 1418
    sget-object v2, Lorg/threeten/bp/l;->b:[I

    move-object v0, p2

    check-cast v0, Lorg/threeten/bp/temporal/b;

    invoke-virtual {v0}, Lorg/threeten/bp/temporal/b;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 1428
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

    .line 1419
    :pswitch_0
    invoke-virtual {p0, v1}, Lorg/threeten/bp/j;->a(Lorg/threeten/bp/j;)J

    move-result-wide v0

    .line 1430
    :goto_0
    return-wide v0

    .line 1420
    :pswitch_1
    invoke-virtual {p0, v1}, Lorg/threeten/bp/j;->a(Lorg/threeten/bp/j;)J

    move-result-wide v0

    const-wide/16 v2, 0x7

    div-long/2addr v0, v2

    goto :goto_0

    .line 1421
    :pswitch_2
    invoke-direct {p0, v1}, Lorg/threeten/bp/j;->c(Lorg/threeten/bp/j;)J

    move-result-wide v0

    goto :goto_0

    .line 1422
    :pswitch_3
    invoke-direct {p0, v1}, Lorg/threeten/bp/j;->c(Lorg/threeten/bp/j;)J

    move-result-wide v0

    const-wide/16 v2, 0xc

    div-long/2addr v0, v2

    goto :goto_0

    .line 1423
    :pswitch_4
    invoke-direct {p0, v1}, Lorg/threeten/bp/j;->c(Lorg/threeten/bp/j;)J

    move-result-wide v0

    const-wide/16 v2, 0x78

    div-long/2addr v0, v2

    goto :goto_0

    .line 1424
    :pswitch_5
    invoke-direct {p0, v1}, Lorg/threeten/bp/j;->c(Lorg/threeten/bp/j;)J

    move-result-wide v0

    const-wide/16 v2, 0x4b0

    div-long/2addr v0, v2

    goto :goto_0

    .line 1425
    :pswitch_6
    invoke-direct {p0, v1}, Lorg/threeten/bp/j;->c(Lorg/threeten/bp/j;)J

    move-result-wide v0

    const-wide/16 v2, 0x2ee0

    div-long/2addr v0, v2

    goto :goto_0

    .line 1426
    :pswitch_7
    sget-object v0, Lorg/threeten/bp/temporal/a;->B:Lorg/threeten/bp/temporal/a;

    invoke-virtual {v1, v0}, Lorg/threeten/bp/j;->d(Lorg/threeten/bp/temporal/q;)J

    move-result-wide v0

    sget-object v2, Lorg/threeten/bp/temporal/a;->B:Lorg/threeten/bp/temporal/a;

    invoke-virtual {p0, v2}, Lorg/threeten/bp/j;->d(Lorg/threeten/bp/temporal/q;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    goto :goto_0

    .line 1430
    :cond_0
    invoke-interface {p2, p0, v1}, Lorg/threeten/bp/temporal/aa;->a(Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/k;)J

    move-result-wide v0

    goto :goto_0

    .line 1418
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
    .line 1336
    invoke-static {}, Lorg/threeten/bp/temporal/r;->f()Lorg/threeten/bp/temporal/z;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 1339
    :goto_0
    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lorg/threeten/bp/a/a;->a(Lorg/threeten/bp/temporal/z;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0
.end method

.method public final synthetic a(Lorg/threeten/bp/temporal/p;)Lorg/threeten/bp/a/a;
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lorg/threeten/bp/j;->c(Lorg/threeten/bp/temporal/p;)Lorg/threeten/bp/j;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Lorg/threeten/bp/p;)Lorg/threeten/bp/a/c;
    .locals 1

    .prologue
    .line 100
    .line 14507
    invoke-static {p0, p1}, Lorg/threeten/bp/m;->a(Lorg/threeten/bp/j;Lorg/threeten/bp/p;)Lorg/threeten/bp/m;

    move-result-object v0

    .line 100
    return-object v0
.end method

.method public final a(I)Lorg/threeten/bp/j;
    .locals 1

    .prologue
    .line 1021
    invoke-virtual {p0}, Lorg/threeten/bp/j;->c()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 1024
    :goto_0
    return-object p0

    :cond_0
    iget v0, p0, Lorg/threeten/bp/j;->d:I

    invoke-static {v0, p1}, Lorg/threeten/bp/j;->a(II)Lorg/threeten/bp/j;

    move-result-object p0

    goto :goto_0
.end method

.method public final synthetic a(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/temporal/k;
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0, p1, p2, p3}, Lorg/threeten/bp/j;->f(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/j;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lorg/threeten/bp/temporal/k;)Lorg/threeten/bp/temporal/k;
    .locals 1

    .prologue
    .line 1368
    invoke-super {p0, p1}, Lorg/threeten/bp/a/a;->a(Lorg/threeten/bp/temporal/k;)Lorg/threeten/bp/temporal/k;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lorg/threeten/bp/temporal/m;)Lorg/threeten/bp/temporal/k;
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0, p1}, Lorg/threeten/bp/j;->b(Lorg/threeten/bp/temporal/m;)Lorg/threeten/bp/j;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/temporal/k;
    .locals 2

    .prologue
    .line 100
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/j;->b(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/j;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lorg/threeten/bp/temporal/q;)Z
    .locals 1

    .prologue
    .line 465
    invoke-super {p0, p1}, Lorg/threeten/bp/a/a;->a(Lorg/threeten/bp/temporal/q;)Z

    move-result v0

    return v0
.end method

.method final b(Lorg/threeten/bp/j;)I
    .locals 2

    .prologue
    .line 1678
    iget v0, p0, Lorg/threeten/bp/j;->d:I

    iget v1, p1, Lorg/threeten/bp/j;->d:I

    sub-int/2addr v0, v1

    .line 1679
    if-nez v0, :cond_0

    .line 1680
    iget-short v0, p0, Lorg/threeten/bp/j;->e:S

    iget-short v1, p1, Lorg/threeten/bp/j;->e:S

    sub-int/2addr v0, v1

    .line 1681
    if-nez v0, :cond_0

    .line 1682
    iget-short v0, p0, Lorg/threeten/bp/j;->f:S

    iget-short v1, p1, Lorg/threeten/bp/j;->f:S

    sub-int/2addr v0, v1

    .line 1685
    :cond_0
    return v0
.end method

.method public final b()Lorg/threeten/bp/a/o;
    .locals 1

    .prologue
    .line 636
    invoke-super {p0}, Lorg/threeten/bp/a/a;->b()Lorg/threeten/bp/a/o;

    move-result-object v0

    return-object v0
.end method

.method public final b(J)Lorg/threeten/bp/j;
    .locals 5

    .prologue
    .line 1105
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 1109
    :goto_0
    return-object p0

    .line 1108
    :cond_0
    sget-object v0, Lorg/threeten/bp/temporal/a;->A:Lorg/threeten/bp/temporal/a;

    iget v1, p0, Lorg/threeten/bp/j;->d:I

    int-to-long v2, v1

    add-long/2addr v2, p1

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/temporal/a;->b(J)I

    move-result v0

    .line 1109
    iget-short v1, p0, Lorg/threeten/bp/j;->e:S

    iget-short v2, p0, Lorg/threeten/bp/j;->f:S

    invoke-static {v0, v1, v2}, Lorg/threeten/bp/j;->b(III)Lorg/threeten/bp/j;

    move-result-object p0

    goto :goto_0
.end method

.method public final b(Lorg/threeten/bp/temporal/m;)Lorg/threeten/bp/j;
    .locals 1

    .prologue
    .line 820
    instance-of v0, p1, Lorg/threeten/bp/j;

    if-eqz v0, :cond_0

    .line 821
    check-cast p1, Lorg/threeten/bp/j;

    .line 823
    :goto_0
    return-object p1

    :cond_0
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/m;->a(Lorg/threeten/bp/temporal/k;)Lorg/threeten/bp/temporal/k;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/j;

    move-object p1, v0

    goto :goto_0
.end method

.method public final b(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/j;
    .locals 4

    .prologue
    .line 931
    instance-of v0, p1, Lorg/threeten/bp/temporal/a;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 932
    check-cast v0, Lorg/threeten/bp/temporal/a;

    .line 933
    invoke-virtual {v0, p2, p3}, Lorg/threeten/bp/temporal/a;->a(J)J

    .line 934
    sget-object v1, Lorg/threeten/bp/l;->a:[I

    invoke-virtual {v0}, Lorg/threeten/bp/temporal/a;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 949
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

    .line 935
    :pswitch_0
    invoke-virtual {p0}, Lorg/threeten/bp/j;->d()Lorg/threeten/bp/d;

    move-result-object v0

    .line 10187
    invoke-virtual {v0}, Lorg/threeten/bp/d;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 935
    int-to-long v0, v0

    sub-long v0, p2, v0

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/j;->e(J)Lorg/threeten/bp/j;

    move-result-object p0

    .line 11985
    :cond_0
    :goto_0
    return-object p0

    .line 936
    :pswitch_1
    sget-object v0, Lorg/threeten/bp/temporal/a;->q:Lorg/threeten/bp/temporal/a;

    invoke-virtual {p0, v0}, Lorg/threeten/bp/j;->d(Lorg/threeten/bp/temporal/q;)J

    move-result-wide v0

    sub-long v0, p2, v0

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/j;->e(J)Lorg/threeten/bp/j;

    move-result-object p0

    goto :goto_0

    .line 937
    :pswitch_2
    sget-object v0, Lorg/threeten/bp/temporal/a;->r:Lorg/threeten/bp/temporal/a;

    invoke-virtual {p0, v0}, Lorg/threeten/bp/j;->d(Lorg/threeten/bp/temporal/q;)J

    move-result-wide v0

    sub-long v0, p2, v0

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/j;->e(J)Lorg/threeten/bp/j;

    move-result-object p0

    goto :goto_0

    .line 938
    :pswitch_3
    long-to-int v0, p2

    .line 11003
    iget-short v1, p0, Lorg/threeten/bp/j;->f:S

    if-eq v1, v0, :cond_0

    .line 11006
    iget v1, p0, Lorg/threeten/bp/j;->d:I

    iget-short v2, p0, Lorg/threeten/bp/j;->e:S

    invoke-static {v1, v2, v0}, Lorg/threeten/bp/j;->a(III)Lorg/threeten/bp/j;

    move-result-object p0

    goto :goto_0

    .line 939
    :pswitch_4
    long-to-int v0, p2

    invoke-virtual {p0, v0}, Lorg/threeten/bp/j;->a(I)Lorg/threeten/bp/j;

    move-result-object p0

    goto :goto_0

    .line 940
    :pswitch_5
    invoke-static {p2, p3}, Lorg/threeten/bp/j;->a(J)Lorg/threeten/bp/j;

    move-result-object p0

    goto :goto_0

    .line 941
    :pswitch_6
    sget-object v0, Lorg/threeten/bp/temporal/a;->v:Lorg/threeten/bp/temporal/a;

    invoke-virtual {p0, v0}, Lorg/threeten/bp/j;->d(Lorg/threeten/bp/temporal/q;)J

    move-result-wide v0

    sub-long v0, p2, v0

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/j;->d(J)Lorg/threeten/bp/j;

    move-result-object p0

    goto :goto_0

    .line 942
    :pswitch_7
    sget-object v0, Lorg/threeten/bp/temporal/a;->w:Lorg/threeten/bp/temporal/a;

    invoke-virtual {p0, v0}, Lorg/threeten/bp/j;->d(Lorg/threeten/bp/temporal/q;)J

    move-result-wide v0

    sub-long v0, p2, v0

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/j;->d(J)Lorg/threeten/bp/j;

    move-result-object p0

    goto :goto_0

    .line 943
    :pswitch_8
    long-to-int v0, p2

    .line 11984
    iget-short v1, p0, Lorg/threeten/bp/j;->e:S

    if-eq v1, v0, :cond_0

    .line 11987
    sget-object v1, Lorg/threeten/bp/temporal/a;->x:Lorg/threeten/bp/temporal/a;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lorg/threeten/bp/temporal/a;->a(J)J

    .line 11988
    iget v1, p0, Lorg/threeten/bp/j;->d:I

    iget-short v2, p0, Lorg/threeten/bp/j;->f:S

    invoke-static {v1, v0, v2}, Lorg/threeten/bp/j;->b(III)Lorg/threeten/bp/j;

    move-result-object p0

    goto :goto_0

    .line 944
    :pswitch_9
    sget-object v0, Lorg/threeten/bp/temporal/a;->y:Lorg/threeten/bp/temporal/a;

    invoke-virtual {p0, v0}, Lorg/threeten/bp/j;->d(Lorg/threeten/bp/temporal/q;)J

    move-result-wide v0

    sub-long v0, p2, v0

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/j;->c(J)Lorg/threeten/bp/j;

    move-result-object p0

    goto :goto_0

    .line 945
    :pswitch_a
    iget v0, p0, Lorg/threeten/bp/j;->d:I

    if-lez v0, :cond_1

    :goto_1
    long-to-int v0, p2

    invoke-direct {p0, v0}, Lorg/threeten/bp/j;->b(I)Lorg/threeten/bp/j;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x1

    sub-long p2, v0, p2

    goto :goto_1

    .line 946
    :pswitch_b
    long-to-int v0, p2

    invoke-direct {p0, v0}, Lorg/threeten/bp/j;->b(I)Lorg/threeten/bp/j;

    move-result-object p0

    goto/16 :goto_0

    .line 947
    :pswitch_c
    sget-object v0, Lorg/threeten/bp/temporal/a;->B:Lorg/threeten/bp/temporal/a;

    invoke-virtual {p0, v0}, Lorg/threeten/bp/j;->d(Lorg/threeten/bp/temporal/q;)J

    move-result-wide v0

    cmp-long v0, v0, p2

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/threeten/bp/j;->d:I

    rsub-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lorg/threeten/bp/j;->b(I)Lorg/threeten/bp/j;

    move-result-object p0

    goto/16 :goto_0

    .line 951
    :cond_2
    invoke-interface {p1, p0, p2, p3}, Lorg/threeten/bp/temporal/q;->a(Lorg/threeten/bp/temporal/k;J)Lorg/threeten/bp/temporal/k;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/j;

    move-object p0, v0

    goto/16 :goto_0

    .line 934
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_a
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public final b(Lorg/threeten/bp/temporal/q;)Lorg/threeten/bp/temporal/ab;
    .locals 4

    .prologue
    const-wide/16 v2, 0x1

    .line 492
    instance-of v0, p1, Lorg/threeten/bp/temporal/a;

    if-eqz v0, :cond_5

    move-object v0, p1

    .line 493
    check-cast v0, Lorg/threeten/bp/temporal/a;

    .line 494
    invoke-virtual {v0}, Lorg/threeten/bp/temporal/a;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 495
    sget-object v1, Lorg/threeten/bp/l;->a:[I

    invoke-virtual {v0}, Lorg/threeten/bp/temporal/a;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 502
    invoke-interface {p1}, Lorg/threeten/bp/temporal/q;->a()Lorg/threeten/bp/temporal/ab;

    move-result-object v0

    .line 506
    :goto_0
    return-object v0

    .line 6756
    :pswitch_0
    iget-short v0, p0, Lorg/threeten/bp/j;->e:S

    packed-switch v0, :pswitch_data_1

    .line 6765
    :pswitch_1
    const/16 v0, 0x1f

    .line 496
    :goto_1
    int-to-long v0, v0

    invoke-static {v2, v3, v0, v1}, Lorg/threeten/bp/temporal/ab;->a(JJ)Lorg/threeten/bp/temporal/ab;

    move-result-object v0

    goto :goto_0

    .line 6758
    :pswitch_2
    invoke-virtual {p0}, Lorg/threeten/bp/j;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1d

    goto :goto_1

    :cond_0
    const/16 v0, 0x1c

    goto :goto_1

    .line 6763
    :pswitch_3
    const/16 v0, 0x1e

    goto :goto_1

    .line 6778
    :pswitch_4
    invoke-virtual {p0}, Lorg/threeten/bp/j;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x16e

    .line 497
    :goto_2
    int-to-long v0, v0

    invoke-static {v2, v3, v0, v1}, Lorg/threeten/bp/temporal/ab;->a(JJ)Lorg/threeten/bp/temporal/ab;

    move-result-object v0

    goto :goto_0

    .line 6778
    :cond_1
    const/16 v0, 0x16d

    goto :goto_2

    .line 7679
    :pswitch_5
    iget-short v0, p0, Lorg/threeten/bp/j;->e:S

    invoke-static {v0}, Lorg/threeten/bp/s;->a(I)Lorg/threeten/bp/s;

    move-result-object v0

    .line 498
    sget-object v1, Lorg/threeten/bp/s;->b:Lorg/threeten/bp/s;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lorg/threeten/bp/j;->e()Z

    move-result v0

    if-nez v0, :cond_2

    const-wide/16 v0, 0x4

    :goto_3
    invoke-static {v2, v3, v0, v1}, Lorg/threeten/bp/temporal/ab;->a(JJ)Lorg/threeten/bp/temporal/ab;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x5

    goto :goto_3

    .line 8650
    :pswitch_6
    iget v0, p0, Lorg/threeten/bp/j;->d:I

    .line 500
    if-gtz v0, :cond_3

    const-wide/32 v0, 0x3b9aca00

    invoke-static {v2, v3, v0, v1}, Lorg/threeten/bp/temporal/ab;->a(JJ)Lorg/threeten/bp/temporal/ab;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-wide/32 v0, 0x3b9ac9ff

    invoke-static {v2, v3, v0, v1}, Lorg/threeten/bp/temporal/ab;->a(JJ)Lorg/threeten/bp/temporal/ab;

    move-result-object v0

    goto :goto_0

    .line 504
    :cond_4
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

    .line 506
    :cond_5
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/q;->b(Lorg/threeten/bp/temporal/l;)Lorg/threeten/bp/temporal/ab;

    move-result-object v0

    goto :goto_0

    .line 495
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 6756
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public final synthetic b(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/temporal/k;
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/j;->c(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/j;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lorg/threeten/bp/temporal/p;)Lorg/threeten/bp/temporal/k;
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lorg/threeten/bp/j;->c(Lorg/threeten/bp/temporal/p;)Lorg/threeten/bp/j;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lorg/threeten/bp/a/a;)Z
    .locals 1

    .prologue
    .line 1711
    instance-of v0, p1, Lorg/threeten/bp/j;

    if-eqz v0, :cond_1

    .line 1712
    check-cast p1, Lorg/threeten/bp/j;

    invoke-virtual {p0, p1}, Lorg/threeten/bp/j;->b(Lorg/threeten/bp/j;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 1714
    :goto_0
    return v0

    .line 1712
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1714
    :cond_1
    invoke-super {p0, p1}, Lorg/threeten/bp/a/a;->b(Lorg/threeten/bp/a/a;)Z

    move-result v0

    goto :goto_0
.end method

.method public final c()I
    .locals 2

    .prologue
    .line 701
    .line 9679
    iget-short v0, p0, Lorg/threeten/bp/j;->e:S

    invoke-static {v0}, Lorg/threeten/bp/s;->a(I)Lorg/threeten/bp/s;

    move-result-object v0

    .line 701
    invoke-virtual {p0}, Lorg/threeten/bp/j;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/threeten/bp/s;->b(Z)I

    move-result v0

    iget-short v1, p0, Lorg/threeten/bp/j;->f:S

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final c(Lorg/threeten/bp/temporal/q;)I
    .locals 1

    .prologue
    .line 535
    instance-of v0, p1, Lorg/threeten/bp/temporal/a;

    if-eqz v0, :cond_0

    .line 536
    invoke-direct {p0, p1}, Lorg/threeten/bp/j;->e(Lorg/threeten/bp/temporal/q;)I

    move-result v0

    .line 538
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lorg/threeten/bp/a/a;->c(Lorg/threeten/bp/temporal/q;)I

    move-result v0

    goto :goto_0
.end method

.method public final synthetic c(Lorg/threeten/bp/temporal/m;)Lorg/threeten/bp/a/a;
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0, p1}, Lorg/threeten/bp/j;->b(Lorg/threeten/bp/temporal/m;)Lorg/threeten/bp/j;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/a/a;
    .locals 2

    .prologue
    .line 100
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/j;->b(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/j;

    move-result-object v0

    return-object v0
.end method

.method public final c(J)Lorg/threeten/bp/j;
    .locals 7

    .prologue
    const-wide/16 v4, 0xc

    .line 1133
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 1140
    :goto_0
    return-object p0

    .line 1136
    :cond_0
    iget v0, p0, Lorg/threeten/bp/j;->d:I

    int-to-long v0, v0

    mul-long/2addr v0, v4

    iget-short v2, p0, Lorg/threeten/bp/j;->e:S

    add-int/lit8 v2, v2, -0x1

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 1137
    add-long/2addr v0, p1

    .line 1138
    sget-object v2, Lorg/threeten/bp/temporal/a;->A:Lorg/threeten/bp/temporal/a;

    invoke-static {v0, v1, v4, v5}, Lorg/threeten/bp/b/c;->e(JJ)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/threeten/bp/temporal/a;->b(J)I

    move-result v2

    .line 1139
    const/16 v3, 0xc

    invoke-static {v0, v1, v3}, Lorg/threeten/bp/b/c;->b(JI)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 1140
    iget-short v1, p0, Lorg/threeten/bp/j;->f:S

    invoke-static {v2, v0, v1}, Lorg/threeten/bp/j;->b(III)Lorg/threeten/bp/j;

    move-result-object p0

    goto :goto_0
.end method

.method public final c(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/j;
    .locals 5

    .prologue
    .line 1066
    instance-of v0, p3, Lorg/threeten/bp/temporal/b;

    if-eqz v0, :cond_0

    move-object v0, p3

    .line 1067
    check-cast v0, Lorg/threeten/bp/temporal/b;

    .line 1068
    sget-object v1, Lorg/threeten/bp/l;->b:[I

    invoke-virtual {v0}, Lorg/threeten/bp/temporal/b;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 1078
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

    .line 1069
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/j;->e(J)Lorg/threeten/bp/j;

    move-result-object v0

    .line 1080
    :goto_0
    return-object v0

    .line 1070
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/j;->d(J)Lorg/threeten/bp/j;

    move-result-object v0

    goto :goto_0

    .line 1071
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/j;->c(J)Lorg/threeten/bp/j;

    move-result-object v0

    goto :goto_0

    .line 1072
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/j;->b(J)Lorg/threeten/bp/j;

    move-result-object v0

    goto :goto_0

    .line 1073
    :pswitch_4
    const/16 v0, 0xa

    invoke-static {p1, p2, v0}, Lorg/threeten/bp/b/c;->a(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/j;->b(J)Lorg/threeten/bp/j;

    move-result-object v0

    goto :goto_0

    .line 1074
    :pswitch_5
    const/16 v0, 0x64

    invoke-static {p1, p2, v0}, Lorg/threeten/bp/b/c;->a(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/j;->b(J)Lorg/threeten/bp/j;

    move-result-object v0

    goto :goto_0

    .line 1075
    :pswitch_6
    const/16 v0, 0x3e8

    invoke-static {p1, p2, v0}, Lorg/threeten/bp/b/c;->a(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/j;->b(J)Lorg/threeten/bp/j;

    move-result-object v0

    goto :goto_0

    .line 1076
    :pswitch_7
    sget-object v0, Lorg/threeten/bp/temporal/a;->B:Lorg/threeten/bp/temporal/a;

    sget-object v1, Lorg/threeten/bp/temporal/a;->B:Lorg/threeten/bp/temporal/a;

    invoke-virtual {p0, v1}, Lorg/threeten/bp/j;->d(Lorg/threeten/bp/temporal/q;)J

    move-result-wide v2

    invoke-static {v2, v3, p1, p2}, Lorg/threeten/bp/b/c;->b(JJ)J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lorg/threeten/bp/j;->b(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/j;

    move-result-object v0

    goto :goto_0

    .line 1080
    :cond_0
    invoke-interface {p3, p0, p1, p2}, Lorg/threeten/bp/temporal/aa;->a(Lorg/threeten/bp/temporal/k;J)Lorg/threeten/bp/temporal/k;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/j;

    goto :goto_0

    .line 1068
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

.method public final c(Lorg/threeten/bp/a/a;)Z
    .locals 1

    .prologue
    .line 1740
    instance-of v0, p1, Lorg/threeten/bp/j;

    if-eqz v0, :cond_1

    .line 1741
    check-cast p1, Lorg/threeten/bp/j;

    invoke-virtual {p0, p1}, Lorg/threeten/bp/j;->b(Lorg/threeten/bp/j;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    .line 1743
    :goto_0
    return v0

    .line 1741
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1743
    :cond_1
    invoke-super {p0, p1}, Lorg/threeten/bp/a/a;->c(Lorg/threeten/bp/a/a;)Z

    move-result v0

    goto :goto_0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 100
    check-cast p1, Lorg/threeten/bp/a/a;

    invoke-virtual {p0, p1}, Lorg/threeten/bp/j;->a(Lorg/threeten/bp/a/a;)I

    move-result v0

    return v0
.end method

.method public final d(Lorg/threeten/bp/temporal/q;)J
    .locals 2

    .prologue
    .line 565
    instance-of v0, p1, Lorg/threeten/bp/temporal/a;

    if-eqz v0, :cond_2

    .line 566
    sget-object v0, Lorg/threeten/bp/temporal/a;->u:Lorg/threeten/bp/temporal/a;

    if-ne p1, v0, :cond_0

    .line 567
    invoke-virtual {p0}, Lorg/threeten/bp/j;->f()J

    move-result-wide v0

    .line 574
    :goto_0
    return-wide v0

    .line 569
    :cond_0
    sget-object v0, Lorg/threeten/bp/temporal/a;->y:Lorg/threeten/bp/temporal/a;

    if-ne p1, v0, :cond_1

    .line 570
    invoke-direct {p0}, Lorg/threeten/bp/j;->h()J

    move-result-wide v0

    goto :goto_0

    .line 572
    :cond_1
    invoke-direct {p0, p1}, Lorg/threeten/bp/j;->e(Lorg/threeten/bp/temporal/q;)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    .line 574
    :cond_2
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/q;->c(Lorg/threeten/bp/temporal/l;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public final synthetic d(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/a/a;
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0, p1, p2, p3}, Lorg/threeten/bp/j;->f(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/j;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lorg/threeten/bp/d;
    .locals 4

    .prologue
    .line 718
    invoke-virtual {p0}, Lorg/threeten/bp/j;->f()J

    move-result-wide v0

    const-wide/16 v2, 0x3

    add-long/2addr v0, v2

    const/4 v2, 0x7

    invoke-static {v0, v1, v2}, Lorg/threeten/bp/b/c;->b(JI)I

    move-result v0

    .line 719
    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lorg/threeten/bp/d;->a(I)Lorg/threeten/bp/d;

    move-result-object v0

    return-object v0
.end method

.method public final d(J)Lorg/threeten/bp/j;
    .locals 3

    .prologue
    .line 1159
    const/4 v0, 0x7

    invoke-static {p1, p2, v0}, Lorg/threeten/bp/b/c;->a(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/j;->e(J)Lorg/threeten/bp/j;

    move-result-object v0

    return-object v0
.end method

.method public final d(Lorg/threeten/bp/a/a;)Z
    .locals 1

    .prologue
    .line 1769
    instance-of v0, p1, Lorg/threeten/bp/j;

    if-eqz v0, :cond_1

    .line 1770
    check-cast p1, Lorg/threeten/bp/j;

    invoke-virtual {p0, p1}, Lorg/threeten/bp/j;->b(Lorg/threeten/bp/j;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1772
    :goto_0
    return v0

    .line 1770
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1772
    :cond_1
    invoke-super {p0, p1}, Lorg/threeten/bp/a/a;->d(Lorg/threeten/bp/a/a;)Z

    move-result v0

    goto :goto_0
.end method

.method public final synthetic e(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/a/a;
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/j;->c(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/j;

    move-result-object v0

    return-object v0
.end method

.method public final e(J)Lorg/threeten/bp/j;
    .locals 3

    .prologue
    .line 1178
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 1182
    :goto_0
    return-object p0

    .line 1181
    :cond_0
    invoke-virtual {p0}, Lorg/threeten/bp/j;->f()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lorg/threeten/bp/b/c;->b(JJ)J

    move-result-wide v0

    .line 1182
    invoke-static {v0, v1}, Lorg/threeten/bp/j;->a(J)Lorg/threeten/bp/j;

    move-result-object p0

    goto :goto_0
.end method

.method public final e()Z
    .locals 4

    .prologue
    .line 743
    sget-object v0, Lorg/threeten/bp/a/p;->b:Lorg/threeten/bp/a/p;

    iget v1, p0, Lorg/threeten/bp/j;->d:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/a/p;->a(J)Z

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1790
    if-ne p0, p1, :cond_1

    .line 1796
    :cond_0
    :goto_0
    return v0

    .line 1793
    :cond_1
    instance-of v2, p1, Lorg/threeten/bp/j;

    if-eqz v2, :cond_2

    .line 1794
    check-cast p1, Lorg/threeten/bp/j;

    invoke-virtual {p0, p1}, Lorg/threeten/bp/j;->b(Lorg/threeten/bp/j;)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1796
    goto :goto_0
.end method

.method public final f()J
    .locals 14

    .prologue
    const-wide/16 v12, 0x1

    const-wide/16 v6, 0x0

    .line 1634
    iget v0, p0, Lorg/threeten/bp/j;->d:I

    int-to-long v0, v0

    .line 1635
    iget-short v2, p0, Lorg/threeten/bp/j;->e:S

    int-to-long v2, v2

    .line 1637
    const-wide/16 v4, 0x16d

    mul-long/2addr v4, v0

    add-long/2addr v4, v6

    .line 1638
    cmp-long v6, v0, v6

    if-ltz v6, :cond_1

    .line 1639
    const-wide/16 v6, 0x3

    add-long/2addr v6, v0

    const-wide/16 v8, 0x4

    div-long/2addr v6, v8

    const-wide/16 v8, 0x63

    add-long/2addr v8, v0

    const-wide/16 v10, 0x64

    div-long/2addr v8, v10

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x18f

    add-long/2addr v0, v8

    const-wide/16 v8, 0x190

    div-long/2addr v0, v8

    add-long/2addr v0, v6

    add-long/2addr v0, v4

    .line 1643
    :goto_0
    const-wide/16 v4, 0x16f

    mul-long/2addr v4, v2

    const-wide/16 v6, 0x16a

    sub-long/2addr v4, v6

    const-wide/16 v6, 0xc

    div-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 1644
    iget-short v4, p0, Lorg/threeten/bp/j;->f:S

    add-int/lit8 v4, v4, -0x1

    int-to-long v4, v4

    add-long/2addr v0, v4

    .line 1645
    const-wide/16 v4, 0x2

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 1646
    sub-long/2addr v0, v12

    .line 1647
    invoke-virtual {p0}, Lorg/threeten/bp/j;->e()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1648
    sub-long/2addr v0, v12

    .line 1651
    :cond_0
    const-wide/32 v2, 0xafaa8

    sub-long/2addr v0, v2

    return-wide v0

    .line 1641
    :cond_1
    const-wide/16 v6, -0x4

    div-long v6, v0, v6

    const-wide/16 v8, -0x64

    div-long v8, v0, v8

    sub-long/2addr v6, v8

    const-wide/16 v8, -0x190

    div-long/2addr v0, v8

    add-long/2addr v0, v6

    sub-long v0, v4, v0

    goto :goto_0
.end method

.method public final f(J)Lorg/threeten/bp/j;
    .locals 5

    .prologue
    .line 1311
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/j;->e(J)Lorg/threeten/bp/j;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/j;->e(J)Lorg/threeten/bp/j;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/j;->e(J)Lorg/threeten/bp/j;

    move-result-object v0

    goto :goto_0
.end method

.method public final bridge synthetic g()Lorg/threeten/bp/a/m;
    .locals 1

    .prologue
    .line 14613
    sget-object v0, Lorg/threeten/bp/a/p;->b:Lorg/threeten/bp/a/p;

    .line 100
    return-object v0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 1806
    iget v0, p0, Lorg/threeten/bp/j;->d:I

    .line 1807
    iget-short v1, p0, Lorg/threeten/bp/j;->e:S

    .line 1808
    iget-short v2, p0, Lorg/threeten/bp/j;->f:S

    .line 1809
    and-int/lit16 v3, v0, -0x800

    shl-int/lit8 v0, v0, 0xb

    shl-int/lit8 v1, v1, 0x6

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    xor-int/2addr v0, v3

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0xa

    .line 1822
    iget v0, p0, Lorg/threeten/bp/j;->d:I

    .line 1823
    iget-short v1, p0, Lorg/threeten/bp/j;->e:S

    .line 1824
    iget-short v2, p0, Lorg/threeten/bp/j;->f:S

    .line 1825
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1826
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1827
    const/16 v5, 0x3e8

    if-ge v3, v5, :cond_1

    .line 1828
    if-gez v0, :cond_0

    .line 1829
    add-int/lit16 v0, v0, -0x2710

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1839
    :goto_0
    if-ge v1, v6, :cond_3

    const-string v0, "-0"

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    if-ge v2, v6, :cond_4

    const-string v0, "-0"

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1831
    :cond_0
    add-int/lit16 v0, v0, 0x2710

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1834
    :cond_1
    const/16 v3, 0x270f

    if-le v0, v3, :cond_2

    .line 1835
    const/16 v3, 0x2b

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1837
    :cond_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1839
    :cond_3
    const-string v0, "-"

    goto :goto_1

    :cond_4
    const-string v0, "-"

    goto :goto_2
.end method
