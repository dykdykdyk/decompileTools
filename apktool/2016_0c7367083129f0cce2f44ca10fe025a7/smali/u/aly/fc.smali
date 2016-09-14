.class public abstract Lu/aly/fc;
.super Ljava/lang/Object;
.source "AbstractIdTracker.java"


# instance fields
.field final a:Ljava/lang/String;

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lu/aly/at;",
            ">;"
        }
    .end annotation
.end field

.field c:Lu/aly/az;

.field private final d:I

.field private final e:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/16 v0, 0xa

    iput v0, p0, Lu/aly/fc;->d:I

    .line 13
    const/16 v0, 0x14

    iput v0, p0, Lu/aly/fc;->e:I

    .line 19
    iput-object p1, p0, Lu/aly/fc;->a:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public final a(Lu/aly/bf;)V
    .locals 4

    .prologue
    .line 117
    .line 2206
    iget-object v0, p1, Lu/aly/bf;->a:Ljava/util/Map;

    .line 117
    iget-object v1, p0, Lu/aly/fc;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/az;

    iput-object v0, p0, Lu/aly/fc;->c:Lu/aly/az;

    .line 2248
    iget-object v0, p1, Lu/aly/bf;->b:Ljava/util/List;

    .line 121
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 122
    iget-object v1, p0, Lu/aly/fc;->b:Ljava/util/List;

    if-nez v1, :cond_0

    .line 123
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lu/aly/fc;->b:Ljava/util/List;

    .line 126
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/at;

    .line 127
    iget-object v2, p0, Lu/aly/fc;->a:Ljava/lang/String;

    iget-object v3, v0, Lu/aly/at;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 128
    iget-object v2, p0, Lu/aly/fc;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 132
    :cond_2
    return-void
.end method

.method public final b()Z
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lu/aly/fc;->c:Lu/aly/az;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lu/aly/fc;->c:Lu/aly/az;

    .line 1228
    iget v0, v0, Lu/aly/az;->c:I

    .line 31
    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    .line 32
    const/4 v0, 0x0

    .line 35
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
