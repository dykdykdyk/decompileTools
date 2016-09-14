.class public final Lcom/google/i18n/phonenumbers/l;
.super Ljava/lang/Object;
.source "Phonenumber.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public a:I

.field b:Z

.field public c:J

.field d:Z

.field e:Ljava/lang/String;

.field f:Z

.field g:Z

.field h:Z

.field i:I

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:Lcom/google/i18n/phonenumbers/m;

.field private n:Z

.field private o:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput v2, p0, Lcom/google/i18n/phonenumbers/l;->a:I

    .line 60
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/i18n/phonenumbers/l;->c:J

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/l;->e:Ljava/lang/String;

    .line 95
    iput-boolean v2, p0, Lcom/google/i18n/phonenumbers/l;->g:Z

    .line 111
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/i18n/phonenumbers/l;->i:I

    .line 127
    const-string v0, ""

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/l;->k:Ljava/lang/String;

    .line 165
    const-string v0, ""

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/l;->o:Ljava/lang/String;

    .line 39
    sget-object v0, Lcom/google/i18n/phonenumbers/m;->a:Lcom/google/i18n/phonenumbers/m;

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/l;->m:Lcom/google/i18n/phonenumbers/m;

    .line 40
    return-void
.end method


# virtual methods
.method public final a(I)Lcom/google/i18n/phonenumbers/l;
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/l;->j:Z

    .line 49
    iput p1, p0, Lcom/google/i18n/phonenumbers/l;->a:I

    .line 50
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 239
    instance-of v2, p1, Lcom/google/i18n/phonenumbers/l;

    if-eqz v2, :cond_2

    check-cast p1, Lcom/google/i18n/phonenumbers/l;

    .line 1223
    if-eqz p1, :cond_1

    .line 1226
    if-ne p0, p1, :cond_0

    move v2, v0

    .line 239
    :goto_0
    if-eqz v2, :cond_2

    :goto_1
    return v0

    .line 1229
    :cond_0
    iget v2, p0, Lcom/google/i18n/phonenumbers/l;->a:I

    iget v3, p1, Lcom/google/i18n/phonenumbers/l;->a:I

    if-ne v2, v3, :cond_1

    iget-wide v2, p0, Lcom/google/i18n/phonenumbers/l;->c:J

    iget-wide v4, p1, Lcom/google/i18n/phonenumbers/l;->c:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/l;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/i18n/phonenumbers/l;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/google/i18n/phonenumbers/l;->g:Z

    iget-boolean v3, p1, Lcom/google/i18n/phonenumbers/l;->g:Z

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/google/i18n/phonenumbers/l;->i:I

    iget v3, p1, Lcom/google/i18n/phonenumbers/l;->i:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/l;->k:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/i18n/phonenumbers/l;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/l;->m:Lcom/google/i18n/phonenumbers/m;

    iget-object v3, p1, Lcom/google/i18n/phonenumbers/l;->m:Lcom/google/i18n/phonenumbers/m;

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/l;->o:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/i18n/phonenumbers/l;->o:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2166
    iget-boolean v2, p0, Lcom/google/i18n/phonenumbers/l;->n:Z

    .line 3166
    iget-boolean v3, p1, Lcom/google/i18n/phonenumbers/l;->n:Z

    .line 1229
    if-ne v2, v3, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 239
    goto :goto_1
.end method

.method public final hashCode()I
    .locals 6

    .prologue
    const/16 v2, 0x4d5

    const/16 v1, 0x4cf

    .line 249
    .line 4046
    iget v0, p0, Lcom/google/i18n/phonenumbers/l;->a:I

    .line 249
    add-int/lit16 v0, v0, 0x87d

    .line 250
    mul-int/lit8 v0, v0, 0x35

    .line 4062
    iget-wide v4, p0, Lcom/google/i18n/phonenumbers/l;->c:J

    .line 250
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 251
    mul-int/lit8 v0, v0, 0x35

    .line 4078
    iget-object v3, p0, Lcom/google/i18n/phonenumbers/l;->e:Ljava/lang/String;

    .line 251
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 252
    mul-int/lit8 v3, v0, 0x35

    .line 4097
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/l;->g:Z

    .line 252
    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v3

    .line 253
    mul-int/lit8 v0, v0, 0x35

    .line 4113
    iget v3, p0, Lcom/google/i18n/phonenumbers/l;->i:I

    .line 253
    add-int/2addr v0, v3

    .line 254
    mul-int/lit8 v0, v0, 0x35

    .line 4129
    iget-object v3, p0, Lcom/google/i18n/phonenumbers/l;->k:Ljava/lang/String;

    .line 254
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 255
    mul-int/lit8 v0, v0, 0x35

    .line 4148
    iget-object v3, p0, Lcom/google/i18n/phonenumbers/l;->m:Lcom/google/i18n/phonenumbers/m;

    .line 255
    invoke-virtual {v3}, Lcom/google/i18n/phonenumbers/m;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 256
    mul-int/lit8 v0, v0, 0x35

    .line 4167
    iget-object v3, p0, Lcom/google/i18n/phonenumbers/l;->o:Ljava/lang/String;

    .line 256
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 257
    mul-int/lit8 v0, v0, 0x35

    .line 5166
    iget-boolean v3, p0, Lcom/google/i18n/phonenumbers/l;->n:Z

    .line 257
    if-eqz v3, :cond_1

    :goto_1
    add-int/2addr v0, v1

    .line 258
    return v0

    :cond_0
    move v0, v2

    .line 252
    goto :goto_0

    :cond_1
    move v1, v2

    .line 257
    goto :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    const-string v1, "Country Code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/i18n/phonenumbers/l;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 265
    const-string v1, " National Number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/i18n/phonenumbers/l;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 6096
    iget-boolean v1, p0, Lcom/google/i18n/phonenumbers/l;->f:Z

    .line 266
    if-eqz v1, :cond_0

    .line 6097
    iget-boolean v1, p0, Lcom/google/i18n/phonenumbers/l;->g:Z

    .line 266
    if-eqz v1, :cond_0

    .line 267
    const-string v1, " Leading Zero(s): true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6112
    :cond_0
    iget-boolean v1, p0, Lcom/google/i18n/phonenumbers/l;->h:Z

    .line 269
    if-eqz v1, :cond_1

    .line 270
    const-string v1, " Number of leading zeros: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/i18n/phonenumbers/l;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7077
    :cond_1
    iget-boolean v1, p0, Lcom/google/i18n/phonenumbers/l;->d:Z

    .line 272
    if-eqz v1, :cond_2

    .line 273
    const-string v1, " Extension: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/l;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7147
    :cond_2
    iget-boolean v1, p0, Lcom/google/i18n/phonenumbers/l;->l:Z

    .line 275
    if-eqz v1, :cond_3

    .line 276
    const-string v1, " Country Code Source: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/l;->m:Lcom/google/i18n/phonenumbers/m;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 7166
    :cond_3
    iget-boolean v1, p0, Lcom/google/i18n/phonenumbers/l;->n:Z

    .line 278
    if-eqz v1, :cond_4

    .line 279
    const-string v1, " Preferred Domestic Carrier Code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/l;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
