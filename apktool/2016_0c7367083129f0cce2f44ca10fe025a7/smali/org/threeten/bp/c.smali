.class public final Lorg/threeten/bp/c;
.super Ljava/lang/Object;
.source "DateTimeUtils.java"


# direct methods
.method public static a(Ljava/sql/Date;)Lorg/threeten/bp/j;
    .locals 3

    .prologue
    .line 169
    invoke-virtual {p0}, Ljava/sql/Date;->getYear()I

    move-result v0

    add-int/lit16 v0, v0, 0x76c

    invoke-virtual {p0}, Ljava/sql/Date;->getMonth()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Ljava/sql/Date;->getDate()I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/threeten/bp/j;->a(III)Lorg/threeten/bp/j;

    move-result-object v0

    return-object v0
.end method
