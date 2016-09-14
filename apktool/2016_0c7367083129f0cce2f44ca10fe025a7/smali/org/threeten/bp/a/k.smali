.class final Lorg/threeten/bp/a/k;
.super Lorg/threeten/bp/a/h;
.source "ChronoZonedDateTimeImpl.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Lorg/threeten/bp/a/a;",
        ">",
        "Lorg/threeten/bp/a/h",
        "<TD;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final a:Lorg/threeten/bp/a/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/threeten/bp/a/e",
            "<TD;>;"
        }
    .end annotation
.end field

.field private final b:Lorg/threeten/bp/af;

.field private final c:Lorg/threeten/bp/ad;


# direct methods
.method private constructor <init>(Lorg/threeten/bp/a/e;Lorg/threeten/bp/af;Lorg/threeten/bp/ad;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/a/e",
            "<TD;>;",
            "Lorg/threeten/bp/af;",
            "Lorg/threeten/bp/ad;",
            ")V"
        }
    .end annotation

    .prologue
    .line 169
    invoke-direct {p0}, Lorg/threeten/bp/a/h;-><init>()V

    .line 170
    const-string v0, "dateTime"

    invoke-static {p1, v0}, Lorg/threeten/bp/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/a/e;

    iput-object v0, p0, Lorg/threeten/bp/a/k;->a:Lorg/threeten/bp/a/e;

    .line 171
    const-string v0, "offset"

    invoke-static {p2, v0}, Lorg/threeten/bp/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/af;

    iput-object v0, p0, Lorg/threeten/bp/a/k;->b:Lorg/threeten/bp/af;

    .line 172
    const-string v0, "zone"

    invoke-static {p3, v0}, Lorg/threeten/bp/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/ad;

    iput-object v0, p0, Lorg/threeten/bp/a/k;->c:Lorg/threeten/bp/ad;

    .line 173
    return-void
.end method

.method static a(Lorg/threeten/bp/a/e;Lorg/threeten/bp/ad;Lorg/threeten/bp/af;)Lorg/threeten/bp/a/h;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Lorg/threeten/bp/a/a;",
            ">(",
            "Lorg/threeten/bp/a/e",
            "<TR;>;",
            "Lorg/threeten/bp/ad;",
            "Lorg/threeten/bp/af;",
            ")",
            "Lorg/threeten/bp/a/h",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 106
    const-string v0, "localDateTime"

    invoke-static {p0, v0}, Lorg/threeten/bp/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 107
    const-string v0, "zone"

    invoke-static {p1, v0}, Lorg/threeten/bp/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 108
    instance-of v0, p1, Lorg/threeten/bp/af;

    if-eqz v0, :cond_0

    .line 109
    new-instance v1, Lorg/threeten/bp/a/k;

    move-object v0, p1

    check-cast v0, Lorg/threeten/bp/af;

    invoke-direct {v1, p0, v0, p1}, Lorg/threeten/bp/a/k;-><init>(Lorg/threeten/bp/a/e;Lorg/threeten/bp/af;Lorg/threeten/bp/ad;)V

    move-object v0, v1

    .line 129
    :goto_0
    return-object v0

    .line 111
    :cond_0
    invoke-virtual {p1}, Lorg/threeten/bp/ad;->c()Lorg/threeten/bp/zone/i;

    move-result-object v0

    .line 112
    invoke-static {p0}, Lorg/threeten/bp/m;->a(Lorg/threeten/bp/temporal/l;)Lorg/threeten/bp/m;

    move-result-object v1

    .line 113
    invoke-virtual {v0, v1}, Lorg/threeten/bp/zone/i;->a(Lorg/threeten/bp/m;)Ljava/util/List;

    move-result-object v2

    .line 115
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    .line 117
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 118
    invoke-virtual {v0, v1}, Lorg/threeten/bp/zone/i;->b(Lorg/threeten/bp/m;)Lorg/threeten/bp/zone/e;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Lorg/threeten/bp/zone/e;->c()Lorg/threeten/bp/f;

    move-result-object v1

    .line 1552
    iget-wide v2, v1, Lorg/threeten/bp/f;->b:J

    .line 119
    invoke-virtual {p0, v2, v3}, Lorg/threeten/bp/a/e;->a(J)Lorg/threeten/bp/a/e;

    move-result-object p0

    .line 2254
    iget-object p2, v0, Lorg/threeten/bp/zone/e;->c:Lorg/threeten/bp/af;

    .line 128
    :cond_1
    :goto_1
    const-string v0, "offset"

    invoke-static {p2, v0}, Lorg/threeten/bp/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 129
    new-instance v0, Lorg/threeten/bp/a/k;

    invoke-direct {v0, p0, p2, p1}, Lorg/threeten/bp/a/k;-><init>(Lorg/threeten/bp/a/e;Lorg/threeten/bp/af;Lorg/threeten/bp/ad;)V

    goto :goto_0

    .line 122
    :cond_2
    if-eqz p2, :cond_3

    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 125
    :cond_3
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/af;

    move-object p2, v0

    goto :goto_1
.end method

.method static a(Lorg/threeten/bp/a/m;Lorg/threeten/bp/g;Lorg/threeten/bp/ad;)Lorg/threeten/bp/a/k;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Lorg/threeten/bp/a/a;",
            ">(",
            "Lorg/threeten/bp/a/m;",
            "Lorg/threeten/bp/g;",
            "Lorg/threeten/bp/ad;",
            ")",
            "Lorg/threeten/bp/a/k",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 141
    invoke-virtual {p2}, Lorg/threeten/bp/ad;->c()Lorg/threeten/bp/zone/i;

    move-result-object v0

    .line 142
    invoke-virtual {v0, p1}, Lorg/threeten/bp/zone/i;->a(Lorg/threeten/bp/g;)Lorg/threeten/bp/af;

    move-result-object v1

    .line 143
    const-string v0, "offset"

    invoke-static {v1, v0}, Lorg/threeten/bp/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2546
    iget-wide v2, p1, Lorg/threeten/bp/g;->e:J

    .line 2559
    iget v0, p1, Lorg/threeten/bp/g;->f:I

    .line 144
    invoke-static {v2, v3, v0, v1}, Lorg/threeten/bp/m;->a(JILorg/threeten/bp/af;)Lorg/threeten/bp/m;

    move-result-object v0

    .line 146
    invoke-virtual {p0, v0}, Lorg/threeten/bp/a/m;->c(Lorg/threeten/bp/temporal/l;)Lorg/threeten/bp/a/c;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/a/e;

    .line 147
    new-instance v2, Lorg/threeten/bp/a/k;

    invoke-direct {v2, v0, v1, p2}, Lorg/threeten/bp/a/k;-><init>(Lorg/threeten/bp/a/e;Lorg/threeten/bp/af;Lorg/threeten/bp/ad;)V

    return-object v2
.end method

.method private a(Lorg/threeten/bp/g;Lorg/threeten/bp/ad;)Lorg/threeten/bp/a/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/g;",
            "Lorg/threeten/bp/ad;",
            ")",
            "Lorg/threeten/bp/a/k",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 158
    invoke-virtual {p0}, Lorg/threeten/bp/a/k;->e()Lorg/threeten/bp/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/a/a;->g()Lorg/threeten/bp/a/m;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/threeten/bp/a/k;->a(Lorg/threeten/bp/a/m;Lorg/threeten/bp/g;Lorg/threeten/bp/ad;)Lorg/threeten/bp/a/k;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/aa;)J
    .locals 2

    .prologue
    .line 268
    invoke-virtual {p0}, Lorg/threeten/bp/a/k;->e()Lorg/threeten/bp/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/a/a;->g()Lorg/threeten/bp/a/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/threeten/bp/a/m;->d(Lorg/threeten/bp/temporal/l;)Lorg/threeten/bp/a/h;

    move-result-object v0

    .line 269
    instance-of v1, p2, Lorg/threeten/bp/temporal/b;

    if-eqz v1, :cond_0

    .line 270
    iget-object v1, p0, Lorg/threeten/bp/a/k;->b:Lorg/threeten/bp/af;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/a/h;->a(Lorg/threeten/bp/ad;)Lorg/threeten/bp/a/h;

    move-result-object v0

    .line 271
    iget-object v1, p0, Lorg/threeten/bp/a/k;->a:Lorg/threeten/bp/a/e;

    invoke-virtual {v0}, Lorg/threeten/bp/a/h;->d()Lorg/threeten/bp/a/c;

    move-result-object v0

    invoke-virtual {v1, v0, p2}, Lorg/threeten/bp/a/e;->a(Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/aa;)J

    move-result-wide v0

    .line 273
    :goto_0
    return-wide v0

    :cond_0
    invoke-interface {p2, p0, v0}, Lorg/threeten/bp/temporal/aa;->a(Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/k;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public final a(Lorg/threeten/bp/ad;)Lorg/threeten/bp/a/h;
    .locals 2
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
    .line 228
    const-string v0, "zone"

    invoke-static {p1, v0}, Lorg/threeten/bp/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 229
    iget-object v0, p0, Lorg/threeten/bp/a/k;->c:Lorg/threeten/bp/ad;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/ad;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/a/k;->a:Lorg/threeten/bp/a/e;

    iget-object v1, p0, Lorg/threeten/bp/a/k;->b:Lorg/threeten/bp/af;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/a/e;->a(Lorg/threeten/bp/af;)Lorg/threeten/bp/g;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/threeten/bp/a/k;->a(Lorg/threeten/bp/g;Lorg/threeten/bp/ad;)Lorg/threeten/bp/a/k;

    move-result-object p0

    goto :goto_0
.end method

.method public final a()Lorg/threeten/bp/af;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lorg/threeten/bp/a/k;->b:Lorg/threeten/bp/af;

    return-object v0
.end method

.method public final synthetic a(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/temporal/k;
    .locals 2

    .prologue
    .line 73
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/a/k;->b(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/a/h;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lorg/threeten/bp/temporal/q;)Z
    .locals 1

    .prologue
    .line 235
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

.method public final b(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/a/h;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/temporal/q;",
            "J)",
            "Lorg/threeten/bp/a/h",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 241
    instance-of v0, p1, Lorg/threeten/bp/temporal/a;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 242
    check-cast v0, Lorg/threeten/bp/temporal/a;

    .line 243
    sget-object v1, Lorg/threeten/bp/a/l;->a:[I

    invoke-virtual {v0}, Lorg/threeten/bp/temporal/a;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 250
    iget-object v0, p0, Lorg/threeten/bp/a/k;->a:Lorg/threeten/bp/a/e;

    invoke-virtual {v0, p1, p2, p3}, Lorg/threeten/bp/a/e;->b(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/a/e;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/a/k;->c:Lorg/threeten/bp/ad;

    iget-object v2, p0, Lorg/threeten/bp/a/k;->b:Lorg/threeten/bp/af;

    invoke-static {v0, v1, v2}, Lorg/threeten/bp/a/k;->a(Lorg/threeten/bp/a/e;Lorg/threeten/bp/ad;Lorg/threeten/bp/af;)Lorg/threeten/bp/a/h;

    move-result-object v0

    .line 252
    :goto_0
    return-object v0

    .line 244
    :pswitch_0
    invoke-virtual {p0}, Lorg/threeten/bp/a/k;->f()J

    move-result-wide v0

    sub-long v0, p2, v0

    sget-object v2, Lorg/threeten/bp/temporal/b;->d:Lorg/threeten/bp/temporal/b;

    invoke-virtual {p0, v0, v1, v2}, Lorg/threeten/bp/a/k;->d(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/a/h;

    move-result-object v0

    goto :goto_0

    .line 246
    :pswitch_1
    invoke-virtual {v0, p2, p3}, Lorg/threeten/bp/temporal/a;->b(J)I

    move-result v0

    invoke-static {v0}, Lorg/threeten/bp/af;->a(I)Lorg/threeten/bp/af;

    move-result-object v0

    .line 247
    iget-object v1, p0, Lorg/threeten/bp/a/k;->a:Lorg/threeten/bp/a/e;

    invoke-virtual {v1, v0}, Lorg/threeten/bp/a/e;->a(Lorg/threeten/bp/af;)Lorg/threeten/bp/g;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/a/k;->c:Lorg/threeten/bp/ad;

    invoke-direct {p0, v0, v1}, Lorg/threeten/bp/a/k;->a(Lorg/threeten/bp/g;Lorg/threeten/bp/ad;)Lorg/threeten/bp/a/k;

    move-result-object v0

    goto :goto_0

    .line 252
    :cond_0
    invoke-virtual {p0}, Lorg/threeten/bp/a/k;->e()Lorg/threeten/bp/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/a/a;->g()Lorg/threeten/bp/a/m;

    move-result-object v0

    invoke-interface {p1, p0, p2, p3}, Lorg/threeten/bp/temporal/q;->a(Lorg/threeten/bp/temporal/k;J)Lorg/threeten/bp/temporal/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/threeten/bp/a/m;->c(Lorg/threeten/bp/temporal/k;)Lorg/threeten/bp/a/k;

    move-result-object v0

    goto :goto_0

    .line 243
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final b()Lorg/threeten/bp/ad;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lorg/threeten/bp/a/k;->c:Lorg/threeten/bp/ad;

    return-object v0
.end method

.method public final synthetic b(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/temporal/k;
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/a/k;->d(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/a/h;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lorg/threeten/bp/a/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/threeten/bp/a/c",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 215
    iget-object v0, p0, Lorg/threeten/bp/a/k;->a:Lorg/threeten/bp/a/e;

    return-object v0
.end method

.method public final d(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/a/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lorg/threeten/bp/temporal/aa;",
            ")",
            "Lorg/threeten/bp/a/h",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 258
    instance-of v0, p3, Lorg/threeten/bp/temporal/b;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lorg/threeten/bp/a/k;->a:Lorg/threeten/bp/a/e;

    invoke-virtual {v0, p1, p2, p3}, Lorg/threeten/bp/a/e;->c(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/a/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/threeten/bp/a/k;->b(Lorg/threeten/bp/temporal/m;)Lorg/threeten/bp/a/h;

    move-result-object v0

    .line 261
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/threeten/bp/a/k;->e()Lorg/threeten/bp/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/a/a;->g()Lorg/threeten/bp/a/m;

    move-result-object v0

    invoke-interface {p3, p0, p1, p2}, Lorg/threeten/bp/temporal/aa;->a(Lorg/threeten/bp/temporal/k;J)Lorg/threeten/bp/temporal/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/threeten/bp/a/m;->c(Lorg/threeten/bp/temporal/k;)Lorg/threeten/bp/a/k;

    move-result-object v0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 307
    if-ne p0, p1, :cond_1

    .line 313
    :cond_0
    :goto_0
    return v0

    .line 310
    :cond_1
    instance-of v2, p1, Lorg/threeten/bp/a/h;

    if-eqz v2, :cond_2

    .line 311
    check-cast p1, Lorg/threeten/bp/a/h;

    invoke-virtual {p0, p1}, Lorg/threeten/bp/a/k;->a(Lorg/threeten/bp/a/h;)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 313
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 318
    .line 3215
    iget-object v0, p0, Lorg/threeten/bp/a/k;->a:Lorg/threeten/bp/a/e;

    .line 318
    invoke-virtual {v0}, Lorg/threeten/bp/a/c;->hashCode()I

    move-result v0

    .line 4185
    iget-object v1, p0, Lorg/threeten/bp/a/k;->b:Lorg/threeten/bp/af;

    .line 318
    invoke-virtual {v1}, Lorg/threeten/bp/af;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 4219
    iget-object v1, p0, Lorg/threeten/bp/a/k;->c:Lorg/threeten/bp/ad;

    .line 318
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
    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5215
    iget-object v1, p0, Lorg/threeten/bp/a/k;->a:Lorg/threeten/bp/a/e;

    .line 323
    invoke-virtual {v1}, Lorg/threeten/bp/a/c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 6185
    iget-object v1, p0, Lorg/threeten/bp/a/k;->b:Lorg/threeten/bp/af;

    .line 323
    invoke-virtual {v1}, Lorg/threeten/bp/af;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7185
    iget-object v1, p0, Lorg/threeten/bp/a/k;->b:Lorg/threeten/bp/af;

    .line 7219
    iget-object v2, p0, Lorg/threeten/bp/a/k;->c:Lorg/threeten/bp/ad;

    .line 324
    if-eq v1, v2, :cond_0

    .line 325
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 8219
    iget-object v1, p0, Lorg/threeten/bp/a/k;->c:Lorg/threeten/bp/ad;

    .line 325
    invoke-virtual {v1}, Lorg/threeten/bp/ad;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 327
    :cond_0
    return-object v0
.end method
