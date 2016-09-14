.class final enum Lorg/threeten/bp/temporal/f;
.super Lorg/threeten/bp/temporal/e;
.source "IsoFields.java"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 206
    invoke-direct {p0, p1, v0, v0}, Lorg/threeten/bp/temporal/e;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method public final a()Lorg/threeten/bp/temporal/ab;
    .locals 4

    .prologue
    .line 221
    const-wide/16 v0, 0x5a

    const-wide/16 v2, 0x5c

    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/temporal/ab;->b(JJ)Lorg/threeten/bp/temporal/ab;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lorg/threeten/bp/temporal/k;J)Lorg/threeten/bp/temporal/k;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lorg/threeten/bp/temporal/k;",
            ">(TR;J)TR;"
        }
    .end annotation

    .prologue
    .line 257
    invoke-virtual {p0, p1}, Lorg/threeten/bp/temporal/f;->c(Lorg/threeten/bp/temporal/l;)J

    move-result-wide v0

    .line 258
    invoke-virtual {p0}, Lorg/threeten/bp/temporal/f;->a()Lorg/threeten/bp/temporal/ab;

    move-result-object v2

    invoke-virtual {v2, p2, p3, p0}, Lorg/threeten/bp/temporal/ab;->a(JLorg/threeten/bp/temporal/q;)J

    .line 259
    sget-object v2, Lorg/threeten/bp/temporal/a;->t:Lorg/threeten/bp/temporal/a;

    sget-object v3, Lorg/threeten/bp/temporal/a;->t:Lorg/threeten/bp/temporal/a;

    invoke-interface {p1, v3}, Lorg/threeten/bp/temporal/k;->d(Lorg/threeten/bp/temporal/q;)J

    move-result-wide v4

    sub-long v0, p2, v0

    add-long/2addr v0, v4

    invoke-interface {p1, v2, v0, v1}, Lorg/threeten/bp/temporal/k;->a(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/temporal/k;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/util/Map;Lorg/threeten/bp/format/ac;)Lorg/threeten/bp/temporal/l;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lorg/threeten/bp/temporal/q;",
            "Ljava/lang/Long;",
            ">;",
            "Lorg/threeten/bp/format/ac;",
            ")",
            "Lorg/threeten/bp/temporal/l;"
        }
    .end annotation

    .prologue
    const/16 v2, 0x5b

    const-wide/16 v10, 0x1

    const/4 v8, 0x1

    .line 264
    sget-object v0, Lorg/threeten/bp/temporal/a;->A:Lorg/threeten/bp/temporal/a;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 265
    sget-object v1, Lorg/threeten/bp/temporal/f;->b:Lorg/threeten/bp/temporal/e;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 266
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 267
    :cond_0
    const/4 v0, 0x0

    .line 295
    :goto_0
    return-object v0

    .line 269
    :cond_1
    sget-object v3, Lorg/threeten/bp/temporal/a;->A:Lorg/threeten/bp/temporal/a;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lorg/threeten/bp/temporal/a;->b(J)I

    move-result v3

    .line 270
    sget-object v0, Lorg/threeten/bp/temporal/f;->a:Lorg/threeten/bp/temporal/e;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 272
    sget-object v0, Lorg/threeten/bp/format/ac;->c:Lorg/threeten/bp/format/ac;

    if-ne p2, v0, :cond_2

    .line 273
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 274
    invoke-static {v3, v8, v8}, Lorg/threeten/bp/j;->a(III)Lorg/threeten/bp/j;

    move-result-object v2

    .line 275
    invoke-static {v0, v1, v10, v11}, Lorg/threeten/bp/b/c;->c(JJ)J

    move-result-wide v0

    const/4 v3, 0x3

    invoke-static {v0, v1, v3}, Lorg/threeten/bp/b/c;->a(JI)J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lorg/threeten/bp/j;->c(J)Lorg/threeten/bp/j;

    move-result-object v0

    .line 276
    invoke-static {v4, v5, v10, v11}, Lorg/threeten/bp/b/c;->c(JJ)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/j;->e(J)Lorg/threeten/bp/j;

    move-result-object v0

    .line 292
    :goto_1
    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    sget-object v1, Lorg/threeten/bp/temporal/a;->A:Lorg/threeten/bp/temporal/a;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    sget-object v1, Lorg/threeten/bp/temporal/f;->b:Lorg/threeten/bp/temporal/e;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 278
    :cond_2
    sget-object v0, Lorg/threeten/bp/temporal/f;->b:Lorg/threeten/bp/temporal/e;

    invoke-virtual {v0}, Lorg/threeten/bp/temporal/e;->a()Lorg/threeten/bp/temporal/ab;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sget-object v1, Lorg/threeten/bp/temporal/f;->b:Lorg/threeten/bp/temporal/e;

    invoke-virtual {v0, v6, v7, v1}, Lorg/threeten/bp/temporal/ab;->b(JLorg/threeten/bp/temporal/q;)I

    move-result v1

    .line 279
    sget-object v0, Lorg/threeten/bp/format/ac;->a:Lorg/threeten/bp/format/ac;

    if-ne p2, v0, :cond_6

    .line 280
    const/16 v0, 0x5c

    .line 281
    if-ne v1, v8, :cond_5

    .line 282
    sget-object v0, Lorg/threeten/bp/a/p;->b:Lorg/threeten/bp/a/p;

    int-to-long v6, v3

    invoke-virtual {v0, v6, v7}, Lorg/threeten/bp/a/p;->a(J)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    .line 286
    :cond_3
    :goto_2
    int-to-long v6, v0

    invoke-static {v10, v11, v6, v7}, Lorg/threeten/bp/temporal/ab;->a(JJ)Lorg/threeten/bp/temporal/ab;

    move-result-object v0

    invoke-virtual {v0, v4, v5, p0}, Lorg/threeten/bp/temporal/ab;->a(JLorg/threeten/bp/temporal/q;)J

    .line 290
    :goto_3
    add-int/lit8 v0, v1, -0x1

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    invoke-static {v3, v0, v8}, Lorg/threeten/bp/j;->a(III)Lorg/threeten/bp/j;

    move-result-object v0

    sub-long v2, v4, v10

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/j;->e(J)Lorg/threeten/bp/j;

    move-result-object v0

    goto :goto_1

    .line 282
    :cond_4
    const/16 v0, 0x5a

    goto :goto_2

    .line 283
    :cond_5
    const/4 v6, 0x2

    if-ne v1, v6, :cond_3

    move v0, v2

    .line 284
    goto :goto_2

    .line 288
    :cond_6
    invoke-virtual {p0}, Lorg/threeten/bp/temporal/f;->a()Lorg/threeten/bp/temporal/ab;

    move-result-object v0

    invoke-virtual {v0, v4, v5, p0}, Lorg/threeten/bp/temporal/ab;->a(JLorg/threeten/bp/temporal/q;)J

    goto :goto_3
.end method

.method public final a(Lorg/threeten/bp/temporal/l;)Z
    .locals 1

    .prologue
    .line 225
    sget-object v0, Lorg/threeten/bp/temporal/a;->t:Lorg/threeten/bp/temporal/a;

    invoke-interface {p1, v0}, Lorg/threeten/bp/temporal/l;->a(Lorg/threeten/bp/temporal/q;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/threeten/bp/temporal/a;->x:Lorg/threeten/bp/temporal/a;

    invoke-interface {p1, v0}, Lorg/threeten/bp/temporal/l;->a(Lorg/threeten/bp/temporal/q;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/threeten/bp/temporal/a;->A:Lorg/threeten/bp/temporal/a;

    invoke-interface {p1, v0}, Lorg/threeten/bp/temporal/l;->a(Lorg/threeten/bp/temporal/q;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/threeten/bp/temporal/e;->d(Lorg/threeten/bp/temporal/l;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Lorg/threeten/bp/temporal/l;)Lorg/threeten/bp/temporal/ab;
    .locals 8

    .prologue
    const-wide/16 v6, 0x5b

    const-wide/16 v4, 0x1

    .line 230
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/l;->a(Lorg/threeten/bp/temporal/q;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    new-instance v0, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;

    const-string v1, "Unsupported field: DayOfQuarter"

    invoke-direct {v0, v1}, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_0
    sget-object v0, Lorg/threeten/bp/temporal/f;->b:Lorg/threeten/bp/temporal/e;

    invoke-interface {p1, v0}, Lorg/threeten/bp/temporal/l;->d(Lorg/threeten/bp/temporal/q;)J

    move-result-wide v0

    .line 234
    cmp-long v2, v0, v4

    if-nez v2, :cond_2

    .line 235
    sget-object v0, Lorg/threeten/bp/temporal/a;->A:Lorg/threeten/bp/temporal/a;

    invoke-interface {p1, v0}, Lorg/threeten/bp/temporal/l;->d(Lorg/threeten/bp/temporal/q;)J

    move-result-wide v0

    .line 236
    sget-object v2, Lorg/threeten/bp/a/p;->b:Lorg/threeten/bp/a/p;

    invoke-virtual {v2, v0, v1}, Lorg/threeten/bp/a/p;->a(J)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v4, v5, v6, v7}, Lorg/threeten/bp/temporal/ab;->a(JJ)Lorg/threeten/bp/temporal/ab;

    move-result-object v0

    .line 242
    :goto_0
    return-object v0

    .line 236
    :cond_1
    const-wide/16 v0, 0x5a

    invoke-static {v4, v5, v0, v1}, Lorg/threeten/bp/temporal/ab;->a(JJ)Lorg/threeten/bp/temporal/ab;

    move-result-object v0

    goto :goto_0

    .line 237
    :cond_2
    const-wide/16 v2, 0x2

    cmp-long v2, v0, v2

    if-nez v2, :cond_3

    .line 238
    invoke-static {v4, v5, v6, v7}, Lorg/threeten/bp/temporal/ab;->a(JJ)Lorg/threeten/bp/temporal/ab;

    move-result-object v0

    goto :goto_0

    .line 239
    :cond_3
    const-wide/16 v2, 0x3

    cmp-long v2, v0, v2

    if-eqz v2, :cond_4

    const-wide/16 v2, 0x4

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    .line 240
    :cond_4
    const-wide/16 v0, 0x5c

    invoke-static {v4, v5, v0, v1}, Lorg/threeten/bp/temporal/ab;->a(JJ)Lorg/threeten/bp/temporal/ab;

    move-result-object v0

    goto :goto_0

    .line 242
    :cond_5
    invoke-virtual {p0}, Lorg/threeten/bp/temporal/f;->a()Lorg/threeten/bp/temporal/ab;

    move-result-object v0

    goto :goto_0
.end method

.method public final c(Lorg/threeten/bp/temporal/l;)J
    .locals 6

    .prologue
    .line 246
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/l;->a(Lorg/threeten/bp/temporal/q;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    new-instance v0, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;

    const-string v1, "Unsupported field: DayOfQuarter"

    invoke-direct {v0, v1}, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_0
    sget-object v0, Lorg/threeten/bp/temporal/a;->t:Lorg/threeten/bp/temporal/a;

    invoke-interface {p1, v0}, Lorg/threeten/bp/temporal/l;->c(Lorg/threeten/bp/temporal/q;)I

    move-result v1

    .line 250
    sget-object v0, Lorg/threeten/bp/temporal/a;->x:Lorg/threeten/bp/temporal/a;

    invoke-interface {p1, v0}, Lorg/threeten/bp/temporal/l;->c(Lorg/threeten/bp/temporal/q;)I

    move-result v0

    .line 251
    sget-object v2, Lorg/threeten/bp/temporal/a;->A:Lorg/threeten/bp/temporal/a;

    invoke-interface {p1, v2}, Lorg/threeten/bp/temporal/l;->d(Lorg/threeten/bp/temporal/q;)J

    move-result-wide v2

    .line 1205
    sget-object v4, Lorg/threeten/bp/temporal/e;->e:[I

    .line 252
    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v5, v0, 0x3

    sget-object v0, Lorg/threeten/bp/a/p;->b:Lorg/threeten/bp/a/p;

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/a/p;->a(J)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    :goto_0
    add-int/2addr v0, v5

    aget v0, v4, v0

    sub-int v0, v1, v0

    int-to-long v0, v0

    return-wide v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    const-string v0, "DayOfQuarter"

    return-object v0
.end method
