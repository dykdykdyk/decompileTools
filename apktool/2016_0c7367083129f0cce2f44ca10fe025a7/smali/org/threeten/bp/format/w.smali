.class final Lorg/threeten/bp/format/w;
.super Ljava/lang/Object;
.source "DateTimeParseContext.java"


# instance fields
.field a:Ljava/util/Locale;

.field b:Lorg/threeten/bp/format/ab;

.field c:Lorg/threeten/bp/a/m;

.field d:Lorg/threeten/bp/ad;

.field e:Z

.field f:Z

.field final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/threeten/bp/format/x;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/threeten/bp/format/b;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-boolean v0, p0, Lorg/threeten/bp/format/w;->e:Z

    .line 92
    iput-boolean v0, p0, Lorg/threeten/bp/format/w;->f:Z

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/threeten/bp/format/w;->g:Ljava/util/ArrayList;

    .line 2051
    iget-object v0, p1, Lorg/threeten/bp/format/b;->q:Ljava/util/Locale;

    .line 105
    iput-object v0, p0, Lorg/threeten/bp/format/w;->a:Ljava/util/Locale;

    .line 2079
    iget-object v0, p1, Lorg/threeten/bp/format/b;->r:Lorg/threeten/bp/format/ab;

    .line 106
    iput-object v0, p0, Lorg/threeten/bp/format/w;->b:Lorg/threeten/bp/format/ab;

    .line 2108
    iget-object v0, p1, Lorg/threeten/bp/format/b;->u:Lorg/threeten/bp/a/m;

    .line 107
    iput-object v0, p0, Lorg/threeten/bp/format/w;->c:Lorg/threeten/bp/a/m;

    .line 2153
    iget-object v0, p1, Lorg/threeten/bp/format/b;->v:Lorg/threeten/bp/ad;

    .line 108
    iput-object v0, p0, Lorg/threeten/bp/format/w;->d:Lorg/threeten/bp/ad;

    .line 109
    iget-object v0, p0, Lorg/threeten/bp/format/w;->g:Ljava/util/ArrayList;

    new-instance v1, Lorg/threeten/bp/format/x;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/threeten/bp/format/x;-><init>(Lorg/threeten/bp/format/w;B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    return-void
.end method

.method private constructor <init>(Lorg/threeten/bp/format/w;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-boolean v0, p0, Lorg/threeten/bp/format/w;->e:Z

    .line 92
    iput-boolean v0, p0, Lorg/threeten/bp/format/w;->f:Z

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/threeten/bp/format/w;->g:Ljava/util/ArrayList;

    .line 124
    iget-object v0, p1, Lorg/threeten/bp/format/w;->a:Ljava/util/Locale;

    iput-object v0, p0, Lorg/threeten/bp/format/w;->a:Ljava/util/Locale;

    .line 125
    iget-object v0, p1, Lorg/threeten/bp/format/w;->b:Lorg/threeten/bp/format/ab;

    iput-object v0, p0, Lorg/threeten/bp/format/w;->b:Lorg/threeten/bp/format/ab;

    .line 126
    iget-object v0, p1, Lorg/threeten/bp/format/w;->c:Lorg/threeten/bp/a/m;

    iput-object v0, p0, Lorg/threeten/bp/format/w;->c:Lorg/threeten/bp/a/m;

    .line 127
    iget-object v0, p1, Lorg/threeten/bp/format/w;->d:Lorg/threeten/bp/ad;

    iput-object v0, p0, Lorg/threeten/bp/format/w;->d:Lorg/threeten/bp/ad;

    .line 128
    iget-boolean v0, p1, Lorg/threeten/bp/format/w;->e:Z

    iput-boolean v0, p0, Lorg/threeten/bp/format/w;->e:Z

    .line 129
    iget-boolean v0, p1, Lorg/threeten/bp/format/w;->f:Z

    iput-boolean v0, p0, Lorg/threeten/bp/format/w;->f:Z

    .line 130
    iget-object v0, p0, Lorg/threeten/bp/format/w;->g:Ljava/util/ArrayList;

    new-instance v1, Lorg/threeten/bp/format/x;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/threeten/bp/format/x;-><init>(Lorg/threeten/bp/format/w;B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    return-void
.end method


# virtual methods
.method final a(Lorg/threeten/bp/temporal/q;JII)I
    .locals 2

    .prologue
    .line 344
    const-string v0, "field"

    invoke-static {p1, v0}, Lorg/threeten/bp/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 345
    invoke-virtual {p0}, Lorg/threeten/bp/format/w;->b()Lorg/threeten/bp/format/x;

    move-result-object v0

    iget-object v0, v0, Lorg/threeten/bp/format/x;->c:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 346
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, p2

    if-eqz v0, :cond_0

    xor-int/lit8 p5, p4, -0x1

    :cond_0
    return p5
.end method

.method final a(Lorg/threeten/bp/temporal/q;)Ljava/lang/Long;
    .locals 1

    .prologue
    .line 328
    invoke-virtual {p0}, Lorg/threeten/bp/format/w;->b()Lorg/threeten/bp/format/x;

    move-result-object v0

    iget-object v0, v0, Lorg/threeten/bp/format/x;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method final a()Lorg/threeten/bp/format/w;
    .locals 1

    .prologue
    .line 137
    new-instance v0, Lorg/threeten/bp/format/w;

    invoke-direct {v0, p0}, Lorg/threeten/bp/format/w;-><init>(Lorg/threeten/bp/format/w;)V

    return-object v0
.end method

.method final a(Lorg/threeten/bp/ad;)V
    .locals 1

    .prologue
    .line 388
    const-string v0, "zone"

    invoke-static {p1, v0}, Lorg/threeten/bp/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 389
    invoke-virtual {p0}, Lorg/threeten/bp/format/w;->b()Lorg/threeten/bp/format/x;

    move-result-object v0

    iput-object p1, v0, Lorg/threeten/bp/format/x;->b:Lorg/threeten/bp/ad;

    .line 390
    return-void
.end method

.method final a(Z)V
    .locals 2

    .prologue
    .line 298
    if-eqz p1, :cond_0

    .line 299
    iget-object v0, p0, Lorg/threeten/bp/format/w;->g:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/threeten/bp/format/w;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 303
    :goto_0
    return-void

    .line 301
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/format/w;->g:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/threeten/bp/format/w;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method final a(CC)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 244
    .line 3187
    iget-boolean v2, p0, Lorg/threeten/bp/format/w;->e:Z

    .line 244
    if-eqz v2, :cond_2

    .line 245
    if-ne p1, p2, :cond_1

    .line 3258
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 245
    goto :goto_0

    .line 3258
    :cond_2
    if-eq p1, p2, :cond_0

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    invoke-static {p2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    if-eq v2, v3, :cond_0

    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 247
    goto :goto_0
.end method

.method final a(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 211
    add-int v1, p2, p5

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-gt v1, v2, :cond_0

    add-int v1, p4, p5

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 232
    :cond_0
    :goto_0
    return v0

    .line 2187
    :cond_1
    iget-boolean v1, p0, Lorg/threeten/bp/format/w;->e:Z

    .line 214
    if-eqz v1, :cond_2

    move v1, v0

    .line 215
    :goto_1
    if-ge v1, p5, :cond_4

    .line 216
    add-int v2, p2, v1

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 217
    add-int v3, p4, v1

    invoke-interface {p3, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 218
    if-ne v2, v3, :cond_0

    .line 215
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v1, v0

    .line 223
    :goto_2
    if-ge v1, p5, :cond_4

    .line 224
    add-int v2, p2, v1

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 225
    add-int v3, p4, v1

    invoke-interface {p3, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 226
    if-eq v2, v3, :cond_3

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    if-eq v4, v5, :cond_3

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    if-ne v2, v3, :cond_0

    .line 223
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 232
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method final b()Lorg/threeten/bp/format/x;
    .locals 2

    .prologue
    .line 312
    iget-object v0, p0, Lorg/threeten/bp/format/w;->g:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/threeten/bp/format/w;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/format/x;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 418
    invoke-virtual {p0}, Lorg/threeten/bp/format/w;->b()Lorg/threeten/bp/format/x;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/format/x;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
