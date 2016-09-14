.class public Lcom/amap/api/services/busline/BusLineQuery;
.super Ljava/lang/Object;
.source "BusLineQuery.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:Lcom/amap/api/services/busline/BusLineQuery$SearchType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amap/api/services/busline/BusLineQuery$SearchType;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/16 v0, 0xa

    iput v0, p0, Lcom/amap/api/services/busline/BusLineQuery;->c:I

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/services/busline/BusLineQuery;->d:I

    .line 22
    iput-object p1, p0, Lcom/amap/api/services/busline/BusLineQuery;->a:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/amap/api/services/busline/BusLineQuery;->e:Lcom/amap/api/services/busline/BusLineQuery$SearchType;

    .line 24
    iput-object p3, p0, Lcom/amap/api/services/busline/BusLineQuery;->b:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public clone()Lcom/amap/api/services/busline/BusLineQuery;
    .locals 4

    .prologue
    .line 145
    new-instance v0, Lcom/amap/api/services/busline/BusLineQuery;

    iget-object v1, p0, Lcom/amap/api/services/busline/BusLineQuery;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/amap/api/services/busline/BusLineQuery;->e:Lcom/amap/api/services/busline/BusLineQuery$SearchType;

    iget-object v3, p0, Lcom/amap/api/services/busline/BusLineQuery;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/amap/api/services/busline/BusLineQuery;-><init>(Ljava/lang/String;Lcom/amap/api/services/busline/BusLineQuery$SearchType;Ljava/lang/String;)V

    .line 146
    iget v1, p0, Lcom/amap/api/services/busline/BusLineQuery;->d:I

    invoke-virtual {v0, v1}, Lcom/amap/api/services/busline/BusLineQuery;->setPageNumber(I)V

    .line 147
    iget v1, p0, Lcom/amap/api/services/busline/BusLineQuery;->c:I

    invoke-virtual {v0, v1}, Lcom/amap/api/services/busline/BusLineQuery;->setPageSize(I)V

    .line 148
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 7
    invoke-virtual {p0}, Lcom/amap/api/services/busline/BusLineQuery;->clone()Lcom/amap/api/services/busline/BusLineQuery;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 189
    if-ne p0, p1, :cond_1

    .line 212
    :cond_0
    :goto_0
    return v0

    .line 191
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 192
    goto :goto_0

    .line 193
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 194
    goto :goto_0

    .line 195
    :cond_3
    check-cast p1, Lcom/amap/api/services/busline/BusLineQuery;

    .line 196
    iget-object v2, p0, Lcom/amap/api/services/busline/BusLineQuery;->e:Lcom/amap/api/services/busline/BusLineQuery$SearchType;

    iget-object v3, p1, Lcom/amap/api/services/busline/BusLineQuery;->e:Lcom/amap/api/services/busline/BusLineQuery$SearchType;

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 197
    goto :goto_0

    .line 198
    :cond_4
    iget-object v2, p0, Lcom/amap/api/services/busline/BusLineQuery;->b:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 199
    iget-object v2, p1, Lcom/amap/api/services/busline/BusLineQuery;->b:Ljava/lang/String;

    if-eqz v2, :cond_6

    move v0, v1

    .line 200
    goto :goto_0

    .line 201
    :cond_5
    iget-object v2, p0, Lcom/amap/api/services/busline/BusLineQuery;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/amap/api/services/busline/BusLineQuery;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    .line 202
    goto :goto_0

    .line 203
    :cond_6
    iget v2, p0, Lcom/amap/api/services/busline/BusLineQuery;->d:I

    iget v3, p1, Lcom/amap/api/services/busline/BusLineQuery;->d:I

    if-eq v2, v3, :cond_7

    move v0, v1

    .line 204
    goto :goto_0

    .line 205
    :cond_7
    iget v2, p0, Lcom/amap/api/services/busline/BusLineQuery;->c:I

    iget v3, p1, Lcom/amap/api/services/busline/BusLineQuery;->c:I

    if-eq v2, v3, :cond_8

    move v0, v1

    .line 206
    goto :goto_0

    .line 207
    :cond_8
    iget-object v2, p0, Lcom/amap/api/services/busline/BusLineQuery;->a:Ljava/lang/String;

    if-nez v2, :cond_9

    .line 208
    iget-object v2, p1, Lcom/amap/api/services/busline/BusLineQuery;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 209
    goto :goto_0

    .line 210
    :cond_9
    iget-object v2, p0, Lcom/amap/api/services/busline/BusLineQuery;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/amap/api/services/busline/BusLineQuery;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 211
    goto :goto_0
.end method

.method public getCategory()Lcom/amap/api/services/busline/BusLineQuery$SearchType;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/amap/api/services/busline/BusLineQuery;->e:Lcom/amap/api/services/busline/BusLineQuery$SearchType;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/amap/api/services/busline/BusLineQuery;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getPageNumber()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/amap/api/services/busline/BusLineQuery;->d:I

    return v0
.end method

.method public getPageSize()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/amap/api/services/busline/BusLineQuery;->c:I

    return v0
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/amap/api/services/busline/BusLineQuery;->a:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 171
    iget-object v0, p0, Lcom/amap/api/services/busline/BusLineQuery;->e:Lcom/amap/api/services/busline/BusLineQuery$SearchType;

    if-nez v0, :cond_0

    move v0, v1

    .line 172
    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 173
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/busline/BusLineQuery;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 174
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/amap/api/services/busline/BusLineQuery;->d:I

    add-int/2addr v0, v2

    .line 175
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/amap/api/services/busline/BusLineQuery;->c:I

    add-int/2addr v0, v2

    .line 176
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amap/api/services/busline/BusLineQuery;->a:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 177
    :goto_2
    add-int/2addr v0, v1

    .line 178
    return v0

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/amap/api/services/busline/BusLineQuery;->e:Lcom/amap/api/services/busline/BusLineQuery$SearchType;

    .line 172
    invoke-virtual {v0}, Lcom/amap/api/services/busline/BusLineQuery$SearchType;->hashCode()I

    move-result v0

    goto :goto_0

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/amap/api/services/busline/BusLineQuery;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    .line 176
    :cond_2
    iget-object v1, p0, Lcom/amap/api/services/busline/BusLineQuery;->a:Ljava/lang/String;

    .line 177
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2
.end method

.method public setCategory(Lcom/amap/api/services/busline/BusLineQuery$SearchType;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/amap/api/services/busline/BusLineQuery;->e:Lcom/amap/api/services/busline/BusLineQuery$SearchType;

    .line 139
    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/amap/api/services/busline/BusLineQuery;->b:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setPageNumber(I)V
    .locals 0

    .prologue
    .line 129
    iput p1, p0, Lcom/amap/api/services/busline/BusLineQuery;->d:I

    .line 130
    return-void
.end method

.method public setPageSize(I)V
    .locals 0

    .prologue
    .line 111
    iput p1, p0, Lcom/amap/api/services/busline/BusLineQuery;->c:I

    .line 112
    return-void
.end method

.method public setQueryString(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/amap/api/services/busline/BusLineQuery;->a:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public weakEquals(Lcom/amap/api/services/busline/BusLineQuery;)Z
    .locals 3

    .prologue
    .line 155
    const/4 v0, 0x0

    .line 156
    invoke-virtual {p1}, Lcom/amap/api/services/busline/BusLineQuery;->getQueryString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/services/busline/BusLineQuery;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    invoke-virtual {p1}, Lcom/amap/api/services/busline/BusLineQuery;->getCity()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/services/busline/BusLineQuery;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    invoke-virtual {p1}, Lcom/amap/api/services/busline/BusLineQuery;->getPageSize()I

    move-result v1

    iget v2, p0, Lcom/amap/api/services/busline/BusLineQuery;->c:I

    if-ne v1, v2, :cond_0

    .line 159
    invoke-virtual {p1}, Lcom/amap/api/services/busline/BusLineQuery;->getCategory()Lcom/amap/api/services/busline/BusLineQuery$SearchType;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/services/busline/BusLineQuery;->e:Lcom/amap/api/services/busline/BusLineQuery$SearchType;

    invoke-virtual {v1, v2}, Lcom/amap/api/services/busline/BusLineQuery$SearchType;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-nez v1, :cond_0

    .line 160
    const/4 v0, 0x1

    .line 161
    :cond_0
    return v0
.end method
