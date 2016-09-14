.class final Lorg/threeten/bp/format/j;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Lorg/threeten/bp/format/l;


# instance fields
.field private final a:C


# direct methods
.method constructor <init>(C)V
    .locals 0

    .prologue
    .line 2197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2198
    iput-char p1, p0, Lorg/threeten/bp/format/j;->a:C

    .line 2199
    return-void
.end method


# virtual methods
.method public final a(Lorg/threeten/bp/format/w;Ljava/lang/CharSequence;I)I
    .locals 2

    .prologue
    .line 2209
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 2210
    if-ne p3, v0, :cond_0

    .line 2211
    xor-int/lit8 v0, p3, -0x1

    .line 2217
    :goto_0
    return v0

    .line 2213
    :cond_0
    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 2214
    iget-char v1, p0, Lorg/threeten/bp/format/j;->a:C

    invoke-virtual {p1, v1, v0}, Lorg/threeten/bp/format/w;->a(CC)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2215
    xor-int/lit8 v0, p3, -0x1

    goto :goto_0

    .line 2217
    :cond_1
    add-int/lit8 v0, p3, 0x1

    goto :goto_0
.end method

.method public final a(Lorg/threeten/bp/format/y;Ljava/lang/StringBuilder;)Z
    .locals 1

    .prologue
    .line 2203
    iget-char v0, p0, Lorg/threeten/bp/format/j;->a:C

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2204
    const/4 v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2222
    iget-char v0, p0, Lorg/threeten/bp/format/j;->a:C

    const/16 v1, 0x27

    if-ne v0, v1, :cond_0

    .line 2223
    const-string v0, "\'\'"

    .line 2225
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-char v1, p0, Lorg/threeten/bp/format/j;->a:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
