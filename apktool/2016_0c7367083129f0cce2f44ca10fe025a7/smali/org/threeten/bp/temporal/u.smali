.class final Lorg/threeten/bp/temporal/u;
.super Ljava/lang/Object;
.source "TemporalQueries.java"

# interfaces
.implements Lorg/threeten/bp/temporal/z;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/threeten/bp/temporal/z",
        "<",
        "Lorg/threeten/bp/temporal/aa;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lorg/threeten/bp/temporal/l;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 211
    .line 1214
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/l;->a(Lorg/threeten/bp/temporal/z;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/temporal/aa;

    .line 211
    return-object v0
.end method
