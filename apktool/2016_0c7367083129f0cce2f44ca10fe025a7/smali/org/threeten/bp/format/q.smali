.class final Lorg/threeten/bp/format/q;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Lorg/threeten/bp/format/l;


# instance fields
.field private final a:Lorg/threeten/bp/format/l;

.field private final b:I

.field private final c:C


# direct methods
.method constructor <init>(Lorg/threeten/bp/format/l;IC)V
    .locals 0

    .prologue
    .line 2063
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2065
    iput-object p1, p0, Lorg/threeten/bp/format/q;->a:Lorg/threeten/bp/format/l;

    .line 2066
    iput p2, p0, Lorg/threeten/bp/format/q;->b:I

    .line 2067
    iput-char p3, p0, Lorg/threeten/bp/format/q;->c:C

    .line 2068
    return-void
.end method


# virtual methods
.method public final a(Lorg/threeten/bp/format/w;Ljava/lang/CharSequence;I)I
    .locals 6

    .prologue
    .line 2090
    .line 2272
    iget-boolean v3, p1, Lorg/threeten/bp/format/w;->f:Z

    .line 3187
    iget-boolean v4, p1, Lorg/threeten/bp/format/w;->e:Z

    .line 2093
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le p3, v0, :cond_0

    .line 2094
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 2096
    :cond_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne p3, v0, :cond_1

    .line 2097
    xor-int/lit8 v0, p3, -0x1

    .line 2116
    :goto_0
    return v0

    .line 2099
    :cond_1
    iget v0, p0, Lorg/threeten/bp/format/q;->b:I

    add-int/2addr v0, p3

    .line 2100
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v0, v1, :cond_3

    .line 2101
    if-eqz v3, :cond_2

    .line 2102
    xor-int/lit8 v0, p3, -0x1

    goto :goto_0

    .line 2104
    :cond_2
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    :cond_3
    move v2, p3

    .line 2107
    :goto_1
    if-ge v2, v0, :cond_6

    if-eqz v4, :cond_5

    invoke-interface {p2, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    iget-char v5, p0, Lorg/threeten/bp/format/q;->c:C

    if-ne v1, v5, :cond_6

    .line 2109
    :cond_4
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 2107
    :cond_5
    invoke-interface {p2, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    iget-char v5, p0, Lorg/threeten/bp/format/q;->c:C

    invoke-virtual {p1, v1, v5}, Lorg/threeten/bp/format/w;->a(CC)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2111
    :cond_6
    const/4 v1, 0x0

    invoke-interface {p2, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2112
    iget-object v4, p0, Lorg/threeten/bp/format/q;->a:Lorg/threeten/bp/format/l;

    invoke-interface {v4, p1, v1, v2}, Lorg/threeten/bp/format/l;->a(Lorg/threeten/bp/format/w;Ljava/lang/CharSequence;I)I

    move-result v1

    .line 2113
    if-eq v1, v0, :cond_7

    if-eqz v3, :cond_7

    .line 2114
    add-int v0, p3, v2

    xor-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_7
    move v0, v1

    .line 2116
    goto :goto_0
.end method

.method public final a(Lorg/threeten/bp/format/y;Ljava/lang/StringBuilder;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2072
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 2073
    iget-object v2, p0, Lorg/threeten/bp/format/q;->a:Lorg/threeten/bp/format/l;

    invoke-interface {v2, p1, p2}, Lorg/threeten/bp/format/l;->a(Lorg/threeten/bp/format/y;Ljava/lang/StringBuilder;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2084
    :goto_0
    return v0

    .line 2076
    :cond_0
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v1

    .line 2077
    iget v3, p0, Lorg/threeten/bp/format/q;->b:I

    if-le v2, v3, :cond_1

    .line 2078
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Cannot print as output of "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " characters exceeds pad width of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/threeten/bp/format/q;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2081
    :cond_1
    :goto_1
    iget v3, p0, Lorg/threeten/bp/format/q;->b:I

    sub-int/2addr v3, v2

    if-ge v0, v3, :cond_2

    .line 2082
    iget-char v3, p0, Lorg/threeten/bp/format/q;->c:C

    invoke-virtual {p2, v1, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 2081
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2084
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2121
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Pad("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/threeten/bp/format/q;->a:Lorg/threeten/bp/format/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/threeten/bp/format/q;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-char v0, p0, Lorg/threeten/bp/format/q;->c:C

    const/16 v2, 0x20

    if-ne v0, v2, :cond_0

    const-string v0, ")"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, ",\'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-char v2, p0, Lorg/threeten/bp/format/q;->c:C

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\')"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
