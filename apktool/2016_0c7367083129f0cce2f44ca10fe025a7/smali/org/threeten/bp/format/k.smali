.class final Lorg/threeten/bp/format/k;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Lorg/threeten/bp/format/l;


# instance fields
.field final a:[Lorg/threeten/bp/format/l;

.field final b:Z


# direct methods
.method constructor <init>(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/threeten/bp/format/l;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1966
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/threeten/bp/format/l;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/threeten/bp/format/l;

    invoke-direct {p0, v0, p2}, Lorg/threeten/bp/format/k;-><init>([Lorg/threeten/bp/format/l;Z)V

    .line 1967
    return-void
.end method

.method constructor <init>([Lorg/threeten/bp/format/l;Z)V
    .locals 0

    .prologue
    .line 1969
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1970
    iput-object p1, p0, Lorg/threeten/bp/format/k;->a:[Lorg/threeten/bp/format/l;

    .line 1971
    iput-boolean p2, p0, Lorg/threeten/bp/format/k;->b:Z

    .line 1972
    return-void
.end method


# virtual methods
.method public final a(Lorg/threeten/bp/format/w;Ljava/lang/CharSequence;I)I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2010
    iget-boolean v0, p0, Lorg/threeten/bp/format/k;->b:Z

    if-eqz v0, :cond_2

    .line 2289
    iget-object v0, p1, Lorg/threeten/bp/format/w;->g:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/threeten/bp/format/w;->b()Lorg/threeten/bp/format/x;

    move-result-object v2

    .line 2436
    new-instance v3, Lorg/threeten/bp/format/x;

    iget-object v4, v2, Lorg/threeten/bp/format/x;->f:Lorg/threeten/bp/format/w;

    invoke-direct {v3, v4}, Lorg/threeten/bp/format/x;-><init>(Lorg/threeten/bp/format/w;)V

    .line 2437
    iget-object v4, v2, Lorg/threeten/bp/format/x;->a:Lorg/threeten/bp/a/m;

    iput-object v4, v3, Lorg/threeten/bp/format/x;->a:Lorg/threeten/bp/a/m;

    .line 2438
    iget-object v4, v2, Lorg/threeten/bp/format/x;->b:Lorg/threeten/bp/ad;

    iput-object v4, v3, Lorg/threeten/bp/format/x;->b:Lorg/threeten/bp/ad;

    .line 2439
    iget-object v4, v3, Lorg/threeten/bp/format/x;->c:Ljava/util/Map;

    iget-object v5, v2, Lorg/threeten/bp/format/x;->c:Ljava/util/Map;

    invoke-interface {v4, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2440
    iget-boolean v2, v2, Lorg/threeten/bp/format/x;->d:Z

    iput-boolean v2, v3, Lorg/threeten/bp/format/x;->d:Z

    .line 2289
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2013
    iget-object v4, p0, Lorg/threeten/bp/format/k;->a:[Lorg/threeten/bp/format/l;

    array-length v5, v4

    move v2, v1

    move v0, p3

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v3, v4, v2

    .line 2014
    invoke-interface {v3, p1, p2, v0}, Lorg/threeten/bp/format/l;->a(Lorg/threeten/bp/format/w;Ljava/lang/CharSequence;I)I

    move-result v3

    .line 2015
    if-gez v3, :cond_0

    .line 2016
    invoke-virtual {p1, v1}, Lorg/threeten/bp/format/w;->a(Z)V

    .line 2029
    :goto_1
    return p3

    .line 2013
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_0

    .line 2020
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/threeten/bp/format/w;->a(Z)V

    move p3, v0

    .line 2021
    goto :goto_1

    .line 2023
    :cond_2
    iget-object v2, p0, Lorg/threeten/bp/format/k;->a:[Lorg/threeten/bp/format/l;

    array-length v3, v2

    move v0, p3

    :goto_2
    if-ge v1, v3, :cond_3

    aget-object v4, v2, v1

    .line 2024
    invoke-interface {v4, p1, p2, v0}, Lorg/threeten/bp/format/l;->a(Lorg/threeten/bp/format/w;Ljava/lang/CharSequence;I)I

    move-result v0

    .line 2025
    if-ltz v0, :cond_3

    .line 2023
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    move p3, v0

    .line 2029
    goto :goto_1
.end method

.method public final a(Lorg/threeten/bp/format/y;Ljava/lang/StringBuilder;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1989
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 1990
    iget-boolean v0, p0, Lorg/threeten/bp/format/k;->b:Z

    if-eqz v0, :cond_0

    .line 2238
    iget v0, p1, Lorg/threeten/bp/format/y;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lorg/threeten/bp/format/y;->d:I

    .line 1994
    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/threeten/bp/format/k;->a:[Lorg/threeten/bp/format/l;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_3

    aget-object v4, v2, v0

    .line 1995
    invoke-interface {v4, p1, p2}, Lorg/threeten/bp/format/l;->a(Lorg/threeten/bp/format/y;Ljava/lang/StringBuilder;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1996
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2001
    iget-boolean v0, p0, Lorg/threeten/bp/format/k;->b:Z

    if-eqz v0, :cond_1

    .line 2002
    invoke-virtual {p1}, Lorg/threeten/bp/format/y;->a()V

    .line 2005
    :cond_1
    :goto_1
    return v5

    .line 1994
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2001
    :cond_3
    iget-boolean v0, p0, Lorg/threeten/bp/format/k;->b:Z

    if-eqz v0, :cond_1

    .line 2002
    invoke-virtual {p1}, Lorg/threeten/bp/format/y;->a()V

    goto :goto_1

    .line 2001
    :catchall_0
    move-exception v0

    iget-boolean v1, p0, Lorg/threeten/bp/format/k;->b:Z

    if-eqz v1, :cond_4

    .line 2002
    invoke-virtual {p1}, Lorg/threeten/bp/format/y;->a()V

    :cond_4
    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 2035
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2036
    iget-object v0, p0, Lorg/threeten/bp/format/k;->a:[Lorg/threeten/bp/format/l;

    if-eqz v0, :cond_2

    .line 2037
    iget-boolean v0, p0, Lorg/threeten/bp/format/k;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "["

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2038
    iget-object v2, p0, Lorg/threeten/bp/format/k;->a:[Lorg/threeten/bp/format/l;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 2039
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2038
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2037
    :cond_0
    const-string v0, "("

    goto :goto_0

    .line 2041
    :cond_1
    iget-boolean v0, p0, Lorg/threeten/bp/format/k;->b:Z

    if-eqz v0, :cond_3

    const-string v0, "]"

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2043
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2041
    :cond_3
    const-string v0, ")"

    goto :goto_2
.end method
