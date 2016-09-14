.class public final enum Lu/aly/bk;
.super Ljava/lang/Enum;
.source "IdTracking.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lu/aly/bk;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lu/aly/bk;

.field public static final enum b:Lu/aly/bk;

.field public static final enum c:Lu/aly/bk;

.field private static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lu/aly/bk;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic g:[Lu/aly/bk;


# instance fields
.field private final e:S

.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 52
    new-instance v0, Lu/aly/bk;

    const-string v1, "SNAPSHOTS"

    const-string v2, "snapshots"

    invoke-direct {v0, v1, v5, v3, v2}, Lu/aly/bk;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/bk;->a:Lu/aly/bk;

    new-instance v0, Lu/aly/bk;

    const-string v1, "JOURNALS"

    const-string v2, "journals"

    invoke-direct {v0, v1, v3, v4, v2}, Lu/aly/bk;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/bk;->b:Lu/aly/bk;

    new-instance v0, Lu/aly/bk;

    const-string v1, "CHECKSUM"

    const-string v2, "checksum"

    invoke-direct {v0, v1, v4, v6, v2}, Lu/aly/bk;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/bk;->c:Lu/aly/bk;

    .line 51
    new-array v0, v6, [Lu/aly/bk;

    sget-object v1, Lu/aly/bk;->a:Lu/aly/bk;

    aput-object v1, v0, v5

    sget-object v1, Lu/aly/bk;->b:Lu/aly/bk;

    aput-object v1, v0, v3

    sget-object v1, Lu/aly/bk;->c:Lu/aly/bk;

    aput-object v1, v0, v4

    sput-object v0, Lu/aly/bk;->g:[Lu/aly/bk;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/bk;->d:Ljava/util/Map;

    .line 57
    const-class v0, Lu/aly/bk;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/bk;

    .line 58
    sget-object v2, Lu/aly/bk;->d:Ljava/util/Map;

    .line 1111
    iget-object v3, v0, Lu/aly/bk;->f:Ljava/lang/String;

    .line 58
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 60
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 102
    iput-short p3, p0, Lu/aly/bk;->e:S

    .line 103
    iput-object p4, p0, Lu/aly/bk;->f:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lu/aly/bk;
    .locals 1

    .prologue
    .line 51
    const-class v0, Lu/aly/bk;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lu/aly/bk;

    return-object v0
.end method

.method public static values()[Lu/aly/bk;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lu/aly/bk;->g:[Lu/aly/bk;

    invoke-virtual {v0}, [Lu/aly/bk;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu/aly/bk;

    return-object v0
.end method
