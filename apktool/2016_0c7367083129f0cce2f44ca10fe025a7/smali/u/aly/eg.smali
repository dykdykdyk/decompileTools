.class public final Lu/aly/eg;
.super Ljava/lang/Object;
.source "UMCCAggregatedListObject.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lu/aly/eh;",
            ">;"
        }
    .end annotation
.end field

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lu/aly/eg;->a:Ljava/util/Map;

    .line 27
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lu/aly/eg;->b:J

    .line 30
    return-void
.end method

.method static a(Lu/aly/eh;Lu/aly/eh;)V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v2, 0x0

    .line 85
    .line 1137
    iget-wide v0, p1, Lu/aly/eh;->e:J

    .line 2137
    iget-wide v4, p0, Lu/aly/eh;->e:J

    .line 85
    add-long/2addr v0, v4

    .line 2161
    iput-wide v0, p1, Lu/aly/eh;->e:J

    .line 3133
    iget-wide v0, p1, Lu/aly/eh;->d:J

    .line 4133
    iget-wide v4, p0, Lu/aly/eh;->d:J

    .line 86
    add-long/2addr v0, v4

    .line 4157
    iput-wide v0, p1, Lu/aly/eh;->d:J

    .line 5129
    iget-wide v0, p1, Lu/aly/eh;->c:J

    .line 6129
    iget-wide v4, p0, Lu/aly/eh;->c:J

    .line 87
    add-long/2addr v0, v4

    .line 6153
    iput-wide v0, p1, Lu/aly/eh;->c:J

    move v1, v2

    .line 7125
    :goto_0
    iget-object v0, p0, Lu/aly/eh;->b:Ljava/util/List;

    .line 88
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 8125
    iget-object v0, p0, Lu/aly/eh;->b:Ljava/util/List;

    .line 89
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 9048
    :try_start_0
    iget-object v3, p1, Lu/aly/eh;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 10025
    invoke-static {}, Lu/aly/ex;->a()Lu/aly/ew;

    .line 9048
    if-ge v3, v6, :cond_0

    .line 9049
    iget-object v3, p1, Lu/aly/eh;->b:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9055
    :goto_1
    iget-object v0, p1, Lu/aly/eh;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 11025
    invoke-static {}, Lu/aly/ex;->a()Lu/aly/ew;

    .line 9055
    if-le v0, v6, :cond_1

    move v0, v2

    .line 9056
    :goto_2
    iget-object v3, p1, Lu/aly/eh;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 12025
    invoke-static {}, Lu/aly/ex;->a()Lu/aly/ew;

    .line 9057
    add-int/lit8 v3, v3, -0x8

    if-ge v0, v3, :cond_1

    .line 9058
    iget-object v3, p1, Lu/aly/eh;->b:Ljava/util/List;

    iget-object v4, p1, Lu/aly/eh;->b:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 9057
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 9051
    :cond_0
    iget-object v3, p1, Lu/aly/eh;->b:Ljava/util/List;

    iget-object v4, p1, Lu/aly/eh;->b:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 9052
    iget-object v3, p1, Lu/aly/eh;->b:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 9062
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 88
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 91
    :cond_2
    return-void
.end method
