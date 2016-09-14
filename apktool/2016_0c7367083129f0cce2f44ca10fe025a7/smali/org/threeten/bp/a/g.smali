.class public abstract Lorg/threeten/bp/a/g;
.super Ljava/lang/Object;
.source "ChronoPeriod.java"

# interfaces
.implements Lorg/threeten/bp/temporal/p;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lorg/threeten/bp/temporal/aa;)J
.end method

.method public abstract a()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/threeten/bp/temporal/aa;",
            ">;"
        }
    .end annotation
.end method

.method public b()Z
    .locals 6

    .prologue
    .line 145
    invoke-virtual {p0}, Lorg/threeten/bp/a/g;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/temporal/aa;

    .line 146
    invoke-virtual {p0, v0}, Lorg/threeten/bp/a/g;->a(Lorg/threeten/bp/temporal/aa;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 147
    const/4 v0, 0x0

    .line 150
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
