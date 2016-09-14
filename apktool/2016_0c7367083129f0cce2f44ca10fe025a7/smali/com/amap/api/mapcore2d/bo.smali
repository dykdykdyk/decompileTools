.class Lcom/amap/api/mapcore2d/bo;
.super Lcom/amap/api/mapcore2d/bl;
.source "TaskPool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/api/mapcore2d/bl",
        "<",
        "Lcom/amap/api/mapcore2d/bp;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/bl;-><init>()V

    return-void
.end method


# virtual methods
.method protected declared-synchronized b(IZ)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/mapcore2d/bp;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 121
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bo;->a:Ljava/util/LinkedList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 122
    const/4 v0, 0x0

    .line 170
    :goto_0
    monitor-exit p0

    return-object v0

    .line 124
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bo;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v3

    .line 125
    if-le p1, v3, :cond_1

    move p1, v3

    .line 129
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(I)V

    move v2, v1

    .line 134
    :goto_1
    if-ge v1, v3, :cond_3

    .line 139
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bo;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/bp;

    .line 140
    if-eqz v0, :cond_5

    .line 143
    iget v5, v0, Lcom/amap/api/mapcore2d/bp;->a:I

    .line 144
    if-eqz p2, :cond_2

    .line 145
    if-nez v5, :cond_4

    .line 146
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bo;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 148
    add-int/lit8 v3, v3, -0x1

    .line 149
    add-int/lit8 v1, v1, -0x1

    .line 150
    add-int/lit8 v2, v2, 0x1

    move v0, v1

    move v1, v2

    move v2, v3

    .line 161
    :goto_2
    if-ge v1, p1, :cond_3

    .line 134
    :goto_3
    add-int/lit8 v0, v0, 0x1

    move v3, v2

    move v2, v1

    move v1, v0

    goto :goto_1

    .line 153
    :cond_2
    if-gez v5, :cond_4

    .line 154
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bo;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 156
    add-int/lit8 v3, v3, -0x1

    .line 157
    add-int/lit8 v1, v1, -0x1

    .line 158
    add-int/lit8 v2, v2, 0x1

    move v0, v1

    move v1, v2

    move v2, v3

    goto :goto_2

    .line 169
    :cond_3
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bo;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v4

    .line 170
    goto :goto_0

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    move v0, v1

    move v1, v2

    move v2, v3

    goto :goto_2

    :cond_5
    move v0, v1

    move v1, v2

    move v2, v3

    goto :goto_3
.end method
