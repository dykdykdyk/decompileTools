.class final Lorg/threeten/bp/format/c;
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
        "Lorg/threeten/bp/z;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 934
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lorg/threeten/bp/temporal/l;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 934
    .line 1936
    instance-of v0, p1, Lorg/threeten/bp/format/a;

    if-eqz v0, :cond_0

    .line 1937
    check-cast p1, Lorg/threeten/bp/format/a;

    iget-object v0, p1, Lorg/threeten/bp/format/a;->g:Lorg/threeten/bp/z;

    :goto_0
    return-object v0

    .line 1939
    :cond_0
    sget-object v0, Lorg/threeten/bp/z;->a:Lorg/threeten/bp/z;

    goto :goto_0
.end method
