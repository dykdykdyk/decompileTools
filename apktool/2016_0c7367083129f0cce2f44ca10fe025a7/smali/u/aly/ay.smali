.class public final enum Lu/aly/ay;
.super Ljava/lang/Enum;
.source "IdJournal.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lu/aly/ay;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lu/aly/ay;

.field public static final enum b:Lu/aly/ay;

.field public static final enum c:Lu/aly/ay;

.field public static final enum d:Lu/aly/ay;

.field private static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lu/aly/ay;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic h:[Lu/aly/ay;


# instance fields
.field private final f:S

.field private final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 54
    new-instance v0, Lu/aly/ay;

    const-string v1, "DOMAIN"

    const-string v2, "domain"

    invoke-direct {v0, v1, v6, v3, v2}, Lu/aly/ay;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/ay;->a:Lu/aly/ay;

    new-instance v0, Lu/aly/ay;

    const-string v1, "OLD_ID"

    const-string v2, "old_id"

    invoke-direct {v0, v1, v3, v4, v2}, Lu/aly/ay;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/ay;->b:Lu/aly/ay;

    new-instance v0, Lu/aly/ay;

    const-string v1, "NEW_ID"

    const-string v2, "new_id"

    invoke-direct {v0, v1, v4, v5, v2}, Lu/aly/ay;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/ay;->c:Lu/aly/ay;

    new-instance v0, Lu/aly/ay;

    const-string v1, "TS"

    const-string v2, "ts"

    invoke-direct {v0, v1, v5, v7, v2}, Lu/aly/ay;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/ay;->d:Lu/aly/ay;

    .line 53
    new-array v0, v7, [Lu/aly/ay;

    sget-object v1, Lu/aly/ay;->a:Lu/aly/ay;

    aput-object v1, v0, v6

    sget-object v1, Lu/aly/ay;->b:Lu/aly/ay;

    aput-object v1, v0, v3

    sget-object v1, Lu/aly/ay;->c:Lu/aly/ay;

    aput-object v1, v0, v4

    sget-object v1, Lu/aly/ay;->d:Lu/aly/ay;

    aput-object v1, v0, v5

    sput-object v0, Lu/aly/ay;->h:[Lu/aly/ay;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/ay;->e:Ljava/util/Map;

    .line 59
    const-class v0, Lu/aly/ay;

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

    check-cast v0, Lu/aly/ay;

    .line 60
    sget-object v2, Lu/aly/ay;->e:Ljava/util/Map;

    .line 1115
    iget-object v3, v0, Lu/aly/ay;->g:Ljava/lang/String;

    .line 60
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 62
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
    .line 105
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 106
    iput-short p3, p0, Lu/aly/ay;->f:S

    .line 107
    iput-object p4, p0, Lu/aly/ay;->g:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lu/aly/ay;
    .locals 1

    .prologue
    .line 53
    const-class v0, Lu/aly/ay;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lu/aly/ay;

    return-object v0
.end method

.method public static values()[Lu/aly/ay;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lu/aly/ay;->h:[Lu/aly/ay;

    invoke-virtual {v0}, [Lu/aly/ay;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu/aly/ay;

    return-object v0
.end method
