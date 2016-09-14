.class public final enum Lcom/google/zxing/f;
.super Ljava/lang/Enum;
.source "EncodeHintType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/zxing/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/zxing/f;

.field public static final enum b:Lcom/google/zxing/f;

.field public static final enum c:Lcom/google/zxing/f;

.field public static final enum d:Lcom/google/zxing/f;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum e:Lcom/google/zxing/f;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum f:Lcom/google/zxing/f;

.field public static final enum g:Lcom/google/zxing/f;

.field public static final enum h:Lcom/google/zxing/f;

.field public static final enum i:Lcom/google/zxing/f;

.field public static final enum j:Lcom/google/zxing/f;

.field private static final synthetic k:[Lcom/google/zxing/f;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 34
    new-instance v0, Lcom/google/zxing/f;

    const-string v1, "ERROR_CORRECTION"

    invoke-direct {v0, v1, v3}, Lcom/google/zxing/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/f;->a:Lcom/google/zxing/f;

    .line 39
    new-instance v0, Lcom/google/zxing/f;

    const-string v1, "CHARACTER_SET"

    invoke-direct {v0, v1, v4}, Lcom/google/zxing/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/f;->b:Lcom/google/zxing/f;

    .line 44
    new-instance v0, Lcom/google/zxing/f;

    const-string v1, "DATA_MATRIX_SHAPE"

    invoke-direct {v0, v1, v5}, Lcom/google/zxing/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/f;->c:Lcom/google/zxing/f;

    .line 52
    new-instance v0, Lcom/google/zxing/f;

    const-string v1, "MIN_SIZE"

    invoke-direct {v0, v1, v6}, Lcom/google/zxing/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/f;->d:Lcom/google/zxing/f;

    .line 60
    new-instance v0, Lcom/google/zxing/f;

    const-string v1, "MAX_SIZE"

    invoke-direct {v0, v1, v7}, Lcom/google/zxing/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/f;->e:Lcom/google/zxing/f;

    .line 68
    new-instance v0, Lcom/google/zxing/f;

    const-string v1, "MARGIN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/f;->f:Lcom/google/zxing/f;

    .line 73
    new-instance v0, Lcom/google/zxing/f;

    const-string v1, "PDF417_COMPACT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/f;->g:Lcom/google/zxing/f;

    .line 79
    new-instance v0, Lcom/google/zxing/f;

    const-string v1, "PDF417_COMPACTION"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/f;->h:Lcom/google/zxing/f;

    .line 85
    new-instance v0, Lcom/google/zxing/f;

    const-string v1, "PDF417_DIMENSIONS"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/f;->i:Lcom/google/zxing/f;

    .line 93
    new-instance v0, Lcom/google/zxing/f;

    const-string v1, "AZTEC_LAYERS"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/f;->j:Lcom/google/zxing/f;

    .line 24
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/google/zxing/f;

    sget-object v1, Lcom/google/zxing/f;->a:Lcom/google/zxing/f;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/zxing/f;->b:Lcom/google/zxing/f;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/zxing/f;->c:Lcom/google/zxing/f;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/zxing/f;->d:Lcom/google/zxing/f;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/zxing/f;->e:Lcom/google/zxing/f;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/zxing/f;->f:Lcom/google/zxing/f;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/zxing/f;->g:Lcom/google/zxing/f;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/zxing/f;->h:Lcom/google/zxing/f;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/zxing/f;->i:Lcom/google/zxing/f;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/zxing/f;->j:Lcom/google/zxing/f;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/f;->k:[Lcom/google/zxing/f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/f;
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/google/zxing/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/f;

    return-object v0
.end method

.method public static values()[Lcom/google/zxing/f;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/google/zxing/f;->k:[Lcom/google/zxing/f;

    invoke-virtual {v0}, [Lcom/google/zxing/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/zxing/f;

    return-object v0
.end method
