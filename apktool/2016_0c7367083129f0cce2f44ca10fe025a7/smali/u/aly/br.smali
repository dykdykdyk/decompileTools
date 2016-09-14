.class public final enum Lu/aly/br;
.super Ljava/lang/Enum;
.source "Imprint.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lu/aly/br;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lu/aly/br;

.field public static final enum b:Lu/aly/br;

.field public static final enum c:Lu/aly/br;

.field private static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lu/aly/br;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic g:[Lu/aly/br;


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

    .line 49
    new-instance v0, Lu/aly/br;

    const-string v1, "PROPERTY"

    const-string v2, "property"

    invoke-direct {v0, v1, v5, v3, v2}, Lu/aly/br;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/br;->a:Lu/aly/br;

    new-instance v0, Lu/aly/br;

    const-string v1, "VERSION"

    const-string v2, "version"

    invoke-direct {v0, v1, v3, v4, v2}, Lu/aly/br;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/br;->b:Lu/aly/br;

    new-instance v0, Lu/aly/br;

    const-string v1, "CHECKSUM"

    const-string v2, "checksum"

    invoke-direct {v0, v1, v4, v6, v2}, Lu/aly/br;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/br;->c:Lu/aly/br;

    .line 48
    new-array v0, v6, [Lu/aly/br;

    sget-object v1, Lu/aly/br;->a:Lu/aly/br;

    aput-object v1, v0, v5

    sget-object v1, Lu/aly/br;->b:Lu/aly/br;

    aput-object v1, v0, v3

    sget-object v1, Lu/aly/br;->c:Lu/aly/br;

    aput-object v1, v0, v4

    sput-object v0, Lu/aly/br;->g:[Lu/aly/br;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/br;->d:Ljava/util/Map;

    .line 54
    const-class v0, Lu/aly/br;

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

    check-cast v0, Lu/aly/br;

    .line 55
    sget-object v2, Lu/aly/br;->d:Ljava/util/Map;

    .line 1108
    iget-object v3, v0, Lu/aly/br;->f:Ljava/lang/String;

    .line 55
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 57
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
    .line 98
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 99
    iput-short p3, p0, Lu/aly/br;->e:S

    .line 100
    iput-object p4, p0, Lu/aly/br;->f:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lu/aly/br;
    .locals 1

    .prologue
    .line 48
    const-class v0, Lu/aly/br;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lu/aly/br;

    return-object v0
.end method

.method public static values()[Lu/aly/br;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lu/aly/br;->g:[Lu/aly/br;

    invoke-virtual {v0}, [Lu/aly/br;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu/aly/br;

    return-object v0
.end method
