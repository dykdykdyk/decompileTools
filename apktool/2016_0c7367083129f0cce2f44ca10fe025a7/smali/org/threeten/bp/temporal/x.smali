.class final Lorg/threeten/bp/temporal/x;
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
        "Lorg/threeten/bp/j;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lorg/threeten/bp/temporal/l;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 290
    .line 1293
    sget-object v0, Lorg/threeten/bp/temporal/a;->u:Lorg/threeten/bp/temporal/a;

    invoke-interface {p1, v0}, Lorg/threeten/bp/temporal/l;->a(Lorg/threeten/bp/temporal/q;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1294
    sget-object v0, Lorg/threeten/bp/temporal/a;->u:Lorg/threeten/bp/temporal/a;

    invoke-interface {p1, v0}, Lorg/threeten/bp/temporal/l;->d(Lorg/threeten/bp/temporal/q;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/threeten/bp/j;->a(J)Lorg/threeten/bp/j;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1296
    :cond_0
    const/4 v0, 0x0

    .line 290
    goto :goto_0
.end method
