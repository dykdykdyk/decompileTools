.class public final Lorg/threeten/bp/temporal/ab;
.super Ljava/lang/Object;
.source "ValueRange.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final a:J

.field public final b:J

.field public final c:J

.field public final d:J


# direct methods
.method private constructor <init>(JJJJ)V
    .locals 1

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput-wide p1, p0, Lorg/threeten/bp/temporal/ab;->a:J

    .line 154
    iput-wide p3, p0, Lorg/threeten/bp/temporal/ab;->b:J

    .line 155
    iput-wide p5, p0, Lorg/threeten/bp/temporal/ab;->c:J

    .line 156
    iput-wide p7, p0, Lorg/threeten/bp/temporal/ab;->d:J

    .line 157
    return-void
.end method

.method public static a(JJ)Lorg/threeten/bp/temporal/ab;
    .locals 10

    .prologue
    .line 92
    cmp-long v0, p0, p2

    if-lez v0, :cond_0

    .line 93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Minimum value must be less than maximum value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    new-instance v1, Lorg/threeten/bp/temporal/ab;

    move-wide v2, p0

    move-wide v4, p0

    move-wide v6, p2

    move-wide v8, p2

    invoke-direct/range {v1 .. v9}, Lorg/threeten/bp/temporal/ab;-><init>(JJJJ)V

    return-object v1
.end method

.method private a(J)Z
    .locals 3

    .prologue
    .line 248
    .line 1183
    iget-wide v0, p0, Lorg/threeten/bp/temporal/ab;->a:J

    .line 248
    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 1219
    iget-wide v0, p0, Lorg/threeten/bp/temporal/ab;->d:J

    .line 248
    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(JJ)Lorg/threeten/bp/temporal/ab;
    .locals 10

    .prologue
    const-wide/16 v2, 0x1

    .line 113
    .line 1132
    cmp-long v0, v2, v2

    if-lez v0, :cond_0

    .line 1133
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Smallest minimum value must be less than largest minimum value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1135
    :cond_0
    cmp-long v0, p0, p2

    if-lez v0, :cond_1

    .line 1136
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Smallest maximum value must be less than largest maximum value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1138
    :cond_1
    cmp-long v0, v2, p2

    if-lez v0, :cond_2

    .line 1139
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Minimum value must be less than maximum value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1141
    :cond_2
    new-instance v1, Lorg/threeten/bp/temporal/ab;

    move-wide v4, v2

    move-wide v6, p0

    move-wide v8, p2

    invoke-direct/range {v1 .. v9}, Lorg/threeten/bp/temporal/ab;-><init>(JJJJ)V

    .line 113
    return-object v1
.end method


# virtual methods
.method public final a(JLorg/threeten/bp/temporal/q;)J
    .locals 3

    .prologue
    .line 276
    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/temporal/ab;->a(J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 277
    if-eqz p3, :cond_0

    .line 278
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid value for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (valid values "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 280
    :cond_0
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid value (valid values "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :cond_1
    return-wide p1
.end method

.method public final b(JLorg/threeten/bp/temporal/q;)I
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 299
    .line 3183
    iget-wide v2, p0, Lorg/threeten/bp/temporal/ab;->a:J

    .line 2236
    const-wide/32 v4, -0x80000000

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 3219
    iget-wide v2, p0, Lorg/threeten/bp/temporal/ab;->d:J

    .line 2236
    const-wide/32 v4, 0x7fffffff

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    move v2, v0

    .line 1261
    :goto_0
    if-eqz v2, :cond_1

    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/temporal/ab;->a(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 299
    :goto_1
    if-nez v0, :cond_2

    .line 300
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid int value for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v2, v1

    .line 2236
    goto :goto_0

    :cond_1
    move v0, v1

    .line 1261
    goto :goto_1

    .line 302
    :cond_2
    long-to-int v0, p1

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 318
    if-ne p1, p0, :cond_1

    .line 326
    :cond_0
    :goto_0
    return v0

    .line 321
    :cond_1
    instance-of v2, p1, Lorg/threeten/bp/temporal/ab;

    if-eqz v2, :cond_3

    .line 322
    check-cast p1, Lorg/threeten/bp/temporal/ab;

    .line 323
    iget-wide v2, p0, Lorg/threeten/bp/temporal/ab;->a:J

    iget-wide v4, p1, Lorg/threeten/bp/temporal/ab;->a:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lorg/threeten/bp/temporal/ab;->b:J

    iget-wide v4, p1, Lorg/threeten/bp/temporal/ab;->b:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lorg/threeten/bp/temporal/ab;->c:J

    iget-wide v4, p1, Lorg/threeten/bp/temporal/ab;->c:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lorg/threeten/bp/temporal/ab;->d:J

    iget-wide v4, p1, Lorg/threeten/bp/temporal/ab;->d:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 326
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 10

    .prologue
    const-wide/16 v8, 0x30

    const-wide/16 v6, 0x20

    .line 336
    iget-wide v0, p0, Lorg/threeten/bp/temporal/ab;->a:J

    iget-wide v2, p0, Lorg/threeten/bp/temporal/ab;->b:J

    add-long/2addr v0, v2

    const-wide/16 v2, 0x10

    iget-wide v4, p0, Lorg/threeten/bp/temporal/ab;->b:J

    add-long/2addr v2, v4

    long-to-int v2, v2

    shl-long/2addr v0, v2

    iget-wide v2, p0, Lorg/threeten/bp/temporal/ab;->c:J

    add-long/2addr v2, v8

    long-to-int v2, v2

    shr-long/2addr v0, v2

    iget-wide v2, p0, Lorg/threeten/bp/temporal/ab;->c:J

    add-long/2addr v2, v6

    long-to-int v2, v2

    shl-long/2addr v0, v2

    iget-wide v2, p0, Lorg/threeten/bp/temporal/ab;->d:J

    add-long/2addr v2, v6

    long-to-int v2, v2

    shr-long/2addr v0, v2

    iget-wide v2, p0, Lorg/threeten/bp/temporal/ab;->d:J

    add-long/2addr v2, v8

    long-to-int v2, v2

    shl-long/2addr v0, v2

    const/16 v2, 0x10

    shr-long/2addr v0, v2

    .line 338
    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0x2f

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 354
    iget-wide v2, p0, Lorg/threeten/bp/temporal/ab;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 355
    iget-wide v2, p0, Lorg/threeten/bp/temporal/ab;->a:J

    iget-wide v4, p0, Lorg/threeten/bp/temporal/ab;->b:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 356
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/threeten/bp/temporal/ab;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 358
    :cond_0
    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/threeten/bp/temporal/ab;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 359
    iget-wide v2, p0, Lorg/threeten/bp/temporal/ab;->c:J

    iget-wide v4, p0, Lorg/threeten/bp/temporal/ab;->d:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 360
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/threeten/bp/temporal/ab;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 362
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
