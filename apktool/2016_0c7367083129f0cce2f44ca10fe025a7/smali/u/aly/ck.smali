.class public final enum Lu/aly/ck;
.super Ljava/lang/Enum;
.source "UMEnvelope.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lu/aly/ck;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lu/aly/ck;

.field public static final enum b:Lu/aly/ck;

.field public static final enum c:Lu/aly/ck;

.field public static final enum d:Lu/aly/ck;

.field public static final enum e:Lu/aly/ck;

.field public static final enum f:Lu/aly/ck;

.field public static final enum g:Lu/aly/ck;

.field public static final enum h:Lu/aly/ck;

.field public static final enum i:Lu/aly/ck;

.field public static final enum j:Lu/aly/ck;

.field private static final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lu/aly/ck;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic n:[Lu/aly/ck;


# instance fields
.field private final l:S

.field private final m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 73
    new-instance v0, Lu/aly/ck;

    const-string v1, "VERSION"

    const/4 v2, 0x0

    const-string v3, "version"

    invoke-direct {v0, v1, v2, v5, v3}, Lu/aly/ck;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/ck;->a:Lu/aly/ck;

    new-instance v0, Lu/aly/ck;

    const-string v1, "ADDRESS"

    const-string v2, "address"

    invoke-direct {v0, v1, v5, v6, v2}, Lu/aly/ck;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/ck;->b:Lu/aly/ck;

    new-instance v0, Lu/aly/ck;

    const-string v1, "SIGNATURE"

    const-string v2, "signature"

    invoke-direct {v0, v1, v6, v7, v2}, Lu/aly/ck;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/ck;->c:Lu/aly/ck;

    new-instance v0, Lu/aly/ck;

    const-string v1, "SERIAL_NUM"

    const-string v2, "serial_num"

    invoke-direct {v0, v1, v7, v8, v2}, Lu/aly/ck;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/ck;->d:Lu/aly/ck;

    .line 74
    new-instance v0, Lu/aly/ck;

    const-string v1, "TS_SECS"

    const-string v2, "ts_secs"

    invoke-direct {v0, v1, v8, v9, v2}, Lu/aly/ck;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/ck;->e:Lu/aly/ck;

    new-instance v0, Lu/aly/ck;

    const-string v1, "LENGTH"

    const/4 v2, 0x6

    const-string v3, "length"

    invoke-direct {v0, v1, v9, v2, v3}, Lu/aly/ck;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/ck;->f:Lu/aly/ck;

    new-instance v0, Lu/aly/ck;

    const-string v1, "ENTITY"

    const/4 v2, 0x6

    const/4 v3, 0x7

    const-string v4, "entity"

    invoke-direct {v0, v1, v2, v3, v4}, Lu/aly/ck;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/ck;->g:Lu/aly/ck;

    .line 75
    new-instance v0, Lu/aly/ck;

    const-string v1, "GUID"

    const/4 v2, 0x7

    const/16 v3, 0x8

    const-string v4, "guid"

    invoke-direct {v0, v1, v2, v3, v4}, Lu/aly/ck;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/ck;->h:Lu/aly/ck;

    new-instance v0, Lu/aly/ck;

    const-string v1, "CHECKSUM"

    const/16 v2, 0x8

    const/16 v3, 0x9

    const-string v4, "checksum"

    invoke-direct {v0, v1, v2, v3, v4}, Lu/aly/ck;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/ck;->i:Lu/aly/ck;

    new-instance v0, Lu/aly/ck;

    const-string v1, "CODEX"

    const/16 v2, 0x9

    const/16 v3, 0xa

    const-string v4, "codex"

    invoke-direct {v0, v1, v2, v3, v4}, Lu/aly/ck;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/ck;->j:Lu/aly/ck;

    .line 72
    const/16 v0, 0xa

    new-array v0, v0, [Lu/aly/ck;

    const/4 v1, 0x0

    sget-object v2, Lu/aly/ck;->a:Lu/aly/ck;

    aput-object v2, v0, v1

    sget-object v1, Lu/aly/ck;->b:Lu/aly/ck;

    aput-object v1, v0, v5

    sget-object v1, Lu/aly/ck;->c:Lu/aly/ck;

    aput-object v1, v0, v6

    sget-object v1, Lu/aly/ck;->d:Lu/aly/ck;

    aput-object v1, v0, v7

    sget-object v1, Lu/aly/ck;->e:Lu/aly/ck;

    aput-object v1, v0, v8

    sget-object v1, Lu/aly/ck;->f:Lu/aly/ck;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lu/aly/ck;->g:Lu/aly/ck;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lu/aly/ck;->h:Lu/aly/ck;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lu/aly/ck;->i:Lu/aly/ck;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lu/aly/ck;->j:Lu/aly/ck;

    aput-object v2, v0, v1

    sput-object v0, Lu/aly/ck;->n:[Lu/aly/ck;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/ck;->k:Ljava/util/Map;

    .line 80
    const-class v0, Lu/aly/ck;

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

    check-cast v0, Lu/aly/ck;

    .line 81
    sget-object v2, Lu/aly/ck;->k:Ljava/util/Map;

    .line 1148
    iget-object v3, v0, Lu/aly/ck;->m:Ljava/lang/String;

    .line 81
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 83
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
    .line 138
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 139
    iput-short p3, p0, Lu/aly/ck;->l:S

    .line 140
    iput-object p4, p0, Lu/aly/ck;->m:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lu/aly/ck;
    .locals 1

    .prologue
    .line 72
    const-class v0, Lu/aly/ck;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lu/aly/ck;

    return-object v0
.end method

.method public static values()[Lu/aly/ck;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lu/aly/ck;->n:[Lu/aly/ck;

    invoke-virtual {v0}, [Lu/aly/ck;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu/aly/ck;

    return-object v0
.end method
