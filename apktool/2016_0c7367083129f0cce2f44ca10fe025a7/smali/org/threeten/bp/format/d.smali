.class final Lorg/threeten/bp/format/d;
.super Ljava/lang/Object;
.source "DateTimeFormatter.java"

# interfaces
.implements Lorg/threeten/bp/temporal/z;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/threeten/bp/temporal/z",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 977
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lorg/threeten/bp/temporal/l;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 977
    .line 1979
    instance-of v0, p1, Lorg/threeten/bp/format/a;

    if-eqz v0, :cond_0

    .line 1980
    check-cast p1, Lorg/threeten/bp/format/a;

    iget-boolean v0, p1, Lorg/threeten/bp/format/a;->f:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1982
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method
