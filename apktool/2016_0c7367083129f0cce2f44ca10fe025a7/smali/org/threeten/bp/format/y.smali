.class final Lorg/threeten/bp/format/y;
.super Ljava/lang/Object;
.source "DateTimePrintContext.java"


# instance fields
.field a:Lorg/threeten/bp/temporal/l;

.field b:Ljava/util/Locale;

.field c:Lorg/threeten/bp/format/ab;

.field d:I


# direct methods
.method constructor <init>(Lorg/threeten/bp/temporal/l;Lorg/threeten/bp/format/b;)V
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-static {p1, p2}, Lorg/threeten/bp/format/y;->a(Lorg/threeten/bp/temporal/l;Lorg/threeten/bp/format/b;)Lorg/threeten/bp/temporal/l;

    move-result-object v0

    iput-object v0, p0, Lorg/threeten/bp/format/y;->a:Lorg/threeten/bp/temporal/l;

    .line 2051
    iget-object v0, p2, Lorg/threeten/bp/format/b;->q:Ljava/util/Locale;

    .line 93
    iput-object v0, p0, Lorg/threeten/bp/format/y;->b:Ljava/util/Locale;

    .line 2079
    iget-object v0, p2, Lorg/threeten/bp/format/b;->r:Lorg/threeten/bp/format/ab;

    .line 94
    iput-object v0, p0, Lorg/threeten/bp/format/y;->c:Lorg/threeten/bp/format/ab;

    .line 95
    return-void
.end method

.method private static a(Lorg/threeten/bp/temporal/l;Lorg/threeten/bp/format/b;)Lorg/threeten/bp/temporal/l;
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 106
    .line 2108
    iget-object v2, p1, Lorg/threeten/bp/format/b;->u:Lorg/threeten/bp/a/m;

    .line 2153
    iget-object v6, p1, Lorg/threeten/bp/format/b;->v:Lorg/threeten/bp/ad;

    .line 108
    if-nez v2, :cond_1

    if-nez v6, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-object p0

    .line 113
    :cond_1
    invoke-static {}, Lorg/threeten/bp/temporal/r;->b()Lorg/threeten/bp/temporal/z;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/threeten/bp/temporal/l;->a(Lorg/threeten/bp/temporal/z;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/a/m;

    .line 114
    invoke-static {}, Lorg/threeten/bp/temporal/r;->a()Lorg/threeten/bp/temporal/z;

    move-result-object v1

    invoke-interface {p0, v1}, Lorg/threeten/bp/temporal/l;->a(Lorg/threeten/bp/temporal/z;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/threeten/bp/ad;

    .line 115
    invoke-static {v0, v2}, Lorg/threeten/bp/b/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v2, v3

    .line 118
    :cond_2
    invoke-static {v1, v6}, Lorg/threeten/bp/b/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v6, v3

    .line 121
    :cond_3
    if-nez v2, :cond_4

    if-eqz v6, :cond_0

    .line 124
    :cond_4
    if-eqz v2, :cond_5

    move-object v4, v2

    .line 125
    :goto_1
    if-eqz v6, :cond_6

    move-object v5, v6

    .line 128
    :goto_2
    if-eqz v6, :cond_9

    .line 130
    sget-object v1, Lorg/threeten/bp/temporal/a;->C:Lorg/threeten/bp/temporal/a;

    invoke-interface {p0, v1}, Lorg/threeten/bp/temporal/l;->a(Lorg/threeten/bp/temporal/q;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 131
    if-eqz v4, :cond_7

    move-object v0, v4

    .line 132
    :goto_3
    invoke-static {p0}, Lorg/threeten/bp/g;->a(Lorg/threeten/bp/temporal/l;)Lorg/threeten/bp/g;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Lorg/threeten/bp/a/m;->a(Lorg/threeten/bp/g;Lorg/threeten/bp/ad;)Lorg/threeten/bp/a/h;

    move-result-object p0

    goto :goto_0

    :cond_5
    move-object v4, v0

    .line 124
    goto :goto_1

    :cond_6
    move-object v5, v1

    .line 125
    goto :goto_2

    .line 131
    :cond_7
    sget-object v0, Lorg/threeten/bp/a/p;->b:Lorg/threeten/bp/a/p;

    goto :goto_3

    .line 135
    :cond_8
    invoke-virtual {v6}, Lorg/threeten/bp/ad;->d()Lorg/threeten/bp/ad;

    move-result-object v7

    .line 136
    invoke-static {}, Lorg/threeten/bp/temporal/r;->e()Lorg/threeten/bp/temporal/z;

    move-result-object v1

    invoke-interface {p0, v1}, Lorg/threeten/bp/temporal/l;->a(Lorg/threeten/bp/temporal/z;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/threeten/bp/af;

    .line 137
    instance-of v8, v7, Lorg/threeten/bp/af;

    if-eqz v8, :cond_9

    if-eqz v1, :cond_9

    invoke-virtual {v7, v1}, Lorg/threeten/bp/ad;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 138
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid override zone for temporal: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_9
    if-eqz v2, :cond_a

    .line 143
    sget-object v1, Lorg/threeten/bp/temporal/a;->u:Lorg/threeten/bp/temporal/a;

    invoke-interface {p0, v1}, Lorg/threeten/bp/temporal/l;->a(Lorg/threeten/bp/temporal/q;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 144
    invoke-virtual {v4, p0}, Lorg/threeten/bp/a/m;->b(Lorg/threeten/bp/temporal/l;)Lorg/threeten/bp/a/a;

    move-result-object v3

    .line 161
    :cond_a
    new-instance v0, Lorg/threeten/bp/format/z;

    invoke-direct {v0, v3, p0, v4, v5}, Lorg/threeten/bp/format/z;-><init>(Lorg/threeten/bp/a/a;Lorg/threeten/bp/temporal/l;Lorg/threeten/bp/a/m;Lorg/threeten/bp/ad;)V

    move-object p0, v0

    goto/16 :goto_0

    .line 147
    :cond_b
    sget-object v1, Lorg/threeten/bp/a/p;->b:Lorg/threeten/bp/a/p;

    if-ne v2, v1, :cond_c

    if-eqz v0, :cond_a

    .line 148
    :cond_c
    invoke-static {}, Lorg/threeten/bp/temporal/a;->values()[Lorg/threeten/bp/temporal/a;

    move-result-object v1

    array-length v6, v1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v6, :cond_a

    aget-object v7, v1, v0

    .line 149
    invoke-virtual {v7}, Lorg/threeten/bp/temporal/a;->b()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {p0, v7}, Lorg/threeten/bp/temporal/l;->a(Lorg/threeten/bp/temporal/q;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 150
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Invalid override chronology for temporal: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method


# virtual methods
.method final a(Lorg/threeten/bp/temporal/q;)Ljava/lang/Long;
    .locals 2

    .prologue
    .line 274
    :try_start_0
    iget-object v0, p0, Lorg/threeten/bp/format/y;->a:Lorg/threeten/bp/temporal/l;

    invoke-interface {v0, p1}, Lorg/threeten/bp/temporal/l;->d(Lorg/threeten/bp/temporal/q;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Lorg/threeten/bp/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 277
    :goto_0
    return-object v0

    .line 275
    :catch_0
    move-exception v0

    .line 276
    iget v1, p0, Lorg/threeten/bp/format/y;->d:I

    if-lez v1, :cond_0

    .line 277
    const/4 v0, 0x0

    goto :goto_0

    .line 279
    :cond_0
    throw v0
.end method

.method final a()V
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lorg/threeten/bp/format/y;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/threeten/bp/format/y;->d:I

    .line 246
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lorg/threeten/bp/format/y;->a:Lorg/threeten/bp/temporal/l;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
