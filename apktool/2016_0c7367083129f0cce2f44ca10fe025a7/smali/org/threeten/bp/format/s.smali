.class final Lorg/threeten/bp/format/s;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Lorg/threeten/bp/format/l;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2237
    iput-object p1, p0, Lorg/threeten/bp/format/s;->a:Ljava/lang/String;

    .line 2238
    return-void
.end method


# virtual methods
.method public final a(Lorg/threeten/bp/format/w;Ljava/lang/CharSequence;I)I
    .locals 6

    .prologue
    .line 2248
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 2249
    if-gt p3, v0, :cond_0

    if-gez p3, :cond_1

    .line 2250
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 2252
    :cond_1
    iget-object v3, p0, Lorg/threeten/bp/format/s;->a:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/threeten/bp/format/s;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    invoke-virtual/range {v0 .. v5}, Lorg/threeten/bp/format/w;->a(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2253
    xor-int/lit8 v0, p3, -0x1

    .line 2255
    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Lorg/threeten/bp/format/s;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p3

    goto :goto_0
.end method

.method public final a(Lorg/threeten/bp/format/y;Ljava/lang/StringBuilder;)Z
    .locals 1

    .prologue
    .line 2242
    iget-object v0, p0, Lorg/threeten/bp/format/s;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2243
    const/4 v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2260
    iget-object v0, p0, Lorg/threeten/bp/format/s;->a:Ljava/lang/String;

    const-string v1, "\'"

    const-string v2, "\'\'"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2261
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
