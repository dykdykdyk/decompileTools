.class final Lorg/threeten/bp/temporal/v;
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
        "Lorg/threeten/bp/ad;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lorg/threeten/bp/temporal/l;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 242
    .line 1245
    sget-object v0, Lorg/threeten/bp/temporal/r;->a:Lorg/threeten/bp/temporal/z;

    invoke-interface {p1, v0}, Lorg/threeten/bp/temporal/l;->a(Lorg/threeten/bp/temporal/z;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/ad;

    .line 1246
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/threeten/bp/temporal/r;->e:Lorg/threeten/bp/temporal/z;

    invoke-interface {p1, v0}, Lorg/threeten/bp/temporal/l;->a(Lorg/threeten/bp/temporal/z;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/ad;

    goto :goto_0
.end method
