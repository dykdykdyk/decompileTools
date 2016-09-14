.class public abstract Lorg/threeten/bp/a;
.super Ljava/lang/Object;
.source "Clock.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    return-void
.end method


# virtual methods
.method public abstract a()Lorg/threeten/bp/ad;
.end method

.method public abstract b()Lorg/threeten/bp/g;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 381
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 391
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
