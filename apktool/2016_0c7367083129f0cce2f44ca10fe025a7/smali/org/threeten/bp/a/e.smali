.class final Lorg/threeten/bp/a/e;
.super Lorg/threeten/bp/a/c;
.source "ChronoLocalDateTimeImpl.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/threeten/bp/temporal/k;
.implements Lorg/threeten/bp/temporal/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Lorg/threeten/bp/a/a;",
        ">",
        "Lorg/threeten/bp/a/c",
        "<TD;>;",
        "Ljava/io/Serializable;",
        "Lorg/threeten/bp/temporal/k;",
        "Lorg/threeten/bp/temporal/m;"
    }
.end annotation


# instance fields
.field final a:Lorg/threeten/bp/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field

.field private final b:Lorg/threeten/bp/p;


# direct methods
.method private constructor <init>(Lorg/threeten/bp/a/a;Lorg/threeten/bp/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;",
            "Lorg/threeten/bp/p;",
            ")V"
        }
    .end annotation

    .prologue
    .line 152
    invoke-direct {p0}, Lorg/threeten/bp/a/c;-><init>()V

    .line 153
    const-string v0, "date"

    invoke-static {p1, v0}, Lorg/threeten/bp/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 154
    const-string v0, "time"

    invoke-static {p2, v0}, Lorg/threeten/bp/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 155
    iput-object p1, p0, Lorg/threeten/bp/a/e;->a:Lorg/threeten/bp/a/a;

    .line 156
    iput-object p2, p0, Lorg/threeten/bp/a/e;->b:Lorg/threeten/bp/p;

    .line 157
    return-void
.end method

.method private a(Lorg/threeten/bp/a/a;JJJJ)Lorg/threeten/bp/a/e;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;JJJJ)",
            "Lorg/threeten/bp/a/e",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 296
    or-long v0, p2, p4

    or-long/2addr v0, p6

    or-long v0, v0, p8

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 297
    iget-object v0, p0, Lorg/threeten/bp/a/e;->b:Lorg/threeten/bp/p;

    invoke-direct {p0, p1, v0}, Lorg/threeten/bp/a/e;->a(Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/p;)Lorg/threeten/bp/a/e;

    move-result-object v0

    .line 312
    :goto_0
    return-object v0

    .line 299
    :cond_0
    const-wide v0, 0x4e94914f0000L

    div-long v0, p8, v0

    const-wide/32 v2, 0x15180

    div-long v2, p6, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x5a0

    div-long v2, p4, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x18

    div-long v2, p2, v2

    add-long/2addr v0, v2

    .line 303
    const-wide v2, 0x4e94914f0000L

    rem-long v2, p8, v2

    const-wide/32 v4, 0x15180

    rem-long v4, p6, v4

    const-wide/32 v6, 0x3b9aca00

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    const-wide/16 v4, 0x5a0

    rem-long v4, p4, v4

    const-wide v6, 0xdf8475800L

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    const-wide/16 v4, 0x18

    rem-long v4, p2, v4

    const-wide v6, 0x34630b8a000L

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    .line 307
    iget-object v4, p0, Lorg/threeten/bp/a/e;->b:Lorg/threeten/bp/p;

    invoke-virtual {v4}, Lorg/threeten/bp/p;->b()J

    move-result-wide v4

    .line 308
    add-long/2addr v2, v4

    .line 309
    const-wide v6, 0x4e94914f0000L

    invoke-static {v2, v3, v6, v7}, Lorg/threeten/bp/b/c;->e(JJ)J

    move-result-wide v6

    add-long/2addr v6, v0

    .line 1323
    const-wide v0, 0x4e94914f0000L

    rem-long v0, v2, v0

    const-wide v2, 0x4e94914f0000L

    add-long/2addr v0, v2

    const-wide v2, 0x4e94914f0000L

    rem-long/2addr v0, v2

    .line 311
    cmp-long v2, v0, v4

    if-nez v2, :cond_1

    iget-object v0, p0, Lorg/threeten/bp/a/e;->b:Lorg/threeten/bp/p;

    .line 312
    :goto_1
    sget-object v1, Lorg/threeten/bp/temporal/b;->h:Lorg/threeten/bp/temporal/b;

    invoke-virtual {p1, v6, v7, v1}, Lorg/threeten/bp/a/a;->e(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/a/a;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lorg/threeten/bp/a/e;->a(Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/p;)Lorg/threeten/bp/a/e;

    move-result-object v0

    goto :goto_0

    .line 311
    :cond_1
    invoke-static {v0, v1}, Lorg/threeten/bp/p;->b(J)Lorg/threeten/bp/p;

    move-result-object v0

    goto :goto_1
.end method

.method static a(Lorg/threeten/bp/a/a;Lorg/threeten/bp/p;)Lorg/threeten/bp/a/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Lorg/threeten/bp/a/a;",
            ">(TR;",
            "Lorg/threeten/bp/p;",
            ")",
            "Lorg/threeten/bp/a/e",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 143
    new-instance v0, Lorg/threeten/bp/a/e;

    invoke-direct {v0, p0, p1}, Lorg/threeten/bp/a/e;-><init>(Lorg/threeten/bp/a/a;Lorg/threeten/bp/p;)V

    return-object v0
.end method

.method private a(Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/p;)Lorg/threeten/bp/a/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/temporal/k;",
            "Lorg/threeten/bp/p;",
            ")",
            "Lorg/threeten/bp/a/e",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, Lorg/threeten/bp/a/e;->a:Lorg/threeten/bp/a/a;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lorg/threeten/bp/a/e;->b:Lorg/threeten/bp/p;

    if-ne v0, p2, :cond_0

    .line 173
    :goto_0
    return-object p0

    .line 172
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/a/e;->a:Lorg/threeten/bp/a/a;

    invoke-virtual {v0}, Lorg/threeten/bp/a/a;->g()Lorg/threeten/bp/a/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/threeten/bp/a/m;->a(Lorg/threeten/bp/temporal/k;)Lorg/threeten/bp/a/a;

    move-result-object v0

    .line 173
    new-instance p0, Lorg/threeten/bp/a/e;

    invoke-direct {p0, v0, p2}, Lorg/threeten/bp/a/e;-><init>(Lorg/threeten/bp/a/a;Lorg/threeten/bp/p;)V

    goto :goto_0
.end method

.method private b(J)Lorg/threeten/bp/a/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lorg/threeten/bp/a/e",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 274
    iget-object v0, p0, Lorg/threeten/bp/a/e;->a:Lorg/threeten/bp/a/a;

    sget-object v1, Lorg/threeten/bp/temporal/b;->h:Lorg/threeten/bp/temporal/b;

    invoke-virtual {v0, p1, p2, v1}, Lorg/threeten/bp/a/a;->e(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/a/a;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/a/e;->b:Lorg/threeten/bp/p;

    invoke-direct {p0, v0, v1}, Lorg/threeten/bp/a/e;->a(Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/p;)Lorg/threeten/bp/a/e;

    move-result-object v0

    return-object v0
.end method

.method private b(Lorg/threeten/bp/temporal/m;)Lorg/threeten/bp/a/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/temporal/m;",
            ")",
            "Lorg/threeten/bp/a/e",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 231
    instance-of v0, p1, Lorg/threeten/bp/a/a;

    if-eqz v0, :cond_0

    .line 233
    check-cast p1, Lorg/threeten/bp/a/a;

    iget-object v0, p0, Lorg/threeten/bp/a/e;->b:Lorg/threeten/bp/p;

    invoke-direct {p0, p1, v0}, Lorg/threeten/bp/a/e;->a(Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/p;)Lorg/threeten/bp/a/e;

    move-result-object v0

    .line 239
    :goto_0
    return-object v0

    .line 234
    :cond_0
    instance-of v0, p1, Lorg/threeten/bp/p;

    if-eqz v0, :cond_1

    .line 235
    iget-object v0, p0, Lorg/threeten/bp/a/e;->a:Lorg/threeten/bp/a/a;

    check-cast p1, Lorg/threeten/bp/p;

    invoke-direct {p0, v0, p1}, Lorg/threeten/bp/a/e;->a(Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/p;)Lorg/threeten/bp/a/e;

    move-result-object v0

    goto :goto_0

    .line 236
    :cond_1
    instance-of v0, p1, Lorg/threeten/bp/a/e;

    if-eqz v0, :cond_2

    .line 237
    iget-object v0, p0, Lorg/threeten/bp/a/e;->a:Lorg/threeten/bp/a/a;

    invoke-virtual {v0}, Lorg/threeten/bp/a/a;->g()Lorg/threeten/bp/a/m;

    move-result-object v0

    check-cast p1, Lorg/threeten/bp/a/e;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/a/m;->b(Lorg/threeten/bp/temporal/k;)Lorg/threeten/bp/a/e;

    move-result-object v0

    goto :goto_0

    .line 239
    :cond_2
    iget-object v0, p0, Lorg/threeten/bp/a/e;->a:Lorg/threeten/bp/a/a;

    invoke-virtual {v0}, Lorg/threeten/bp/a/a;->g()Lorg/threeten/bp/a/m;

    move-result-object v1

    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/m;->a(Lorg/threeten/bp/temporal/k;)Lorg/threeten/bp/temporal/k;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/a/e;

    invoke-virtual {v1, v0}, Lorg/threeten/bp/a/m;->b(Lorg/threeten/bp/temporal/k;)Lorg/threeten/bp/a/e;

    move-result-object v0

    goto :goto_0
.end method

.method private c(J)Lorg/threeten/bp/a/e;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lorg/threeten/bp/a/e",
            "<TD;>;"
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 278
    iget-object v1, p0, Lorg/threeten/bp/a/e;->a:Lorg/threeten/bp/a/a;

    move-object v0, p0

    move-wide v2, p1

    move-wide v6, v4

    move-wide v8, v4

    invoke-direct/range {v0 .. v9}, Lorg/threeten/bp/a/e;->a(Lorg/threeten/bp/a/a;JJJJ)Lorg/threeten/bp/a/e;

    move-result-object v0

    return-object v0
.end method

.method private d(J)Lorg/threeten/bp/a/e;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lorg/threeten/bp/a/e",
            "<TD;>;"
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 290
    iget-object v1, p0, Lorg/threeten/bp/a/e;->a:Lorg/threeten/bp/a/a;

    move-object v0, p0

    move-wide v4, v2

    move-wide v6, v2

    move-wide v8, p1

    invoke-direct/range {v0 .. v9}, Lorg/threeten/bp/a/e;->a(Lorg/threeten/bp/a/a;JJJJ)Lorg/threeten/bp/a/e;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/aa;)J
    .locals 8

    .prologue
    .line 325
    .line 2179
    iget-object v0, p0, Lorg/threeten/bp/a/e;->a:Lorg/threeten/bp/a/a;

    .line 325
    invoke-virtual {v0}, Lorg/threeten/bp/a/a;->g()Lorg/threeten/bp/a/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/threeten/bp/a/m;->c(Lorg/threeten/bp/temporal/l;)Lorg/threeten/bp/a/c;

    move-result-object v4

    .line 326
    instance-of v0, p2, Lorg/threeten/bp/temporal/b;

    if-eqz v0, :cond_2

    move-object v0, p2

    .line 327
    check-cast v0, Lorg/threeten/bp/temporal/b;

    .line 328
    invoke-virtual {v0}, Lorg/threeten/bp/temporal/b;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 329
    sget-object v1, Lorg/threeten/bp/temporal/a;->u:Lorg/threeten/bp/temporal/a;

    invoke-virtual {v4, v1}, Lorg/threeten/bp/a/c;->d(Lorg/threeten/bp/temporal/q;)J

    move-result-wide v2

    iget-object v1, p0, Lorg/threeten/bp/a/e;->a:Lorg/threeten/bp/a/a;

    sget-object v5, Lorg/threeten/bp/temporal/a;->u:Lorg/threeten/bp/temporal/a;

    invoke-virtual {v1, v5}, Lorg/threeten/bp/a/a;->d(Lorg/threeten/bp/temporal/q;)J

    move-result-wide v6

    sub-long/2addr v2, v6

    .line 330
    sget-object v1, Lorg/threeten/bp/a/f;->a:[I

    invoke-virtual {v0}, Lorg/threeten/bp/temporal/b;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    move-wide v0, v2

    .line 339
    :goto_0
    iget-object v2, p0, Lorg/threeten/bp/a/e;->b:Lorg/threeten/bp/p;

    invoke-virtual {v4}, Lorg/threeten/bp/a/c;->a()Lorg/threeten/bp/p;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Lorg/threeten/bp/p;->a(Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/aa;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/b/c;->b(JJ)J

    move-result-wide v0

    .line 347
    :goto_1
    return-wide v0

    .line 331
    :pswitch_0
    const-wide v0, 0x4e94914f0000L

    invoke-static {v2, v3, v0, v1}, Lorg/threeten/bp/b/c;->d(JJ)J

    move-result-wide v0

    goto :goto_0

    .line 332
    :pswitch_1
    const-wide v0, 0x141dd76000L

    invoke-static {v2, v3, v0, v1}, Lorg/threeten/bp/b/c;->d(JJ)J

    move-result-wide v0

    goto :goto_0

    .line 333
    :pswitch_2
    const-wide/32 v0, 0x5265c00

    invoke-static {v2, v3, v0, v1}, Lorg/threeten/bp/b/c;->d(JJ)J

    move-result-wide v0

    goto :goto_0

    .line 334
    :pswitch_3
    const v0, 0x15180

    invoke-static {v2, v3, v0}, Lorg/threeten/bp/b/c;->a(JI)J

    move-result-wide v0

    goto :goto_0

    .line 335
    :pswitch_4
    const/16 v0, 0x5a0

    invoke-static {v2, v3, v0}, Lorg/threeten/bp/b/c;->a(JI)J

    move-result-wide v0

    goto :goto_0

    .line 336
    :pswitch_5
    const/16 v0, 0x18

    invoke-static {v2, v3, v0}, Lorg/threeten/bp/b/c;->a(JI)J

    move-result-wide v0

    goto :goto_0

    .line 337
    :pswitch_6
    const/4 v0, 0x2

    invoke-static {v2, v3, v0}, Lorg/threeten/bp/b/c;->a(JI)J

    move-result-wide v0

    goto :goto_0

    .line 341
    :cond_0
    invoke-virtual {v4}, Lorg/threeten/bp/a/c;->b()Lorg/threeten/bp/a/a;

    move-result-object v0

    .line 342
    invoke-virtual {v4}, Lorg/threeten/bp/a/c;->a()Lorg/threeten/bp/p;

    move-result-object v1

    iget-object v2, p0, Lorg/threeten/bp/a/e;->b:Lorg/threeten/bp/p;

    invoke-virtual {v1, v2}, Lorg/threeten/bp/p;->b(Lorg/threeten/bp/p;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 343
    const-wide/16 v2, 0x1

    sget-object v1, Lorg/threeten/bp/temporal/b;->h:Lorg/threeten/bp/temporal/b;

    invoke-virtual {v0, v2, v3, v1}, Lorg/threeten/bp/a/a;->d(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/a/a;

    move-result-object v0

    .line 345
    :cond_1
    iget-object v1, p0, Lorg/threeten/bp/a/e;->a:Lorg/threeten/bp/a/a;

    invoke-virtual {v1, v0, p2}, Lorg/threeten/bp/a/a;->a(Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/aa;)J

    move-result-wide v0

    goto :goto_1

    .line 347
    :cond_2
    invoke-interface {p2, p0, v4}, Lorg/threeten/bp/temporal/aa;->a(Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/k;)J

    move-result-wide v0

    goto :goto_1

    .line 330
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

.method final a(J)Lorg/threeten/bp/a/e;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lorg/threeten/bp/a/e",
            "<TD;>;"
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 286
    iget-object v1, p0, Lorg/threeten/bp/a/e;->a:Lorg/threeten/bp/a/a;

    move-object v0, p0

    move-wide v4, v2

    move-wide v6, p1

    move-wide v8, v2

    invoke-direct/range {v0 .. v9}, Lorg/threeten/bp/a/e;->a(Lorg/threeten/bp/a/a;JJJJ)Lorg/threeten/bp/a/e;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lorg/threeten/bp/ad;)Lorg/threeten/bp/a/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/ad;",
            ")",
            "Lorg/threeten/bp/a/h",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 318
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/threeten/bp/a/k;->a(Lorg/threeten/bp/a/e;Lorg/threeten/bp/ad;Lorg/threeten/bp/af;)Lorg/threeten/bp/a/h;

    move-result-object v0

    return-object v0
.end method

.method public final a()Lorg/threeten/bp/p;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lorg/threeten/bp/a/e;->b:Lorg/threeten/bp/p;

    return-object v0
.end method

.method public final synthetic a(Lorg/threeten/bp/temporal/m;)Lorg/threeten/bp/temporal/k;
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lorg/threeten/bp/a/e;->b(Lorg/threeten/bp/temporal/m;)Lorg/threeten/bp/a/e;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/temporal/k;
    .locals 2

    .prologue
    .line 68
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/a/e;->b(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/a/e;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lorg/threeten/bp/temporal/q;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 190
    instance-of v2, p1, Lorg/threeten/bp/temporal/a;

    if-eqz v2, :cond_2

    .line 191
    invoke-interface {p1}, Lorg/threeten/bp/temporal/q;->b()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p1}, Lorg/threeten/bp/temporal/q;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 193
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

.method public final b()Lorg/threeten/bp/a/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Lorg/threeten/bp/a/e;->a:Lorg/threeten/bp/a/a;

    return-object v0
.end method

.method public final b(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/a/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/temporal/q;",
            "J)",
            "Lorg/threeten/bp/a/e",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 244
    instance-of v0, p1, Lorg/threeten/bp/temporal/a;

    if-eqz v0, :cond_1

    .line 245
    invoke-interface {p1}, Lorg/threeten/bp/temporal/q;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lorg/threeten/bp/a/e;->a:Lorg/threeten/bp/a/a;

    iget-object v1, p0, Lorg/threeten/bp/a/e;->b:Lorg/threeten/bp/p;

    invoke-virtual {v1, p1, p2, p3}, Lorg/threeten/bp/p;->b(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/p;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/threeten/bp/a/e;->a(Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/p;)Lorg/threeten/bp/a/e;

    move-result-object v0

    .line 251
    :goto_0
    return-object v0

    .line 248
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/a/e;->a:Lorg/threeten/bp/a/a;

    invoke-virtual {v0, p1, p2, p3}, Lorg/threeten/bp/a/a;->c(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/a/a;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/a/e;->b:Lorg/threeten/bp/p;

    invoke-direct {p0, v0, v1}, Lorg/threeten/bp/a/e;->a(Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/p;)Lorg/threeten/bp/a/e;

    move-result-object v0

    goto :goto_0

    .line 251
    :cond_1
    iget-object v0, p0, Lorg/threeten/bp/a/e;->a:Lorg/threeten/bp/a/a;

    invoke-virtual {v0}, Lorg/threeten/bp/a/a;->g()Lorg/threeten/bp/a/m;

    move-result-object v0

    invoke-interface {p1, p0, p2, p3}, Lorg/threeten/bp/temporal/q;->a(Lorg/threeten/bp/temporal/k;J)Lorg/threeten/bp/temporal/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/threeten/bp/a/m;->b(Lorg/threeten/bp/temporal/k;)Lorg/threeten/bp/a/e;

    move-result-object v0

    goto :goto_0
.end method

.method public final b(Lorg/threeten/bp/temporal/q;)Lorg/threeten/bp/temporal/ab;
    .locals 1

    .prologue
    .line 206
    instance-of v0, p1, Lorg/threeten/bp/temporal/a;

    if-eqz v0, :cond_1

    .line 207
    invoke-interface {p1}, Lorg/threeten/bp/temporal/q;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/threeten/bp/a/e;->b:Lorg/threeten/bp/p;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/p;->b(Lorg/threeten/bp/temporal/q;)Lorg/threeten/bp/temporal/ab;

    move-result-object v0

    .line 209
    :goto_0
    return-object v0

    .line 207
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/a/e;->a:Lorg/threeten/bp/a/a;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/a/a;->b(Lorg/threeten/bp/temporal/q;)Lorg/threeten/bp/temporal/ab;

    move-result-object v0

    goto :goto_0

    .line 209
    :cond_1
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/q;->b(Lorg/threeten/bp/temporal/l;)Lorg/threeten/bp/temporal/ab;

    move-result-object v0

    goto :goto_0
.end method

.method public final synthetic b(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/temporal/k;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/a/e;->c(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/a/e;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lorg/threeten/bp/temporal/q;)I
    .locals 4

    .prologue
    .line 214
    instance-of v0, p1, Lorg/threeten/bp/temporal/a;

    if-eqz v0, :cond_1

    .line 215
    invoke-interface {p1}, Lorg/threeten/bp/temporal/q;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/threeten/bp/a/e;->b:Lorg/threeten/bp/p;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/p;->c(Lorg/threeten/bp/temporal/q;)I

    move-result v0

    .line 217
    :goto_0
    return v0

    .line 215
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/a/e;->a:Lorg/threeten/bp/a/a;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/a/a;->c(Lorg/threeten/bp/temporal/q;)I

    move-result v0

    goto :goto_0

    .line 217
    :cond_1
    invoke-virtual {p0, p1}, Lorg/threeten/bp/a/e;->b(Lorg/threeten/bp/temporal/q;)Lorg/threeten/bp/temporal/ab;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/threeten/bp/a/e;->d(Lorg/threeten/bp/temporal/q;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/threeten/bp/temporal/ab;->b(JLorg/threeten/bp/temporal/q;)I

    move-result v0

    goto :goto_0
.end method

.method public final synthetic c(Lorg/threeten/bp/temporal/m;)Lorg/threeten/bp/a/c;
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lorg/threeten/bp/a/e;->b(Lorg/threeten/bp/temporal/m;)Lorg/threeten/bp/a/e;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/a/c;
    .locals 2

    .prologue
    .line 68
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/a/e;->b(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/a/e;

    move-result-object v0

    return-object v0
.end method

.method public final c(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/a/e;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lorg/threeten/bp/temporal/aa;",
            ")",
            "Lorg/threeten/bp/a/e",
            "<TD;>;"
        }
    .end annotation

    .prologue
    const-wide v8, 0x141dd76000L

    const-wide/32 v6, 0x5265c00

    const-wide/16 v4, 0x100

    const-wide/16 v2, 0x0

    .line 257
    instance-of v0, p3, Lorg/threeten/bp/temporal/b;

    if-eqz v0, :cond_0

    move-object v0, p3

    .line 258
    check-cast v0, Lorg/threeten/bp/temporal/b;

    .line 259
    sget-object v1, Lorg/threeten/bp/a/f;->a:[I

    invoke-virtual {v0}, Lorg/threeten/bp/temporal/b;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 268
    iget-object v0, p0, Lorg/threeten/bp/a/e;->a:Lorg/threeten/bp/a/a;

    invoke-virtual {v0, p1, p2, p3}, Lorg/threeten/bp/a/a;->e(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/a/a;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/a/e;->b:Lorg/threeten/bp/p;

    invoke-direct {p0, v0, v1}, Lorg/threeten/bp/a/e;->a(Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/p;)Lorg/threeten/bp/a/e;

    move-result-object v0

    .line 270
    :goto_0
    return-object v0

    .line 260
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/a/e;->d(J)Lorg/threeten/bp/a/e;

    move-result-object v0

    goto :goto_0

    .line 261
    :pswitch_1
    div-long v0, p1, v8

    invoke-direct {p0, v0, v1}, Lorg/threeten/bp/a/e;->b(J)Lorg/threeten/bp/a/e;

    move-result-object v0

    rem-long v2, p1, v8

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Lorg/threeten/bp/a/e;->d(J)Lorg/threeten/bp/a/e;

    move-result-object v0

    goto :goto_0

    .line 262
    :pswitch_2
    div-long v0, p1, v6

    invoke-direct {p0, v0, v1}, Lorg/threeten/bp/a/e;->b(J)Lorg/threeten/bp/a/e;

    move-result-object v0

    rem-long v2, p1, v6

    const-wide/32 v4, 0xf4240

    mul-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Lorg/threeten/bp/a/e;->d(J)Lorg/threeten/bp/a/e;

    move-result-object v0

    goto :goto_0

    .line 263
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/a/e;->a(J)Lorg/threeten/bp/a/e;

    move-result-object v0

    goto :goto_0

    .line 1282
    :pswitch_4
    iget-object v1, p0, Lorg/threeten/bp/a/e;->a:Lorg/threeten/bp/a/a;

    move-object v0, p0

    move-wide v4, p1

    move-wide v6, v2

    move-wide v8, v2

    invoke-direct/range {v0 .. v9}, Lorg/threeten/bp/a/e;->a(Lorg/threeten/bp/a/a;JJJJ)Lorg/threeten/bp/a/e;

    move-result-object v0

    goto :goto_0

    .line 265
    :pswitch_5
    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/a/e;->c(J)Lorg/threeten/bp/a/e;

    move-result-object v0

    goto :goto_0

    .line 266
    :pswitch_6
    div-long v0, p1, v4

    invoke-direct {p0, v0, v1}, Lorg/threeten/bp/a/e;->b(J)Lorg/threeten/bp/a/e;

    move-result-object v0

    rem-long v2, p1, v4

    const-wide/16 v4, 0xc

    mul-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Lorg/threeten/bp/a/e;->c(J)Lorg/threeten/bp/a/e;

    move-result-object v0

    goto :goto_0

    .line 270
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/a/e;->a:Lorg/threeten/bp/a/a;

    invoke-virtual {v0}, Lorg/threeten/bp/a/a;->g()Lorg/threeten/bp/a/m;

    move-result-object v0

    invoke-interface {p3, p0, p1, p2}, Lorg/threeten/bp/temporal/aa;->a(Lorg/threeten/bp/temporal/k;J)Lorg/threeten/bp/temporal/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/threeten/bp/a/m;->b(Lorg/threeten/bp/temporal/k;)Lorg/threeten/bp/a/e;

    move-result-object v0

    goto :goto_0

    .line 259
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

.method public final d(Lorg/threeten/bp/temporal/q;)J
    .locals 2

    .prologue
    .line 222
    instance-of v0, p1, Lorg/threeten/bp/temporal/a;

    if-eqz v0, :cond_1

    .line 223
    invoke-interface {p1}, Lorg/threeten/bp/temporal/q;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/threeten/bp/a/e;->b:Lorg/threeten/bp/p;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/p;->d(Lorg/threeten/bp/temporal/q;)J

    move-result-wide v0

    .line 225
    :goto_0
    return-wide v0

    .line 223
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/a/e;->a:Lorg/threeten/bp/a/a;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/a/a;->d(Lorg/threeten/bp/temporal/q;)J

    move-result-wide v0

    goto :goto_0

    .line 225
    :cond_1
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/q;->c(Lorg/threeten/bp/temporal/l;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public final synthetic e(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/a/c;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/a/e;->c(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/a/e;

    move-result-object v0

    return-object v0
.end method
